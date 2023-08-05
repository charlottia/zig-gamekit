const std = @import("std");
const gk = @import("gamekit");
const gfx = gk.gfx;
const imgui = gk.imgui;

pub const enable_imgui = true;

var clear_color = gk.math.Color.aya;
var camera: gk.utils.Camera = undefined;
var tex: gfx.Texture = undefined;

pub fn main() !void {
    try gk.run(.{
        .init = init,
        .update = update,
        .render = render,
    });
}

fn init() !void {
    camera = gk.utils.Camera.init();
}

fn update() !void {
    imgui.igShowDemoWindow(null);

    if (gk.input.keyDown(.a)) {
        camera.pos.x += 100 * gk.time.dt();
    } else if (gk.input.keyDown(.d)) {
        camera.pos.x -= 100 * gk.time.dt();
    }
    if (gk.input.keyDown(.w)) {
        camera.pos.y -= 100 * gk.time.dt();
    } else if (gk.input.keyDown(.s)) {
        camera.pos.y += 100 * gk.time.dt();
    }
}

fn render() !void {
    gfx.beginPass(.{ .color = clear_color, .trans_mat = camera.transMat() });

    imgui.igText("WASD moves camera " ++ imgui.icons.camera);

    var color = clear_color.asArray();
    if (imgui.igColorEdit4("Clear Color", &color[0], imgui.ImGuiColorEditFlags_NoInputs)) {
        clear_color = gk.math.Color.fromRgba(color[0], color[1], color[2], color[3]);
    }

    var buf: [255]u8 = undefined;
    var str = try std.fmt.bufPrintZ(&buf, "Camera Pos: {d:.2}, {d:.2}", .{ camera.pos.x, camera.pos.y });
    imgui.igText(str);

    var mouse = gk.input.mousePos();
    var world = camera.screenToWorld(mouse);

    str = try std.fmt.bufPrintZ(&buf, "Mouse Pos: {d:.2}, {d:.2}", .{ mouse.x, mouse.y });
    imgui.igText(str);

    str = try std.fmt.bufPrintZ(&buf, "World Pos: {d:.2}, {d:.2}", .{ world.x, world.y });
    imgui.igText(str);

    if (imgui.ogButton("Camera Pos to 0,0")) camera.pos = .{};
    if (imgui.ogButton("Camera Pos to screen center")) {
        const size = gk.window.size();
        camera.pos = .{ .x = @as(f32, @floatFromInt(size.w)) * 0.5, .y = @as(f32, @floatFromInt(size.h)) * 0.5 };
    }

    gfx.draw.point(.{}, 40, gk.math.Color.white);

    gfx.endPass();
}
