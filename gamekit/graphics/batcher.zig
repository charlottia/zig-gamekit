const std = @import("std");
const renderkit = @import("renderkit");
const gk = @import("../gamekit.zig");
const math = gk.math;

const IndexBuffer = renderkit.IndexBuffer;
const VertexBuffer = renderkit.VertexBuffer;
const Vertex = gk.gfx.Vertex;
const Texture = gk.gfx.Texture;

pub const Batcher = struct {
    mesh: gk.gfx.DynamicMesh(u16, Vertex),
    draw_calls: std.ArrayList(DrawCall),

    begin_called: bool = false,
    frame: u32 = 0, // tracks when a batch is started in a new frame so that state can be reset
    vert_index: usize = 0, // current index into the vertex array
    quad_count: usize = 0, // total quads that we have not yet rendered
    buffer_offset: i32 = 0, // offset into the vertex buffer of the first non-rendered vert

    const DrawCall = struct {
        image: renderkit.Image,
        quad_count: i32,
    };

    fn createDynamicMesh(allocator: std.mem.Allocator, max_sprites: u16) !gk.gfx.DynamicMesh(u16, Vertex) {
        var indices = allocator.alloc(u16, max_sprites * 6) catch unreachable;
        defer allocator.free(indices);
        var i: usize = 0;
        while (i < max_sprites) : (i += 1) {
            indices[i * 3 * 2 + 0] = @as(u16, @intCast(i)) * 4 + 0;
            indices[i * 3 * 2 + 1] = @as(u16, @intCast(i)) * 4 + 1;
            indices[i * 3 * 2 + 2] = @as(u16, @intCast(i)) * 4 + 2;
            indices[i * 3 * 2 + 3] = @as(u16, @intCast(i)) * 4 + 0;
            indices[i * 3 * 2 + 4] = @as(u16, @intCast(i)) * 4 + 2;
            indices[i * 3 * 2 + 5] = @as(u16, @intCast(i)) * 4 + 3;
        }

        return try gk.gfx.DynamicMesh(u16, Vertex).init(allocator, max_sprites * 4, indices);
    }

    pub fn init(allocator: std.mem.Allocator, max_sprites: u16) Batcher {
        if (max_sprites * 6 > std.math.maxInt(u16)) @panic("max_sprites exceeds u16 index buffer size");

        return .{
            .mesh = createDynamicMesh(allocator, max_sprites) catch unreachable,
            .draw_calls = std.ArrayList(DrawCall).initCapacity(allocator, 10) catch unreachable,
        };
    }

    pub fn deinit(self: *Batcher) void {
        self.mesh.deinit();
        self.draw_calls.deinit();
    }

    pub fn begin(self: *Batcher) void {
        std.debug.assert(!self.begin_called);

        // reset all state for new frame
        if (self.frame != gk.time.frames()) {
            self.frame = gk.time.frames();
            self.vert_index = 0;
            self.buffer_offset = 0;
        }
        self.begin_called = true;
    }

    pub fn end(self: *Batcher) void {
        std.debug.assert(self.begin_called);
        self.flush();
        self.begin_called = false;
    }

    /// should be called when any graphics state change will occur such as setting a new shader or RenderState
    pub fn flush(self: *Batcher) void {
        if (self.quad_count == 0) return;

        self.mesh.appendVertSlice(@as(usize, @intCast(self.buffer_offset)), @as(usize, @intCast(self.quad_count * 4)));

        // run through all our accumulated draw calls
        var base_element: i32 = 0;
        for (self.draw_calls.items) |*draw_call| {
            self.mesh.bindImage(draw_call.image, 0);
            self.mesh.draw(base_element, draw_call.quad_count * 6);

            self.buffer_offset += draw_call.quad_count * 4;
            draw_call.image = renderkit.invalid_resource_id;
            base_element += draw_call.quad_count * 6;
        }

        self.quad_count = 0;
        self.draw_calls.items.len = 0;
    }

    /// ensures the vert buffer has enough space and manages the draw call command buffer when textures change
    fn ensureCapacity(self: *Batcher, texture: Texture) !void {
        // if we run out of buffer we have to flush the batch and possibly discard and resize the whole buffer
        if (self.vert_index + 4 > self.mesh.verts.len - 1) {
            self.flush();

            self.vert_index = 0;
            self.buffer_offset = 0;

            // with GL we can just orphan the buffer
            self.mesh.updateAllVerts();
            self.mesh.bindings.vertex_buffer_offsets[0] = 0;
        }

        // start a new draw call if we dont already have one going or whenever the texture changes
        if (self.draw_calls.items.len == 0 or self.draw_calls.items[self.draw_calls.items.len - 1].image != texture.img) {
            try self.draw_calls.append(.{ .image = texture.img, .quad_count = 0 });
        }
    }

    pub fn drawTex(self: *Batcher, pos: math.Vec2, col: u32, texture: Texture) void {
        self.ensureCapacity(texture) catch |err| {
            std.log.warn("Batcher.draw failed to append a draw call with error: {}\n", .{err});
            return;
        };

        var verts = self.mesh.verts[self.vert_index .. self.vert_index + 4];
        verts[0].pos = pos; // tl
        verts[0].uv = .{ .x = 0, .y = 0 };
        verts[0].col = col;

        verts[1].pos = .{ .x = pos.x + texture.width, .y = pos.y }; // tr
        verts[1].uv = .{ .x = 1, .y = 0 };
        verts[1].col = col;

        verts[2].pos = .{ .x = pos.x + texture.width, .y = pos.y + texture.height }; // br
        verts[2].uv = .{ .x = 1, .y = 1 };
        verts[2].col = col;

        verts[3].pos = .{ .x = pos.x, .y = pos.y + texture.height }; // bl
        verts[3].uv = .{ .x = 0, .y = 1 };
        verts[3].col = col;

        self.draw_calls.items[self.draw_calls.items.len - 1].quad_count += 1;
        self.quad_count += 1;
        self.vert_index += 4;
    }

    pub fn draw(self: *Batcher, texture: Texture, quad: math.Quad, mat: math.Mat32, color: math.Color) void {
        self.ensureCapacity(texture) catch |err| {
            std.log.warn("Batcher.draw failed to append a draw call with error: {}\n", .{err});
            return;
        };

        // copy the quad positions, uvs and color into vertex array transforming them with the matrix as we do it
        mat.transformQuad(self.mesh.verts[self.vert_index .. self.vert_index + 4], quad, color);

        self.draw_calls.items[self.draw_calls.items.len - 1].quad_count += 1;
        self.quad_count += 1;
        self.vert_index += 4;
    }
};
