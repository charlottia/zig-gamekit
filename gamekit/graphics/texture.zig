const std = @import("std");
const stb_image = @import("stb");
const gk = @import("../gamekit.zig");
const imgui = @import("imgui");
const renderkit = @import("renderkit");
const fs = gk.utils.fs;

pub const Texture = struct {
    img: renderkit.Image,
    width: f32 = 0,
    height: f32 = 0,

    pub fn init(width: i32, height: i32) Texture {
        return initDynamic(width, height, .nearest, .clamp);
    }

    pub fn initDynamic(width: i32, height: i32, filter: renderkit.TextureFilter, wrap: renderkit.TextureWrap) Texture {
        const img = renderkit.createImage(.{
            .width = width,
            .height = height,
            .usage = .dynamic,
            .min_filter = filter,
            .mag_filter = filter,
            .wrap_u = wrap,
            .wrap_v = wrap,
            .content = null,
        });
        return .{
            .img = img,
            .width = @as(f32, @floatFromInt(width)),
            .height = @as(f32, @floatFromInt(height)),
        };
    }

    pub fn initFromFile(allocator: std.mem.Allocator, file: []const u8, filter: renderkit.TextureFilter) !Texture {
        const image_contents = try fs.read(allocator, file);
        defer allocator.free(image_contents);

        var w: c_int = undefined;
        var h: c_int = undefined;
        var channels: c_int = undefined;
        const load_res = stb_image.stbi_load_from_memory(image_contents.ptr, @as(c_int, @intCast(image_contents.len)), &w, &h, &channels, 4);
        if (load_res == null) return error.ImageLoadFailed;
        defer stb_image.stbi_image_free(load_res);

        return initWithDataOptions(u8, w, h, load_res[0..@as(usize, @intCast(w * h * channels))], filter, .clamp);
    }

    pub fn initWithData(comptime T: type, width: i32, height: i32, pixels: []T) Texture {
        return initWithDataOptions(T, width, height, pixels, .nearest, .clamp);
    }

    pub fn initWithDataOptions(comptime T: type, width: i32, height: i32, pixels: []T, filter: renderkit.TextureFilter, wrap: renderkit.TextureWrap) Texture {
        const img = renderkit.createImage(.{
            .width = width,
            .height = height,
            .min_filter = filter,
            .mag_filter = filter,
            .wrap_u = wrap,
            .wrap_v = wrap,
            .content = std.mem.sliceAsBytes(pixels).ptr,
        });
        return .{
            .img = img,
            .width = @as(f32, @floatFromInt(width)),
            .height = @as(f32, @floatFromInt(height)),
        };
    }

    pub fn initCheckerTexture() Texture {
        var pixels = [_]u32{
            0xFFFFFFFF, 0xFF000000, 0xFFFFFFFF, 0xFF000000,
            0xFF000000, 0xFFFFFFFF, 0xFF000000, 0xFFFFFFFF,
            0xFFFFFFFF, 0xFF000000, 0xFFFFFFFF, 0xFF000000,
            0xFF000000, 0xFFFFFFFF, 0xFF000000, 0xFFFFFFFF,
        };

        return initWithData(u32, 4, 4, &pixels);
    }

    pub fn initSingleColor(color: u32) Texture {
        var pixels: [16]u32 = undefined;
        @memset(&pixels, color);
        return initWithData(u32, 4, 4, pixels[0..]);
    }

    pub fn initOffscreen(width: i32, height: i32, filter: renderkit.TextureFilter, wrap: renderkit.TextureWrap) Texture {
        const img = renderkit.createImage(.{
            .render_target = true,
            .width = width,
            .height = height,
            .min_filter = filter,
            .mag_filter = filter,
            .wrap_u = wrap,
            .wrap_v = wrap,
        });
        return .{
            .img = img,
            .width = @as(f32, @floatFromInt(width)),
            .height = @as(f32, @floatFromInt(height)),
        };
    }

    pub fn initStencil(width: i32, height: i32, filter: renderkit.TextureFilter, wrap: renderkit.TextureWrap) Texture {
        const img = renderkit.createImage(.{
            .render_target = true,
            .pixel_format = .depth_stencil,
            .width = width,
            .height = height,
            .min_filter = filter,
            .mag_filter = filter,
            .wrap_u = wrap,
            .wrap_v = wrap,
        });
        return .{
            .img = img,
            .width = @as(f32, @floatFromInt(width)),
            .height = @as(f32, @floatFromInt(height)),
        };
    }

    pub fn deinit(self: *const Texture) void {
        renderkit.destroyImage(self.img);
    }

    pub fn setData(self: *Texture, comptime T: type, data: []T) void {
        renderkit.updateImage(T, self.img, data);
    }

    pub fn imTextureID(self: Texture) imgui.ImTextureID {
        return @as(*anyopaque, @ptrFromInt(self.img));
    }
};
