const builtin = @import("builtin");
const std = @import("std");
const Build = std.Build;

pub fn build(b: *Build) !void {
    _ = b;
}

pub fn linkArtifact(b: *Build, exe: *Build.Step.Compile, target: Build.ResolvedTarget, comptime prefix_path: []const u8) void {
    _ = target;
    if (prefix_path.len > 0 and !std.mem.endsWith(u8, prefix_path, "/")) @panic("prefix-path must end with '/' if it is not empty");
    exe.linkSystemLibrary("c");
    exe.linkSystemLibrary("SDL2");

    if (builtin.os.tag == .windows) {
        exe.linkSystemLibraryName("SDL2");
        exe.linkSystemLibraryName("SDL2main");

        // Windows include dirs for SDL2. This requires downloading SDL2 dev and extracting to c:\SDL2
        exe.addLibraryPath("c:\\SDL2\\lib\\x64");

        // SDL2.dll needs to be copied to the zig-cache/bin folder
        // TODO: installFile doesnt seeem to work so manually copy the file over
        b.installFile("c:\\SDL2\\lib\\x64\\SDL2.dll", "bin\\SDL2.dll");

        std.fs.cwd().makePath("zig-cache\\bin") catch unreachable;
        const src_dir = std.fs.cwd().openDir("c:\\SDL2\\lib\\x64", .{}) catch unreachable;
        src_dir.copyFile("SDL2.dll", std.fs.cwd(), "zig-cache\\bin\\SDL2.dll", .{}) catch unreachable;
    } else if (builtin.os.tag == .macos) {
        exe.linkSystemLibrary("iconv");
        exe.linkFramework("AppKit");
        exe.linkFramework("AudioToolbox");
        exe.linkFramework("Carbon");
        exe.linkFramework("Cocoa");
        exe.linkFramework("CoreAudio");
        exe.linkFramework("CoreFoundation");
        exe.linkFramework("CoreGraphics");
        exe.linkFramework("CoreVideo");
        exe.linkFramework("ForceFeedback");
        exe.linkFramework("GameController");
        exe.linkFramework("IOKit");
        exe.linkFramework("Metal");
    }
}

pub fn getModule(b: *Build, comptime prefix_path: []const u8) *Build.Module {
    if (prefix_path.len > 0 and !std.mem.endsWith(u8, prefix_path, "/")) @panic("prefix-path must end with '/' if it is not empty");
    return b.createModule(.{
        .root_source_file = .{ .path = prefix_path ++ "gamekit/deps/sdl/sdl.zig" },
    });
}
