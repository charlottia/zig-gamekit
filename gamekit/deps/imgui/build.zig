const builtin = @import("builtin");
const std = @import("std");
const Build = std.Build;

var framework_dir: ?[]u8 = null;
const build_impl_type: enum { exe, static_lib, object_files } = .static_lib;

pub fn build(b: *Build) !void {
    const target = b.standardTargetOptions(.{});
    const exe = b.addStaticLibrary(.{
        .name = "JunkLib",
        .target = target,
        .optimize = b.standardOptimizeOption(.{}),
    });
    linkArtifact(b, exe, target, "");
    b.installArtifact(exe);
}

/// prefix_path is used to add package paths. It should be the the same path used to include this build file
pub fn linkArtifact(b: *Build, exe: *Build.Step.Compile, target: Build.ResolvedTarget, comptime prefix_path: []const u8) void {
    if (prefix_path.len > 0 and !std.mem.endsWith(u8, prefix_path, "/")) @panic("prefix-path must end with '/' if it is not empty");

    exe.linkLibCpp();

    if (target.result.os.tag == .windows) {
        exe.linkSystemLibrary("user32");
        exe.linkSystemLibrary("gdi32");
    } else if (target.result.os.tag.isDarwin()) {
        const frameworks_dir = macosFrameworksDir(b) catch unreachable;
        exe.addFrameworkPath(.{ .path = frameworks_dir });
        exe.linkFramework("Foundation");
        exe.linkFramework("QuickLook");
        exe.linkFramework("QuickLookUI");
        exe.linkFramework("Cocoa");
        exe.linkFramework("Quartz");
        exe.linkFramework("QuartzCore");
        exe.linkFramework("Metal");
        exe.linkFramework("MetalKit");
        exe.linkFramework("OpenGL");
        exe.linkFramework("AudioToolbox");
        exe.linkFramework("CoreAudio");
        exe.linkSystemLibrary("c++");
    } else {
        exe.linkLibC();
        exe.linkSystemLibrary("c++");
    }

    const base_path = prefix_path ++ "gamekit/deps/imgui/";
    exe.addIncludePath(.{ .path = base_path ++ "cimgui/imgui" });
    exe.addIncludePath(.{ .path = base_path ++ "cimgui/imgui/examples" });

    const cpp_args = [_][]const u8{"-Wno-return-type-c-linkage"};
    exe.addCSourceFile(.{ .file = .{ .path = base_path ++ "cimgui/imgui/imgui.cpp" }, .flags = &cpp_args });
    exe.addCSourceFile(.{ .file = .{ .path = base_path ++ "cimgui/imgui/imgui_demo.cpp" }, .flags = &cpp_args });
    exe.addCSourceFile(.{ .file = .{ .path = base_path ++ "cimgui/imgui/imgui_draw.cpp" }, .flags = &cpp_args });
    exe.addCSourceFile(.{ .file = .{ .path = base_path ++ "cimgui/imgui/imgui_widgets.cpp" }, .flags = &cpp_args });
    exe.addCSourceFile(.{ .file = .{ .path = base_path ++ "cimgui/cimgui.cpp" }, .flags = &cpp_args });
    exe.addCSourceFile(.{ .file = .{ .path = base_path ++ "temporary_hacks.cpp" }, .flags = &cpp_args });
}

/// helper function to get SDK path on Mac
fn macosFrameworksDir(b: *Build) ![]u8 {
    if (framework_dir) |dir| return dir;

    var str = b.run(&[_][]const u8{ "xcrun", "--show-sdk-path" });
    const strip_newline = std.mem.lastIndexOf(u8, str, "\n");
    if (strip_newline) |index| {
        str = str[0..index];
    }
    framework_dir = try std.mem.concat(b.allocator, u8, &[_][]const u8{ str, "/System/Library/Frameworks" });
    return framework_dir.?;
}

pub fn getModule(b: *Build, comptime prefix_path: []const u8) *Build.Module {
    if (prefix_path.len > 0 and !std.mem.endsWith(u8, prefix_path, "/")) @panic("prefix-path must end with '/' if it is not empty");
    return b.createModule(.{
        .root_source_file = .{ .path = prefix_path ++ "gamekit/deps/imgui/imgui.zig" },
    });
}
