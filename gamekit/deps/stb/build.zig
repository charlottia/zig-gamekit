const std = @import("std");
const Build = std.Build;

pub fn build(b: *Build) !void {
    _ = b;
}

pub fn linkArtifact(b: *Build, exe: *Build.Step.Compile, target: Build.ResolvedTarget, comptime prefix_path: []const u8) void {
    _ = b;
    _ = target;
    exe.linkLibC();
    exe.addIncludePath(.{ .path = prefix_path ++ "gamekit/deps/stb/src" });

    const lib_cflags = &[_][]const u8{"-std=c99"};
    exe.addCSourceFile(.{ .file = .{ .path = prefix_path ++ "gamekit/deps/stb/src/stb_impl.c" }, .flags = lib_cflags });
}

pub fn getModule(b: *Build, comptime prefix_path: []const u8) *Build.Module {
    if (prefix_path.len > 0 and !std.mem.endsWith(u8, prefix_path, "/")) @panic("prefix-path must end with '/' if it is not empty");
    return b.createModule(.{
        .root_source_file = .{ .path = prefix_path ++ "gamekit/deps/stb/stb.zig" },
    });
}
