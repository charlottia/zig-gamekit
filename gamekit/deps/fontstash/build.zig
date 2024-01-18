const std = @import("std");
const Build = std.Build;

pub fn build(b: *Build) !void {
    _ = b;
}

/// prefix_path is used to add package paths. It should be the the same path used to include this build file
pub fn linkArtifact(b: *Build, exe: *Build.Step.Compile, target: Build.ResolvedTarget, comptime prefix_path: []const u8) void {
    _ = b;
    _ = target;
    if (prefix_path.len > 0 and !std.mem.endsWith(u8, prefix_path, "/")) @panic("prefix-path must end with '/' if it is not empty");
    exe.linkLibC();

    const lib_cflags = &[_][]const u8{"-O3"};
    exe.addCSourceFile(.{ .file = .{ .path = prefix_path ++ "gamekit/deps/fontstash/src/fontstash.c" }, .flags = lib_cflags });
}

pub fn getModule(b: *Build, comptime prefix_path: []const u8) *Build.Module {
    if (prefix_path.len > 0 and !std.mem.endsWith(u8, prefix_path, "/")) @panic("prefix-path must end with '/' if it is not empty");
    return b.createModule(.{
        .root_source_file = .{ .path = prefix_path ++ "gamekit/deps/fontstash/fontstash.zig" },
    });
}
