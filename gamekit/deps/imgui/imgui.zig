const w = @import("wrapper.zig");
pub usingnamespace w;

// uncomment to generate a cimport.zig file
// pub usingnamespace @cImport({
//     @cDefine("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
//     @cInclude("cimgui.h");
// });

pub const __darwin_off_t = c_longlong;
pub const fpos_t = __darwin_off_t;
pub const struct___sbuf = extern struct {
    _base: [*c]u8,
    _size: c_int,
};
pub const struct___sFILEX = opaque {};
pub const struct___sFILE = extern struct {
    _p: [*c]u8,
    _r: c_int,
    _w: c_int,
    _flags: c_short,
    _file: c_short,
    _bf: struct___sbuf,
    _lbfsize: c_int,
    _cookie: ?*anyopaque,
    _close: ?*const fn (?*anyopaque) callconv(.C) c_int,
    _read: ?*const fn (?*anyopaque, [*c]u8, c_int) callconv(.C) c_int,
    _seek: ?*const fn (?*anyopaque, fpos_t, c_int) callconv(.C) fpos_t,
    _write: ?*const fn (?*anyopaque, [*c]const u8, c_int) callconv(.C) c_int,
    _ub: struct___sbuf,
    _extra: ?*struct___sFILEX,
    _ur: c_int,
    _ubuf: [3]u8,
    _nbuf: [1]u8,
    _lb: struct___sbuf,
    _blksize: c_int,
    _offset: fpos_t,
};
pub const FILE = struct___sFILE;

pub const struct_ImGuiViewportP = extern struct {
    _ImGuiViewport: ImGuiViewport,
    Idx: c_int,
    LastFrameActive: c_int,
    LastFrameDrawLists: [2]c_int,
    LastFrontMostStampCount: c_int,
    LastNameHash: ImGuiID,
    LastPos: ImVec2,
    Alpha: f32,
    LastAlpha: f32,
    PlatformMonitor: c_short,
    PlatformWindowCreated: bool,
    Window: ?*ImGuiWindow,
    DrawLists: [2][*c]ImDrawList,
    DrawDataP: ImDrawData,
    DrawDataBuilder: ImDrawDataBuilder,
    LastPlatformPos: ImVec2,
    LastPlatformSize: ImVec2,
    LastRendererSize: ImVec2,
    CurrWorkOffsetMin: ImVec2,
    CurrWorkOffsetMax: ImVec2,
};
pub const ImGuiViewportP = struct_ImGuiViewportP;
pub const struct_ImGuiPtrOrIndex = extern struct {
    Ptr: ?*anyopaque,
    Index: c_int,
};
pub const ImGuiPtrOrIndex = struct_ImGuiPtrOrIndex;
pub const struct_ImGuiShrinkWidthItem = extern struct {
    Index: c_int,
    Width: f32,
};
pub const ImGuiShrinkWidthItem = struct_ImGuiShrinkWidthItem;
pub const struct_ImGuiDataTypeTempStorage = extern struct {
    Data: [8]ImU8,
};
pub const ImGuiDataTypeTempStorage = struct_ImGuiDataTypeTempStorage;
pub const struct_ImVec2ih = extern struct {
    x: c_short,
    y: c_short,
};
pub const ImVec2ih = struct_ImVec2ih;
pub const struct_ImVec1 = extern struct {
    x: f32,
};
pub const ImVec1 = struct_ImVec1;
pub const struct_StbTexteditRow = extern struct {
    x0: f32,
    x1: f32,
    baseline_y_delta: f32,
    ymin: f32,
    ymax: f32,
    num_chars: c_int,
};
pub const StbTexteditRow = struct_StbTexteditRow;
pub const struct_STB_TexteditState = extern struct {
    cursor: c_int,
    select_start: c_int,
    select_end: c_int,
    insert_mode: u8,
    row_count_per_page: c_int,
    cursor_at_end_of_line: u8,
    initialized: u8,
    has_preferred_x: u8,
    single_line: u8,
    padding1: u8,
    padding2: u8,
    padding3: u8,
    preferred_x: f32,
    undostate: StbUndoState,
};
pub const STB_TexteditState = struct_STB_TexteditState;
pub const struct_StbUndoState = extern struct {
    undo_rec: [99]StbUndoRecord,
    undo_char: [999]ImWchar,
    undo_point: c_short,
    redo_point: c_short,
    undo_char_point: c_int,
    redo_char_point: c_int,
};
pub const StbUndoState = struct_StbUndoState;
pub const struct_StbUndoRecord = extern struct {
    where: c_int,
    insert_length: c_int,
    delete_length: c_int,
    char_storage: c_int,
};
pub const StbUndoRecord = struct_StbUndoRecord;
pub const struct_ImGuiWindowSettings = extern struct {
    ID: ImGuiID,
    Pos: ImVec2ih,
    Size: ImVec2ih,
    ViewportPos: ImVec2ih,
    ViewportId: ImGuiID,
    DockId: ImGuiID,
    ClassId: ImGuiID,
    DockOrder: c_short,
    Collapsed: bool,
    WantApply: bool,
};
pub const ImGuiWindowSettings = struct_ImGuiWindowSettings;
pub const struct_ImGuiWindowTempData = extern struct {
    CursorPos: ImVec2,
    CursorPosPrevLine: ImVec2,
    CursorStartPos: ImVec2,
    CursorMaxPos: ImVec2,
    CurrLineSize: ImVec2,
    PrevLineSize: ImVec2,
    CurrLineTextBaseOffset: f32,
    PrevLineTextBaseOffset: f32,
    Indent: ImVec1,
    ColumnsOffset: ImVec1,
    GroupOffset: ImVec1,
    LastItemId: ImGuiID,
    LastItemStatusFlags: ImGuiItemStatusFlags,
    LastItemRect: ImRect,
    LastItemDisplayRect: ImRect,
    NavLayerCurrent: ImGuiNavLayer,
    NavLayerActiveMask: c_int,
    NavLayerActiveMaskNext: c_int,
    NavFocusScopeIdCurrent: ImGuiID,
    NavHideHighlightOneFrame: bool,
    NavHasScroll: bool,
    MenuBarAppending: bool,
    MenuBarOffset: ImVec2,
    MenuColumns: ImGuiMenuColumns,
    TreeDepth: c_int,
    TreeJumpToParentOnPopMask: ImU32,
    ChildWindows: ImVector_ImGuiWindowPtr,
    StateStorage: [*c]ImGuiStorage,
    CurrentColumns: [*c]ImGuiColumns,
    LayoutType: ImGuiLayoutType,
    ParentLayoutType: ImGuiLayoutType,
    FocusCounterRegular: c_int,
    FocusCounterTabStop: c_int,
    ItemFlags: ImGuiItemFlags,
    ItemWidth: f32,
    TextWrapPos: f32,
    ItemFlagsStack: ImVector_ImGuiItemFlags,
    ItemWidthStack: ImVector_float,
    TextWrapPosStack: ImVector_float,
    GroupStack: ImVector_ImGuiGroupData,
    StackSizesBackup: [6]c_short,
};
pub const ImGuiWindowTempData = struct_ImGuiWindowTempData;
pub const struct_ImGuiWindow = opaque {}; // /Users/desaro/zig-gl/src/deps/imgui/cimgui/cimgui.h:2022:10: warning: struct demoted to opaque type - has bitfield
pub const ImGuiWindow = struct_ImGuiWindow;
pub const struct_ImGuiTabItem = extern struct {
    ID: ImGuiID,
    Flags: ImGuiTabItemFlags,
    Window: ?*ImGuiWindow,
    LastFrameVisible: c_int,
    LastFrameSelected: c_int,
    Offset: f32,
    Width: f32,
    ContentWidth: f32,
    NameOffset: ImS16,
    BeginOrder: ImS8,
    IndexDuringLayout: ImS8,
    WantClose: bool,
};
pub const ImGuiTabItem = struct_ImGuiTabItem;
pub const struct_ImGuiTabBar = extern struct {
    Tabs: ImVector_ImGuiTabItem,
    ID: ImGuiID,
    SelectedTabId: ImGuiID,
    NextSelectedTabId: ImGuiID,
    VisibleTabId: ImGuiID,
    CurrFrameVisible: c_int,
    PrevFrameVisible: c_int,
    BarRect: ImRect,
    LastTabContentHeight: f32,
    WidthAllTabs: f32,
    WidthAllTabsIdeal: f32,
    ScrollingAnim: f32,
    ScrollingTarget: f32,
    ScrollingTargetDistToVisibility: f32,
    ScrollingSpeed: f32,
    ScrollingRectMinX: f32,
    ScrollingRectMaxX: f32,
    Flags: ImGuiTabBarFlags,
    ReorderRequestTabId: ImGuiID,
    ReorderRequestDir: ImS8,
    TabsActiveCount: ImS8,
    WantLayout: bool,
    VisibleTabWasSubmitted: bool,
    TabsAddedNew: bool,
    LastTabItemIdx: c_short,
    FramePadding: ImVec2,
    TabsNames: ImGuiTextBuffer,
};
pub const ImGuiTabBar = struct_ImGuiTabBar;
const union_unnamed_2 = extern union {
    BackupInt: [2]c_int,
    BackupFloat: [2]f32,
};
pub const struct_ImGuiStyleMod = extern struct {
    VarIdx: ImGuiStyleVar,
    unnamed_0: union_unnamed_2,
};
pub const ImGuiStyleMod = struct_ImGuiStyleMod;
pub const struct_ImGuiSettingsHandler = extern struct {
    TypeName: [*c]const u8,
    TypeHash: ImGuiID,
    ClearAllFn: ?*const fn ([*c]ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.C) void,
    ReadInitFn: ?*const fn ([*c]ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.C) void,
    ReadOpenFn: ?*const fn ([*c]ImGuiContext, [*c]ImGuiSettingsHandler, [*c]const u8) callconv(.C) ?*anyopaque,
    ReadLineFn: ?*const fn ([*c]ImGuiContext, [*c]ImGuiSettingsHandler, ?*anyopaque, [*c]const u8) callconv(.C) void,
    ApplyAllFn: ?*const fn ([*c]ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.C) void,
    WriteAllFn: ?*const fn ([*c]ImGuiContext, [*c]ImGuiSettingsHandler, [*c]ImGuiTextBuffer) callconv(.C) void,
    UserData: ?*anyopaque,
};
pub const ImGuiSettingsHandler = struct_ImGuiSettingsHandler;
pub const struct_ImGuiPopupData = extern struct {
    PopupId: ImGuiID,
    Window: ?*ImGuiWindow,
    SourceWindow: ?*ImGuiWindow,
    OpenFrameCount: c_int,
    OpenParentId: ImGuiID,
    OpenPopupPos: ImVec2,
    OpenMousePos: ImVec2,
};
pub const ImGuiPopupData = struct_ImGuiPopupData;
pub const struct_ImGuiNextItemData = extern struct {
    Flags: ImGuiNextItemDataFlags,
    Width: f32,
    FocusScopeId: ImGuiID,
    OpenCond: ImGuiCond,
    OpenVal: bool,
};
pub const ImGuiNextItemData = struct_ImGuiNextItemData;
pub const struct_ImGuiNextWindowData = extern struct {
    Flags: ImGuiNextWindowDataFlags,
    PosCond: ImGuiCond,
    SizeCond: ImGuiCond,
    CollapsedCond: ImGuiCond,
    DockCond: ImGuiCond,
    PosVal: ImVec2,
    PosPivotVal: ImVec2,
    SizeVal: ImVec2,
    ContentSizeVal: ImVec2,
    ScrollVal: ImVec2,
    PosUndock: bool,
    CollapsedVal: bool,
    SizeConstraintRect: ImRect,
    SizeCallback: ImGuiSizeCallback,
    SizeCallbackUserData: ?*anyopaque,
    BgAlphaVal: f32,
    ViewportId: ImGuiID,
    DockId: ImGuiID,
    WindowClass: ImGuiWindowClass,
    MenuBarOffsetMinVal: ImVec2,
};
pub const ImGuiNextWindowData = struct_ImGuiNextWindowData;
pub const struct_ImGuiNavMoveResult = extern struct {
    Window: ?*ImGuiWindow,
    ID: ImGuiID,
    FocusScopeId: ImGuiID,
    DistBox: f32,
    DistCenter: f32,
    DistAxial: f32,
    RectRel: ImRect,
};
pub const ImGuiNavMoveResult = struct_ImGuiNavMoveResult;
pub const struct_ImGuiMenuColumns = extern struct {
    Spacing: f32,
    Width: f32,
    NextWidth: f32,
    Pos: [3]f32,
    NextWidths: [3]f32,
};
pub const ImGuiMenuColumns = struct_ImGuiMenuColumns;
pub const struct_ImGuiLastItemDataBackup = extern struct {
    LastItemId: ImGuiID,
    LastItemStatusFlags: ImGuiItemStatusFlags,
    LastItemRect: ImRect,
    LastItemDisplayRect: ImRect,
};
pub const ImGuiLastItemDataBackup = struct_ImGuiLastItemDataBackup;
pub const struct_ImGuiInputTextState = extern struct {
    ID: ImGuiID,
    CurLenW: c_int,
    CurLenA: c_int,
    TextW: ImVector_ImWchar,
    TextA: ImVector_char,
    InitialTextA: ImVector_char,
    TextAIsValid: bool,
    BufCapacityA: c_int,
    ScrollX: f32,
    Stb: STB_TexteditState,
    CursorAnim: f32,
    CursorFollow: bool,
    SelectedAllMouseLock: bool,
    Edited: bool,
    UserFlags: ImGuiInputTextFlags,
    UserCallback: ImGuiInputTextCallback,
    UserCallbackData: ?*anyopaque,
};
pub const ImGuiInputTextState = struct_ImGuiInputTextState;
pub const struct_ImGuiGroupData = extern struct {
    BackupCursorPos: ImVec2,
    BackupCursorMaxPos: ImVec2,
    BackupIndent: ImVec1,
    BackupGroupOffset: ImVec1,
    BackupCurrLineSize: ImVec2,
    BackupCurrLineTextBaseOffset: f32,
    BackupActiveIdIsAlive: ImGuiID,
    BackupActiveIdPreviousFrameIsAlive: bool,
    EmitItem: bool,
};
pub const ImGuiGroupData = struct_ImGuiGroupData;
pub const struct_ImGuiDockNodeSettings = opaque {};
pub const ImGuiDockNodeSettings = struct_ImGuiDockNodeSettings;
pub const struct_ImGuiDockNode = opaque {}; // /Users/desaro/zig-gl/src/deps/imgui/cimgui/cimgui.h:1613:24: warning: struct demoted to opaque type - has bitfield
pub const ImGuiDockNode = struct_ImGuiDockNode;
pub const struct_ImGuiDockRequest = opaque {};
pub const ImGuiDockRequest = struct_ImGuiDockRequest;
pub const struct_ImGuiDockContext = extern struct {
    Nodes: ImGuiStorage,
    Requests: ImVector_ImGuiDockRequest,
    NodesSettings: ImVector_ImGuiDockNodeSettings,
    WantFullRebuild: bool,
};
pub const ImGuiDockContext = struct_ImGuiDockContext;
pub const struct_ImGuiDataTypeInfo = extern struct {
    Size: usize,
    Name: [*c]const u8,
    PrintFmt: [*c]const u8,
    ScanFmt: [*c]const u8,
};
pub const ImGuiDataTypeInfo = struct_ImGuiDataTypeInfo;
pub const struct_ImGuiColumns = extern struct {
    ID: ImGuiID,
    Flags: ImGuiColumnsFlags,
    IsFirstFrame: bool,
    IsBeingResized: bool,
    Current: c_int,
    Count: c_int,
    OffMinX: f32,
    OffMaxX: f32,
    LineMinY: f32,
    LineMaxY: f32,
    HostCursorPosY: f32,
    HostCursorMaxPosX: f32,
    HostInitialClipRect: ImRect,
    HostBackupClipRect: ImRect,
    HostBackupParentWorkRect: ImRect,
    Columns: ImVector_ImGuiColumnData,
    Splitter: ImDrawListSplitter,
};
pub const ImGuiColumns = struct_ImGuiColumns;
pub const struct_ImGuiColumnData = extern struct {
    OffsetNorm: f32,
    OffsetNormBeforeResize: f32,
    Flags: ImGuiColumnsFlags,
    ClipRect: ImRect,
};
pub const ImGuiColumnData = struct_ImGuiColumnData;
pub const struct_ImGuiColorMod = extern struct {
    Col: ImGuiCol,
    BackupValue: ImVec4,
};
pub const ImGuiColorMod = struct_ImGuiColorMod;
pub const struct_ImDrawDataBuilder = extern struct {
    Layers: [2]ImVector_ImDrawListPtr,
};
pub const ImDrawDataBuilder = struct_ImDrawDataBuilder;
pub const struct_ImRect = extern struct {
    Min: ImVec2,
    Max: ImVec2,
};
pub const ImRect = struct_ImRect;
pub const struct_ImBitVector = extern struct {
    Storage: ImVector_ImU32,
};
pub const ImBitVector = struct_ImBitVector;
pub const struct_ImFontAtlasCustomRect = extern struct {
    Width: c_ushort,
    Height: c_ushort,
    X: c_ushort,
    Y: c_ushort,
    GlyphID: c_uint,
    GlyphAdvanceX: f32,
    GlyphOffset: ImVec2,
    Font: [*c]ImFont,
};
pub const ImFontAtlasCustomRect = struct_ImFontAtlasCustomRect;
const union_unnamed_3 = extern union {
    val_i: c_int,
    val_f: f32,
    val_p: ?*anyopaque,
};
pub const struct_ImGuiStoragePair = extern struct {
    key: ImGuiID,
    unnamed_0: union_unnamed_3,
};
pub const ImGuiStoragePair = struct_ImGuiStoragePair;
pub const struct_ImGuiTextRange = extern struct {
    b: [*c]const u8,
    e: [*c]const u8,
};
pub const ImGuiTextRange = struct_ImGuiTextRange;
pub const struct_ImVec4 = extern struct {
    x: f32 = 0,
    y: f32 = 0,
    z: f32 = 0,
    w: f32 = 0,
};
pub const ImVec4 = struct_ImVec4;

pub const ImVec2 = extern struct {
    x: f32 = 0,
    y: f32 = 0,

    pub fn init(x: f32, y: f32) ImVec2 {
        return .{ .x = x, .y = y };
    }

    pub fn add(self: ImVec2, other: ImVec2) ImVec2 {
        return .{ .x = self.x + other.x, .y = self.y + other.y };
    }

    pub fn subtract(self: ImVec2, other: ImVec2) ImVec2 {
        return .{ .x = self.x - other.x, .y = self.y - other.y };
    }

    pub fn scale(self: ImVec2, s: f32) ImVec2 {
        return .{ .x = self.x * s, .y = self.y * s };
    }
};

pub const struct_ImGuiWindowClass = extern struct {
    ClassId: ImGuiID,
    ParentViewportId: ImGuiID,
    ViewportFlagsOverrideSet: ImGuiViewportFlags,
    ViewportFlagsOverrideClear: ImGuiViewportFlags,
    DockNodeFlagsOverrideSet: ImGuiDockNodeFlags,
    DockNodeFlagsOverrideClear: ImGuiDockNodeFlags,
    DockingAlwaysTabBar: bool,
    DockingAllowUnclassed: bool,
};
pub const ImGuiWindowClass = struct_ImGuiWindowClass;
pub const struct_ImGuiViewport = extern struct {
    ID: ImGuiID,
    Flags: ImGuiViewportFlags,
    Pos: ImVec2,
    Size: ImVec2,
    WorkOffsetMin: ImVec2,
    WorkOffsetMax: ImVec2,
    DpiScale: f32,
    DrawData: [*c]ImDrawData,
    ParentViewportId: ImGuiID,
    RendererUserData: ?*anyopaque,
    PlatformUserData: ?*anyopaque,
    PlatformHandle: ?*anyopaque,
    PlatformHandleRaw: ?*anyopaque,
    PlatformRequestMove: bool,
    PlatformRequestResize: bool,
    PlatformRequestClose: bool,
};
pub const ImGuiViewport = struct_ImGuiViewport;
pub const struct_ImGuiTextFilter = extern struct {
    InputBuf: [256]u8,
    Filters: ImVector_ImGuiTextRange,
    CountGrep: c_int,
};
pub const ImGuiTextFilter = struct_ImGuiTextFilter;
pub const struct_ImGuiTextBuffer = extern struct {
    Buf: ImVector_char,
};
pub const ImGuiTextBuffer = struct_ImGuiTextBuffer;
pub const struct_ImGuiStyle = extern struct {
    Alpha: f32,
    WindowPadding: ImVec2,
    WindowRounding: f32,
    WindowBorderSize: f32,
    WindowMinSize: ImVec2,
    WindowTitleAlign: ImVec2,
    WindowMenuButtonPosition: ImGuiDir,
    ChildRounding: f32,
    ChildBorderSize: f32,
    PopupRounding: f32,
    PopupBorderSize: f32,
    FramePadding: ImVec2,
    FrameRounding: f32,
    FrameBorderSize: f32,
    ItemSpacing: ImVec2,
    ItemInnerSpacing: ImVec2,
    TouchExtraPadding: ImVec2,
    IndentSpacing: f32,
    ColumnsMinSpacing: f32,
    ScrollbarSize: f32,
    ScrollbarRounding: f32,
    GrabMinSize: f32,
    GrabRounding: f32,
    LogSliderDeadzone: f32,
    TabRounding: f32,
    TabBorderSize: f32,
    TabMinWidthForCloseButton: f32,
    ColorButtonPosition: ImGuiDir,
    ButtonTextAlign: ImVec2,
    SelectableTextAlign: ImVec2,
    DisplayWindowPadding: ImVec2,
    DisplaySafeAreaPadding: ImVec2,
    MouseCursorScale: f32,
    AntiAliasedLines: bool,
    AntiAliasedLinesUseTex: bool,
    AntiAliasedFill: bool,
    CurveTessellationTol: f32,
    CircleSegmentMaxError: f32,
    Colors: [50]ImVec4,
};
pub const ImGuiStyle = struct_ImGuiStyle;
pub const struct_ImGuiStorage = extern struct {
    Data: ImVector_ImGuiStoragePair,
};
pub const ImGuiStorage = struct_ImGuiStorage;
pub const struct_ImGuiSizeCallbackData = extern struct {
    UserData: ?*anyopaque,
    Pos: ImVec2,
    CurrentSize: ImVec2,
    DesiredSize: ImVec2,
};
pub const ImGuiSizeCallbackData = struct_ImGuiSizeCallbackData;
pub const struct_ImGuiPlatformMonitor = extern struct {
    MainPos: ImVec2,
    MainSize: ImVec2,
    WorkPos: ImVec2,
    WorkSize: ImVec2,
    DpiScale: f32,
};
pub const ImGuiPlatformMonitor = struct_ImGuiPlatformMonitor;
pub const struct_ImGuiPlatformIO = extern struct {
    Platform_CreateWindow: ?*const fn ([*c]ImGuiViewport) callconv(.C) void,
    Platform_DestroyWindow: ?*const fn ([*c]ImGuiViewport) callconv(.C) void,
    Platform_ShowWindow: ?*const fn ([*c]ImGuiViewport) callconv(.C) void,
    Platform_SetWindowPos: ?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.C) void,
    Platform_GetWindowPos: ?*const fn ([*c]ImGuiViewport) callconv(.C) ImVec2,
    Platform_SetWindowSize: ?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.C) void,
    Platform_GetWindowSize: ?*const fn ([*c]ImGuiViewport) callconv(.C) ImVec2,
    Platform_SetWindowFocus: ?*const fn ([*c]ImGuiViewport) callconv(.C) void,
    Platform_GetWindowFocus: ?*const fn ([*c]ImGuiViewport) callconv(.C) bool,
    Platform_GetWindowMinimized: ?*const fn ([*c]ImGuiViewport) callconv(.C) bool,
    Platform_SetWindowTitle: ?*const fn ([*c]ImGuiViewport, [*c]const u8) callconv(.C) void,
    Platform_SetWindowAlpha: ?*const fn ([*c]ImGuiViewport, f32) callconv(.C) void,
    Platform_UpdateWindow: ?*const fn ([*c]ImGuiViewport) callconv(.C) void,
    Platform_RenderWindow: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.C) void,
    Platform_SwapBuffers: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.C) void,
    Platform_GetWindowDpiScale: ?*const fn ([*c]ImGuiViewport) callconv(.C) f32,
    Platform_OnChangedViewport: ?*const fn ([*c]ImGuiViewport) callconv(.C) void,
    Platform_SetImeInputPos: ?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.C) void,
    Platform_CreateVkSurface: ?*const fn ([*c]ImGuiViewport, ImU64, ?*const anyopaque, [*c]ImU64) callconv(.C) c_int,
    Renderer_CreateWindow: ?*const fn ([*c]ImGuiViewport) callconv(.C) void,
    Renderer_DestroyWindow: ?*const fn ([*c]ImGuiViewport) callconv(.C) void,
    Renderer_SetWindowSize: ?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.C) void,
    Renderer_RenderWindow: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.C) void,
    Renderer_SwapBuffers: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.C) void,
    Monitors: ImVector_ImGuiPlatformMonitor,
    MainViewport: [*c]ImGuiViewport,
    Viewports: ImVector_ImGuiViewportPtr,
};
pub const ImGuiPlatformIO = struct_ImGuiPlatformIO;
pub const struct_ImGuiPayload = extern struct {
    Data: ?*anyopaque,
    DataSize: c_int,
    SourceId: ImGuiID,
    SourceParentId: ImGuiID,
    DataFrameCount: c_int,
    DataType: [33]u8,
    Preview: bool,
    Delivery: bool,
};
pub const ImGuiPayload = struct_ImGuiPayload;
pub const struct_ImGuiOnceUponAFrame = extern struct {
    RefFrame: c_int,
};
pub const ImGuiOnceUponAFrame = struct_ImGuiOnceUponAFrame;
pub const struct_ImGuiListClipper = extern struct {
    DisplayStart: c_int,
    DisplayEnd: c_int,
    ItemsCount: c_int,
    StepNo: c_int,
    ItemsHeight: f32,
    StartPosY: f32,
};
pub const ImGuiListClipper = struct_ImGuiListClipper;
pub const struct_ImGuiInputTextCallbackData = extern struct {
    EventFlag: ImGuiInputTextFlags,
    Flags: ImGuiInputTextFlags,
    UserData: ?*anyopaque,
    EventChar: ImWchar,
    EventKey: ImGuiKey,
    Buf: [*c]u8,
    BufTextLen: c_int,
    BufSize: c_int,
    BufDirty: bool,
    CursorPos: c_int,
    SelectionStart: c_int,
    SelectionEnd: c_int,
};
pub const ImGuiInputTextCallbackData = struct_ImGuiInputTextCallbackData;
pub const struct_ImGuiIO = extern struct {
    ConfigFlags: ImGuiConfigFlags,
    BackendFlags: ImGuiBackendFlags,
    DisplaySize: ImVec2,
    DeltaTime: f32,
    IniSavingRate: f32,
    IniFilename: [*c]const u8,
    LogFilename: [*c]const u8,
    MouseDoubleClickTime: f32,
    MouseDoubleClickMaxDist: f32,
    MouseDragThreshold: f32,
    KeyMap: [22]c_int,
    KeyRepeatDelay: f32,
    KeyRepeatRate: f32,
    UserData: ?*anyopaque,
    Fonts: *ImFontAtlas,
    FontGlobalScale: f32,
    FontAllowUserScaling: bool,
    FontDefault: [*c]ImFont,
    DisplayFramebufferScale: ImVec2,
    ConfigDockingNoSplit: bool,
    ConfigDockingWithShift: bool,
    ConfigDockingAlwaysTabBar: bool,
    ConfigDockingTransparentPayload: bool,
    ConfigViewportsNoAutoMerge: bool,
    ConfigViewportsNoTaskBarIcon: bool,
    ConfigViewportsNoDecoration: bool,
    ConfigViewportsNoDefaultParent: bool,
    MouseDrawCursor: bool,
    ConfigMacOSXBehaviors: bool,
    ConfigInputTextCursorBlink: bool,
    ConfigWindowsResizeFromEdges: bool,
    ConfigWindowsMoveFromTitleBarOnly: bool,
    ConfigWindowsMemoryCompactTimer: f32,
    BackendPlatformName: [*c]const u8,
    BackendRendererName: [*c]const u8,
    BackendPlatformUserData: ?*anyopaque,
    BackendRendererUserData: ?*anyopaque,
    BackendLanguageUserData: ?*anyopaque,
    GetClipboardTextFn: ?*const fn (?*anyopaque) callconv(.C) [*c]const u8,
    SetClipboardTextFn: ?*const fn (?*anyopaque, [*c]const u8) callconv(.C) void,
    ClipboardUserData: ?*anyopaque,
    RenderDrawListsFnUnused: ?*anyopaque,
    MousePos: ImVec2,
    MouseDown: [5]bool,
    MouseWheel: f32,
    MouseWheelH: f32,
    MouseHoveredViewport: ImGuiID,
    KeyCtrl: bool,
    KeyShift: bool,
    KeyAlt: bool,
    KeySuper: bool,
    KeysDown: [512]bool,
    NavInputs: [21]f32,
    WantCaptureMouse: bool,
    WantCaptureKeyboard: bool,
    WantTextInput: bool,
    WantSetMousePos: bool,
    WantSaveIniSettings: bool,
    NavActive: bool,
    NavVisible: bool,
    Framerate: f32,
    MetricsRenderVertices: c_int,
    MetricsRenderIndices: c_int,
    MetricsRenderWindows: c_int,
    MetricsActiveWindows: c_int,
    MetricsActiveAllocations: c_int,
    MouseDelta: ImVec2,
    KeyMods: ImGuiKeyModFlags,
    MousePosPrev: ImVec2,
    MouseClickedPos: [5]ImVec2,
    MouseClickedTime: [5]f64,
    MouseClicked: [5]bool,
    MouseDoubleClicked: [5]bool,
    MouseReleased: [5]bool,
    MouseDownOwned: [5]bool,
    MouseDownWasDoubleClick: [5]bool,
    MouseDownDuration: [5]f32,
    MouseDownDurationPrev: [5]f32,
    MouseDragMaxDistanceAbs: [5]ImVec2,
    MouseDragMaxDistanceSqr: [5]f32,
    KeysDownDuration: [512]f32,
    KeysDownDurationPrev: [512]f32,
    NavInputsDownDuration: [21]f32,
    NavInputsDownDurationPrev: [21]f32,
    PenPressure: f32,
    InputQueueSurrogate: ImWchar16,
    InputQueueCharacters: ImVector_ImWchar,
};
pub const ImGuiIO = struct_ImGuiIO;
pub const struct_ImGuiContext = extern struct {
    Initialized: bool,
    FontAtlasOwnedByContext: bool,
    IO: ImGuiIO,
    PlatformIO: ImGuiPlatformIO,
    Style: ImGuiStyle,
    ConfigFlagsCurrFrame: ImGuiConfigFlags,
    ConfigFlagsLastFrame: ImGuiConfigFlags,
    Font: [*c]ImFont,
    FontSize: f32,
    FontBaseSize: f32,
    DrawListSharedData: ImDrawListSharedData,
    Time: f64,
    FrameCount: c_int,
    FrameCountEnded: c_int,
    FrameCountPlatformEnded: c_int,
    FrameCountRendered: c_int,
    WithinFrameScope: bool,
    WithinFrameScopeWithImplicitWindow: bool,
    WithinEndChild: bool,
    TestEngineHookItems: bool,
    TestEngineHookIdInfo: ImGuiID,
    TestEngine: ?*anyopaque,
    Windows: ImVector_ImGuiWindowPtr,
    WindowsFocusOrder: ImVector_ImGuiWindowPtr,
    WindowsTempSortBuffer: ImVector_ImGuiWindowPtr,
    CurrentWindowStack: ImVector_ImGuiWindowPtr,
    WindowsById: ImGuiStorage,
    WindowsActiveCount: c_int,
    CurrentWindow: ?*ImGuiWindow,
    HoveredWindow: ?*ImGuiWindow,
    HoveredRootWindow: ?*ImGuiWindow,
    HoveredWindowUnderMovingWindow: ?*ImGuiWindow,
    HoveredDockNode: ?*ImGuiDockNode,
    MovingWindow: ?*ImGuiWindow,
    WheelingWindow: ?*ImGuiWindow,
    WheelingWindowRefMousePos: ImVec2,
    WheelingWindowTimer: f32,
    HoveredId: ImGuiID,
    HoveredIdPreviousFrame: ImGuiID,
    HoveredIdAllowOverlap: bool,
    HoveredIdDisabled: bool,
    HoveredIdTimer: f32,
    HoveredIdNotActiveTimer: f32,
    ActiveId: ImGuiID,
    ActiveIdIsAlive: ImGuiID,
    ActiveIdTimer: f32,
    ActiveIdIsJustActivated: bool,
    ActiveIdAllowOverlap: bool,
    ActiveIdNoClearOnFocusLoss: bool,
    ActiveIdHasBeenPressedBefore: bool,
    ActiveIdHasBeenEditedBefore: bool,
    ActiveIdHasBeenEditedThisFrame: bool,
    ActiveIdUsingNavDirMask: ImU32,
    ActiveIdUsingNavInputMask: ImU32,
    ActiveIdUsingKeyInputMask: ImU64,
    ActiveIdClickOffset: ImVec2,
    ActiveIdWindow: ?*ImGuiWindow,
    ActiveIdSource: ImGuiInputSource,
    ActiveIdMouseButton: c_int,
    ActiveIdPreviousFrame: ImGuiID,
    ActiveIdPreviousFrameIsAlive: bool,
    ActiveIdPreviousFrameHasBeenEditedBefore: bool,
    ActiveIdPreviousFrameWindow: ?*ImGuiWindow,
    LastActiveId: ImGuiID,
    LastActiveIdTimer: f32,
    NextWindowData: ImGuiNextWindowData,
    NextItemData: ImGuiNextItemData,
    ColorModifiers: ImVector_ImGuiColorMod,
    StyleModifiers: ImVector_ImGuiStyleMod,
    FontStack: ImVector_ImFontPtr,
    OpenPopupStack: ImVector_ImGuiPopupData,
    BeginPopupStack: ImVector_ImGuiPopupData,
    Viewports: ImVector_ImGuiViewportPPtr,
    CurrentDpiScale: f32,
    CurrentViewport: [*c]ImGuiViewportP,
    MouseViewport: [*c]ImGuiViewportP,
    MouseLastHoveredViewport: [*c]ImGuiViewportP,
    ViewportFrontMostStampCount: c_int,
    NavWindow: ?*ImGuiWindow,
    NavId: ImGuiID,
    NavFocusScopeId: ImGuiID,
    NavActivateId: ImGuiID,
    NavActivateDownId: ImGuiID,
    NavActivatePressedId: ImGuiID,
    NavInputId: ImGuiID,
    NavJustTabbedId: ImGuiID,
    NavJustMovedToId: ImGuiID,
    NavJustMovedToFocusScopeId: ImGuiID,
    NavJustMovedToKeyMods: ImGuiKeyModFlags,
    NavNextActivateId: ImGuiID,
    NavInputSource: ImGuiInputSource,
    NavScoringRect: ImRect,
    NavScoringCount: c_int,
    NavLayer: ImGuiNavLayer,
    NavIdTabCounter: c_int,
    NavIdIsAlive: bool,
    NavMousePosDirty: bool,
    NavDisableHighlight: bool,
    NavDisableMouseHover: bool,
    NavAnyRequest: bool,
    NavInitRequest: bool,
    NavInitRequestFromMove: bool,
    NavInitResultId: ImGuiID,
    NavInitResultRectRel: ImRect,
    NavMoveRequest: bool,
    NavMoveRequestFlags: ImGuiNavMoveFlags,
    NavMoveRequestForward: ImGuiNavForward,
    NavMoveRequestKeyMods: ImGuiKeyModFlags,
    NavMoveDir: ImGuiDir,
    NavMoveDirLast: ImGuiDir,
    NavMoveClipDir: ImGuiDir,
    NavMoveResultLocal: ImGuiNavMoveResult,
    NavMoveResultLocalVisibleSet: ImGuiNavMoveResult,
    NavMoveResultOther: ImGuiNavMoveResult,
    NavWrapRequestWindow: ?*ImGuiWindow,
    NavWrapRequestFlags: ImGuiNavMoveFlags,
    NavWindowingTarget: ?*ImGuiWindow,
    NavWindowingTargetAnim: ?*ImGuiWindow,
    NavWindowingListWindow: ?*ImGuiWindow,
    NavWindowingTimer: f32,
    NavWindowingHighlightAlpha: f32,
    NavWindowingToggleLayer: bool,
    FocusRequestCurrWindow: ?*ImGuiWindow,
    FocusRequestNextWindow: ?*ImGuiWindow,
    FocusRequestCurrCounterRegular: c_int,
    FocusRequestCurrCounterTabStop: c_int,
    FocusRequestNextCounterRegular: c_int,
    FocusRequestNextCounterTabStop: c_int,
    FocusTabPressed: bool,
    DimBgRatio: f32,
    MouseCursor: ImGuiMouseCursor,
    DragDropActive: bool,
    DragDropWithinSource: bool,
    DragDropWithinTarget: bool,
    DragDropSourceFlags: ImGuiDragDropFlags,
    DragDropSourceFrameCount: c_int,
    DragDropMouseButton: c_int,
    DragDropPayload: ImGuiPayload,
    DragDropTargetRect: ImRect,
    DragDropTargetId: ImGuiID,
    DragDropAcceptFlags: ImGuiDragDropFlags,
    DragDropAcceptIdCurrRectSurface: f32,
    DragDropAcceptIdCurr: ImGuiID,
    DragDropAcceptIdPrev: ImGuiID,
    DragDropAcceptFrameCount: c_int,
    DragDropHoldJustPressedId: ImGuiID,
    DragDropPayloadBufHeap: ImVector_unsigned_char,
    DragDropPayloadBufLocal: [16]u8,
    CurrentTabBar: [*c]ImGuiTabBar,
    TabBars: ImPool_ImGuiTabBar,
    CurrentTabBarStack: ImVector_ImGuiPtrOrIndex,
    ShrinkWidthBuffer: ImVector_ImGuiShrinkWidthItem,
    LastValidMousePos: ImVec2,
    InputTextState: ImGuiInputTextState,
    InputTextPasswordFont: ImFont,
    TempInputId: ImGuiID,
    ColorEditOptions: ImGuiColorEditFlags,
    ColorEditLastHue: f32,
    ColorEditLastSat: f32,
    ColorEditLastColor: [3]f32,
    ColorPickerRef: ImVec4,
    SliderCurrentAccum: f32,
    SliderCurrentAccumDirty: bool,
    DragCurrentAccumDirty: bool,
    DragCurrentAccum: f32,
    DragSpeedDefaultRatio: f32,
    ScrollbarClickDeltaToGrabCenter: f32,
    TooltipOverrideCount: c_int,
    ClipboardHandlerData: ImVector_char,
    MenusIdSubmittedThisFrame: ImVector_ImGuiID,
    PlatformImePos: ImVec2,
    PlatformImeLastPos: ImVec2,
    PlatformImePosViewport: [*c]ImGuiViewportP,
    PlatformLocaleDecimalPoint: u8,
    DockContext: ImGuiDockContext,
    SettingsLoaded: bool,
    SettingsDirtyTimer: f32,
    SettingsIniData: ImGuiTextBuffer,
    SettingsHandlers: ImVector_ImGuiSettingsHandler,
    SettingsWindows: ImChunkStream_ImGuiWindowSettings,
    LogEnabled: bool,
    LogType: ImGuiLogType,
    LogFile: ImFileHandle,
    LogBuffer: ImGuiTextBuffer,
    LogLinePosY: f32,
    LogLineFirstItem: bool,
    LogDepthRef: c_int,
    LogDepthToExpand: c_int,
    LogDepthToExpandDefault: c_int,
    DebugItemPickerActive: bool,
    DebugItemPickerBreakId: ImGuiID,
    FramerateSecPerFrame: [120]f32,
    FramerateSecPerFrameIdx: c_int,
    FramerateSecPerFrameAccum: f32,
    WantCaptureMouseNextFrame: c_int,
    WantCaptureKeyboardNextFrame: c_int,
    WantTextInputNextFrame: c_int,
    TempBuffer: [3073]u8,
};
pub const ImGuiContext = struct_ImGuiContext;
pub const struct_ImColor = extern struct {
    Value: ImVec4,
};
pub const ImColor = struct_ImColor;
pub const struct_ImFontGlyphRangesBuilder = extern struct {
    UsedChars: ImVector_ImU32,
};
pub const ImFontGlyphRangesBuilder = struct_ImFontGlyphRangesBuilder;
pub const struct_ImFontGlyph = opaque {}; // /Users/desaro/zig-gl/src/deps/imgui/cimgui/cimgui.h:1033:18: warning: struct demoted to opaque type - has bitfield
pub const ImFontGlyph = struct_ImFontGlyph;
pub const struct_ImFontConfig = extern struct {
    FontData: ?*anyopaque,
    FontDataSize: c_int,
    FontDataOwnedByAtlas: bool,
    FontNo: c_int,
    SizePixels: f32,
    OversampleH: c_int,
    OversampleV: c_int,
    PixelSnapH: bool,
    GlyphExtraSpacing: ImVec2,
    GlyphOffset: ImVec2,
    GlyphRanges: [*c]const ImWchar,
    GlyphMinAdvanceX: f32,
    GlyphMaxAdvanceX: f32,
    MergeMode: bool,
    RasterizerFlags: c_uint,
    RasterizerMultiply: f32,
    EllipsisChar: ImWchar,
    Name: [40]u8,
    DstFont: [*c]ImFont,
};
pub const ImFontConfig = struct_ImFontConfig;
pub const struct_ImFontAtlas = extern struct {
    Locked: bool,
    Flags: ImFontAtlasFlags,
    TexID: ImTextureID,
    TexDesiredWidth: c_int,
    TexGlyphPadding: c_int,
    TexPixelsAlpha8: [*c]u8,
    TexPixelsRGBA32: [*c]c_uint,
    TexWidth: c_int,
    TexHeight: c_int,
    TexUvScale: ImVec2,
    TexUvWhitePixel: ImVec2,
    Fonts: ImVector_ImFontPtr,
    CustomRects: ImVector_ImFontAtlasCustomRect,
    ConfigData: ImVector_ImFontConfig,
    TexUvLines: [64]ImVec4,
    PackIdMouseCursors: c_int,
    PackIdLines: c_int,
};
pub const ImFontAtlas = struct_ImFontAtlas;
pub const struct_ImFont = extern struct {
    IndexAdvanceX: ImVector_float,
    FallbackAdvanceX: f32,
    FontSize: f32,
    IndexLookup: ImVector_ImWchar,
    Glyphs: ImVector_ImFontGlyph,
    FallbackGlyph: ?*const ImFontGlyph,
    ContainerAtlas: [*c]ImFontAtlas,
    ConfigData: [*c]const ImFontConfig,
    ConfigDataCount: c_short,
    FallbackChar: ImWchar,
    EllipsisChar: ImWchar,
    DirtyLookupTables: bool,
    Scale: f32,
    Ascent: f32,
    Descent: f32,
    MetricsTotalSurface: c_int,
    Used4kPagesMap: [2]ImU8,
};
pub const ImFont = struct_ImFont;
pub const struct_ImDrawVert = extern struct {
    pos: ImVec2,
    uv: ImVec2,
    col: ImU32,
};
pub const ImDrawVert = struct_ImDrawVert;
pub const struct_ImDrawListSplitter = extern struct {
    _Current: c_int,
    _Count: c_int,
    _Channels: ImVector_ImDrawChannel,
};
pub const ImDrawListSplitter = struct_ImDrawListSplitter;
pub const struct_ImDrawListSharedData = extern struct {
    TexUvWhitePixel: ImVec2,
    Font: [*c]ImFont,
    FontSize: f32,
    CurveTessellationTol: f32,
    CircleSegmentMaxError: f32,
    ClipRectFullscreen: ImVec4,
    InitialFlags: ImDrawListFlags,
    ArcFastVtx: [12]ImVec2,
    CircleSegmentCounts: [64]ImU8,
    TexUvLines: [*c]const ImVec4,
};
pub const ImDrawListSharedData = struct_ImDrawListSharedData;
pub const struct_ImDrawList = extern struct {
    CmdBuffer: ImVector_ImDrawCmd,
    IdxBuffer: ImVector_ImDrawIdx,
    VtxBuffer: ImVector_ImDrawVert,
    Flags: ImDrawListFlags,
    _Data: [*c]const ImDrawListSharedData,
    _OwnerName: [*c]const u8,
    _VtxCurrentIdx: c_uint,
    _VtxWritePtr: [*c]ImDrawVert,
    _IdxWritePtr: [*c]ImDrawIdx,
    _ClipRectStack: ImVector_ImVec4,
    _TextureIdStack: ImVector_ImTextureID,
    _Path: ImVector_ImVec2,
    _CmdHeader: ImDrawCmd,
    _Splitter: ImDrawListSplitter,
};
pub const ImDrawList = struct_ImDrawList;
pub const struct_ImDrawData = extern struct {
    Valid: bool,
    CmdLists: [*c]*ImDrawList,
    CmdListsCount: c_int,
    TotalIdxCount: c_int,
    TotalVtxCount: c_int,
    DisplayPos: ImVec2,
    DisplaySize: ImVec2,
    FramebufferScale: ImVec2,
    OwnerViewport: [*c]ImGuiViewport,
};
pub const ImDrawData = struct_ImDrawData;
pub const struct_ImDrawCmd = extern struct {
    ClipRect: ImVec4,
    TextureId: ImTextureID,
    VtxOffset: c_uint,
    IdxOffset: c_uint,
    ElemCount: c_uint,
    UserCallback: ImDrawCallback,
    UserCallbackData: ?*anyopaque,
};
pub const ImDrawCmd = struct_ImDrawCmd;
pub const struct_ImDrawChannel = extern struct {
    _CmdBuffer: ImVector_ImDrawCmd,
    _IdxBuffer: ImVector_ImDrawIdx,
};
pub const ImDrawChannel = struct_ImDrawChannel;
pub const ImGuiCol = c_int;
pub const ImGuiCond = c_int;
pub const ImGuiDataType = c_int;
pub const ImGuiDir = c_int;
pub const ImGuiKey = c_int;
pub const ImGuiNavInput = c_int;
pub const ImGuiMouseButton = c_int;
pub const ImGuiMouseCursor = c_int;
pub const ImGuiStyleVar = c_int;
pub const ImDrawCornerFlags = c_int;
pub const ImDrawListFlags = c_int;
pub const ImFontAtlasFlags = c_int;
pub const ImGuiBackendFlags = c_int;
pub const ImGuiButtonFlags = c_int;
pub const ImGuiColorEditFlags = c_int;
pub const ImGuiConfigFlags = c_int;
pub const ImGuiComboFlags = c_int;
pub const ImGuiDockNodeFlags = c_int;
pub const ImGuiDragDropFlags = c_int;
pub const ImGuiFocusedFlags = c_int;
pub const ImGuiHoveredFlags = c_int;
pub const ImGuiInputTextFlags = c_int;
pub const ImGuiKeyModFlags = c_int;
pub const ImGuiPopupFlags = c_int;
pub const ImGuiSelectableFlags = c_int;
pub const ImGuiSliderFlags = c_int;
pub const ImGuiTabBarFlags = c_int;
pub const ImGuiTabItemFlags = c_int;
pub const ImGuiTreeNodeFlags = c_int;
pub const ImGuiViewportFlags = c_int;
pub const ImGuiWindowFlags = c_int;
pub const ImTextureID = ?*anyopaque;
pub const ImGuiID = c_uint;
pub const ImGuiInputTextCallback = ?*const fn ([*c]ImGuiInputTextCallbackData) callconv(.C) c_int;
pub const ImGuiSizeCallback = ?*const fn ([*c]ImGuiSizeCallbackData) callconv(.C) void;
pub const ImWchar16 = c_ushort;
pub const ImWchar32 = c_uint;
pub const ImWchar = ImWchar16;
pub const ImS8 = i8;
pub const ImU8 = u8;
pub const ImS16 = c_short;
pub const ImU16 = c_ushort;
pub const ImS32 = c_int;
pub const ImU32 = c_uint;
pub const ImS64 = i64;
pub const ImU64 = u64;
pub const ImDrawCallback = ?*const fn ([*c]const ImDrawList, [*c]const ImDrawCmd) callconv(.C) void;
pub const ImDrawIdx = c_ushort;
pub const ImGuiDataAuthority = c_int;
pub const ImGuiLayoutType = c_int;
pub const ImGuiColumnsFlags = c_int;
pub const ImGuiItemFlags = c_int;
pub const ImGuiItemStatusFlags = c_int;
pub const ImGuiNavHighlightFlags = c_int;
pub const ImGuiNavDirSourceFlags = c_int;
pub const ImGuiNavMoveFlags = c_int;
pub const ImGuiNextItemDataFlags = c_int;
pub const ImGuiNextWindowDataFlags = c_int;
pub const ImGuiSeparatorFlags = c_int;
pub const ImGuiTextFlags = c_int;
pub const ImGuiTooltipFlags = c_int;
pub extern var GImGui: [*c]ImGuiContext;
pub const ImFileHandle = [*c]FILE;
pub const ImPoolIdx = c_int;
pub const struct_ImVector = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?*anyopaque,
};
pub const ImVector = struct_ImVector;
pub const struct_ImVector_ImGuiWindowSettings = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiWindowSettings,
};
pub const ImVector_ImGuiWindowSettings = struct_ImVector_ImGuiWindowSettings;
pub const struct_ImChunkStream_ImGuiWindowSettings = extern struct {
    Buf: ImVector_ImGuiWindowSettings,
};
pub const ImChunkStream_ImGuiWindowSettings = struct_ImChunkStream_ImGuiWindowSettings;
pub const struct_ImVector_ImDrawChannel = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImDrawChannel,
};
pub const ImVector_ImDrawChannel = struct_ImVector_ImDrawChannel;
pub const struct_ImVector_ImDrawCmd = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImDrawCmd,
};
pub const ImVector_ImDrawCmd = struct_ImVector_ImDrawCmd;
pub const struct_ImVector_ImDrawIdx = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImDrawIdx,
};
pub const ImVector_ImDrawIdx = struct_ImVector_ImDrawIdx;
pub const struct_ImVector_ImDrawListPtr = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c][*c]ImDrawList,
};
pub const ImVector_ImDrawListPtr = struct_ImVector_ImDrawListPtr;
pub const struct_ImVector_ImDrawVert = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImDrawVert,
};
pub const ImVector_ImDrawVert = struct_ImVector_ImDrawVert;
pub const struct_ImVector_ImFontPtr = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c][*c]ImFont,
};
pub const ImVector_ImFontPtr = struct_ImVector_ImFontPtr;
pub const struct_ImVector_ImFontAtlasCustomRect = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImFontAtlasCustomRect,
};
pub const ImVector_ImFontAtlasCustomRect = struct_ImVector_ImFontAtlasCustomRect;
pub const struct_ImVector_ImFontConfig = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImFontConfig,
};
pub const ImVector_ImFontConfig = struct_ImVector_ImFontConfig;
pub const struct_ImVector_ImFontGlyph = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?*ImFontGlyph,
};
pub const ImVector_ImFontGlyph = struct_ImVector_ImFontGlyph;
pub const struct_ImVector_ImGuiColorMod = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiColorMod,
};
pub const ImVector_ImGuiColorMod = struct_ImVector_ImGuiColorMod;
pub const struct_ImVector_ImGuiColumnData = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiColumnData,
};
pub const ImVector_ImGuiColumnData = struct_ImVector_ImGuiColumnData;
pub const struct_ImVector_ImGuiColumns = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiColumns,
};
pub const ImVector_ImGuiColumns = struct_ImVector_ImGuiColumns;
pub const struct_ImVector_ImGuiDockNodeSettings = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?*ImGuiDockNodeSettings,
};
pub const ImVector_ImGuiDockNodeSettings = struct_ImVector_ImGuiDockNodeSettings;
pub const struct_ImVector_ImGuiDockRequest = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?*ImGuiDockRequest,
};
pub const ImVector_ImGuiDockRequest = struct_ImVector_ImGuiDockRequest;
pub const struct_ImVector_ImGuiGroupData = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiGroupData,
};
pub const ImVector_ImGuiGroupData = struct_ImVector_ImGuiGroupData;
pub const struct_ImVector_ImGuiID = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiID,
};
pub const ImVector_ImGuiID = struct_ImVector_ImGuiID;
pub const struct_ImVector_ImGuiItemFlags = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiItemFlags,
};
pub const ImVector_ImGuiItemFlags = struct_ImVector_ImGuiItemFlags;
pub const struct_ImVector_ImGuiPlatformMonitor = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiPlatformMonitor,
};
pub const ImVector_ImGuiPlatformMonitor = struct_ImVector_ImGuiPlatformMonitor;
pub const struct_ImVector_ImGuiPopupData = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiPopupData,
};
pub const ImVector_ImGuiPopupData = struct_ImVector_ImGuiPopupData;
pub const struct_ImVector_ImGuiPtrOrIndex = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiPtrOrIndex,
};
pub const ImVector_ImGuiPtrOrIndex = struct_ImVector_ImGuiPtrOrIndex;
pub const struct_ImVector_ImGuiSettingsHandler = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiSettingsHandler,
};
pub const ImVector_ImGuiSettingsHandler = struct_ImVector_ImGuiSettingsHandler;
pub const struct_ImVector_ImGuiShrinkWidthItem = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiShrinkWidthItem,
};
pub const ImVector_ImGuiShrinkWidthItem = struct_ImVector_ImGuiShrinkWidthItem;
pub const struct_ImVector_ImGuiStoragePair = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiStoragePair,
};
pub const ImVector_ImGuiStoragePair = struct_ImVector_ImGuiStoragePair;
pub const struct_ImVector_ImGuiStyleMod = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiStyleMod,
};
pub const ImVector_ImGuiStyleMod = struct_ImVector_ImGuiStyleMod;
pub const struct_ImVector_ImGuiTabItem = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiTabItem,
};
pub const ImVector_ImGuiTabItem = struct_ImVector_ImGuiTabItem;
pub const struct_ImVector_ImGuiTextRange = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiTextRange,
};
pub const ImVector_ImGuiTextRange = struct_ImVector_ImGuiTextRange;
pub const struct_ImVector_ImGuiViewportPtr = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c][*c]ImGuiViewport,
};
pub const ImVector_ImGuiViewportPtr = struct_ImVector_ImGuiViewportPtr;
pub const struct_ImVector_ImGuiViewportPPtr = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c][*c]ImGuiViewportP,
};
pub const ImVector_ImGuiViewportPPtr = struct_ImVector_ImGuiViewportPPtr;
pub const struct_ImVector_ImGuiWindowPtr = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]?*ImGuiWindow,
};
pub const ImVector_ImGuiWindowPtr = struct_ImVector_ImGuiWindowPtr;
pub const struct_ImVector_ImTextureID = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImTextureID,
};
pub const ImVector_ImTextureID = struct_ImVector_ImTextureID;
pub const struct_ImVector_ImU32 = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImU32,
};
pub const ImVector_ImU32 = struct_ImVector_ImU32;
pub const struct_ImVector_ImVec2 = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImVec2,
};
pub const ImVector_ImVec2 = struct_ImVector_ImVec2;
pub const struct_ImVector_ImVec4 = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImVec4,
};
pub const ImVector_ImVec4 = struct_ImVector_ImVec4;
pub const struct_ImVector_ImWchar = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImWchar,
};
pub const ImVector_ImWchar = struct_ImVector_ImWchar;
pub const struct_ImVector_char = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]u8,
};
pub const ImVector_char = struct_ImVector_char;
pub const struct_ImVector_const_charPtr = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c][*c]const u8,
};
pub const ImVector_const_charPtr = struct_ImVector_const_charPtr;
pub const struct_ImVector_float = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]f32,
};
pub const ImVector_float = struct_ImVector_float;
pub const struct_ImVector_unsigned_char = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]u8,
};
pub const ImVector_unsigned_char = struct_ImVector_unsigned_char;
pub const ImGuiWindowFlags_None = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_None);
pub const ImGuiWindowFlags_NoTitleBar = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoTitleBar);
pub const ImGuiWindowFlags_NoResize = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoResize);
pub const ImGuiWindowFlags_NoMove = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoMove);
pub const ImGuiWindowFlags_NoScrollbar = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoScrollbar);
pub const ImGuiWindowFlags_NoScrollWithMouse = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoScrollWithMouse);
pub const ImGuiWindowFlags_NoCollapse = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoCollapse);
pub const ImGuiWindowFlags_AlwaysAutoResize = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_AlwaysAutoResize);
pub const ImGuiWindowFlags_NoBackground = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoBackground);
pub const ImGuiWindowFlags_NoSavedSettings = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoSavedSettings);
pub const ImGuiWindowFlags_NoMouseInputs = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoMouseInputs);
pub const ImGuiWindowFlags_MenuBar = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_MenuBar);
pub const ImGuiWindowFlags_HorizontalScrollbar = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_HorizontalScrollbar);
pub const ImGuiWindowFlags_NoFocusOnAppearing = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoFocusOnAppearing);
pub const ImGuiWindowFlags_NoBringToFrontOnFocus = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoBringToFrontOnFocus);
pub const ImGuiWindowFlags_AlwaysVerticalScrollbar = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_AlwaysVerticalScrollbar);
pub const ImGuiWindowFlags_AlwaysHorizontalScrollbar = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_AlwaysHorizontalScrollbar);
pub const ImGuiWindowFlags_AlwaysUseWindowPadding = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_AlwaysUseWindowPadding);
pub const ImGuiWindowFlags_NoNavInputs = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoNavInputs);
pub const ImGuiWindowFlags_NoNavFocus = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoNavFocus);
pub const ImGuiWindowFlags_UnsavedDocument = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_UnsavedDocument);
pub const ImGuiWindowFlags_NoDocking = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoDocking);
pub const ImGuiWindowFlags_NoNav = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoNav);
pub const ImGuiWindowFlags_NoDecoration = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoDecoration);
pub const ImGuiWindowFlags_NoInputs = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NoInputs);
pub const ImGuiWindowFlags_NavFlattened = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_NavFlattened);
pub const ImGuiWindowFlags_ChildWindow = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_ChildWindow);
pub const ImGuiWindowFlags_Tooltip = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_Tooltip);
pub const ImGuiWindowFlags_Popup = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_Popup);
pub const ImGuiWindowFlags_Modal = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_Modal);
pub const ImGuiWindowFlags_ChildMenu = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_ChildMenu);
pub const ImGuiWindowFlags_DockNodeHost = @intFromEnum(enum_unnamed_4.ImGuiWindowFlags_DockNodeHost);
const enum_unnamed_4 = enum(c_int) {
    ImGuiWindowFlags_None = 0,
    ImGuiWindowFlags_NoTitleBar = 1,
    ImGuiWindowFlags_NoResize = 2,
    ImGuiWindowFlags_NoMove = 4,
    ImGuiWindowFlags_NoScrollbar = 8,
    ImGuiWindowFlags_NoScrollWithMouse = 16,
    ImGuiWindowFlags_NoCollapse = 32,
    ImGuiWindowFlags_AlwaysAutoResize = 64,
    ImGuiWindowFlags_NoBackground = 128,
    ImGuiWindowFlags_NoSavedSettings = 256,
    ImGuiWindowFlags_NoMouseInputs = 512,
    ImGuiWindowFlags_MenuBar = 1024,
    ImGuiWindowFlags_HorizontalScrollbar = 2048,
    ImGuiWindowFlags_NoFocusOnAppearing = 4096,
    ImGuiWindowFlags_NoBringToFrontOnFocus = 8192,
    ImGuiWindowFlags_AlwaysVerticalScrollbar = 16384,
    ImGuiWindowFlags_AlwaysHorizontalScrollbar = 32768,
    ImGuiWindowFlags_AlwaysUseWindowPadding = 65536,
    ImGuiWindowFlags_NoNavInputs = 262144,
    ImGuiWindowFlags_NoNavFocus = 524288,
    ImGuiWindowFlags_UnsavedDocument = 1048576,
    ImGuiWindowFlags_NoDocking = 2097152,
    ImGuiWindowFlags_NoNav = 786432,
    ImGuiWindowFlags_NoDecoration = 43,
    ImGuiWindowFlags_NoInputs = 786944,
    ImGuiWindowFlags_NavFlattened = 8388608,
    ImGuiWindowFlags_ChildWindow = 16777216,
    ImGuiWindowFlags_Tooltip = 33554432,
    ImGuiWindowFlags_Popup = 67108864,
    ImGuiWindowFlags_Modal = 134217728,
    ImGuiWindowFlags_ChildMenu = 268435456,
    ImGuiWindowFlags_DockNodeHost = 536870912,
    _,
};
pub const ImGuiWindowFlags_ = enum_unnamed_4;
pub const ImGuiInputTextFlags_None = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_None);
pub const ImGuiInputTextFlags_CharsDecimal = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_CharsDecimal);
pub const ImGuiInputTextFlags_CharsHexadecimal = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_CharsHexadecimal);
pub const ImGuiInputTextFlags_CharsUppercase = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_CharsUppercase);
pub const ImGuiInputTextFlags_CharsNoBlank = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_CharsNoBlank);
pub const ImGuiInputTextFlags_AutoSelectAll = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_AutoSelectAll);
pub const ImGuiInputTextFlags_EnterReturnsTrue = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_EnterReturnsTrue);
pub const ImGuiInputTextFlags_CallbackCompletion = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_CallbackCompletion);
pub const ImGuiInputTextFlags_CallbackHistory = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_CallbackHistory);
pub const ImGuiInputTextFlags_CallbackAlways = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_CallbackAlways);
pub const ImGuiInputTextFlags_CallbackCharFilter = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_CallbackCharFilter);
pub const ImGuiInputTextFlags_AllowTabInput = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_AllowTabInput);
pub const ImGuiInputTextFlags_CtrlEnterForNewLine = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_CtrlEnterForNewLine);
pub const ImGuiInputTextFlags_NoHorizontalScroll = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_NoHorizontalScroll);
pub const ImGuiInputTextFlags_AlwaysInsertMode = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_AlwaysInsertMode);
pub const ImGuiInputTextFlags_ReadOnly = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_ReadOnly);
pub const ImGuiInputTextFlags_Password = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_Password);
pub const ImGuiInputTextFlags_NoUndoRedo = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_NoUndoRedo);
pub const ImGuiInputTextFlags_CharsScientific = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_CharsScientific);
pub const ImGuiInputTextFlags_CallbackResize = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_CallbackResize);
pub const ImGuiInputTextFlags_CallbackEdit = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_CallbackEdit);
pub const ImGuiInputTextFlags_Multiline = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_Multiline);
pub const ImGuiInputTextFlags_NoMarkEdited = @intFromEnum(enum_unnamed_5.ImGuiInputTextFlags_NoMarkEdited);
const enum_unnamed_5 = enum(c_int) {
    ImGuiInputTextFlags_None = 0,
    ImGuiInputTextFlags_CharsDecimal = 1,
    ImGuiInputTextFlags_CharsHexadecimal = 2,
    ImGuiInputTextFlags_CharsUppercase = 4,
    ImGuiInputTextFlags_CharsNoBlank = 8,
    ImGuiInputTextFlags_AutoSelectAll = 16,
    ImGuiInputTextFlags_EnterReturnsTrue = 32,
    ImGuiInputTextFlags_CallbackCompletion = 64,
    ImGuiInputTextFlags_CallbackHistory = 128,
    ImGuiInputTextFlags_CallbackAlways = 256,
    ImGuiInputTextFlags_CallbackCharFilter = 512,
    ImGuiInputTextFlags_AllowTabInput = 1024,
    ImGuiInputTextFlags_CtrlEnterForNewLine = 2048,
    ImGuiInputTextFlags_NoHorizontalScroll = 4096,
    ImGuiInputTextFlags_AlwaysInsertMode = 8192,
    ImGuiInputTextFlags_ReadOnly = 16384,
    ImGuiInputTextFlags_Password = 32768,
    ImGuiInputTextFlags_NoUndoRedo = 65536,
    ImGuiInputTextFlags_CharsScientific = 131072,
    ImGuiInputTextFlags_CallbackResize = 262144,
    ImGuiInputTextFlags_CallbackEdit = 524288,
    ImGuiInputTextFlags_Multiline = 1048576,
    ImGuiInputTextFlags_NoMarkEdited = 2097152,
    _,
};
pub const ImGuiInputTextFlags_ = enum_unnamed_5;
pub const ImGuiTreeNodeFlags_None = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_None);
pub const ImGuiTreeNodeFlags_Selected = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_Selected);
pub const ImGuiTreeNodeFlags_Framed = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_Framed);
pub const ImGuiTreeNodeFlags_AllowItemOverlap = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_AllowItemOverlap);
pub const ImGuiTreeNodeFlags_NoTreePushOnOpen = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_NoTreePushOnOpen);
pub const ImGuiTreeNodeFlags_NoAutoOpenOnLog = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_NoAutoOpenOnLog);
pub const ImGuiTreeNodeFlags_DefaultOpen = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_DefaultOpen);
pub const ImGuiTreeNodeFlags_OpenOnDoubleClick = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_OpenOnDoubleClick);
pub const ImGuiTreeNodeFlags_OpenOnArrow = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_OpenOnArrow);
pub const ImGuiTreeNodeFlags_Leaf = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_Leaf);
pub const ImGuiTreeNodeFlags_Bullet = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_Bullet);
pub const ImGuiTreeNodeFlags_FramePadding = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_FramePadding);
pub const ImGuiTreeNodeFlags_SpanAvailWidth = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_SpanAvailWidth);
pub const ImGuiTreeNodeFlags_SpanFullWidth = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_SpanFullWidth);
pub const ImGuiTreeNodeFlags_NavLeftJumpsBackHere = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_NavLeftJumpsBackHere);
pub const ImGuiTreeNodeFlags_CollapsingHeader = @intFromEnum(enum_unnamed_6.ImGuiTreeNodeFlags_CollapsingHeader);
const enum_unnamed_6 = enum(c_int) {
    ImGuiTreeNodeFlags_None = 0,
    ImGuiTreeNodeFlags_Selected = 1,
    ImGuiTreeNodeFlags_Framed = 2,
    ImGuiTreeNodeFlags_AllowItemOverlap = 4,
    ImGuiTreeNodeFlags_NoTreePushOnOpen = 8,
    ImGuiTreeNodeFlags_NoAutoOpenOnLog = 16,
    ImGuiTreeNodeFlags_DefaultOpen = 32,
    ImGuiTreeNodeFlags_OpenOnDoubleClick = 64,
    ImGuiTreeNodeFlags_OpenOnArrow = 128,
    ImGuiTreeNodeFlags_Leaf = 256,
    ImGuiTreeNodeFlags_Bullet = 512,
    ImGuiTreeNodeFlags_FramePadding = 1024,
    ImGuiTreeNodeFlags_SpanAvailWidth = 2048,
    ImGuiTreeNodeFlags_SpanFullWidth = 4096,
    ImGuiTreeNodeFlags_NavLeftJumpsBackHere = 8192,
    ImGuiTreeNodeFlags_CollapsingHeader = 26,
    _,
};
pub const ImGuiTreeNodeFlags_ = enum_unnamed_6;
pub const ImGuiPopupFlags_None = @intFromEnum(enum_unnamed_7.ImGuiPopupFlags_None);
pub const ImGuiPopupFlags_MouseButtonLeft = @intFromEnum(enum_unnamed_7.ImGuiPopupFlags_MouseButtonLeft);
pub const ImGuiPopupFlags_MouseButtonRight = @intFromEnum(enum_unnamed_7.ImGuiPopupFlags_MouseButtonRight);
pub const ImGuiPopupFlags_MouseButtonMiddle = @intFromEnum(enum_unnamed_7.ImGuiPopupFlags_MouseButtonMiddle);
pub const ImGuiPopupFlags_MouseButtonMask_ = @intFromEnum(enum_unnamed_7.ImGuiPopupFlags_MouseButtonMask_);
pub const ImGuiPopupFlags_MouseButtonDefault_ = @intFromEnum(enum_unnamed_7.ImGuiPopupFlags_MouseButtonDefault_);
pub const ImGuiPopupFlags_NoOpenOverExistingPopup = @intFromEnum(enum_unnamed_7.ImGuiPopupFlags_NoOpenOverExistingPopup);
pub const ImGuiPopupFlags_NoOpenOverItems = @intFromEnum(enum_unnamed_7.ImGuiPopupFlags_NoOpenOverItems);
pub const ImGuiPopupFlags_AnyPopupId = @intFromEnum(enum_unnamed_7.ImGuiPopupFlags_AnyPopupId);
pub const ImGuiPopupFlags_AnyPopupLevel = @intFromEnum(enum_unnamed_7.ImGuiPopupFlags_AnyPopupLevel);
pub const ImGuiPopupFlags_AnyPopup = @intFromEnum(enum_unnamed_7.ImGuiPopupFlags_AnyPopup);
const enum_unnamed_7 = enum(c_int) {
    ImGuiPopupFlags_None = 0,
    ImGuiPopupFlags_MouseButtonLeft = 0,
    ImGuiPopupFlags_MouseButtonRight = 1,
    ImGuiPopupFlags_MouseButtonMiddle = 2,
    ImGuiPopupFlags_MouseButtonMask_ = 31,
    ImGuiPopupFlags_MouseButtonDefault_ = 1,
    ImGuiPopupFlags_NoOpenOverExistingPopup = 32,
    ImGuiPopupFlags_NoOpenOverItems = 64,
    ImGuiPopupFlags_AnyPopupId = 128,
    ImGuiPopupFlags_AnyPopupLevel = 256,
    ImGuiPopupFlags_AnyPopup = 384,
    _,
};
pub const ImGuiPopupFlags_ = enum_unnamed_7;
pub const ImGuiSelectableFlags_None = @intFromEnum(enum_unnamed_8.ImGuiSelectableFlags_None);
pub const ImGuiSelectableFlags_DontClosePopups = @intFromEnum(enum_unnamed_8.ImGuiSelectableFlags_DontClosePopups);
pub const ImGuiSelectableFlags_SpanAllColumns = @intFromEnum(enum_unnamed_8.ImGuiSelectableFlags_SpanAllColumns);
pub const ImGuiSelectableFlags_AllowDoubleClick = @intFromEnum(enum_unnamed_8.ImGuiSelectableFlags_AllowDoubleClick);
pub const ImGuiSelectableFlags_Disabled = @intFromEnum(enum_unnamed_8.ImGuiSelectableFlags_Disabled);
pub const ImGuiSelectableFlags_AllowItemOverlap = @intFromEnum(enum_unnamed_8.ImGuiSelectableFlags_AllowItemOverlap);
const enum_unnamed_8 = enum(c_int) {
    ImGuiSelectableFlags_None = 0,
    ImGuiSelectableFlags_DontClosePopups = 1,
    ImGuiSelectableFlags_SpanAllColumns = 2,
    ImGuiSelectableFlags_AllowDoubleClick = 4,
    ImGuiSelectableFlags_Disabled = 8,
    ImGuiSelectableFlags_AllowItemOverlap = 16,
    _,
};
pub const ImGuiSelectableFlags_ = enum_unnamed_8;
pub const ImGuiComboFlags_None = @intFromEnum(enum_unnamed_9.ImGuiComboFlags_None);
pub const ImGuiComboFlags_PopupAlignLeft = @intFromEnum(enum_unnamed_9.ImGuiComboFlags_PopupAlignLeft);
pub const ImGuiComboFlags_HeightSmall = @intFromEnum(enum_unnamed_9.ImGuiComboFlags_HeightSmall);
pub const ImGuiComboFlags_HeightRegular = @intFromEnum(enum_unnamed_9.ImGuiComboFlags_HeightRegular);
pub const ImGuiComboFlags_HeightLarge = @intFromEnum(enum_unnamed_9.ImGuiComboFlags_HeightLarge);
pub const ImGuiComboFlags_HeightLargest = @intFromEnum(enum_unnamed_9.ImGuiComboFlags_HeightLargest);
pub const ImGuiComboFlags_NoArrowButton = @intFromEnum(enum_unnamed_9.ImGuiComboFlags_NoArrowButton);
pub const ImGuiComboFlags_NoPreview = @intFromEnum(enum_unnamed_9.ImGuiComboFlags_NoPreview);
pub const ImGuiComboFlags_HeightMask_ = @intFromEnum(enum_unnamed_9.ImGuiComboFlags_HeightMask_);
const enum_unnamed_9 = enum(c_int) {
    ImGuiComboFlags_None = 0,
    ImGuiComboFlags_PopupAlignLeft = 1,
    ImGuiComboFlags_HeightSmall = 2,
    ImGuiComboFlags_HeightRegular = 4,
    ImGuiComboFlags_HeightLarge = 8,
    ImGuiComboFlags_HeightLargest = 16,
    ImGuiComboFlags_NoArrowButton = 32,
    ImGuiComboFlags_NoPreview = 64,
    ImGuiComboFlags_HeightMask_ = 30,
    _,
};
pub const ImGuiComboFlags_ = enum_unnamed_9;
pub const ImGuiTabBarFlags_None = @intFromEnum(enum_unnamed_10.ImGuiTabBarFlags_None);
pub const ImGuiTabBarFlags_Reorderable = @intFromEnum(enum_unnamed_10.ImGuiTabBarFlags_Reorderable);
pub const ImGuiTabBarFlags_AutoSelectNewTabs = @intFromEnum(enum_unnamed_10.ImGuiTabBarFlags_AutoSelectNewTabs);
pub const ImGuiTabBarFlags_TabListPopupButton = @intFromEnum(enum_unnamed_10.ImGuiTabBarFlags_TabListPopupButton);
pub const ImGuiTabBarFlags_NoCloseWithMiddleMouseButton = @intFromEnum(enum_unnamed_10.ImGuiTabBarFlags_NoCloseWithMiddleMouseButton);
pub const ImGuiTabBarFlags_NoTabListScrollingButtons = @intFromEnum(enum_unnamed_10.ImGuiTabBarFlags_NoTabListScrollingButtons);
pub const ImGuiTabBarFlags_NoTooltip = @intFromEnum(enum_unnamed_10.ImGuiTabBarFlags_NoTooltip);
pub const ImGuiTabBarFlags_FittingPolicyResizeDown = @intFromEnum(enum_unnamed_10.ImGuiTabBarFlags_FittingPolicyResizeDown);
pub const ImGuiTabBarFlags_FittingPolicyScroll = @intFromEnum(enum_unnamed_10.ImGuiTabBarFlags_FittingPolicyScroll);
pub const ImGuiTabBarFlags_FittingPolicyMask_ = @intFromEnum(enum_unnamed_10.ImGuiTabBarFlags_FittingPolicyMask_);
pub const ImGuiTabBarFlags_FittingPolicyDefault_ = @intFromEnum(enum_unnamed_10.ImGuiTabBarFlags_FittingPolicyDefault_);
const enum_unnamed_10 = enum(c_int) {
    ImGuiTabBarFlags_None = 0,
    ImGuiTabBarFlags_Reorderable = 1,
    ImGuiTabBarFlags_AutoSelectNewTabs = 2,
    ImGuiTabBarFlags_TabListPopupButton = 4,
    ImGuiTabBarFlags_NoCloseWithMiddleMouseButton = 8,
    ImGuiTabBarFlags_NoTabListScrollingButtons = 16,
    ImGuiTabBarFlags_NoTooltip = 32,
    ImGuiTabBarFlags_FittingPolicyResizeDown = 64,
    ImGuiTabBarFlags_FittingPolicyScroll = 128,
    ImGuiTabBarFlags_FittingPolicyMask_ = 192,
    ImGuiTabBarFlags_FittingPolicyDefault_ = 64,
    _,
};
pub const ImGuiTabBarFlags_ = enum_unnamed_10;
pub const ImGuiTabItemFlags_None = @intFromEnum(enum_unnamed_11.ImGuiTabItemFlags_None);
pub const ImGuiTabItemFlags_UnsavedDocument = @intFromEnum(enum_unnamed_11.ImGuiTabItemFlags_UnsavedDocument);
pub const ImGuiTabItemFlags_SetSelected = @intFromEnum(enum_unnamed_11.ImGuiTabItemFlags_SetSelected);
pub const ImGuiTabItemFlags_NoCloseWithMiddleMouseButton = @intFromEnum(enum_unnamed_11.ImGuiTabItemFlags_NoCloseWithMiddleMouseButton);
pub const ImGuiTabItemFlags_NoPushId = @intFromEnum(enum_unnamed_11.ImGuiTabItemFlags_NoPushId);
pub const ImGuiTabItemFlags_NoTooltip = @intFromEnum(enum_unnamed_11.ImGuiTabItemFlags_NoTooltip);
pub const ImGuiTabItemFlags_NoReorder = @intFromEnum(enum_unnamed_11.ImGuiTabItemFlags_NoReorder);
pub const ImGuiTabItemFlags_Leading = @intFromEnum(enum_unnamed_11.ImGuiTabItemFlags_Leading);
pub const ImGuiTabItemFlags_Trailing = @intFromEnum(enum_unnamed_11.ImGuiTabItemFlags_Trailing);
const enum_unnamed_11 = enum(c_int) {
    ImGuiTabItemFlags_None = 0,
    ImGuiTabItemFlags_UnsavedDocument = 1,
    ImGuiTabItemFlags_SetSelected = 2,
    ImGuiTabItemFlags_NoCloseWithMiddleMouseButton = 4,
    ImGuiTabItemFlags_NoPushId = 8,
    ImGuiTabItemFlags_NoTooltip = 16,
    ImGuiTabItemFlags_NoReorder = 32,
    ImGuiTabItemFlags_Leading = 64,
    ImGuiTabItemFlags_Trailing = 128,
    _,
};
pub const ImGuiTabItemFlags_ = enum_unnamed_11;
pub const ImGuiFocusedFlags_None = @intFromEnum(enum_unnamed_12.ImGuiFocusedFlags_None);
pub const ImGuiFocusedFlags_ChildWindows = @intFromEnum(enum_unnamed_12.ImGuiFocusedFlags_ChildWindows);
pub const ImGuiFocusedFlags_RootWindow = @intFromEnum(enum_unnamed_12.ImGuiFocusedFlags_RootWindow);
pub const ImGuiFocusedFlags_AnyWindow = @intFromEnum(enum_unnamed_12.ImGuiFocusedFlags_AnyWindow);
pub const ImGuiFocusedFlags_RootAndChildWindows = @intFromEnum(enum_unnamed_12.ImGuiFocusedFlags_RootAndChildWindows);
const enum_unnamed_12 = enum(c_int) {
    ImGuiFocusedFlags_None = 0,
    ImGuiFocusedFlags_ChildWindows = 1,
    ImGuiFocusedFlags_RootWindow = 2,
    ImGuiFocusedFlags_AnyWindow = 4,
    ImGuiFocusedFlags_RootAndChildWindows = 3,
    _,
};
pub const ImGuiFocusedFlags_ = enum_unnamed_12;
pub const ImGuiHoveredFlags_None = @intFromEnum(enum_unnamed_13.ImGuiHoveredFlags_None);
pub const ImGuiHoveredFlags_ChildWindows = @intFromEnum(enum_unnamed_13.ImGuiHoveredFlags_ChildWindows);
pub const ImGuiHoveredFlags_RootWindow = @intFromEnum(enum_unnamed_13.ImGuiHoveredFlags_RootWindow);
pub const ImGuiHoveredFlags_AnyWindow = @intFromEnum(enum_unnamed_13.ImGuiHoveredFlags_AnyWindow);
pub const ImGuiHoveredFlags_AllowWhenBlockedByPopup = @intFromEnum(enum_unnamed_13.ImGuiHoveredFlags_AllowWhenBlockedByPopup);
pub const ImGuiHoveredFlags_AllowWhenBlockedByActiveItem = @intFromEnum(enum_unnamed_13.ImGuiHoveredFlags_AllowWhenBlockedByActiveItem);
pub const ImGuiHoveredFlags_AllowWhenOverlapped = @intFromEnum(enum_unnamed_13.ImGuiHoveredFlags_AllowWhenOverlapped);
pub const ImGuiHoveredFlags_AllowWhenDisabled = @intFromEnum(enum_unnamed_13.ImGuiHoveredFlags_AllowWhenDisabled);
pub const ImGuiHoveredFlags_RectOnly = @intFromEnum(enum_unnamed_13.ImGuiHoveredFlags_RectOnly);
pub const ImGuiHoveredFlags_RootAndChildWindows = @intFromEnum(enum_unnamed_13.ImGuiHoveredFlags_RootAndChildWindows);
const enum_unnamed_13 = enum(c_int) {
    ImGuiHoveredFlags_None = 0,
    ImGuiHoveredFlags_ChildWindows = 1,
    ImGuiHoveredFlags_RootWindow = 2,
    ImGuiHoveredFlags_AnyWindow = 4,
    ImGuiHoveredFlags_AllowWhenBlockedByPopup = 8,
    ImGuiHoveredFlags_AllowWhenBlockedByActiveItem = 32,
    ImGuiHoveredFlags_AllowWhenOverlapped = 64,
    ImGuiHoveredFlags_AllowWhenDisabled = 128,
    ImGuiHoveredFlags_RectOnly = 104,
    ImGuiHoveredFlags_RootAndChildWindows = 3,
    _,
};
pub const ImGuiHoveredFlags_ = enum_unnamed_13;
pub const ImGuiDockNodeFlags_None = @intFromEnum(enum_unnamed_14.ImGuiDockNodeFlags_None);
pub const ImGuiDockNodeFlags_KeepAliveOnly = @intFromEnum(enum_unnamed_14.ImGuiDockNodeFlags_KeepAliveOnly);
pub const ImGuiDockNodeFlags_NoDockingInCentralNode = @intFromEnum(enum_unnamed_14.ImGuiDockNodeFlags_NoDockingInCentralNode);
pub const ImGuiDockNodeFlags_PassthruCentralNode = @intFromEnum(enum_unnamed_14.ImGuiDockNodeFlags_PassthruCentralNode);
pub const ImGuiDockNodeFlags_NoSplit = @intFromEnum(enum_unnamed_14.ImGuiDockNodeFlags_NoSplit);
pub const ImGuiDockNodeFlags_NoResize = @intFromEnum(enum_unnamed_14.ImGuiDockNodeFlags_NoResize);
pub const ImGuiDockNodeFlags_AutoHideTabBar = @intFromEnum(enum_unnamed_14.ImGuiDockNodeFlags_AutoHideTabBar);
const enum_unnamed_14 = enum(c_int) {
    ImGuiDockNodeFlags_None = 0,
    ImGuiDockNodeFlags_KeepAliveOnly = 1,
    ImGuiDockNodeFlags_NoDockingInCentralNode = 4,
    ImGuiDockNodeFlags_PassthruCentralNode = 8,
    ImGuiDockNodeFlags_NoSplit = 16,
    ImGuiDockNodeFlags_NoResize = 32,
    ImGuiDockNodeFlags_AutoHideTabBar = 64,
    _,
};
pub const ImGuiDockNodeFlags_ = enum_unnamed_14;
pub const ImGuiDragDropFlags_None = @intFromEnum(enum_unnamed_15.ImGuiDragDropFlags_None);
pub const ImGuiDragDropFlags_SourceNoPreviewTooltip = @intFromEnum(enum_unnamed_15.ImGuiDragDropFlags_SourceNoPreviewTooltip);
pub const ImGuiDragDropFlags_SourceNoDisableHover = @intFromEnum(enum_unnamed_15.ImGuiDragDropFlags_SourceNoDisableHover);
pub const ImGuiDragDropFlags_SourceNoHoldToOpenOthers = @intFromEnum(enum_unnamed_15.ImGuiDragDropFlags_SourceNoHoldToOpenOthers);
pub const ImGuiDragDropFlags_SourceAllowNullID = @intFromEnum(enum_unnamed_15.ImGuiDragDropFlags_SourceAllowNullID);
pub const ImGuiDragDropFlags_SourceExtern = @intFromEnum(enum_unnamed_15.ImGuiDragDropFlags_SourceExtern);
pub const ImGuiDragDropFlags_SourceAutoExpirePayload = @intFromEnum(enum_unnamed_15.ImGuiDragDropFlags_SourceAutoExpirePayload);
pub const ImGuiDragDropFlags_AcceptBeforeDelivery = @intFromEnum(enum_unnamed_15.ImGuiDragDropFlags_AcceptBeforeDelivery);
pub const ImGuiDragDropFlags_AcceptNoDrawDefaultRect = @intFromEnum(enum_unnamed_15.ImGuiDragDropFlags_AcceptNoDrawDefaultRect);
pub const ImGuiDragDropFlags_AcceptNoPreviewTooltip = @intFromEnum(enum_unnamed_15.ImGuiDragDropFlags_AcceptNoPreviewTooltip);
pub const ImGuiDragDropFlags_AcceptPeekOnly = @intFromEnum(enum_unnamed_15.ImGuiDragDropFlags_AcceptPeekOnly);
const enum_unnamed_15 = enum(c_int) {
    ImGuiDragDropFlags_None = 0,
    ImGuiDragDropFlags_SourceNoPreviewTooltip = 1,
    ImGuiDragDropFlags_SourceNoDisableHover = 2,
    ImGuiDragDropFlags_SourceNoHoldToOpenOthers = 4,
    ImGuiDragDropFlags_SourceAllowNullID = 8,
    ImGuiDragDropFlags_SourceExtern = 16,
    ImGuiDragDropFlags_SourceAutoExpirePayload = 32,
    ImGuiDragDropFlags_AcceptBeforeDelivery = 1024,
    ImGuiDragDropFlags_AcceptNoDrawDefaultRect = 2048,
    ImGuiDragDropFlags_AcceptNoPreviewTooltip = 4096,
    ImGuiDragDropFlags_AcceptPeekOnly = 3072,
    _,
};
pub const ImGuiDragDropFlags_ = enum_unnamed_15;
pub const ImGuiDataType_S8 = @intFromEnum(enum_unnamed_16.ImGuiDataType_S8);
pub const ImGuiDataType_U8 = @intFromEnum(enum_unnamed_16.ImGuiDataType_U8);
pub const ImGuiDataType_S16 = @intFromEnum(enum_unnamed_16.ImGuiDataType_S16);
pub const ImGuiDataType_U16 = @intFromEnum(enum_unnamed_16.ImGuiDataType_U16);
pub const ImGuiDataType_S32 = @intFromEnum(enum_unnamed_16.ImGuiDataType_S32);
pub const ImGuiDataType_U32 = @intFromEnum(enum_unnamed_16.ImGuiDataType_U32);
pub const ImGuiDataType_S64 = @intFromEnum(enum_unnamed_16.ImGuiDataType_S64);
pub const ImGuiDataType_U64 = @intFromEnum(enum_unnamed_16.ImGuiDataType_U64);
pub const ImGuiDataType_Float = @intFromEnum(enum_unnamed_16.ImGuiDataType_Float);
pub const ImGuiDataType_Double = @intFromEnum(enum_unnamed_16.ImGuiDataType_Double);
pub const ImGuiDataType_COUNT = @intFromEnum(enum_unnamed_16.ImGuiDataType_COUNT);
const enum_unnamed_16 = enum(c_int) {
    ImGuiDataType_S8,
    ImGuiDataType_U8,
    ImGuiDataType_S16,
    ImGuiDataType_U16,
    ImGuiDataType_S32,
    ImGuiDataType_U32,
    ImGuiDataType_S64,
    ImGuiDataType_U64,
    ImGuiDataType_Float,
    ImGuiDataType_Double,
    ImGuiDataType_COUNT,
    _,
};
pub const ImGuiDataType_ = enum_unnamed_16;
pub const ImGuiDir_None = @intFromEnum(enum_unnamed_17.ImGuiDir_None);
pub const ImGuiDir_Left = @intFromEnum(enum_unnamed_17.ImGuiDir_Left);
pub const ImGuiDir_Right = @intFromEnum(enum_unnamed_17.ImGuiDir_Right);
pub const ImGuiDir_Up = @intFromEnum(enum_unnamed_17.ImGuiDir_Up);
pub const ImGuiDir_Down = @intFromEnum(enum_unnamed_17.ImGuiDir_Down);
pub const ImGuiDir_COUNT = @intFromEnum(enum_unnamed_17.ImGuiDir_COUNT);
const enum_unnamed_17 = enum(c_int) {
    ImGuiDir_None = -1,
    ImGuiDir_Left = 0,
    ImGuiDir_Right = 1,
    ImGuiDir_Up = 2,
    ImGuiDir_Down = 3,
    ImGuiDir_COUNT = 4,
    _,
};
pub const ImGuiDir_ = enum_unnamed_17;
pub const ImGuiKey_Tab = @intFromEnum(enum_unnamed_18.ImGuiKey_Tab);
pub const ImGuiKey_LeftArrow = @intFromEnum(enum_unnamed_18.ImGuiKey_LeftArrow);
pub const ImGuiKey_RightArrow = @intFromEnum(enum_unnamed_18.ImGuiKey_RightArrow);
pub const ImGuiKey_UpArrow = @intFromEnum(enum_unnamed_18.ImGuiKey_UpArrow);
pub const ImGuiKey_DownArrow = @intFromEnum(enum_unnamed_18.ImGuiKey_DownArrow);
pub const ImGuiKey_PageUp = @intFromEnum(enum_unnamed_18.ImGuiKey_PageUp);
pub const ImGuiKey_PageDown = @intFromEnum(enum_unnamed_18.ImGuiKey_PageDown);
pub const ImGuiKey_Home = @intFromEnum(enum_unnamed_18.ImGuiKey_Home);
pub const ImGuiKey_End = @intFromEnum(enum_unnamed_18.ImGuiKey_End);
pub const ImGuiKey_Insert = @intFromEnum(enum_unnamed_18.ImGuiKey_Insert);
pub const ImGuiKey_Delete = @intFromEnum(enum_unnamed_18.ImGuiKey_Delete);
pub const ImGuiKey_Backspace = @intFromEnum(enum_unnamed_18.ImGuiKey_Backspace);
pub const ImGuiKey_Space = @intFromEnum(enum_unnamed_18.ImGuiKey_Space);
pub const ImGuiKey_Enter = @intFromEnum(enum_unnamed_18.ImGuiKey_Enter);
pub const ImGuiKey_Escape = @intFromEnum(enum_unnamed_18.ImGuiKey_Escape);
pub const ImGuiKey_KeyPadEnter = @intFromEnum(enum_unnamed_18.ImGuiKey_KeyPadEnter);
pub const ImGuiKey_A = @intFromEnum(enum_unnamed_18.ImGuiKey_A);
pub const ImGuiKey_C = @intFromEnum(enum_unnamed_18.ImGuiKey_C);
pub const ImGuiKey_V = @intFromEnum(enum_unnamed_18.ImGuiKey_V);
pub const ImGuiKey_X = @intFromEnum(enum_unnamed_18.ImGuiKey_X);
pub const ImGuiKey_Y = @intFromEnum(enum_unnamed_18.ImGuiKey_Y);
pub const ImGuiKey_Z = @intFromEnum(enum_unnamed_18.ImGuiKey_Z);
pub const ImGuiKey_COUNT = @intFromEnum(enum_unnamed_18.ImGuiKey_COUNT);
const enum_unnamed_18 = enum(c_int) {
    ImGuiKey_Tab,
    ImGuiKey_LeftArrow,
    ImGuiKey_RightArrow,
    ImGuiKey_UpArrow,
    ImGuiKey_DownArrow,
    ImGuiKey_PageUp,
    ImGuiKey_PageDown,
    ImGuiKey_Home,
    ImGuiKey_End,
    ImGuiKey_Insert,
    ImGuiKey_Delete,
    ImGuiKey_Backspace,
    ImGuiKey_Space,
    ImGuiKey_Enter,
    ImGuiKey_Escape,
    ImGuiKey_KeyPadEnter,
    ImGuiKey_A,
    ImGuiKey_C,
    ImGuiKey_V,
    ImGuiKey_X,
    ImGuiKey_Y,
    ImGuiKey_Z,
    ImGuiKey_COUNT,
    _,
};
pub const ImGuiKey_ = enum_unnamed_18;
pub const ImGuiKeyModFlags_None = @intFromEnum(enum_unnamed_19.ImGuiKeyModFlags_None);
pub const ImGuiKeyModFlags_Ctrl = @intFromEnum(enum_unnamed_19.ImGuiKeyModFlags_Ctrl);
pub const ImGuiKeyModFlags_Shift = @intFromEnum(enum_unnamed_19.ImGuiKeyModFlags_Shift);
pub const ImGuiKeyModFlags_Alt = @intFromEnum(enum_unnamed_19.ImGuiKeyModFlags_Alt);
pub const ImGuiKeyModFlags_Super = @intFromEnum(enum_unnamed_19.ImGuiKeyModFlags_Super);
const enum_unnamed_19 = enum(c_int) {
    ImGuiKeyModFlags_None = 0,
    ImGuiKeyModFlags_Ctrl = 1,
    ImGuiKeyModFlags_Shift = 2,
    ImGuiKeyModFlags_Alt = 4,
    ImGuiKeyModFlags_Super = 8,
    _,
};
pub const ImGuiKeyModFlags_ = enum_unnamed_19;
pub const ImGuiNavInput_Activate = @intFromEnum(enum_unnamed_20.ImGuiNavInput_Activate);
pub const ImGuiNavInput_Cancel = @intFromEnum(enum_unnamed_20.ImGuiNavInput_Cancel);
pub const ImGuiNavInput_Input = @intFromEnum(enum_unnamed_20.ImGuiNavInput_Input);
pub const ImGuiNavInput_Menu = @intFromEnum(enum_unnamed_20.ImGuiNavInput_Menu);
pub const ImGuiNavInput_DpadLeft = @intFromEnum(enum_unnamed_20.ImGuiNavInput_DpadLeft);
pub const ImGuiNavInput_DpadRight = @intFromEnum(enum_unnamed_20.ImGuiNavInput_DpadRight);
pub const ImGuiNavInput_DpadUp = @intFromEnum(enum_unnamed_20.ImGuiNavInput_DpadUp);
pub const ImGuiNavInput_DpadDown = @intFromEnum(enum_unnamed_20.ImGuiNavInput_DpadDown);
pub const ImGuiNavInput_LStickLeft = @intFromEnum(enum_unnamed_20.ImGuiNavInput_LStickLeft);
pub const ImGuiNavInput_LStickRight = @intFromEnum(enum_unnamed_20.ImGuiNavInput_LStickRight);
pub const ImGuiNavInput_LStickUp = @intFromEnum(enum_unnamed_20.ImGuiNavInput_LStickUp);
pub const ImGuiNavInput_LStickDown = @intFromEnum(enum_unnamed_20.ImGuiNavInput_LStickDown);
pub const ImGuiNavInput_FocusPrev = @intFromEnum(enum_unnamed_20.ImGuiNavInput_FocusPrev);
pub const ImGuiNavInput_FocusNext = @intFromEnum(enum_unnamed_20.ImGuiNavInput_FocusNext);
pub const ImGuiNavInput_TweakSlow = @intFromEnum(enum_unnamed_20.ImGuiNavInput_TweakSlow);
pub const ImGuiNavInput_TweakFast = @intFromEnum(enum_unnamed_20.ImGuiNavInput_TweakFast);
pub const ImGuiNavInput_KeyMenu_ = @intFromEnum(enum_unnamed_20.ImGuiNavInput_KeyMenu_);
pub const ImGuiNavInput_KeyLeft_ = @intFromEnum(enum_unnamed_20.ImGuiNavInput_KeyLeft_);
pub const ImGuiNavInput_KeyRight_ = @intFromEnum(enum_unnamed_20.ImGuiNavInput_KeyRight_);
pub const ImGuiNavInput_KeyUp_ = @intFromEnum(enum_unnamed_20.ImGuiNavInput_KeyUp_);
pub const ImGuiNavInput_KeyDown_ = @intFromEnum(enum_unnamed_20.ImGuiNavInput_KeyDown_);
pub const ImGuiNavInput_COUNT = @intFromEnum(enum_unnamed_20.ImGuiNavInput_COUNT);
pub const ImGuiNavInput_InternalStart_ = @intFromEnum(enum_unnamed_20.ImGuiNavInput_InternalStart_);
const enum_unnamed_20 = enum(c_int) {
    ImGuiNavInput_Activate = 0,
    ImGuiNavInput_Cancel = 1,
    ImGuiNavInput_Input = 2,
    ImGuiNavInput_Menu = 3,
    ImGuiNavInput_DpadLeft = 4,
    ImGuiNavInput_DpadRight = 5,
    ImGuiNavInput_DpadUp = 6,
    ImGuiNavInput_DpadDown = 7,
    ImGuiNavInput_LStickLeft = 8,
    ImGuiNavInput_LStickRight = 9,
    ImGuiNavInput_LStickUp = 10,
    ImGuiNavInput_LStickDown = 11,
    ImGuiNavInput_FocusPrev = 12,
    ImGuiNavInput_FocusNext = 13,
    ImGuiNavInput_TweakSlow = 14,
    ImGuiNavInput_TweakFast = 15,
    ImGuiNavInput_KeyMenu_ = 16,
    ImGuiNavInput_KeyLeft_ = 17,
    ImGuiNavInput_KeyRight_ = 18,
    ImGuiNavInput_KeyUp_ = 19,
    ImGuiNavInput_KeyDown_ = 20,
    ImGuiNavInput_COUNT = 21,
    ImGuiNavInput_InternalStart_ = 16,
    _,
};
pub const ImGuiNavInput_ = enum_unnamed_20;
pub const ImGuiConfigFlags_None = @intFromEnum(enum_unnamed_21.ImGuiConfigFlags_None);
pub const ImGuiConfigFlags_NavEnableKeyboard = @intFromEnum(enum_unnamed_21.ImGuiConfigFlags_NavEnableKeyboard);
pub const ImGuiConfigFlags_NavEnableGamepad = @intFromEnum(enum_unnamed_21.ImGuiConfigFlags_NavEnableGamepad);
pub const ImGuiConfigFlags_NavEnableSetMousePos = @intFromEnum(enum_unnamed_21.ImGuiConfigFlags_NavEnableSetMousePos);
pub const ImGuiConfigFlags_NavNoCaptureKeyboard = @intFromEnum(enum_unnamed_21.ImGuiConfigFlags_NavNoCaptureKeyboard);
pub const ImGuiConfigFlags_NoMouse = @intFromEnum(enum_unnamed_21.ImGuiConfigFlags_NoMouse);
pub const ImGuiConfigFlags_NoMouseCursorChange = @intFromEnum(enum_unnamed_21.ImGuiConfigFlags_NoMouseCursorChange);
pub const ImGuiConfigFlags_DockingEnable = @intFromEnum(enum_unnamed_21.ImGuiConfigFlags_DockingEnable);
pub const ImGuiConfigFlags_ViewportsEnable = @intFromEnum(enum_unnamed_21.ImGuiConfigFlags_ViewportsEnable);
pub const ImGuiConfigFlags_DpiEnableScaleViewports = @intFromEnum(enum_unnamed_21.ImGuiConfigFlags_DpiEnableScaleViewports);
pub const ImGuiConfigFlags_DpiEnableScaleFonts = @intFromEnum(enum_unnamed_21.ImGuiConfigFlags_DpiEnableScaleFonts);
pub const ImGuiConfigFlags_IsSRGB = @intFromEnum(enum_unnamed_21.ImGuiConfigFlags_IsSRGB);
pub const ImGuiConfigFlags_IsTouchScreen = @intFromEnum(enum_unnamed_21.ImGuiConfigFlags_IsTouchScreen);
const enum_unnamed_21 = enum(c_int) {
    ImGuiConfigFlags_None = 0,
    ImGuiConfigFlags_NavEnableKeyboard = 1,
    ImGuiConfigFlags_NavEnableGamepad = 2,
    ImGuiConfigFlags_NavEnableSetMousePos = 4,
    ImGuiConfigFlags_NavNoCaptureKeyboard = 8,
    ImGuiConfigFlags_NoMouse = 16,
    ImGuiConfigFlags_NoMouseCursorChange = 32,
    ImGuiConfigFlags_DockingEnable = 64,
    ImGuiConfigFlags_ViewportsEnable = 1024,
    ImGuiConfigFlags_DpiEnableScaleViewports = 16384,
    ImGuiConfigFlags_DpiEnableScaleFonts = 32768,
    ImGuiConfigFlags_IsSRGB = 1048576,
    ImGuiConfigFlags_IsTouchScreen = 2097152,
    _,
};
pub const ImGuiConfigFlags_ = enum_unnamed_21;
pub const ImGuiBackendFlags_None = @intFromEnum(enum_unnamed_22.ImGuiBackendFlags_None);
pub const ImGuiBackendFlags_HasGamepad = @intFromEnum(enum_unnamed_22.ImGuiBackendFlags_HasGamepad);
pub const ImGuiBackendFlags_HasMouseCursors = @intFromEnum(enum_unnamed_22.ImGuiBackendFlags_HasMouseCursors);
pub const ImGuiBackendFlags_HasSetMousePos = @intFromEnum(enum_unnamed_22.ImGuiBackendFlags_HasSetMousePos);
pub const ImGuiBackendFlags_RendererHasVtxOffset = @intFromEnum(enum_unnamed_22.ImGuiBackendFlags_RendererHasVtxOffset);
pub const ImGuiBackendFlags_PlatformHasViewports = @intFromEnum(enum_unnamed_22.ImGuiBackendFlags_PlatformHasViewports);
pub const ImGuiBackendFlags_HasMouseHoveredViewport = @intFromEnum(enum_unnamed_22.ImGuiBackendFlags_HasMouseHoveredViewport);
pub const ImGuiBackendFlags_RendererHasViewports = @intFromEnum(enum_unnamed_22.ImGuiBackendFlags_RendererHasViewports);
const enum_unnamed_22 = enum(c_int) {
    ImGuiBackendFlags_None = 0,
    ImGuiBackendFlags_HasGamepad = 1,
    ImGuiBackendFlags_HasMouseCursors = 2,
    ImGuiBackendFlags_HasSetMousePos = 4,
    ImGuiBackendFlags_RendererHasVtxOffset = 8,
    ImGuiBackendFlags_PlatformHasViewports = 1024,
    ImGuiBackendFlags_HasMouseHoveredViewport = 2048,
    ImGuiBackendFlags_RendererHasViewports = 4096,
    _,
};
pub const ImGuiBackendFlags_ = enum_unnamed_22;
pub const ImGuiCol_Text = @intFromEnum(enum_unnamed_23.ImGuiCol_Text);
pub const ImGuiCol_TextDisabled = @intFromEnum(enum_unnamed_23.ImGuiCol_TextDisabled);
pub const ImGuiCol_WindowBg = @intFromEnum(enum_unnamed_23.ImGuiCol_WindowBg);
pub const ImGuiCol_ChildBg = @intFromEnum(enum_unnamed_23.ImGuiCol_ChildBg);
pub const ImGuiCol_PopupBg = @intFromEnum(enum_unnamed_23.ImGuiCol_PopupBg);
pub const ImGuiCol_Border = @intFromEnum(enum_unnamed_23.ImGuiCol_Border);
pub const ImGuiCol_BorderShadow = @intFromEnum(enum_unnamed_23.ImGuiCol_BorderShadow);
pub const ImGuiCol_FrameBg = @intFromEnum(enum_unnamed_23.ImGuiCol_FrameBg);
pub const ImGuiCol_FrameBgHovered = @intFromEnum(enum_unnamed_23.ImGuiCol_FrameBgHovered);
pub const ImGuiCol_FrameBgActive = @intFromEnum(enum_unnamed_23.ImGuiCol_FrameBgActive);
pub const ImGuiCol_TitleBg = @intFromEnum(enum_unnamed_23.ImGuiCol_TitleBg);
pub const ImGuiCol_TitleBgActive = @intFromEnum(enum_unnamed_23.ImGuiCol_TitleBgActive);
pub const ImGuiCol_TitleBgCollapsed = @intFromEnum(enum_unnamed_23.ImGuiCol_TitleBgCollapsed);
pub const ImGuiCol_MenuBarBg = @intFromEnum(enum_unnamed_23.ImGuiCol_MenuBarBg);
pub const ImGuiCol_ScrollbarBg = @intFromEnum(enum_unnamed_23.ImGuiCol_ScrollbarBg);
pub const ImGuiCol_ScrollbarGrab = @intFromEnum(enum_unnamed_23.ImGuiCol_ScrollbarGrab);
pub const ImGuiCol_ScrollbarGrabHovered = @intFromEnum(enum_unnamed_23.ImGuiCol_ScrollbarGrabHovered);
pub const ImGuiCol_ScrollbarGrabActive = @intFromEnum(enum_unnamed_23.ImGuiCol_ScrollbarGrabActive);
pub const ImGuiCol_CheckMark = @intFromEnum(enum_unnamed_23.ImGuiCol_CheckMark);
pub const ImGuiCol_SliderGrab = @intFromEnum(enum_unnamed_23.ImGuiCol_SliderGrab);
pub const ImGuiCol_SliderGrabActive = @intFromEnum(enum_unnamed_23.ImGuiCol_SliderGrabActive);
pub const ImGuiCol_Button = @intFromEnum(enum_unnamed_23.ImGuiCol_Button);
pub const ImGuiCol_ButtonHovered = @intFromEnum(enum_unnamed_23.ImGuiCol_ButtonHovered);
pub const ImGuiCol_ButtonActive = @intFromEnum(enum_unnamed_23.ImGuiCol_ButtonActive);
pub const ImGuiCol_Header = @intFromEnum(enum_unnamed_23.ImGuiCol_Header);
pub const ImGuiCol_HeaderHovered = @intFromEnum(enum_unnamed_23.ImGuiCol_HeaderHovered);
pub const ImGuiCol_HeaderActive = @intFromEnum(enum_unnamed_23.ImGuiCol_HeaderActive);
pub const ImGuiCol_Separator = @intFromEnum(enum_unnamed_23.ImGuiCol_Separator);
pub const ImGuiCol_SeparatorHovered = @intFromEnum(enum_unnamed_23.ImGuiCol_SeparatorHovered);
pub const ImGuiCol_SeparatorActive = @intFromEnum(enum_unnamed_23.ImGuiCol_SeparatorActive);
pub const ImGuiCol_ResizeGrip = @intFromEnum(enum_unnamed_23.ImGuiCol_ResizeGrip);
pub const ImGuiCol_ResizeGripHovered = @intFromEnum(enum_unnamed_23.ImGuiCol_ResizeGripHovered);
pub const ImGuiCol_ResizeGripActive = @intFromEnum(enum_unnamed_23.ImGuiCol_ResizeGripActive);
pub const ImGuiCol_Tab = @intFromEnum(enum_unnamed_23.ImGuiCol_Tab);
pub const ImGuiCol_TabHovered = @intFromEnum(enum_unnamed_23.ImGuiCol_TabHovered);
pub const ImGuiCol_TabActive = @intFromEnum(enum_unnamed_23.ImGuiCol_TabActive);
pub const ImGuiCol_TabUnfocused = @intFromEnum(enum_unnamed_23.ImGuiCol_TabUnfocused);
pub const ImGuiCol_TabUnfocusedActive = @intFromEnum(enum_unnamed_23.ImGuiCol_TabUnfocusedActive);
pub const ImGuiCol_DockingPreview = @intFromEnum(enum_unnamed_23.ImGuiCol_DockingPreview);
pub const ImGuiCol_DockingEmptyBg = @intFromEnum(enum_unnamed_23.ImGuiCol_DockingEmptyBg);
pub const ImGuiCol_PlotLines = @intFromEnum(enum_unnamed_23.ImGuiCol_PlotLines);
pub const ImGuiCol_PlotLinesHovered = @intFromEnum(enum_unnamed_23.ImGuiCol_PlotLinesHovered);
pub const ImGuiCol_PlotHistogram = @intFromEnum(enum_unnamed_23.ImGuiCol_PlotHistogram);
pub const ImGuiCol_PlotHistogramHovered = @intFromEnum(enum_unnamed_23.ImGuiCol_PlotHistogramHovered);
pub const ImGuiCol_TextSelectedBg = @intFromEnum(enum_unnamed_23.ImGuiCol_TextSelectedBg);
pub const ImGuiCol_DragDropTarget = @intFromEnum(enum_unnamed_23.ImGuiCol_DragDropTarget);
pub const ImGuiCol_NavHighlight = @intFromEnum(enum_unnamed_23.ImGuiCol_NavHighlight);
pub const ImGuiCol_NavWindowingHighlight = @intFromEnum(enum_unnamed_23.ImGuiCol_NavWindowingHighlight);
pub const ImGuiCol_NavWindowingDimBg = @intFromEnum(enum_unnamed_23.ImGuiCol_NavWindowingDimBg);
pub const ImGuiCol_ModalWindowDimBg = @intFromEnum(enum_unnamed_23.ImGuiCol_ModalWindowDimBg);
pub const ImGuiCol_COUNT = @intFromEnum(enum_unnamed_23.ImGuiCol_COUNT);
const enum_unnamed_23 = enum(c_int) {
    ImGuiCol_Text,
    ImGuiCol_TextDisabled,
    ImGuiCol_WindowBg,
    ImGuiCol_ChildBg,
    ImGuiCol_PopupBg,
    ImGuiCol_Border,
    ImGuiCol_BorderShadow,
    ImGuiCol_FrameBg,
    ImGuiCol_FrameBgHovered,
    ImGuiCol_FrameBgActive,
    ImGuiCol_TitleBg,
    ImGuiCol_TitleBgActive,
    ImGuiCol_TitleBgCollapsed,
    ImGuiCol_MenuBarBg,
    ImGuiCol_ScrollbarBg,
    ImGuiCol_ScrollbarGrab,
    ImGuiCol_ScrollbarGrabHovered,
    ImGuiCol_ScrollbarGrabActive,
    ImGuiCol_CheckMark,
    ImGuiCol_SliderGrab,
    ImGuiCol_SliderGrabActive,
    ImGuiCol_Button,
    ImGuiCol_ButtonHovered,
    ImGuiCol_ButtonActive,
    ImGuiCol_Header,
    ImGuiCol_HeaderHovered,
    ImGuiCol_HeaderActive,
    ImGuiCol_Separator,
    ImGuiCol_SeparatorHovered,
    ImGuiCol_SeparatorActive,
    ImGuiCol_ResizeGrip,
    ImGuiCol_ResizeGripHovered,
    ImGuiCol_ResizeGripActive,
    ImGuiCol_Tab,
    ImGuiCol_TabHovered,
    ImGuiCol_TabActive,
    ImGuiCol_TabUnfocused,
    ImGuiCol_TabUnfocusedActive,
    ImGuiCol_DockingPreview,
    ImGuiCol_DockingEmptyBg,
    ImGuiCol_PlotLines,
    ImGuiCol_PlotLinesHovered,
    ImGuiCol_PlotHistogram,
    ImGuiCol_PlotHistogramHovered,
    ImGuiCol_TextSelectedBg,
    ImGuiCol_DragDropTarget,
    ImGuiCol_NavHighlight,
    ImGuiCol_NavWindowingHighlight,
    ImGuiCol_NavWindowingDimBg,
    ImGuiCol_ModalWindowDimBg,
    ImGuiCol_COUNT,
    _,
};
pub const ImGuiCol_ = enum_unnamed_23;
pub const ImGuiStyleVar_Alpha = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_Alpha);
pub const ImGuiStyleVar_WindowPadding = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_WindowPadding);
pub const ImGuiStyleVar_WindowRounding = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_WindowRounding);
pub const ImGuiStyleVar_WindowBorderSize = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_WindowBorderSize);
pub const ImGuiStyleVar_WindowMinSize = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_WindowMinSize);
pub const ImGuiStyleVar_WindowTitleAlign = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_WindowTitleAlign);
pub const ImGuiStyleVar_ChildRounding = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_ChildRounding);
pub const ImGuiStyleVar_ChildBorderSize = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_ChildBorderSize);
pub const ImGuiStyleVar_PopupRounding = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_PopupRounding);
pub const ImGuiStyleVar_PopupBorderSize = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_PopupBorderSize);
pub const ImGuiStyleVar_FramePadding = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_FramePadding);
pub const ImGuiStyleVar_FrameRounding = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_FrameRounding);
pub const ImGuiStyleVar_FrameBorderSize = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_FrameBorderSize);
pub const ImGuiStyleVar_ItemSpacing = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_ItemSpacing);
pub const ImGuiStyleVar_ItemInnerSpacing = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_ItemInnerSpacing);
pub const ImGuiStyleVar_IndentSpacing = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_IndentSpacing);
pub const ImGuiStyleVar_ScrollbarSize = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_ScrollbarSize);
pub const ImGuiStyleVar_ScrollbarRounding = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_ScrollbarRounding);
pub const ImGuiStyleVar_GrabMinSize = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_GrabMinSize);
pub const ImGuiStyleVar_GrabRounding = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_GrabRounding);
pub const ImGuiStyleVar_TabRounding = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_TabRounding);
pub const ImGuiStyleVar_ButtonTextAlign = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_ButtonTextAlign);
pub const ImGuiStyleVar_SelectableTextAlign = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_SelectableTextAlign);
pub const ImGuiStyleVar_COUNT = @intFromEnum(enum_unnamed_24.ImGuiStyleVar_COUNT);
const enum_unnamed_24 = enum(c_int) {
    ImGuiStyleVar_Alpha,
    ImGuiStyleVar_WindowPadding,
    ImGuiStyleVar_WindowRounding,
    ImGuiStyleVar_WindowBorderSize,
    ImGuiStyleVar_WindowMinSize,
    ImGuiStyleVar_WindowTitleAlign,
    ImGuiStyleVar_ChildRounding,
    ImGuiStyleVar_ChildBorderSize,
    ImGuiStyleVar_PopupRounding,
    ImGuiStyleVar_PopupBorderSize,
    ImGuiStyleVar_FramePadding,
    ImGuiStyleVar_FrameRounding,
    ImGuiStyleVar_FrameBorderSize,
    ImGuiStyleVar_ItemSpacing,
    ImGuiStyleVar_ItemInnerSpacing,
    ImGuiStyleVar_IndentSpacing,
    ImGuiStyleVar_ScrollbarSize,
    ImGuiStyleVar_ScrollbarRounding,
    ImGuiStyleVar_GrabMinSize,
    ImGuiStyleVar_GrabRounding,
    ImGuiStyleVar_TabRounding,
    ImGuiStyleVar_ButtonTextAlign,
    ImGuiStyleVar_SelectableTextAlign,
    ImGuiStyleVar_COUNT,
    _,
};
pub const ImGuiStyleVar_ = enum_unnamed_24;
pub const ImGuiButtonFlags_None = @intFromEnum(enum_unnamed_25.ImGuiButtonFlags_None);
pub const ImGuiButtonFlags_MouseButtonLeft = @intFromEnum(enum_unnamed_25.ImGuiButtonFlags_MouseButtonLeft);
pub const ImGuiButtonFlags_MouseButtonRight = @intFromEnum(enum_unnamed_25.ImGuiButtonFlags_MouseButtonRight);
pub const ImGuiButtonFlags_MouseButtonMiddle = @intFromEnum(enum_unnamed_25.ImGuiButtonFlags_MouseButtonMiddle);
pub const ImGuiButtonFlags_MouseButtonMask_ = @intFromEnum(enum_unnamed_25.ImGuiButtonFlags_MouseButtonMask_);
pub const ImGuiButtonFlags_MouseButtonDefault_ = @intFromEnum(enum_unnamed_25.ImGuiButtonFlags_MouseButtonDefault_);
const enum_unnamed_25 = enum(c_int) {
    ImGuiButtonFlags_None = 0,
    ImGuiButtonFlags_MouseButtonLeft = 1,
    ImGuiButtonFlags_MouseButtonRight = 2,
    ImGuiButtonFlags_MouseButtonMiddle = 4,
    ImGuiButtonFlags_MouseButtonMask_ = 7,
    ImGuiButtonFlags_MouseButtonDefault_ = 1,
    _,
};
pub const ImGuiButtonFlags_ = enum_unnamed_25;
pub const ImGuiColorEditFlags_None = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_None);
pub const ImGuiColorEditFlags_NoAlpha = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_NoAlpha);
pub const ImGuiColorEditFlags_NoPicker = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_NoPicker);
pub const ImGuiColorEditFlags_NoOptions = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_NoOptions);
pub const ImGuiColorEditFlags_NoSmallPreview = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_NoSmallPreview);
pub const ImGuiColorEditFlags_NoInputs = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_NoInputs);
pub const ImGuiColorEditFlags_NoTooltip = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_NoTooltip);
pub const ImGuiColorEditFlags_NoLabel = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_NoLabel);
pub const ImGuiColorEditFlags_NoSidePreview = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_NoSidePreview);
pub const ImGuiColorEditFlags_NoDragDrop = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_NoDragDrop);
pub const ImGuiColorEditFlags_NoBorder = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_NoBorder);
pub const ImGuiColorEditFlags_AlphaBar = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_AlphaBar);
pub const ImGuiColorEditFlags_AlphaPreview = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_AlphaPreview);
pub const ImGuiColorEditFlags_AlphaPreviewHalf = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_AlphaPreviewHalf);
pub const ImGuiColorEditFlags_HDR = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_HDR);
pub const ImGuiColorEditFlags_DisplayRGB = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_DisplayRGB);
pub const ImGuiColorEditFlags_DisplayHSV = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_DisplayHSV);
pub const ImGuiColorEditFlags_DisplayHex = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_DisplayHex);
pub const ImGuiColorEditFlags_Uint8 = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_Uint8);
pub const ImGuiColorEditFlags_Float = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_Float);
pub const ImGuiColorEditFlags_PickerHueBar = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_PickerHueBar);
pub const ImGuiColorEditFlags_PickerHueWheel = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_PickerHueWheel);
pub const ImGuiColorEditFlags_InputRGB = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_InputRGB);
pub const ImGuiColorEditFlags_InputHSV = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags_InputHSV);
pub const ImGuiColorEditFlags__OptionsDefault = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags__OptionsDefault);
pub const ImGuiColorEditFlags__DisplayMask = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags__DisplayMask);
pub const ImGuiColorEditFlags__DataTypeMask = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags__DataTypeMask);
pub const ImGuiColorEditFlags__PickerMask = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags__PickerMask);
pub const ImGuiColorEditFlags__InputMask = @intFromEnum(enum_unnamed_26.ImGuiColorEditFlags__InputMask);
const enum_unnamed_26 = enum(c_int) {
    ImGuiColorEditFlags_None = 0,
    ImGuiColorEditFlags_NoAlpha = 2,
    ImGuiColorEditFlags_NoPicker = 4,
    ImGuiColorEditFlags_NoOptions = 8,
    ImGuiColorEditFlags_NoSmallPreview = 16,
    ImGuiColorEditFlags_NoInputs = 32,
    ImGuiColorEditFlags_NoTooltip = 64,
    ImGuiColorEditFlags_NoLabel = 128,
    ImGuiColorEditFlags_NoSidePreview = 256,
    ImGuiColorEditFlags_NoDragDrop = 512,
    ImGuiColorEditFlags_NoBorder = 1024,
    ImGuiColorEditFlags_AlphaBar = 65536,
    ImGuiColorEditFlags_AlphaPreview = 131072,
    ImGuiColorEditFlags_AlphaPreviewHalf = 262144,
    ImGuiColorEditFlags_HDR = 524288,
    ImGuiColorEditFlags_DisplayRGB = 1048576,
    ImGuiColorEditFlags_DisplayHSV = 2097152,
    ImGuiColorEditFlags_DisplayHex = 4194304,
    ImGuiColorEditFlags_Uint8 = 8388608,
    ImGuiColorEditFlags_Float = 16777216,
    ImGuiColorEditFlags_PickerHueBar = 33554432,
    ImGuiColorEditFlags_PickerHueWheel = 67108864,
    ImGuiColorEditFlags_InputRGB = 134217728,
    ImGuiColorEditFlags_InputHSV = 268435456,
    ImGuiColorEditFlags__OptionsDefault = 177209344,
    ImGuiColorEditFlags__DisplayMask = 7340032,
    ImGuiColorEditFlags__DataTypeMask = 25165824,
    ImGuiColorEditFlags__PickerMask = 100663296,
    ImGuiColorEditFlags__InputMask = 402653184,
    _,
};
pub const ImGuiColorEditFlags_ = enum_unnamed_26;
pub const ImGuiSliderFlags_None = @intFromEnum(enum_unnamed_27.ImGuiSliderFlags_None);
pub const ImGuiSliderFlags_AlwaysClamp = @intFromEnum(enum_unnamed_27.ImGuiSliderFlags_AlwaysClamp);
pub const ImGuiSliderFlags_Logarithmic = @intFromEnum(enum_unnamed_27.ImGuiSliderFlags_Logarithmic);
pub const ImGuiSliderFlags_NoRoundToFormat = @intFromEnum(enum_unnamed_27.ImGuiSliderFlags_NoRoundToFormat);
pub const ImGuiSliderFlags_NoInput = @intFromEnum(enum_unnamed_27.ImGuiSliderFlags_NoInput);
pub const ImGuiSliderFlags_InvalidMask_ = @intFromEnum(enum_unnamed_27.ImGuiSliderFlags_InvalidMask_);
const enum_unnamed_27 = enum(c_int) {
    ImGuiSliderFlags_None = 0,
    ImGuiSliderFlags_AlwaysClamp = 16,
    ImGuiSliderFlags_Logarithmic = 32,
    ImGuiSliderFlags_NoRoundToFormat = 64,
    ImGuiSliderFlags_NoInput = 128,
    ImGuiSliderFlags_InvalidMask_ = 1879048207,
    _,
};
pub const ImGuiSliderFlags_ = enum_unnamed_27;
pub const ImGuiMouseButton_Left = @intFromEnum(enum_unnamed_28.ImGuiMouseButton_Left);
pub const ImGuiMouseButton_Right = @intFromEnum(enum_unnamed_28.ImGuiMouseButton_Right);
pub const ImGuiMouseButton_Middle = @intFromEnum(enum_unnamed_28.ImGuiMouseButton_Middle);
pub const ImGuiMouseButton_COUNT = @intFromEnum(enum_unnamed_28.ImGuiMouseButton_COUNT);
const enum_unnamed_28 = enum(c_int) {
    ImGuiMouseButton_Left = 0,
    ImGuiMouseButton_Right = 1,
    ImGuiMouseButton_Middle = 2,
    ImGuiMouseButton_COUNT = 5,
    _,
};
pub const ImGuiMouseButton_ = enum_unnamed_28;
pub const ImGuiMouseCursor_None = @intFromEnum(enum_unnamed_29.ImGuiMouseCursor_None);
pub const ImGuiMouseCursor_Arrow = @intFromEnum(enum_unnamed_29.ImGuiMouseCursor_Arrow);
pub const ImGuiMouseCursor_TextInput = @intFromEnum(enum_unnamed_29.ImGuiMouseCursor_TextInput);
pub const ImGuiMouseCursor_ResizeAll = @intFromEnum(enum_unnamed_29.ImGuiMouseCursor_ResizeAll);
pub const ImGuiMouseCursor_ResizeNS = @intFromEnum(enum_unnamed_29.ImGuiMouseCursor_ResizeNS);
pub const ImGuiMouseCursor_ResizeEW = @intFromEnum(enum_unnamed_29.ImGuiMouseCursor_ResizeEW);
pub const ImGuiMouseCursor_ResizeNESW = @intFromEnum(enum_unnamed_29.ImGuiMouseCursor_ResizeNESW);
pub const ImGuiMouseCursor_ResizeNWSE = @intFromEnum(enum_unnamed_29.ImGuiMouseCursor_ResizeNWSE);
pub const ImGuiMouseCursor_Hand = @intFromEnum(enum_unnamed_29.ImGuiMouseCursor_Hand);
pub const ImGuiMouseCursor_NotAllowed = @intFromEnum(enum_unnamed_29.ImGuiMouseCursor_NotAllowed);
pub const ImGuiMouseCursor_COUNT = @intFromEnum(enum_unnamed_29.ImGuiMouseCursor_COUNT);
const enum_unnamed_29 = enum(c_int) {
    ImGuiMouseCursor_None = -1,
    ImGuiMouseCursor_Arrow = 0,
    ImGuiMouseCursor_TextInput = 1,
    ImGuiMouseCursor_ResizeAll = 2,
    ImGuiMouseCursor_ResizeNS = 3,
    ImGuiMouseCursor_ResizeEW = 4,
    ImGuiMouseCursor_ResizeNESW = 5,
    ImGuiMouseCursor_ResizeNWSE = 6,
    ImGuiMouseCursor_Hand = 7,
    ImGuiMouseCursor_NotAllowed = 8,
    ImGuiMouseCursor_COUNT = 9,
    _,
};
pub const ImGuiMouseCursor_ = enum_unnamed_29;
pub const ImGuiCond_None = @intFromEnum(enum_unnamed_30.ImGuiCond_None);
pub const ImGuiCond_Always = @intFromEnum(enum_unnamed_30.ImGuiCond_Always);
pub const ImGuiCond_Once = @intFromEnum(enum_unnamed_30.ImGuiCond_Once);
pub const ImGuiCond_FirstUseEver = @intFromEnum(enum_unnamed_30.ImGuiCond_FirstUseEver);
pub const ImGuiCond_Appearing = @intFromEnum(enum_unnamed_30.ImGuiCond_Appearing);
const enum_unnamed_30 = enum(c_int) {
    ImGuiCond_None = 0,
    ImGuiCond_Always = 1,
    ImGuiCond_Once = 2,
    ImGuiCond_FirstUseEver = 4,
    ImGuiCond_Appearing = 8,
    _,
};
pub const ImGuiCond_ = enum_unnamed_30;
pub const struct_ImVector_ImGuiTabBar = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: [*c]ImGuiTabBar,
};
pub const ImVector_ImGuiTabBar = struct_ImVector_ImGuiTabBar;
pub const struct_ImPool_ImGuiTabBar = extern struct {
    Buf: ImVector_ImGuiTabBar,
    Map: ImGuiStorage,
    FreeIdx: ImPoolIdx,
};
pub const ImPool_ImGuiTabBar = struct_ImPool_ImGuiTabBar;
pub const ImDrawCornerFlags_None = @intFromEnum(enum_unnamed_31.ImDrawCornerFlags_None);
pub const ImDrawCornerFlags_TopLeft = @intFromEnum(enum_unnamed_31.ImDrawCornerFlags_TopLeft);
pub const ImDrawCornerFlags_TopRight = @intFromEnum(enum_unnamed_31.ImDrawCornerFlags_TopRight);
pub const ImDrawCornerFlags_BotLeft = @intFromEnum(enum_unnamed_31.ImDrawCornerFlags_BotLeft);
pub const ImDrawCornerFlags_BotRight = @intFromEnum(enum_unnamed_31.ImDrawCornerFlags_BotRight);
pub const ImDrawCornerFlags_Top = @intFromEnum(enum_unnamed_31.ImDrawCornerFlags_Top);
pub const ImDrawCornerFlags_Bot = @intFromEnum(enum_unnamed_31.ImDrawCornerFlags_Bot);
pub const ImDrawCornerFlags_Left = @intFromEnum(enum_unnamed_31.ImDrawCornerFlags_Left);
pub const ImDrawCornerFlags_Right = @intFromEnum(enum_unnamed_31.ImDrawCornerFlags_Right);
pub const ImDrawCornerFlags_All = @intFromEnum(enum_unnamed_31.ImDrawCornerFlags_All);
const enum_unnamed_31 = enum(c_int) {
    ImDrawCornerFlags_None = 0,
    ImDrawCornerFlags_TopLeft = 1,
    ImDrawCornerFlags_TopRight = 2,
    ImDrawCornerFlags_BotLeft = 4,
    ImDrawCornerFlags_BotRight = 8,
    ImDrawCornerFlags_Top = 3,
    ImDrawCornerFlags_Bot = 12,
    ImDrawCornerFlags_Left = 5,
    ImDrawCornerFlags_Right = 10,
    ImDrawCornerFlags_All = 15,
    _,
};
pub const ImDrawCornerFlags_ = enum_unnamed_31;
pub const ImDrawListFlags_None = @intFromEnum(enum_unnamed_32.ImDrawListFlags_None);
pub const ImDrawListFlags_AntiAliasedLines = @intFromEnum(enum_unnamed_32.ImDrawListFlags_AntiAliasedLines);
pub const ImDrawListFlags_AntiAliasedLinesUseTex = @intFromEnum(enum_unnamed_32.ImDrawListFlags_AntiAliasedLinesUseTex);
pub const ImDrawListFlags_AntiAliasedFill = @intFromEnum(enum_unnamed_32.ImDrawListFlags_AntiAliasedFill);
pub const ImDrawListFlags_AllowVtxOffset = @intFromEnum(enum_unnamed_32.ImDrawListFlags_AllowVtxOffset);
const enum_unnamed_32 = enum(c_int) {
    ImDrawListFlags_None = 0,
    ImDrawListFlags_AntiAliasedLines = 1,
    ImDrawListFlags_AntiAliasedLinesUseTex = 2,
    ImDrawListFlags_AntiAliasedFill = 4,
    ImDrawListFlags_AllowVtxOffset = 8,
    _,
};
pub const ImDrawListFlags_ = enum_unnamed_32;
pub const ImFontAtlasFlags_None = @intFromEnum(enum_unnamed_33.ImFontAtlasFlags_None);
pub const ImFontAtlasFlags_NoPowerOfTwoHeight = @intFromEnum(enum_unnamed_33.ImFontAtlasFlags_NoPowerOfTwoHeight);
pub const ImFontAtlasFlags_NoMouseCursors = @intFromEnum(enum_unnamed_33.ImFontAtlasFlags_NoMouseCursors);
pub const ImFontAtlasFlags_NoBakedLines = @intFromEnum(enum_unnamed_33.ImFontAtlasFlags_NoBakedLines);
const enum_unnamed_33 = enum(c_int) {
    ImFontAtlasFlags_None = 0,
    ImFontAtlasFlags_NoPowerOfTwoHeight = 1,
    ImFontAtlasFlags_NoMouseCursors = 2,
    ImFontAtlasFlags_NoBakedLines = 4,
    _,
};
pub const ImFontAtlasFlags_ = enum_unnamed_33;
pub const ImGuiViewportFlags_None = @intFromEnum(enum_unnamed_34.ImGuiViewportFlags_None);
pub const ImGuiViewportFlags_NoDecoration = @intFromEnum(enum_unnamed_34.ImGuiViewportFlags_NoDecoration);
pub const ImGuiViewportFlags_NoTaskBarIcon = @intFromEnum(enum_unnamed_34.ImGuiViewportFlags_NoTaskBarIcon);
pub const ImGuiViewportFlags_NoFocusOnAppearing = @intFromEnum(enum_unnamed_34.ImGuiViewportFlags_NoFocusOnAppearing);
pub const ImGuiViewportFlags_NoFocusOnClick = @intFromEnum(enum_unnamed_34.ImGuiViewportFlags_NoFocusOnClick);
pub const ImGuiViewportFlags_NoInputs = @intFromEnum(enum_unnamed_34.ImGuiViewportFlags_NoInputs);
pub const ImGuiViewportFlags_NoRendererClear = @intFromEnum(enum_unnamed_34.ImGuiViewportFlags_NoRendererClear);
pub const ImGuiViewportFlags_TopMost = @intFromEnum(enum_unnamed_34.ImGuiViewportFlags_TopMost);
pub const ImGuiViewportFlags_Minimized = @intFromEnum(enum_unnamed_34.ImGuiViewportFlags_Minimized);
pub const ImGuiViewportFlags_NoAutoMerge = @intFromEnum(enum_unnamed_34.ImGuiViewportFlags_NoAutoMerge);
pub const ImGuiViewportFlags_CanHostOtherWindows = @intFromEnum(enum_unnamed_34.ImGuiViewportFlags_CanHostOtherWindows);
const enum_unnamed_34 = enum(c_int) {
    ImGuiViewportFlags_None = 0,
    ImGuiViewportFlags_NoDecoration = 1,
    ImGuiViewportFlags_NoTaskBarIcon = 2,
    ImGuiViewportFlags_NoFocusOnAppearing = 4,
    ImGuiViewportFlags_NoFocusOnClick = 8,
    ImGuiViewportFlags_NoInputs = 16,
    ImGuiViewportFlags_NoRendererClear = 32,
    ImGuiViewportFlags_TopMost = 64,
    ImGuiViewportFlags_Minimized = 128,
    ImGuiViewportFlags_NoAutoMerge = 256,
    ImGuiViewportFlags_CanHostOtherWindows = 512,
    _,
};
pub const ImGuiViewportFlags_ = enum_unnamed_34;
pub const ImGuiItemFlags_None = @intFromEnum(enum_unnamed_35.ImGuiItemFlags_None);
pub const ImGuiItemFlags_NoTabStop = @intFromEnum(enum_unnamed_35.ImGuiItemFlags_NoTabStop);
pub const ImGuiItemFlags_ButtonRepeat = @intFromEnum(enum_unnamed_35.ImGuiItemFlags_ButtonRepeat);
pub const ImGuiItemFlags_Disabled = @intFromEnum(enum_unnamed_35.ImGuiItemFlags_Disabled);
pub const ImGuiItemFlags_NoNav = @intFromEnum(enum_unnamed_35.ImGuiItemFlags_NoNav);
pub const ImGuiItemFlags_NoNavDefaultFocus = @intFromEnum(enum_unnamed_35.ImGuiItemFlags_NoNavDefaultFocus);
pub const ImGuiItemFlags_SelectableDontClosePopup = @intFromEnum(enum_unnamed_35.ImGuiItemFlags_SelectableDontClosePopup);
pub const ImGuiItemFlags_MixedValue = @intFromEnum(enum_unnamed_35.ImGuiItemFlags_MixedValue);
pub const ImGuiItemFlags_ReadOnly = @intFromEnum(enum_unnamed_35.ImGuiItemFlags_ReadOnly);
pub const ImGuiItemFlags_Default_ = @intFromEnum(enum_unnamed_35.ImGuiItemFlags_Default_);
const enum_unnamed_35 = enum(c_int) {
    ImGuiItemFlags_None = 0,
    ImGuiItemFlags_NoTabStop = 1,
    ImGuiItemFlags_ButtonRepeat = 2,
    ImGuiItemFlags_Disabled = 4,
    ImGuiItemFlags_NoNav = 8,
    ImGuiItemFlags_NoNavDefaultFocus = 16,
    ImGuiItemFlags_SelectableDontClosePopup = 32,
    ImGuiItemFlags_MixedValue = 64,
    ImGuiItemFlags_ReadOnly = 128,
    ImGuiItemFlags_Default_ = 0,
    _,
};
pub const ImGuiItemFlags_ = enum_unnamed_35;
pub const ImGuiItemStatusFlags_None = @intFromEnum(enum_unnamed_36.ImGuiItemStatusFlags_None);
pub const ImGuiItemStatusFlags_HoveredRect = @intFromEnum(enum_unnamed_36.ImGuiItemStatusFlags_HoveredRect);
pub const ImGuiItemStatusFlags_HasDisplayRect = @intFromEnum(enum_unnamed_36.ImGuiItemStatusFlags_HasDisplayRect);
pub const ImGuiItemStatusFlags_Edited = @intFromEnum(enum_unnamed_36.ImGuiItemStatusFlags_Edited);
pub const ImGuiItemStatusFlags_ToggledSelection = @intFromEnum(enum_unnamed_36.ImGuiItemStatusFlags_ToggledSelection);
pub const ImGuiItemStatusFlags_ToggledOpen = @intFromEnum(enum_unnamed_36.ImGuiItemStatusFlags_ToggledOpen);
pub const ImGuiItemStatusFlags_HasDeactivated = @intFromEnum(enum_unnamed_36.ImGuiItemStatusFlags_HasDeactivated);
pub const ImGuiItemStatusFlags_Deactivated = @intFromEnum(enum_unnamed_36.ImGuiItemStatusFlags_Deactivated);
const enum_unnamed_36 = enum(c_int) {
    ImGuiItemStatusFlags_None = 0,
    ImGuiItemStatusFlags_HoveredRect = 1,
    ImGuiItemStatusFlags_HasDisplayRect = 2,
    ImGuiItemStatusFlags_Edited = 4,
    ImGuiItemStatusFlags_ToggledSelection = 8,
    ImGuiItemStatusFlags_ToggledOpen = 16,
    ImGuiItemStatusFlags_HasDeactivated = 32,
    ImGuiItemStatusFlags_Deactivated = 64,
    _,
};
pub const ImGuiItemStatusFlags_ = enum_unnamed_36;
pub const ImGuiButtonFlags_PressedOnClick = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_PressedOnClick);
pub const ImGuiButtonFlags_PressedOnClickRelease = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_PressedOnClickRelease);
pub const ImGuiButtonFlags_PressedOnClickReleaseAnywhere = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_PressedOnClickReleaseAnywhere);
pub const ImGuiButtonFlags_PressedOnRelease = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_PressedOnRelease);
pub const ImGuiButtonFlags_PressedOnDoubleClick = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_PressedOnDoubleClick);
pub const ImGuiButtonFlags_PressedOnDragDropHold = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_PressedOnDragDropHold);
pub const ImGuiButtonFlags_Repeat = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_Repeat);
pub const ImGuiButtonFlags_FlattenChildren = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_FlattenChildren);
pub const ImGuiButtonFlags_AllowItemOverlap = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_AllowItemOverlap);
pub const ImGuiButtonFlags_DontClosePopups = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_DontClosePopups);
pub const ImGuiButtonFlags_Disabled = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_Disabled);
pub const ImGuiButtonFlags_AlignTextBaseLine = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_AlignTextBaseLine);
pub const ImGuiButtonFlags_NoKeyModifiers = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_NoKeyModifiers);
pub const ImGuiButtonFlags_NoHoldingActiveId = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_NoHoldingActiveId);
pub const ImGuiButtonFlags_NoNavFocus = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_NoNavFocus);
pub const ImGuiButtonFlags_NoHoveredOnFocus = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_NoHoveredOnFocus);
pub const ImGuiButtonFlags_PressedOnMask_ = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_PressedOnMask_);
pub const ImGuiButtonFlags_PressedOnDefault_ = @intFromEnum(enum_unnamed_37.ImGuiButtonFlags_PressedOnDefault_);
const enum_unnamed_37 = enum(c_int) {
    ImGuiButtonFlags_PressedOnClick = 16,
    ImGuiButtonFlags_PressedOnClickRelease = 32,
    ImGuiButtonFlags_PressedOnClickReleaseAnywhere = 64,
    ImGuiButtonFlags_PressedOnRelease = 128,
    ImGuiButtonFlags_PressedOnDoubleClick = 256,
    ImGuiButtonFlags_PressedOnDragDropHold = 512,
    ImGuiButtonFlags_Repeat = 1024,
    ImGuiButtonFlags_FlattenChildren = 2048,
    ImGuiButtonFlags_AllowItemOverlap = 4096,
    ImGuiButtonFlags_DontClosePopups = 8192,
    ImGuiButtonFlags_Disabled = 16384,
    ImGuiButtonFlags_AlignTextBaseLine = 32768,
    ImGuiButtonFlags_NoKeyModifiers = 65536,
    ImGuiButtonFlags_NoHoldingActiveId = 131072,
    ImGuiButtonFlags_NoNavFocus = 262144,
    ImGuiButtonFlags_NoHoveredOnFocus = 524288,
    ImGuiButtonFlags_PressedOnMask_ = 1008,
    ImGuiButtonFlags_PressedOnDefault_ = 32,
    _,
};
pub const ImGuiButtonFlagsPrivate_ = enum_unnamed_37;
pub const ImGuiSliderFlags_Vertical = @intFromEnum(enum_unnamed_38.ImGuiSliderFlags_Vertical);
pub const ImGuiSliderFlags_ReadOnly = @intFromEnum(enum_unnamed_38.ImGuiSliderFlags_ReadOnly);
const enum_unnamed_38 = enum(c_int) {
    ImGuiSliderFlags_Vertical = 1048576,
    ImGuiSliderFlags_ReadOnly = 2097152,
    _,
};
pub const ImGuiSliderFlagsPrivate_ = enum_unnamed_38;
pub const ImGuiSelectableFlags_NoHoldingActiveID = @intFromEnum(enum_unnamed_39.ImGuiSelectableFlags_NoHoldingActiveID);
pub const ImGuiSelectableFlags_SelectOnClick = @intFromEnum(enum_unnamed_39.ImGuiSelectableFlags_SelectOnClick);
pub const ImGuiSelectableFlags_SelectOnRelease = @intFromEnum(enum_unnamed_39.ImGuiSelectableFlags_SelectOnRelease);
pub const ImGuiSelectableFlags_SpanAvailWidth = @intFromEnum(enum_unnamed_39.ImGuiSelectableFlags_SpanAvailWidth);
pub const ImGuiSelectableFlags_DrawHoveredWhenHeld = @intFromEnum(enum_unnamed_39.ImGuiSelectableFlags_DrawHoveredWhenHeld);
pub const ImGuiSelectableFlags_SetNavIdOnHover = @intFromEnum(enum_unnamed_39.ImGuiSelectableFlags_SetNavIdOnHover);
pub const ImGuiSelectableFlags_NoPadWithHalfSpacing = @intFromEnum(enum_unnamed_39.ImGuiSelectableFlags_NoPadWithHalfSpacing);
const enum_unnamed_39 = enum(c_int) {
    ImGuiSelectableFlags_NoHoldingActiveID = 1048576,
    ImGuiSelectableFlags_SelectOnClick = 2097152,
    ImGuiSelectableFlags_SelectOnRelease = 4194304,
    ImGuiSelectableFlags_SpanAvailWidth = 8388608,
    ImGuiSelectableFlags_DrawHoveredWhenHeld = 16777216,
    ImGuiSelectableFlags_SetNavIdOnHover = 33554432,
    ImGuiSelectableFlags_NoPadWithHalfSpacing = 67108864,
    _,
};
pub const ImGuiSelectableFlagsPrivate_ = enum_unnamed_39;
pub const ImGuiTreeNodeFlags_ClipLabelForTrailingButton = @intFromEnum(enum_unnamed_40.ImGuiTreeNodeFlags_ClipLabelForTrailingButton);
const enum_unnamed_40 = enum(c_int) {
    ImGuiTreeNodeFlags_ClipLabelForTrailingButton = 1048576,
    _,
};
pub const ImGuiTreeNodeFlagsPrivate_ = enum_unnamed_40;
pub const ImGuiSeparatorFlags_None = @intFromEnum(enum_unnamed_41.ImGuiSeparatorFlags_None);
pub const ImGuiSeparatorFlags_Horizontal = @intFromEnum(enum_unnamed_41.ImGuiSeparatorFlags_Horizontal);
pub const ImGuiSeparatorFlags_Vertical = @intFromEnum(enum_unnamed_41.ImGuiSeparatorFlags_Vertical);
pub const ImGuiSeparatorFlags_SpanAllColumns = @intFromEnum(enum_unnamed_41.ImGuiSeparatorFlags_SpanAllColumns);
const enum_unnamed_41 = enum(c_int) {
    ImGuiSeparatorFlags_None = 0,
    ImGuiSeparatorFlags_Horizontal = 1,
    ImGuiSeparatorFlags_Vertical = 2,
    ImGuiSeparatorFlags_SpanAllColumns = 4,
    _,
};
pub const ImGuiSeparatorFlags_ = enum_unnamed_41;
pub const ImGuiTextFlags_None = @intFromEnum(enum_unnamed_42.ImGuiTextFlags_None);
pub const ImGuiTextFlags_NoWidthForLargeClippedText = @intFromEnum(enum_unnamed_42.ImGuiTextFlags_NoWidthForLargeClippedText);
const enum_unnamed_42 = enum(c_int) {
    ImGuiTextFlags_None = 0,
    ImGuiTextFlags_NoWidthForLargeClippedText = 1,
    _,
};
pub const ImGuiTextFlags_ = enum_unnamed_42;
pub const ImGuiTooltipFlags_None = @intFromEnum(enum_unnamed_43.ImGuiTooltipFlags_None);
pub const ImGuiTooltipFlags_OverridePreviousTooltip = @intFromEnum(enum_unnamed_43.ImGuiTooltipFlags_OverridePreviousTooltip);
const enum_unnamed_43 = enum(c_int) {
    ImGuiTooltipFlags_None = 0,
    ImGuiTooltipFlags_OverridePreviousTooltip = 1,
    _,
};
pub const ImGuiTooltipFlags_ = enum_unnamed_43;
pub const ImGuiLayoutType_Horizontal = @intFromEnum(enum_unnamed_44.ImGuiLayoutType_Horizontal);
pub const ImGuiLayoutType_Vertical = @intFromEnum(enum_unnamed_44.ImGuiLayoutType_Vertical);
const enum_unnamed_44 = enum(c_int) {
    ImGuiLayoutType_Horizontal = 0,
    ImGuiLayoutType_Vertical = 1,
    _,
};
pub const ImGuiLayoutType_ = enum_unnamed_44;
pub const ImGuiLogType_None = @intFromEnum(enum_unnamed_45.ImGuiLogType_None);
pub const ImGuiLogType_TTY = @intFromEnum(enum_unnamed_45.ImGuiLogType_TTY);
pub const ImGuiLogType_File = @intFromEnum(enum_unnamed_45.ImGuiLogType_File);
pub const ImGuiLogType_Buffer = @intFromEnum(enum_unnamed_45.ImGuiLogType_Buffer);
pub const ImGuiLogType_Clipboard = @intFromEnum(enum_unnamed_45.ImGuiLogType_Clipboard);
const enum_unnamed_45 = enum(c_int) {
    ImGuiLogType_None = 0,
    ImGuiLogType_TTY = 1,
    ImGuiLogType_File = 2,
    ImGuiLogType_Buffer = 3,
    ImGuiLogType_Clipboard = 4,
    _,
};
pub const ImGuiLogType = enum_unnamed_45;
pub const ImGuiAxis_None = @intFromEnum(enum_unnamed_46.ImGuiAxis_None);
pub const ImGuiAxis_X = @intFromEnum(enum_unnamed_46.ImGuiAxis_X);
pub const ImGuiAxis_Y = @intFromEnum(enum_unnamed_46.ImGuiAxis_Y);
const enum_unnamed_46 = enum(c_int) {
    ImGuiAxis_None = -1,
    ImGuiAxis_X = 0,
    ImGuiAxis_Y = 1,
    _,
};
pub const ImGuiAxis = enum_unnamed_46;
pub const ImGuiPlotType_Lines = @intFromEnum(enum_unnamed_47.ImGuiPlotType_Lines);
pub const ImGuiPlotType_Histogram = @intFromEnum(enum_unnamed_47.ImGuiPlotType_Histogram);
const enum_unnamed_47 = enum(c_int) {
    ImGuiPlotType_Lines,
    ImGuiPlotType_Histogram,
    _,
};
pub const ImGuiPlotType = enum_unnamed_47;
pub const ImGuiInputSource_None = @intFromEnum(enum_unnamed_48.ImGuiInputSource_None);
pub const ImGuiInputSource_Mouse = @intFromEnum(enum_unnamed_48.ImGuiInputSource_Mouse);
pub const ImGuiInputSource_Nav = @intFromEnum(enum_unnamed_48.ImGuiInputSource_Nav);
pub const ImGuiInputSource_NavKeyboard = @intFromEnum(enum_unnamed_48.ImGuiInputSource_NavKeyboard);
pub const ImGuiInputSource_NavGamepad = @intFromEnum(enum_unnamed_48.ImGuiInputSource_NavGamepad);
pub const ImGuiInputSource_COUNT = @intFromEnum(enum_unnamed_48.ImGuiInputSource_COUNT);
const enum_unnamed_48 = enum(c_int) {
    ImGuiInputSource_None = 0,
    ImGuiInputSource_Mouse = 1,
    ImGuiInputSource_Nav = 2,
    ImGuiInputSource_NavKeyboard = 3,
    ImGuiInputSource_NavGamepad = 4,
    ImGuiInputSource_COUNT = 5,
    _,
};
pub const ImGuiInputSource = enum_unnamed_48;
pub const ImGuiInputReadMode_Down = @intFromEnum(enum_unnamed_49.ImGuiInputReadMode_Down);
pub const ImGuiInputReadMode_Pressed = @intFromEnum(enum_unnamed_49.ImGuiInputReadMode_Pressed);
pub const ImGuiInputReadMode_Released = @intFromEnum(enum_unnamed_49.ImGuiInputReadMode_Released);
pub const ImGuiInputReadMode_Repeat = @intFromEnum(enum_unnamed_49.ImGuiInputReadMode_Repeat);
pub const ImGuiInputReadMode_RepeatSlow = @intFromEnum(enum_unnamed_49.ImGuiInputReadMode_RepeatSlow);
pub const ImGuiInputReadMode_RepeatFast = @intFromEnum(enum_unnamed_49.ImGuiInputReadMode_RepeatFast);
const enum_unnamed_49 = enum(c_int) {
    ImGuiInputReadMode_Down,
    ImGuiInputReadMode_Pressed,
    ImGuiInputReadMode_Released,
    ImGuiInputReadMode_Repeat,
    ImGuiInputReadMode_RepeatSlow,
    ImGuiInputReadMode_RepeatFast,
    _,
};
pub const ImGuiInputReadMode = enum_unnamed_49;
pub const ImGuiNavHighlightFlags_None = @intFromEnum(enum_unnamed_50.ImGuiNavHighlightFlags_None);
pub const ImGuiNavHighlightFlags_TypeDefault = @intFromEnum(enum_unnamed_50.ImGuiNavHighlightFlags_TypeDefault);
pub const ImGuiNavHighlightFlags_TypeThin = @intFromEnum(enum_unnamed_50.ImGuiNavHighlightFlags_TypeThin);
pub const ImGuiNavHighlightFlags_AlwaysDraw = @intFromEnum(enum_unnamed_50.ImGuiNavHighlightFlags_AlwaysDraw);
pub const ImGuiNavHighlightFlags_NoRounding = @intFromEnum(enum_unnamed_50.ImGuiNavHighlightFlags_NoRounding);
const enum_unnamed_50 = enum(c_int) {
    ImGuiNavHighlightFlags_None = 0,
    ImGuiNavHighlightFlags_TypeDefault = 1,
    ImGuiNavHighlightFlags_TypeThin = 2,
    ImGuiNavHighlightFlags_AlwaysDraw = 4,
    ImGuiNavHighlightFlags_NoRounding = 8,
    _,
};
pub const ImGuiNavHighlightFlags_ = enum_unnamed_50;
pub const ImGuiNavDirSourceFlags_None = @intFromEnum(enum_unnamed_51.ImGuiNavDirSourceFlags_None);
pub const ImGuiNavDirSourceFlags_Keyboard = @intFromEnum(enum_unnamed_51.ImGuiNavDirSourceFlags_Keyboard);
pub const ImGuiNavDirSourceFlags_PadDPad = @intFromEnum(enum_unnamed_51.ImGuiNavDirSourceFlags_PadDPad);
pub const ImGuiNavDirSourceFlags_PadLStick = @intFromEnum(enum_unnamed_51.ImGuiNavDirSourceFlags_PadLStick);
const enum_unnamed_51 = enum(c_int) {
    ImGuiNavDirSourceFlags_None = 0,
    ImGuiNavDirSourceFlags_Keyboard = 1,
    ImGuiNavDirSourceFlags_PadDPad = 2,
    ImGuiNavDirSourceFlags_PadLStick = 4,
    _,
};
pub const ImGuiNavDirSourceFlags_ = enum_unnamed_51;
pub const ImGuiNavMoveFlags_None = @intFromEnum(enum_unnamed_52.ImGuiNavMoveFlags_None);
pub const ImGuiNavMoveFlags_LoopX = @intFromEnum(enum_unnamed_52.ImGuiNavMoveFlags_LoopX);
pub const ImGuiNavMoveFlags_LoopY = @intFromEnum(enum_unnamed_52.ImGuiNavMoveFlags_LoopY);
pub const ImGuiNavMoveFlags_WrapX = @intFromEnum(enum_unnamed_52.ImGuiNavMoveFlags_WrapX);
pub const ImGuiNavMoveFlags_WrapY = @intFromEnum(enum_unnamed_52.ImGuiNavMoveFlags_WrapY);
pub const ImGuiNavMoveFlags_AllowCurrentNavId = @intFromEnum(enum_unnamed_52.ImGuiNavMoveFlags_AllowCurrentNavId);
pub const ImGuiNavMoveFlags_AlsoScoreVisibleSet = @intFromEnum(enum_unnamed_52.ImGuiNavMoveFlags_AlsoScoreVisibleSet);
pub const ImGuiNavMoveFlags_ScrollToEdge = @intFromEnum(enum_unnamed_52.ImGuiNavMoveFlags_ScrollToEdge);
const enum_unnamed_52 = enum(c_int) {
    ImGuiNavMoveFlags_None = 0,
    ImGuiNavMoveFlags_LoopX = 1,
    ImGuiNavMoveFlags_LoopY = 2,
    ImGuiNavMoveFlags_WrapX = 4,
    ImGuiNavMoveFlags_WrapY = 8,
    ImGuiNavMoveFlags_AllowCurrentNavId = 16,
    ImGuiNavMoveFlags_AlsoScoreVisibleSet = 32,
    ImGuiNavMoveFlags_ScrollToEdge = 64,
    _,
};
pub const ImGuiNavMoveFlags_ = enum_unnamed_52;
pub const ImGuiNavForward_None = @intFromEnum(enum_unnamed_53.ImGuiNavForward_None);
pub const ImGuiNavForward_ForwardQueued = @intFromEnum(enum_unnamed_53.ImGuiNavForward_ForwardQueued);
pub const ImGuiNavForward_ForwardActive = @intFromEnum(enum_unnamed_53.ImGuiNavForward_ForwardActive);
const enum_unnamed_53 = enum(c_int) {
    ImGuiNavForward_None,
    ImGuiNavForward_ForwardQueued,
    ImGuiNavForward_ForwardActive,
    _,
};
pub const ImGuiNavForward = enum_unnamed_53;
pub const ImGuiNavLayer_Main = @intFromEnum(enum_unnamed_54.ImGuiNavLayer_Main);
pub const ImGuiNavLayer_Menu = @intFromEnum(enum_unnamed_54.ImGuiNavLayer_Menu);
pub const ImGuiNavLayer_COUNT = @intFromEnum(enum_unnamed_54.ImGuiNavLayer_COUNT);
const enum_unnamed_54 = enum(c_int) {
    ImGuiNavLayer_Main = 0,
    ImGuiNavLayer_Menu = 1,
    ImGuiNavLayer_COUNT = 2,
    _,
};
pub const ImGuiNavLayer = enum_unnamed_54;
pub const ImGuiPopupPositionPolicy_Default = @intFromEnum(enum_unnamed_55.ImGuiPopupPositionPolicy_Default);
pub const ImGuiPopupPositionPolicy_ComboBox = @intFromEnum(enum_unnamed_55.ImGuiPopupPositionPolicy_ComboBox);
pub const ImGuiPopupPositionPolicy_Tooltip = @intFromEnum(enum_unnamed_55.ImGuiPopupPositionPolicy_Tooltip);
const enum_unnamed_55 = enum(c_int) {
    ImGuiPopupPositionPolicy_Default,
    ImGuiPopupPositionPolicy_ComboBox,
    ImGuiPopupPositionPolicy_Tooltip,
    _,
};
pub const ImGuiPopupPositionPolicy = enum_unnamed_55;
pub const ImGuiDataType_String = @intFromEnum(enum_unnamed_56.ImGuiDataType_String);
pub const ImGuiDataType_Pointer = @intFromEnum(enum_unnamed_56.ImGuiDataType_Pointer);
pub const ImGuiDataType_ID = @intFromEnum(enum_unnamed_56.ImGuiDataType_ID);
const enum_unnamed_56 = enum(c_int) {
    ImGuiDataType_String = 11,
    ImGuiDataType_Pointer = 12,
    ImGuiDataType_ID = 13,
    _,
};
pub const ImGuiDataTypePrivate_ = enum_unnamed_56;
pub const ImGuiNextWindowDataFlags_None = @intFromEnum(enum_unnamed_57.ImGuiNextWindowDataFlags_None);
pub const ImGuiNextWindowDataFlags_HasPos = @intFromEnum(enum_unnamed_57.ImGuiNextWindowDataFlags_HasPos);
pub const ImGuiNextWindowDataFlags_HasSize = @intFromEnum(enum_unnamed_57.ImGuiNextWindowDataFlags_HasSize);
pub const ImGuiNextWindowDataFlags_HasContentSize = @intFromEnum(enum_unnamed_57.ImGuiNextWindowDataFlags_HasContentSize);
pub const ImGuiNextWindowDataFlags_HasCollapsed = @intFromEnum(enum_unnamed_57.ImGuiNextWindowDataFlags_HasCollapsed);
pub const ImGuiNextWindowDataFlags_HasSizeConstraint = @intFromEnum(enum_unnamed_57.ImGuiNextWindowDataFlags_HasSizeConstraint);
pub const ImGuiNextWindowDataFlags_HasFocus = @intFromEnum(enum_unnamed_57.ImGuiNextWindowDataFlags_HasFocus);
pub const ImGuiNextWindowDataFlags_HasBgAlpha = @intFromEnum(enum_unnamed_57.ImGuiNextWindowDataFlags_HasBgAlpha);
pub const ImGuiNextWindowDataFlags_HasScroll = @intFromEnum(enum_unnamed_57.ImGuiNextWindowDataFlags_HasScroll);
pub const ImGuiNextWindowDataFlags_HasViewport = @intFromEnum(enum_unnamed_57.ImGuiNextWindowDataFlags_HasViewport);
pub const ImGuiNextWindowDataFlags_HasDock = @intFromEnum(enum_unnamed_57.ImGuiNextWindowDataFlags_HasDock);
pub const ImGuiNextWindowDataFlags_HasWindowClass = @intFromEnum(enum_unnamed_57.ImGuiNextWindowDataFlags_HasWindowClass);
const enum_unnamed_57 = enum(c_int) {
    ImGuiNextWindowDataFlags_None = 0,
    ImGuiNextWindowDataFlags_HasPos = 1,
    ImGuiNextWindowDataFlags_HasSize = 2,
    ImGuiNextWindowDataFlags_HasContentSize = 4,
    ImGuiNextWindowDataFlags_HasCollapsed = 8,
    ImGuiNextWindowDataFlags_HasSizeConstraint = 16,
    ImGuiNextWindowDataFlags_HasFocus = 32,
    ImGuiNextWindowDataFlags_HasBgAlpha = 64,
    ImGuiNextWindowDataFlags_HasScroll = 128,
    ImGuiNextWindowDataFlags_HasViewport = 256,
    ImGuiNextWindowDataFlags_HasDock = 512,
    ImGuiNextWindowDataFlags_HasWindowClass = 1024,
    _,
};
pub const ImGuiNextWindowDataFlags_ = enum_unnamed_57;
pub const ImGuiNextItemDataFlags_None = @intFromEnum(enum_unnamed_58.ImGuiNextItemDataFlags_None);
pub const ImGuiNextItemDataFlags_HasWidth = @intFromEnum(enum_unnamed_58.ImGuiNextItemDataFlags_HasWidth);
pub const ImGuiNextItemDataFlags_HasOpen = @intFromEnum(enum_unnamed_58.ImGuiNextItemDataFlags_HasOpen);
const enum_unnamed_58 = enum(c_int) {
    ImGuiNextItemDataFlags_None = 0,
    ImGuiNextItemDataFlags_HasWidth = 1,
    ImGuiNextItemDataFlags_HasOpen = 2,
    _,
};
pub const ImGuiNextItemDataFlags_ = enum_unnamed_58;
pub const ImGuiColumnsFlags_None = @intFromEnum(enum_unnamed_59.ImGuiColumnsFlags_None);
pub const ImGuiColumnsFlags_NoBorder = @intFromEnum(enum_unnamed_59.ImGuiColumnsFlags_NoBorder);
pub const ImGuiColumnsFlags_NoResize = @intFromEnum(enum_unnamed_59.ImGuiColumnsFlags_NoResize);
pub const ImGuiColumnsFlags_NoPreserveWidths = @intFromEnum(enum_unnamed_59.ImGuiColumnsFlags_NoPreserveWidths);
pub const ImGuiColumnsFlags_NoForceWithinWindow = @intFromEnum(enum_unnamed_59.ImGuiColumnsFlags_NoForceWithinWindow);
pub const ImGuiColumnsFlags_GrowParentContentsSize = @intFromEnum(enum_unnamed_59.ImGuiColumnsFlags_GrowParentContentsSize);
const enum_unnamed_59 = enum(c_int) {
    ImGuiColumnsFlags_None = 0,
    ImGuiColumnsFlags_NoBorder = 1,
    ImGuiColumnsFlags_NoResize = 2,
    ImGuiColumnsFlags_NoPreserveWidths = 4,
    ImGuiColumnsFlags_NoForceWithinWindow = 8,
    ImGuiColumnsFlags_GrowParentContentsSize = 16,
    _,
};
pub const ImGuiColumnsFlags_ = enum_unnamed_59;
pub const ImGuiDockNodeFlags_DockSpace = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_DockSpace);
pub const ImGuiDockNodeFlags_CentralNode = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_CentralNode);
pub const ImGuiDockNodeFlags_NoTabBar = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_NoTabBar);
pub const ImGuiDockNodeFlags_HiddenTabBar = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_HiddenTabBar);
pub const ImGuiDockNodeFlags_NoWindowMenuButton = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_NoWindowMenuButton);
pub const ImGuiDockNodeFlags_NoCloseButton = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_NoCloseButton);
pub const ImGuiDockNodeFlags_NoDocking = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_NoDocking);
pub const ImGuiDockNodeFlags_NoDockingSplitMe = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_NoDockingSplitMe);
pub const ImGuiDockNodeFlags_NoDockingSplitOther = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_NoDockingSplitOther);
pub const ImGuiDockNodeFlags_NoDockingOverMe = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_NoDockingOverMe);
pub const ImGuiDockNodeFlags_NoDockingOverOther = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_NoDockingOverOther);
pub const ImGuiDockNodeFlags_NoResizeX = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_NoResizeX);
pub const ImGuiDockNodeFlags_NoResizeY = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_NoResizeY);
pub const ImGuiDockNodeFlags_SharedFlagsInheritMask_ = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_SharedFlagsInheritMask_);
pub const ImGuiDockNodeFlags_NoResizeFlagsMask_ = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_NoResizeFlagsMask_);
pub const ImGuiDockNodeFlags_LocalFlagsMask_ = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_LocalFlagsMask_);
pub const ImGuiDockNodeFlags_LocalFlagsTransferMask_ = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_LocalFlagsTransferMask_);
pub const ImGuiDockNodeFlags_SavedFlagsMask_ = @intFromEnum(enum_unnamed_60.ImGuiDockNodeFlags_SavedFlagsMask_);
const enum_unnamed_60 = enum(c_int) {
    ImGuiDockNodeFlags_DockSpace = 1024,
    ImGuiDockNodeFlags_CentralNode = 2048,
    ImGuiDockNodeFlags_NoTabBar = 4096,
    ImGuiDockNodeFlags_HiddenTabBar = 8192,
    ImGuiDockNodeFlags_NoWindowMenuButton = 16384,
    ImGuiDockNodeFlags_NoCloseButton = 32768,
    ImGuiDockNodeFlags_NoDocking = 65536,
    ImGuiDockNodeFlags_NoDockingSplitMe = 131072,
    ImGuiDockNodeFlags_NoDockingSplitOther = 262144,
    ImGuiDockNodeFlags_NoDockingOverMe = 524288,
    ImGuiDockNodeFlags_NoDockingOverOther = 1048576,
    ImGuiDockNodeFlags_NoResizeX = 2097152,
    ImGuiDockNodeFlags_NoResizeY = 4194304,
    ImGuiDockNodeFlags_SharedFlagsInheritMask_ = -1,
    ImGuiDockNodeFlags_NoResizeFlagsMask_ = 6291488,
    ImGuiDockNodeFlags_LocalFlagsMask_ = 6421616,
    ImGuiDockNodeFlags_LocalFlagsTransferMask_ = 6420592,
    ImGuiDockNodeFlags_SavedFlagsMask_ = 6421536,
    _,
};
pub const ImGuiDockNodeFlagsPrivate_ = enum_unnamed_60;
pub const ImGuiDataAuthority_Auto = @intFromEnum(enum_unnamed_61.ImGuiDataAuthority_Auto);
pub const ImGuiDataAuthority_DockNode = @intFromEnum(enum_unnamed_61.ImGuiDataAuthority_DockNode);
pub const ImGuiDataAuthority_Window = @intFromEnum(enum_unnamed_61.ImGuiDataAuthority_Window);
const enum_unnamed_61 = enum(c_int) {
    ImGuiDataAuthority_Auto,
    ImGuiDataAuthority_DockNode,
    ImGuiDataAuthority_Window,
    _,
};
pub const ImGuiDataAuthority_ = enum_unnamed_61;
pub const ImGuiDockNodeState_Unknown = @intFromEnum(enum_unnamed_62.ImGuiDockNodeState_Unknown);
pub const ImGuiDockNodeState_HostWindowHiddenBecauseSingleWindow = @intFromEnum(enum_unnamed_62.ImGuiDockNodeState_HostWindowHiddenBecauseSingleWindow);
pub const ImGuiDockNodeState_HostWindowHiddenBecauseWindowsAreResizing = @intFromEnum(enum_unnamed_62.ImGuiDockNodeState_HostWindowHiddenBecauseWindowsAreResizing);
pub const ImGuiDockNodeState_HostWindowVisible = @intFromEnum(enum_unnamed_62.ImGuiDockNodeState_HostWindowVisible);
const enum_unnamed_62 = enum(c_int) {
    ImGuiDockNodeState_Unknown,
    ImGuiDockNodeState_HostWindowHiddenBecauseSingleWindow,
    ImGuiDockNodeState_HostWindowHiddenBecauseWindowsAreResizing,
    ImGuiDockNodeState_HostWindowVisible,
    _,
};
pub const ImGuiDockNodeState = enum_unnamed_62;
pub const ImGuiTabBarFlags_DockNode = @intFromEnum(enum_unnamed_63.ImGuiTabBarFlags_DockNode);
pub const ImGuiTabBarFlags_IsFocused = @intFromEnum(enum_unnamed_63.ImGuiTabBarFlags_IsFocused);
pub const ImGuiTabBarFlags_SaveSettings = @intFromEnum(enum_unnamed_63.ImGuiTabBarFlags_SaveSettings);
const enum_unnamed_63 = enum(c_int) {
    ImGuiTabBarFlags_DockNode = 1048576,
    ImGuiTabBarFlags_IsFocused = 2097152,
    ImGuiTabBarFlags_SaveSettings = 4194304,
    _,
};
pub const ImGuiTabBarFlagsPrivate_ = enum_unnamed_63;
pub const ImGuiTabItemFlags_NoCloseButton = @intFromEnum(enum_unnamed_64.ImGuiTabItemFlags_NoCloseButton);
pub const ImGuiTabItemFlags_Button = @intFromEnum(enum_unnamed_64.ImGuiTabItemFlags_Button);
pub const ImGuiTabItemFlags_Unsorted = @intFromEnum(enum_unnamed_64.ImGuiTabItemFlags_Unsorted);
pub const ImGuiTabItemFlags_Preview = @intFromEnum(enum_unnamed_64.ImGuiTabItemFlags_Preview);
const enum_unnamed_64 = enum(c_int) {
    ImGuiTabItemFlags_NoCloseButton = 1048576,
    ImGuiTabItemFlags_Button = 2097152,
    ImGuiTabItemFlags_Unsorted = 4194304,
    ImGuiTabItemFlags_Preview = 8388608,
    _,
};
pub const ImGuiTabItemFlagsPrivate_ = enum_unnamed_64;
pub extern fn ImVec2_ImVec2Nil() [*c]ImVec2;
pub extern fn ImVec2_destroy(self: [*c]ImVec2) void;
pub extern fn ImVec2_ImVec2Float(_x: f32, _y: f32) [*c]ImVec2;
pub extern fn ImVec4_ImVec4Nil() [*c]ImVec4;
pub extern fn ImVec4_destroy(self: [*c]ImVec4) void;
pub extern fn ImVec4_ImVec4Float(_x: f32, _y: f32, _z: f32, _w: f32) [*c]ImVec4;
pub extern fn igCreateContext(shared_font_atlas: [*c]ImFontAtlas) [*c]ImGuiContext;
pub extern fn igDestroyContext(ctx: [*c]ImGuiContext) void;
pub extern fn igGetCurrentContext() [*c]ImGuiContext;
pub extern fn igSetCurrentContext(ctx: [*c]ImGuiContext) void;
pub extern fn igGetIO() *ImGuiIO;
pub extern fn igGetStyle() *ImGuiStyle;
pub extern fn igNewFrame() void;
pub extern fn igEndFrame() void;
pub extern fn igRender() void;
pub extern fn igGetDrawData() *ImDrawData;
pub extern fn igShowDemoWindow(p_open: [*c]bool) void;
pub extern fn igShowAboutWindow(p_open: [*c]bool) void;
pub extern fn igShowMetricsWindow(p_open: [*c]bool) void;
pub extern fn igShowStyleEditor(ref: [*c]ImGuiStyle) void;
pub extern fn igShowStyleSelector(label: [*c]const u8) bool;
pub extern fn igShowFontSelector(label: [*c]const u8) void;
pub extern fn igShowUserGuide() void;
pub extern fn igGetVersion() [*c]const u8;
pub extern fn igStyleColorsDark(dst: [*c]ImGuiStyle) void;
pub extern fn igStyleColorsClassic(dst: [*c]ImGuiStyle) void;
pub extern fn igStyleColorsLight(dst: [*c]ImGuiStyle) void;
pub extern fn igBegin(name: [*c]const u8, p_open: [*c]bool, flags: ImGuiWindowFlags) bool;
pub extern fn igEnd() void;
pub extern fn igBeginChildStr(str_id: [*c]const u8, size: ImVec2, border: bool, flags: ImGuiWindowFlags) bool;
pub extern fn igBeginChildID(id: ImGuiID, size: ImVec2, border: bool, flags: ImGuiWindowFlags) bool;
pub extern fn igEndChild() void;
pub extern fn igIsWindowAppearing() bool;
pub extern fn igIsWindowCollapsed() bool;
pub extern fn igIsWindowFocused(flags: ImGuiFocusedFlags) bool;
pub extern fn igIsWindowHovered(flags: ImGuiHoveredFlags) bool;
pub extern fn igGetWindowDrawList() [*c]ImDrawList;
pub extern fn igGetWindowDpiScale() f32;
pub extern fn igGetWindowViewport() [*c]ImGuiViewport;
pub extern fn igGetWindowPos(pOut: [*c]ImVec2) void;
pub extern fn igGetWindowSize(pOut: [*c]ImVec2) void;
pub extern fn igGetWindowWidth() f32;
pub extern fn igGetWindowHeight() f32;
pub extern fn igSetNextWindowPos(pos: ImVec2, cond: ImGuiCond, pivot: ImVec2) void;
pub extern fn igSetNextWindowSize(size: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetNextWindowSizeConstraints(size_min: ImVec2, size_max: ImVec2, custom_callback: ImGuiSizeCallback, custom_callback_data: ?*anyopaque) void;
pub extern fn igSetNextWindowContentSize(size: ImVec2) void;
pub extern fn igSetNextWindowCollapsed(collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetNextWindowFocus() void;
pub extern fn igSetNextWindowBgAlpha(alpha: f32) void;
pub extern fn igSetNextWindowViewport(viewport_id: ImGuiID) void;
pub extern fn igSetWindowPosVec2(pos: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowSizeVec2(size: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowCollapsedBool(collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetWindowFocusNil() void;
pub extern fn igSetWindowFontScale(scale: f32) void;
pub extern fn igSetWindowPosStr(name: [*c]const u8, pos: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowSizeStr(name: [*c]const u8, size: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowCollapsedStr(name: [*c]const u8, collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetWindowFocusStr(name: [*c]const u8) void;
pub extern fn igGetContentRegionMax(pOut: [*c]ImVec2) void;
pub extern fn igGetContentRegionAvail(pOut: [*c]ImVec2) void;
pub extern fn igGetWindowContentRegionMin(pOut: [*c]ImVec2) void;
pub extern fn igGetWindowContentRegionMax(pOut: [*c]ImVec2) void;
pub extern fn igGetWindowContentRegionWidth() f32;
pub extern fn igGetScrollX() f32;
pub extern fn igGetScrollY() f32;
pub extern fn igGetScrollMaxX() f32;
pub extern fn igGetScrollMaxY() f32;
pub extern fn igSetScrollXFloat(scroll_x: f32) void;
pub extern fn igSetScrollYFloat(scroll_y: f32) void;
pub extern fn igSetScrollHereX(center_x_ratio: f32) void;
pub extern fn igSetScrollHereY(center_y_ratio: f32) void;
pub extern fn igSetScrollFromPosXFloat(local_x: f32, center_x_ratio: f32) void;
pub extern fn igSetScrollFromPosYFloat(local_y: f32, center_y_ratio: f32) void;
pub extern fn igPushFont(font: [*c]ImFont) void;
pub extern fn igPopFont() void;
pub extern fn igPushStyleColorU32(idx: ImGuiCol, col: ImU32) void;
pub extern fn igPushStyleColorVec4(idx: ImGuiCol, col: ImVec4) void;
pub extern fn igPopStyleColor(count: c_int) void;
pub extern fn igPushStyleVarFloat(idx: ImGuiStyleVar, val: f32) void;
pub extern fn igPushStyleVarVec2(idx: ImGuiStyleVar, val: ImVec2) void;
pub extern fn igPopStyleVar(count: c_int) void;
pub extern fn igGetStyleColorVec4(idx: ImGuiCol) [*c]const ImVec4;
pub extern fn igGetFont() [*c]ImFont;
pub extern fn igGetFontSize() f32;
pub extern fn igGetFontTexUvWhitePixel(pOut: [*c]ImVec2) void;
pub extern fn igGetColorU32Col(idx: ImGuiCol, alpha_mul: f32) ImU32;
pub extern fn igGetColorU32Vec4(col: ImVec4) ImU32;
pub extern fn igGetColorU32U32(col: ImU32) ImU32;
pub extern fn igPushItemWidth(item_width: f32) void;
pub extern fn igPopItemWidth() void;
pub extern fn igSetNextItemWidth(item_width: f32) void;
pub extern fn igCalcItemWidth() f32;
pub extern fn igPushTextWrapPos(wrap_local_pos_x: f32) void;
pub extern fn igPopTextWrapPos() void;
pub extern fn igPushAllowKeyboardFocus(allow_keyboard_focus: bool) void;
pub extern fn igPopAllowKeyboardFocus() void;
pub extern fn igPushButtonRepeat(repeat: bool) void;
pub extern fn igPopButtonRepeat() void;
pub extern fn igSeparator() void;
pub extern fn igSameLine(offset_from_start_x: f32, spacing: f32) void;
pub extern fn igNewLine() void;
pub extern fn igSpacing() void;
pub extern fn igDummy(size: ImVec2) void;
pub extern fn igIndent(indent_w: f32) void;
pub extern fn igUnindent(indent_w: f32) void;
pub extern fn igBeginGroup() void;
pub extern fn igEndGroup() void;
pub extern fn igGetCursorPos(pOut: [*c]ImVec2) void;
pub extern fn igGetCursorPosX() f32;
pub extern fn igGetCursorPosY() f32;
pub extern fn igSetCursorPos(local_pos: ImVec2) void;
pub extern fn igSetCursorPosX(local_x: f32) void;
pub extern fn igSetCursorPosY(local_y: f32) void;
pub extern fn igGetCursorStartPos(pOut: [*c]ImVec2) void;
pub extern fn igGetCursorScreenPos(pOut: [*c]ImVec2) void;
pub extern fn igSetCursorScreenPos(pos: ImVec2) void;
pub extern fn igAlignTextToFramePadding() void;
pub extern fn igGetTextLineHeight() f32;
pub extern fn igGetTextLineHeightWithSpacing() f32;
pub extern fn igGetFrameHeight() f32;
pub extern fn igGetFrameHeightWithSpacing() f32;
pub extern fn igPushIDStr(str_id: [*c]const u8) void;
pub extern fn igPushIDStrStr(str_id_begin: [*c]const u8, str_id_end: [*c]const u8) void;
pub extern fn igPushIDPtr(ptr_id: ?*const anyopaque) void;
pub extern fn igPushIDInt(int_id: c_int) void;
pub extern fn igPopID() void;
pub extern fn igGetIDStr(str_id: [*c]const u8) ImGuiID;
pub extern fn igGetIDStrStr(str_id_begin: [*c]const u8, str_id_end: [*c]const u8) ImGuiID;
pub extern fn igGetIDPtr(ptr_id: ?*const anyopaque) ImGuiID;
pub extern fn igTextUnformatted(text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn igText(fmt: [*c]const u8, ...) void;
pub extern fn igTextV(fmt: [*c]const u8, args: [*c]w.struct___va_list_tag) void;
pub extern fn igTextColored(col: ImVec4, fmt: [*c]const u8, ...) void;
pub extern fn igTextColoredV(col: ImVec4, fmt: [*c]const u8, args: [*c]w.struct___va_list_tag) void;
pub extern fn igTextDisabled(fmt: [*c]const u8, ...) void;
pub extern fn igTextDisabledV(fmt: [*c]const u8, args: [*c]w.struct___va_list_tag) void;
pub extern fn igTextWrapped(fmt: [*c]const u8, ...) void;
pub extern fn igTextWrappedV(fmt: [*c]const u8, args: [*c]w.struct___va_list_tag) void;
pub extern fn igLabelText(label: [*c]const u8, fmt: [*c]const u8, ...) void;
pub extern fn igLabelTextV(label: [*c]const u8, fmt: [*c]const u8, args: [*c]w.struct___va_list_tag) void;
pub extern fn igBulletText(fmt: [*c]const u8, ...) void;
pub extern fn igBulletTextV(fmt: [*c]const u8, args: [*c]w.struct___va_list_tag) void;
pub extern fn igButton(label: [*c]const u8, size: ImVec2) bool;
pub extern fn igSmallButton(label: [*c]const u8) bool;
pub extern fn igInvisibleButton(str_id: [*c]const u8, size: ImVec2, flags: ImGuiButtonFlags) bool;
pub extern fn igArrowButton(str_id: [*c]const u8, dir: ImGuiDir) bool;
pub extern fn igImage(user_texture_id: ImTextureID, size: ImVec2, uv0: ImVec2, uv1: ImVec2, tint_col: ImVec4, border_col: ImVec4) void;
pub extern fn igImageButton(user_texture_id: ImTextureID, size: ImVec2, uv0: ImVec2, uv1: ImVec2, frame_padding: c_int, bg_col: ImVec4, tint_col: ImVec4) bool;
pub extern fn igCheckbox(label: [*c]const u8, v: [*c]bool) bool;
pub extern fn igCheckboxFlags(label: [*c]const u8, flags: [*c]c_uint, flags_value: c_uint) bool;
pub extern fn igRadioButtonBool(label: [*c]const u8, active: bool) bool;
pub extern fn igRadioButtonIntPtr(label: [*c]const u8, v: [*c]c_int, v_button: c_int) bool;
pub extern fn igProgressBar(fraction: f32, size_arg: ImVec2, overlay: [*c]const u8) void;
pub extern fn igBullet() void;
pub extern fn igBeginCombo(label: [*c]const u8, preview_value: [*c]const u8, flags: ImGuiComboFlags) bool;
pub extern fn igEndCombo() void;
pub extern fn igComboStr_arr(label: [*c]const u8, current_item: [*c]c_int, items: [*c]const [*c]const u8, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub extern fn igComboStr(label: [*c]const u8, current_item: [*c]c_int, items_separated_by_zeros: [*c]const u8, popup_max_height_in_items: c_int) bool;
pub extern fn igComboFnBoolPtr(label: [*c]const u8, current_item: [*c]c_int, items_getter: ?*const fn (?*anyopaque, c_int, [*c][*c]const u8) callconv(.C) bool, data: ?*anyopaque, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub extern fn igDragFloat(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloat2(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloat3(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloat4(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloatRange2(label: [*c]const u8, v_current_min: [*c]f32, v_current_max: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, format_max: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt2(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt3(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt4(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragIntRange2(label: [*c]const u8, v_current_min: [*c]c_int, v_current_max: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, format_max: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat2(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat3(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat4(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderAngle(label: [*c]const u8, v_rad: [*c]f32, v_degrees_min: f32, v_degrees_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt2(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt3(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt4(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igVSliderFloat(label: [*c]const u8, size: ImVec2, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igVSliderInt(label: [*c]const u8, size: ImVec2, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igVSliderScalar(label: [*c]const u8, size: ImVec2, data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igInputText(label: [*c]const u8, buf: [*c]u8, buf_size: usize, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igInputTextMultiline(label: [*c]const u8, buf: [*c]u8, buf_size: usize, size: ImVec2, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igInputTextWithHint(label: [*c]const u8, hint: [*c]const u8, buf: [*c]u8, buf_size: usize, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igInputFloat(label: [*c]const u8, v: [*c]f32, step: f32, step_fast: f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputFloat2(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputFloat3(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputFloat4(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt(label: [*c]const u8, v: [*c]c_int, step: c_int, step_fast: c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt2(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt3(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt4(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputDouble(label: [*c]const u8, v: [*c]f64, step: f64, step_fast: f64, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, p_step: ?*const anyopaque, p_step_fast: ?*const anyopaque, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, p_step: ?*const anyopaque, p_step_fast: ?*const anyopaque, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igColorEdit3(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn igColorEdit4(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn igColorPicker3(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn igColorPicker4(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags, ref_col: [*c]const f32) bool;
pub extern fn igColorButton(desc_id: [*c]const u8, col: ImVec4, flags: ImGuiColorEditFlags, size: ImVec2) bool;
pub extern fn igSetColorEditOptions(flags: ImGuiColorEditFlags) void;
pub extern fn igTreeNodeStr(label: [*c]const u8) bool;
pub extern fn igTreeNodeStrStr(str_id: [*c]const u8, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNodePtr(ptr_id: ?*const anyopaque, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNodeVStr(str_id: [*c]const u8, fmt: [*c]const u8, args: [*c]w.struct___va_list_tag) bool;
pub extern fn igTreeNodeVPtr(ptr_id: ?*const anyopaque, fmt: [*c]const u8, args: [*c]w.struct___va_list_tag) bool;
pub extern fn igTreeNodeExStr(label: [*c]const u8, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igTreeNodeExStrStr(str_id: [*c]const u8, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNodeExPtr(ptr_id: ?*const anyopaque, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNodeExVStr(str_id: [*c]const u8, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, args: [*c]w.struct___va_list_tag) bool;
pub extern fn igTreeNodeExVPtr(ptr_id: ?*const anyopaque, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, args: [*c]w.struct___va_list_tag) bool;
pub extern fn igTreePushStr(str_id: [*c]const u8) void;
pub extern fn igTreePushPtr(ptr_id: ?*const anyopaque) void;
pub extern fn igTreePop() void;
pub extern fn igGetTreeNodeToLabelSpacing() f32;
pub extern fn igCollapsingHeaderTreeNodeFlags(label: [*c]const u8, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igCollapsingHeaderBoolPtr(label: [*c]const u8, p_open: [*c]bool, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igSetNextItemOpen(is_open: bool, cond: ImGuiCond) void;
pub extern fn igSelectableBool(label: [*c]const u8, selected: bool, flags: ImGuiSelectableFlags, size: ImVec2) bool;
pub extern fn igSelectableBoolPtr(label: [*c]const u8, p_selected: [*c]bool, flags: ImGuiSelectableFlags, size: ImVec2) bool;
pub extern fn igListBoxStr_arr(label: [*c]const u8, current_item: [*c]c_int, items: [*c]const [*c]const u8, items_count: c_int, height_in_items: c_int) bool;
pub extern fn igListBoxFnBoolPtr(label: [*c]const u8, current_item: [*c]c_int, items_getter: ?*const fn (?*anyopaque, c_int, [*c][*c]const u8) callconv(.C) bool, data: ?*anyopaque, items_count: c_int, height_in_items: c_int) bool;
pub extern fn igListBoxHeaderVec2(label: [*c]const u8, size: ImVec2) bool;
pub extern fn igListBoxHeaderInt(label: [*c]const u8, items_count: c_int, height_in_items: c_int) bool;
pub extern fn igListBoxFooter() void;
pub extern fn igPlotLinesFloatPtr(label: [*c]const u8, values: [*c]const f32, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2, stride: c_int) void;
pub extern fn igPlotLinesFnFloatPtr(label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.C) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2) void;
pub extern fn igPlotHistogramFloatPtr(label: [*c]const u8, values: [*c]const f32, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2, stride: c_int) void;
pub extern fn igPlotHistogramFnFloatPtr(label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.C) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2) void;
pub extern fn igValueBool(prefix: [*c]const u8, b: bool) void;
pub extern fn igValueInt(prefix: [*c]const u8, v: c_int) void;
pub extern fn igValueUint(prefix: [*c]const u8, v: c_uint) void;
pub extern fn igValueFloat(prefix: [*c]const u8, v: f32, float_format: [*c]const u8) void;
pub extern fn igBeginMenuBar() bool;
pub extern fn igEndMenuBar() void;
pub extern fn igBeginMainMenuBar() bool;
pub extern fn igEndMainMenuBar() void;
pub extern fn igBeginMenu(label: [*c]const u8, enabled: bool) bool;
pub extern fn igEndMenu() void;
pub extern fn igMenuItemBool(label: [*c]const u8, shortcut: [*c]const u8, selected: bool, enabled: bool) bool;
pub extern fn igMenuItemBoolPtr(label: [*c]const u8, shortcut: [*c]const u8, p_selected: [*c]bool, enabled: bool) bool;
pub extern fn igBeginTooltip() void;
pub extern fn igEndTooltip() void;
pub extern fn igSetTooltip(fmt: [*c]const u8, ...) void;
pub extern fn igSetTooltipV(fmt: [*c]const u8, args: [*c]w.struct___va_list_tag) void;
pub extern fn igBeginPopup(str_id: [*c]const u8, flags: ImGuiWindowFlags) bool;
pub extern fn igBeginPopupModal(name: [*c]const u8, p_open: [*c]bool, flags: ImGuiWindowFlags) bool;
pub extern fn igEndPopup() void;
pub extern fn igOpenPopup(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) void;
pub extern fn igOpenPopupOnItemClick(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) void;
pub extern fn igCloseCurrentPopup() void;
pub extern fn igBeginPopupContextItem(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igBeginPopupContextWindow(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igBeginPopupContextVoid(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igIsPopupOpenStr(str_id: [*c]const u8, flags: ImGuiPopupFlags) bool;
pub extern fn igColumns(count: c_int, id: [*c]const u8, border: bool) void;
pub extern fn igNextColumn() void;
pub extern fn igGetColumnIndex() c_int;
pub extern fn igGetColumnWidth(column_index: c_int) f32;
pub extern fn igSetColumnWidth(column_index: c_int, width: f32) void;
pub extern fn igGetColumnOffset(column_index: c_int) f32;
pub extern fn igSetColumnOffset(column_index: c_int, offset_x: f32) void;
pub extern fn igGetColumnsCount() c_int;
pub extern fn igBeginTabBar(str_id: [*c]const u8, flags: ImGuiTabBarFlags) bool;
pub extern fn igEndTabBar() void;
pub extern fn igBeginTabItem(label: [*c]const u8, p_open: [*c]bool, flags: ImGuiTabItemFlags) bool;
pub extern fn igEndTabItem() void;
pub extern fn igTabItemButton(label: [*c]const u8, flags: ImGuiTabItemFlags) bool;
pub extern fn igSetTabItemClosed(tab_or_docked_window_label: [*c]const u8) void;
pub extern fn igDockSpace(id: ImGuiID, size: ImVec2, flags: ImGuiDockNodeFlags, window_class: [*c]const ImGuiWindowClass) void;
pub extern fn igDockSpaceOverViewport(viewport: [*c]ImGuiViewport, flags: ImGuiDockNodeFlags, window_class: [*c]const ImGuiWindowClass) ImGuiID;
pub extern fn igSetNextWindowDockID(dock_id: ImGuiID, cond: ImGuiCond) void;
pub extern fn igSetNextWindowClass(window_class: [*c]const ImGuiWindowClass) void;
pub extern fn igGetWindowDockID() ImGuiID;
pub extern fn igIsWindowDocked() bool;
pub extern fn igLogToTTY(auto_open_depth: c_int) void;
pub extern fn igLogToFile(auto_open_depth: c_int, filename: [*c]const u8) void;
pub extern fn igLogToClipboard(auto_open_depth: c_int) void;
pub extern fn igLogFinish() void;
pub extern fn igLogButtons() void;
pub extern fn igBeginDragDropSource(flags: ImGuiDragDropFlags) bool;
pub extern fn igSetDragDropPayload(type: [*c]const u8, data: ?*const anyopaque, sz: usize, cond: ImGuiCond) bool;
pub extern fn igEndDragDropSource() void;
pub extern fn igBeginDragDropTarget() bool;
pub extern fn igAcceptDragDropPayload(type: [*c]const u8, flags: ImGuiDragDropFlags) [*c]const ImGuiPayload;
pub extern fn igEndDragDropTarget() void;
pub extern fn igGetDragDropPayload() [*c]const ImGuiPayload;
pub extern fn igPushClipRect(clip_rect_min: ImVec2, clip_rect_max: ImVec2, intersect_with_current_clip_rect: bool) void;
pub extern fn igPopClipRect() void;
pub extern fn igSetItemDefaultFocus() void;
pub extern fn igSetKeyboardFocusHere(offset: c_int) void;
pub extern fn igIsItemHovered(flags: ImGuiHoveredFlags) bool;
pub extern fn igIsItemActive() bool;
pub extern fn igIsItemFocused() bool;
pub extern fn igIsItemClicked(mouse_button: ImGuiMouseButton) bool;
pub extern fn igIsItemVisible() bool;
pub extern fn igIsItemEdited() bool;
pub extern fn igIsItemActivated() bool;
pub extern fn igIsItemDeactivated() bool;
pub extern fn igIsItemDeactivatedAfterEdit() bool;
pub extern fn igIsItemToggledOpen() bool;
pub extern fn igIsAnyItemHovered() bool;
pub extern fn igIsAnyItemActive() bool;
pub extern fn igIsAnyItemFocused() bool;
pub extern fn igGetItemRectMin(pOut: [*c]ImVec2) void;
pub extern fn igGetItemRectMax(pOut: [*c]ImVec2) void;
pub extern fn igGetItemRectSize(pOut: [*c]ImVec2) void;
pub extern fn igSetItemAllowOverlap() void;
pub extern fn igIsRectVisibleNil(size: ImVec2) bool;
pub extern fn igIsRectVisibleVec2(rect_min: ImVec2, rect_max: ImVec2) bool;
pub extern fn igGetTime() f64;
pub extern fn igGetFrameCount() c_int;
pub extern fn igGetBackgroundDrawListNil() [*c]ImDrawList;
pub extern fn igGetForegroundDrawListNil() [*c]ImDrawList;
pub extern fn igGetBackgroundDrawListViewportPtr(viewport: [*c]ImGuiViewport) [*c]ImDrawList;
pub extern fn igGetForegroundDrawListViewportPtr(viewport: [*c]ImGuiViewport) [*c]ImDrawList;
pub extern fn igGetDrawListSharedData() [*c]ImDrawListSharedData;
pub extern fn igGetStyleColorName(idx: ImGuiCol) [*c]const u8;
pub extern fn igSetStateStorage(storage: [*c]ImGuiStorage) void;
pub extern fn igGetStateStorage() [*c]ImGuiStorage;
pub extern fn igCalcListClipping(items_count: c_int, items_height: f32, out_items_display_start: [*c]c_int, out_items_display_end: [*c]c_int) void;
pub extern fn igBeginChildFrame(id: ImGuiID, size: ImVec2, flags: ImGuiWindowFlags) bool;
pub extern fn igEndChildFrame() void;
pub extern fn igCalcTextSize(pOut: [*c]ImVec2, text: [*c]const u8, text_end: [*c]const u8, hide_text_after_double_hash: bool, wrap_width: f32) void;
pub extern fn igColorConvertU32ToFloat4(pOut: [*c]ImVec4, in: ImU32) void;
pub extern fn igColorConvertFloat4ToU32(in: ImVec4) ImU32;
pub extern fn igColorConvertRGBtoHSV(r: f32, g: f32, b: f32, out_h: [*c]f32, out_s: [*c]f32, out_v: [*c]f32) void;
pub extern fn igColorConvertHSVtoRGB(h: f32, s: f32, v: f32, out_r: [*c]f32, out_g: [*c]f32, out_b: [*c]f32) void;
pub extern fn igGetKeyIndex(imgui_key: ImGuiKey) c_int;
pub extern fn igIsKeyDown(user_key_index: c_int) bool;
pub extern fn igIsKeyPressed(user_key_index: c_int, repeat: bool) bool;
pub extern fn igIsKeyReleased(user_key_index: c_int) bool;
pub extern fn igGetKeyPressedAmount(key_index: c_int, repeat_delay: f32, rate: f32) c_int;
pub extern fn igCaptureKeyboardFromApp(want_capture_keyboard_value: bool) void;
pub extern fn igIsMouseDown(button: ImGuiMouseButton) bool;
pub extern fn igIsMouseClicked(button: ImGuiMouseButton, repeat: bool) bool;
pub extern fn igIsMouseReleased(button: ImGuiMouseButton) bool;
pub extern fn igIsMouseDoubleClicked(button: ImGuiMouseButton) bool;
pub extern fn igIsMouseHoveringRect(r_min: ImVec2, r_max: ImVec2, clip: bool) bool;
pub extern fn igIsMousePosValid(mouse_pos: [*c]const ImVec2) bool;
pub extern fn igIsAnyMouseDown() bool;
pub extern fn igGetMousePos(pOut: [*c]ImVec2) void;
pub extern fn igGetMousePosOnOpeningCurrentPopup(pOut: [*c]ImVec2) void;
pub extern fn igIsMouseDragging(button: ImGuiMouseButton, lock_threshold: f32) bool;
pub extern fn igGetMouseDragDelta(pOut: [*c]ImVec2, button: ImGuiMouseButton, lock_threshold: f32) void;
pub extern fn igResetMouseDragDelta(button: ImGuiMouseButton) void;
pub extern fn igGetMouseCursor() ImGuiMouseCursor;
pub extern fn igSetMouseCursor(cursor_type: ImGuiMouseCursor) void;
pub extern fn igCaptureMouseFromApp(want_capture_mouse_value: bool) void;
pub extern fn igGetClipboardText() [*c]const u8;
pub extern fn igSetClipboardText(text: [*c]const u8) void;
pub extern fn igLoadIniSettingsFromDisk(ini_filename: [*c]const u8) void;
pub extern fn igLoadIniSettingsFromMemory(ini_data: [*c]const u8, ini_size: usize) void;
pub extern fn igSaveIniSettingsToDisk(ini_filename: [*c]const u8) void;
pub extern fn igSaveIniSettingsToMemory(out_ini_size: [*c]usize) [*c]const u8;
pub extern fn igDebugCheckVersionAndDataLayout(version_str: [*c]const u8, sz_io: usize, sz_style: usize, sz_vec2: usize, sz_vec4: usize, sz_drawvert: usize, sz_drawidx: usize) bool;
pub extern fn igSetAllocatorFunctions(alloc_func: ?*const fn (usize, ?*anyopaque) callconv(.C) ?*anyopaque, free_func: ?*const fn (?*anyopaque, ?*anyopaque) callconv(.C) void, user_data: ?*anyopaque) void;
pub extern fn igMemAlloc(size: usize) ?*anyopaque;
pub extern fn igMemFree(ptr: ?*anyopaque) void;
pub extern fn igGetPlatformIO() [*c]ImGuiPlatformIO;
pub extern fn igGetMainViewport() *ImGuiViewport;
pub extern fn igUpdatePlatformWindows() void;
pub extern fn igRenderPlatformWindowsDefault(platform_render_arg: ?*anyopaque, renderer_render_arg: ?*anyopaque) void;
pub extern fn igDestroyPlatformWindows() void;
pub extern fn igFindViewportByID(id: ImGuiID) [*c]ImGuiViewport;
pub extern fn igFindViewportByPlatformHandle(platform_handle: ?*anyopaque) ?*ImGuiViewport;
pub extern fn ImGuiStyle_ImGuiStyle() [*c]ImGuiStyle;
pub extern fn ImGuiStyle_destroy(self: [*c]ImGuiStyle) void;
pub extern fn ImGuiStyle_ScaleAllSizes(self: [*c]ImGuiStyle, scale_factor: f32) void;
pub extern fn ImGuiIO_AddInputCharacter(self: [*c]ImGuiIO, c: c_uint) void;
pub extern fn ImGuiIO_AddInputCharacterUTF16(self: [*c]ImGuiIO, c: ImWchar16) void;
pub extern fn ImGuiIO_AddInputCharactersUTF8(self: [*c]ImGuiIO, str: [*c]const u8) void;
pub extern fn ImGuiIO_ClearInputCharacters(self: [*c]ImGuiIO) void;
pub extern fn ImGuiIO_ImGuiIO() [*c]ImGuiIO;
pub extern fn ImGuiIO_destroy(self: [*c]ImGuiIO) void;
pub extern fn ImGuiInputTextCallbackData_ImGuiInputTextCallbackData() [*c]ImGuiInputTextCallbackData;
pub extern fn ImGuiInputTextCallbackData_destroy(self: [*c]ImGuiInputTextCallbackData) void;
pub extern fn ImGuiInputTextCallbackData_DeleteChars(self: [*c]ImGuiInputTextCallbackData, pos: c_int, bytes_count: c_int) void;
pub extern fn ImGuiInputTextCallbackData_InsertChars(self: [*c]ImGuiInputTextCallbackData, pos: c_int, text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImGuiInputTextCallbackData_SelectAll(self: [*c]ImGuiInputTextCallbackData) void;
pub extern fn ImGuiInputTextCallbackData_ClearSelection(self: [*c]ImGuiInputTextCallbackData) void;
pub extern fn ImGuiInputTextCallbackData_HasSelection(self: [*c]ImGuiInputTextCallbackData) bool;
pub extern fn ImGuiWindowClass_ImGuiWindowClass() [*c]ImGuiWindowClass;
pub extern fn ImGuiWindowClass_destroy(self: [*c]ImGuiWindowClass) void;
pub extern fn ImGuiPayload_ImGuiPayload() [*c]ImGuiPayload;
pub extern fn ImGuiPayload_destroy(self: [*c]ImGuiPayload) void;
pub extern fn ImGuiPayload_Clear(self: [*c]ImGuiPayload) void;
pub extern fn ImGuiPayload_IsDataType(self: [*c]ImGuiPayload, type: [*c]const u8) bool;
pub extern fn ImGuiPayload_IsPreview(self: [*c]ImGuiPayload) bool;
pub extern fn ImGuiPayload_IsDelivery(self: [*c]ImGuiPayload) bool;
pub extern fn ImGuiOnceUponAFrame_ImGuiOnceUponAFrame() [*c]ImGuiOnceUponAFrame;
pub extern fn ImGuiOnceUponAFrame_destroy(self: [*c]ImGuiOnceUponAFrame) void;
pub extern fn ImGuiTextFilter_ImGuiTextFilter(default_filter: [*c]const u8) [*c]ImGuiTextFilter;
pub extern fn ImGuiTextFilter_destroy(self: [*c]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_Draw(self: [*c]ImGuiTextFilter, label: [*c]const u8, width: f32) bool;
pub extern fn ImGuiTextFilter_PassFilter(self: [*c]ImGuiTextFilter, text: [*c]const u8, text_end: [*c]const u8) bool;
pub extern fn ImGuiTextFilter_Build(self: [*c]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_Clear(self: [*c]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_IsActive(self: [*c]ImGuiTextFilter) bool;
pub extern fn ImGuiTextRange_ImGuiTextRangeNil() [*c]ImGuiTextRange;
pub extern fn ImGuiTextRange_destroy(self: [*c]ImGuiTextRange) void;
pub extern fn ImGuiTextRange_ImGuiTextRangeStr(_b: [*c]const u8, _e: [*c]const u8) [*c]ImGuiTextRange;
pub extern fn ImGuiTextRange_empty(self: [*c]ImGuiTextRange) bool;
pub extern fn ImGuiTextRange_split(self: [*c]ImGuiTextRange, separator: u8, out: [*c]ImVector_ImGuiTextRange) void;
pub extern fn ImGuiTextBuffer_ImGuiTextBuffer() [*c]ImGuiTextBuffer;
pub extern fn ImGuiTextBuffer_destroy(self: [*c]ImGuiTextBuffer) void;
pub extern fn ImGuiTextBuffer_begin(self: [*c]ImGuiTextBuffer) [*c]const u8;
pub extern fn ImGuiTextBuffer_end(self: [*c]ImGuiTextBuffer) [*c]const u8;
pub extern fn ImGuiTextBuffer_size(self: [*c]ImGuiTextBuffer) c_int;
pub extern fn ImGuiTextBuffer_empty(self: [*c]ImGuiTextBuffer) bool;
pub extern fn ImGuiTextBuffer_clear(self: [*c]ImGuiTextBuffer) void;
pub extern fn ImGuiTextBuffer_reserve(self: [*c]ImGuiTextBuffer, capacity: c_int) void;
pub extern fn ImGuiTextBuffer_c_str(self: [*c]ImGuiTextBuffer) [*c]const u8;
pub extern fn ImGuiTextBuffer_append(self: [*c]ImGuiTextBuffer, str: [*c]const u8, str_end: [*c]const u8) void;
pub extern fn ImGuiTextBuffer_appendfv(self: [*c]ImGuiTextBuffer, fmt: [*c]const u8, args: [*c]w.struct___va_list_tag) void;
pub extern fn ImGuiStoragePair_ImGuiStoragePairInt(_key: ImGuiID, _val_i: c_int) [*c]ImGuiStoragePair;
pub extern fn ImGuiStoragePair_destroy(self: [*c]ImGuiStoragePair) void;
pub extern fn ImGuiStoragePair_ImGuiStoragePairFloat(_key: ImGuiID, _val_f: f32) [*c]ImGuiStoragePair;
pub extern fn ImGuiStoragePair_ImGuiStoragePairPtr(_key: ImGuiID, _val_p: ?*anyopaque) [*c]ImGuiStoragePair;
pub extern fn ImGuiStorage_Clear(self: [*c]ImGuiStorage) void;
pub extern fn ImGuiStorage_GetInt(self: [*c]ImGuiStorage, key: ImGuiID, default_val: c_int) c_int;
pub extern fn ImGuiStorage_SetInt(self: [*c]ImGuiStorage, key: ImGuiID, val: c_int) void;
pub extern fn ImGuiStorage_GetBool(self: [*c]ImGuiStorage, key: ImGuiID, default_val: bool) bool;
pub extern fn ImGuiStorage_SetBool(self: [*c]ImGuiStorage, key: ImGuiID, val: bool) void;
pub extern fn ImGuiStorage_GetFloat(self: [*c]ImGuiStorage, key: ImGuiID, default_val: f32) f32;
pub extern fn ImGuiStorage_SetFloat(self: [*c]ImGuiStorage, key: ImGuiID, val: f32) void;
pub extern fn ImGuiStorage_GetVoidPtr(self: [*c]ImGuiStorage, key: ImGuiID) ?*anyopaque;
pub extern fn ImGuiStorage_SetVoidPtr(self: [*c]ImGuiStorage, key: ImGuiID, val: ?*anyopaque) void;
pub extern fn ImGuiStorage_GetIntRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: c_int) [*c]c_int;
pub extern fn ImGuiStorage_GetBoolRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: bool) [*c]bool;
pub extern fn ImGuiStorage_GetFloatRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: f32) [*c]f32;
pub extern fn ImGuiStorage_GetVoidPtrRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: ?*anyopaque) [*c]?*anyopaque;
pub extern fn ImGuiStorage_SetAllInt(self: [*c]ImGuiStorage, val: c_int) void;
pub extern fn ImGuiStorage_BuildSortByKey(self: [*c]ImGuiStorage) void;
pub extern fn ImGuiListClipper_ImGuiListClipper() [*c]ImGuiListClipper;
pub extern fn ImGuiListClipper_destroy(self: [*c]ImGuiListClipper) void;
pub extern fn ImGuiListClipper_Begin(self: [*c]ImGuiListClipper, items_count: c_int, items_height: f32) void;
pub extern fn ImGuiListClipper_End(self: [*c]ImGuiListClipper) void;
pub extern fn ImGuiListClipper_Step(self: [*c]ImGuiListClipper) bool;
pub extern fn ImColor_ImColorNil() [*c]ImColor;
pub extern fn ImColor_destroy(self: [*c]ImColor) void;
pub extern fn ImColor_ImColorInt(r: c_int, g: c_int, b: c_int, a: c_int) [*c]ImColor;
pub extern fn ImColor_ImColorU32(rgba: ImU32) [*c]ImColor;
pub extern fn ImColor_ImColorFloat(r: f32, g: f32, b: f32, a: f32) [*c]ImColor;
pub extern fn ImColor_ImColorVec4(col: ImVec4) [*c]ImColor;
pub extern fn ImColor_SetHSV(self: [*c]ImColor, h: f32, s: f32, v: f32, a: f32) void;
pub extern fn ImColor_HSV(pOut: [*c]ImColor, h: f32, s: f32, v: f32, a: f32) void;
pub extern fn ImDrawCmd_ImDrawCmd() [*c]ImDrawCmd;
pub extern fn ImDrawCmd_destroy(self: [*c]ImDrawCmd) void;
pub extern fn ImDrawListSplitter_ImDrawListSplitter() [*c]ImDrawListSplitter;
pub extern fn ImDrawListSplitter_destroy(self: [*c]ImDrawListSplitter) void;
pub extern fn ImDrawListSplitter_Clear(self: [*c]ImDrawListSplitter) void;
pub extern fn ImDrawListSplitter_ClearFreeMemory(self: [*c]ImDrawListSplitter) void;
pub extern fn ImDrawListSplitter_Split(self: [*c]ImDrawListSplitter, draw_list: [*c]ImDrawList, count: c_int) void;
pub extern fn ImDrawListSplitter_Merge(self: [*c]ImDrawListSplitter, draw_list: [*c]ImDrawList) void;
pub extern fn ImDrawListSplitter_SetCurrentChannel(self: [*c]ImDrawListSplitter, draw_list: [*c]ImDrawList, channel_idx: c_int) void;
pub extern fn ImDrawList_ImDrawList(shared_data: [*c]const ImDrawListSharedData) [*c]ImDrawList;
pub extern fn ImDrawList_destroy(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PushClipRect(self: [*c]ImDrawList, clip_rect_min: ImVec2, clip_rect_max: ImVec2, intersect_with_current_clip_rect: bool) void;
pub extern fn ImDrawList_PushClipRectFullScreen(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PopClipRect(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PushTextureID(self: [*c]ImDrawList, texture_id: ImTextureID) void;
pub extern fn ImDrawList_PopTextureID(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_GetClipRectMin(pOut: [*c]ImVec2, self: [*c]ImDrawList) void;
pub extern fn ImDrawList_GetClipRectMax(pOut: [*c]ImVec2, self: [*c]ImDrawList) void;
pub extern fn ImDrawList_AddLine(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddRect(self: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, col: ImU32, rounding: f32, rounding_corners: ImDrawCornerFlags, thickness: f32) void;
pub extern fn ImDrawList_AddRectFilled(self: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, col: ImU32, rounding: f32, rounding_corners: ImDrawCornerFlags) void;
pub extern fn ImDrawList_AddRectFilledMultiColor(self: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, col_upr_left: ImU32, col_upr_right: ImU32, col_bot_right: ImU32, col_bot_left: ImU32) void;
pub extern fn ImDrawList_AddQuad(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddQuadFilled(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddTriangle(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddTriangleFilled(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddCircle(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddCircleFilled(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int) void;
pub extern fn ImDrawList_AddNgon(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddNgonFilled(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int) void;
pub extern fn ImDrawList_AddTextVec2(self: [*c]ImDrawList, pos: ImVec2, col: ImU32, text_begin: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImDrawList_AddTextFontPtr(self: [*c]ImDrawList, font: [*c]const ImFont, font_size: f32, pos: ImVec2, col: ImU32, text_begin: [*c]const u8, text_end: [*c]const u8, wrap_width: f32, cpu_fine_clip_rect: [*c]const ImVec4) void;
pub extern fn ImDrawList_AddPolyline(self: [*c]ImDrawList, points: [*c]const ImVec2, num_points: c_int, col: ImU32, closed: bool, thickness: f32) void;
pub extern fn ImDrawList_AddConvexPolyFilled(self: [*c]ImDrawList, points: [*c]const ImVec2, num_points: c_int, col: ImU32) void;
pub extern fn ImDrawList_AddBezierCurve(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32, thickness: f32, num_segments: c_int) void;
pub extern fn ImDrawList_AddImage(self: [*c]ImDrawList, user_texture_id: ImTextureID, p_min: ImVec2, p_max: ImVec2, uv_min: ImVec2, uv_max: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddImageQuad(self: [*c]ImDrawList, user_texture_id: ImTextureID, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, uv1: ImVec2, uv2: ImVec2, uv3: ImVec2, uv4: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddImageRounded(self: [*c]ImDrawList, user_texture_id: ImTextureID, p_min: ImVec2, p_max: ImVec2, uv_min: ImVec2, uv_max: ImVec2, col: ImU32, rounding: f32, rounding_corners: ImDrawCornerFlags) void;
pub extern fn ImDrawList_PathClear(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PathLineTo(self: [*c]ImDrawList, pos: ImVec2) void;
pub extern fn ImDrawList_PathLineToMergeDuplicate(self: [*c]ImDrawList, pos: ImVec2) void;
pub extern fn ImDrawList_PathFillConvex(self: [*c]ImDrawList, col: ImU32) void;
pub extern fn ImDrawList_PathStroke(self: [*c]ImDrawList, col: ImU32, closed: bool, thickness: f32) void;
pub extern fn ImDrawList_PathArcTo(self: [*c]ImDrawList, center: ImVec2, radius: f32, a_min: f32, a_max: f32, num_segments: c_int) void;
pub extern fn ImDrawList_PathArcToFast(self: [*c]ImDrawList, center: ImVec2, radius: f32, a_min_of_12: c_int, a_max_of_12: c_int) void;
pub extern fn ImDrawList_PathBezierCurveTo(self: [*c]ImDrawList, p2: ImVec2, p3: ImVec2, p4: ImVec2, num_segments: c_int) void;
pub extern fn ImDrawList_PathRect(self: [*c]ImDrawList, rect_min: ImVec2, rect_max: ImVec2, rounding: f32, rounding_corners: ImDrawCornerFlags) void;
pub extern fn ImDrawList_AddCallback(self: [*c]ImDrawList, callback: ImDrawCallback, callback_data: ?*anyopaque) void;
pub extern fn ImDrawList_AddDrawCmd(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_CloneOutput(self: [*c]ImDrawList) [*c]ImDrawList;
pub extern fn ImDrawList_ChannelsSplit(self: [*c]ImDrawList, count: c_int) void;
pub extern fn ImDrawList_ChannelsMerge(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_ChannelsSetCurrent(self: [*c]ImDrawList, n: c_int) void;
pub extern fn ImDrawList_PrimReserve(self: [*c]ImDrawList, idx_count: c_int, vtx_count: c_int) void;
pub extern fn ImDrawList_PrimUnreserve(self: [*c]ImDrawList, idx_count: c_int, vtx_count: c_int) void;
pub extern fn ImDrawList_PrimRect(self: [*c]ImDrawList, a: ImVec2, b: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimRectUV(self: [*c]ImDrawList, a: ImVec2, b: ImVec2, uv_a: ImVec2, uv_b: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimQuadUV(self: [*c]ImDrawList, a: ImVec2, b: ImVec2, c: ImVec2, d: ImVec2, uv_a: ImVec2, uv_b: ImVec2, uv_c: ImVec2, uv_d: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimWriteVtx(self: [*c]ImDrawList, pos: ImVec2, uv: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimWriteIdx(self: [*c]ImDrawList, idx: ImDrawIdx) void;
pub extern fn ImDrawList_PrimVtx(self: [*c]ImDrawList, pos: ImVec2, uv: ImVec2, col: ImU32) void;
pub extern fn ImDrawList__ResetForNewFrame(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__ClearFreeMemory(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__PopUnusedDrawCmd(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__OnChangedClipRect(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__OnChangedTextureID(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__OnChangedVtxOffset(self: [*c]ImDrawList) void;
pub extern fn ImDrawData_ImDrawData() [*c]ImDrawData;
pub extern fn ImDrawData_destroy(self: [*c]ImDrawData) void;
pub extern fn ImDrawData_Clear(self: [*c]ImDrawData) void;
pub extern fn ImDrawData_DeIndexAllBuffers(self: [*c]ImDrawData) void;
pub extern fn ImDrawData_ScaleClipRects(self: [*c]ImDrawData, fb_scale: ImVec2) void;
pub extern fn ImFontConfig_ImFontConfig() [*c]ImFontConfig;
pub extern fn ImFontConfig_destroy(self: [*c]ImFontConfig) void;
pub extern fn ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder() [*c]ImFontGlyphRangesBuilder;
pub extern fn ImFontGlyphRangesBuilder_destroy(self: [*c]ImFontGlyphRangesBuilder) void;
pub extern fn ImFontGlyphRangesBuilder_Clear(self: [*c]ImFontGlyphRangesBuilder) void;
pub extern fn ImFontGlyphRangesBuilder_GetBit(self: [*c]ImFontGlyphRangesBuilder, n: usize) bool;
pub extern fn ImFontGlyphRangesBuilder_SetBit(self: [*c]ImFontGlyphRangesBuilder, n: usize) void;
pub extern fn ImFontGlyphRangesBuilder_AddChar(self: [*c]ImFontGlyphRangesBuilder, c: ImWchar) void;
pub extern fn ImFontGlyphRangesBuilder_AddText(self: [*c]ImFontGlyphRangesBuilder, text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImFontGlyphRangesBuilder_AddRanges(self: [*c]ImFontGlyphRangesBuilder, ranges: [*c]const ImWchar) void;
pub extern fn ImFontGlyphRangesBuilder_BuildRanges(self: [*c]ImFontGlyphRangesBuilder, out_ranges: [*c]ImVector_ImWchar) void;
pub extern fn ImFontAtlasCustomRect_ImFontAtlasCustomRect() [*c]ImFontAtlasCustomRect;
pub extern fn ImFontAtlasCustomRect_destroy(self: [*c]ImFontAtlasCustomRect) void;
pub extern fn ImFontAtlasCustomRect_IsPacked(self: [*c]ImFontAtlasCustomRect) bool;
pub extern fn ImFontAtlas_ImFontAtlas() [*c]ImFontAtlas;
pub extern fn ImFontAtlas_destroy(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_AddFont(self: [*c]ImFontAtlas, font_cfg: [*c]const ImFontConfig) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontDefault(self: [*c]ImFontAtlas, font_cfg: [*c]const ImFontConfig) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromFileTTF(self: [*c]ImFontAtlas, filename: [*c]const u8, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryTTF(self: [*c]ImFontAtlas, font_data: ?*const anyopaque, font_size: c_int, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryCompressedTTF(self: [*c]ImFontAtlas, compressed_font_data: ?*const anyopaque, compressed_font_size: c_int, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(self: [*c]ImFontAtlas, compressed_font_data_base85: [*c]const u8, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_ClearInputData(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_ClearTexData(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_ClearFonts(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_Clear(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_Build(self: [*c]ImFontAtlas) bool;
pub extern fn ImFontAtlas_GetTexDataAsAlpha8(self: [*c]ImFontAtlas, out_pixels: [*c][*c]u8, out_width: [*c]c_int, out_height: [*c]c_int, out_bytes_per_pixel: [*c]c_int) void;
pub extern fn ImFontAtlas_GetTexDataAsRGBA32(self: [*c]ImFontAtlas, out_pixels: [*c][*c]u8, out_width: [*c]c_int, out_height: [*c]c_int, out_bytes_per_pixel: [*c]c_int) void;
pub extern fn ImFontAtlas_IsBuilt(self: [*c]ImFontAtlas) bool;
pub extern fn ImFontAtlas_SetTexID(self: [*c]ImFontAtlas, id: ImTextureID) void;
pub extern fn ImFontAtlas_GetGlyphRangesDefault(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesKorean(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesJapanese(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesChineseFull(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesCyrillic(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesThai(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesVietnamese(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_AddCustomRectRegular(self: [*c]ImFontAtlas, width: c_int, height: c_int) c_int;
pub extern fn ImFontAtlas_AddCustomRectFontGlyph(self: [*c]ImFontAtlas, font: [*c]ImFont, id: ImWchar, width: c_int, height: c_int, advance_x: f32, offset: ImVec2) c_int;
pub extern fn ImFontAtlas_GetCustomRectByIndex(self: [*c]ImFontAtlas, index: c_int) [*c]ImFontAtlasCustomRect;
pub extern fn ImFontAtlas_CalcCustomRectUV(self: [*c]ImFontAtlas, rect: [*c]const ImFontAtlasCustomRect, out_uv_min: [*c]ImVec2, out_uv_max: [*c]ImVec2) void;
pub extern fn ImFontAtlas_GetMouseCursorTexData(self: [*c]ImFontAtlas, cursor: ImGuiMouseCursor, out_offset: [*c]ImVec2, out_size: [*c]ImVec2, out_uv_border: [*c]ImVec2, out_uv_fill: [*c]ImVec2) bool;
pub extern fn ImFont_ImFont() [*c]ImFont;
pub extern fn ImFont_destroy(self: [*c]ImFont) void;
pub extern fn ImFont_FindGlyph(self: [*c]ImFont, c: ImWchar) ?*const ImFontGlyph;
pub extern fn ImFont_FindGlyphNoFallback(self: [*c]ImFont, c: ImWchar) ?*const ImFontGlyph;
pub extern fn ImFont_GetCharAdvance(self: [*c]ImFont, c: ImWchar) f32;
pub extern fn ImFont_IsLoaded(self: [*c]ImFont) bool;
pub extern fn ImFont_GetDebugName(self: [*c]ImFont) [*c]const u8;
pub extern fn ImFont_CalcTextSizeA(pOut: [*c]ImVec2, self: [*c]ImFont, size: f32, max_width: f32, wrap_width: f32, text_begin: [*c]const u8, text_end: [*c]const u8, remaining: [*c][*c]const u8) void;
pub extern fn ImFont_CalcWordWrapPositionA(self: [*c]ImFont, scale: f32, text: [*c]const u8, text_end: [*c]const u8, wrap_width: f32) [*c]const u8;
pub extern fn ImFont_RenderChar(self: [*c]ImFont, draw_list: [*c]ImDrawList, size: f32, pos: ImVec2, col: ImU32, c: ImWchar) void;
pub extern fn ImFont_RenderText(self: [*c]ImFont, draw_list: [*c]ImDrawList, size: f32, pos: ImVec2, col: ImU32, clip_rect: ImVec4, text_begin: [*c]const u8, text_end: [*c]const u8, wrap_width: f32, cpu_fine_clip: bool) void;
pub extern fn ImFont_BuildLookupTable(self: [*c]ImFont) void;
pub extern fn ImFont_ClearOutputData(self: [*c]ImFont) void;
pub extern fn ImFont_GrowIndex(self: [*c]ImFont, new_size: c_int) void;
pub extern fn ImFont_AddGlyph(self: [*c]ImFont, src_cfg: [*c]const ImFontConfig, c: ImWchar, x0: f32, y0: f32, x1: f32, y1: f32, u0: f32, v0: f32, u1: f32, v1: f32, advance_x: f32) void;
pub extern fn ImFont_AddRemapChar(self: [*c]ImFont, dst: ImWchar, src: ImWchar, overwrite_dst: bool) void;
pub extern fn ImFont_SetGlyphVisible(self: [*c]ImFont, c: ImWchar, visible: bool) void;
pub extern fn ImFont_SetFallbackChar(self: [*c]ImFont, c: ImWchar) void;
pub extern fn ImFont_IsGlyphRangeUnused(self: [*c]ImFont, c_begin: c_uint, c_last: c_uint) bool;
pub extern fn ImGuiPlatformIO_ImGuiPlatformIO() [*c]ImGuiPlatformIO;
pub extern fn ImGuiPlatformIO_destroy(self: [*c]ImGuiPlatformIO) void;
pub extern fn ImGuiPlatformMonitor_ImGuiPlatformMonitor() [*c]ImGuiPlatformMonitor;
pub extern fn ImGuiPlatformMonitor_destroy(self: [*c]ImGuiPlatformMonitor) void;
pub extern fn ImGuiViewport_ImGuiViewport() [*c]ImGuiViewport;
pub extern fn ImGuiViewport_destroy(self: [*c]ImGuiViewport) void;
pub extern fn ImGuiViewport_GetCenter(pOut: [*c]ImVec2, self: [*c]ImGuiViewport) void;
pub extern fn ImGuiViewport_GetWorkPos(pOut: [*c]ImVec2, self: [*c]ImGuiViewport) void;
pub extern fn ImGuiViewport_GetWorkSize(pOut: [*c]ImVec2, self: [*c]ImGuiViewport) void;
pub extern fn igImHashData(data: ?*const anyopaque, data_size: usize, seed: ImU32) ImU32;
pub extern fn igImHashStr(data: [*c]const u8, data_size: usize, seed: ImU32) ImU32;
pub extern fn igImAlphaBlendColors(col_a: ImU32, col_b: ImU32) ImU32;
pub extern fn igImIsPowerOfTwo(v: c_int) bool;
pub extern fn igImUpperPowerOfTwo(v: c_int) c_int;
pub extern fn igImStricmp(str1: [*c]const u8, str2: [*c]const u8) c_int;
pub extern fn igImStrnicmp(str1: [*c]const u8, str2: [*c]const u8, count: usize) c_int;
pub extern fn igImStrncpy(dst: [*c]u8, src: [*c]const u8, count: usize) void;
pub extern fn igImStrdup(str: [*c]const u8) [*c]u8;
pub extern fn igImStrdupcpy(dst: [*c]u8, p_dst_size: [*c]usize, str: [*c]const u8) [*c]u8;
pub extern fn igImStrchrRange(str_begin: [*c]const u8, str_end: [*c]const u8, c: u8) [*c]const u8;
pub extern fn igImStrlenW(str: [*c]const ImWchar) c_int;
pub extern fn igImStreolRange(str: [*c]const u8, str_end: [*c]const u8) [*c]const u8;
pub extern fn igImStrbolW(buf_mid_line: [*c]const ImWchar, buf_begin: [*c]const ImWchar) [*c]const ImWchar;
pub extern fn igImStristr(haystack: [*c]const u8, haystack_end: [*c]const u8, needle: [*c]const u8, needle_end: [*c]const u8) [*c]const u8;
pub extern fn igImStrTrimBlanks(str: [*c]u8) void;
pub extern fn igImStrSkipBlank(str: [*c]const u8) [*c]const u8;
pub extern fn igImFormatString(buf: [*c]u8, buf_size: usize, fmt: [*c]const u8, ...) c_int;
pub extern fn igImFormatStringV(buf: [*c]u8, buf_size: usize, fmt: [*c]const u8, args: [*c]w.struct___va_list_tag) c_int;
pub extern fn igImParseFormatFindStart(format: [*c]const u8) [*c]const u8;
pub extern fn igImParseFormatFindEnd(format: [*c]const u8) [*c]const u8;
pub extern fn igImParseFormatTrimDecorations(format: [*c]const u8, buf: [*c]u8, buf_size: usize) [*c]const u8;
pub extern fn igImParseFormatPrecision(format: [*c]const u8, default_value: c_int) c_int;
pub extern fn igImCharIsBlankA(c: u8) bool;
pub extern fn igImCharIsBlankW(c: c_uint) bool;
pub extern fn igImTextStrToUtf8(buf: [*c]u8, buf_size: c_int, in_text: [*c]const ImWchar, in_text_end: [*c]const ImWchar) c_int;
pub extern fn igImTextCharFromUtf8(out_char: [*c]c_uint, in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn igImTextStrFromUtf8(buf: [*c]ImWchar, buf_size: c_int, in_text: [*c]const u8, in_text_end: [*c]const u8, in_remaining: [*c][*c]const u8) c_int;
pub extern fn igImTextCountCharsFromUtf8(in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn igImTextCountUtf8BytesFromChar(in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn igImTextCountUtf8BytesFromStr(in_text: [*c]const ImWchar, in_text_end: [*c]const ImWchar) c_int;
pub extern fn igImFileOpen(filename: [*c]const u8, mode: [*c]const u8) ImFileHandle;
pub extern fn igImFileClose(file: ImFileHandle) bool;
pub extern fn igImFileGetSize(file: ImFileHandle) ImU64;
pub extern fn igImFileRead(data: ?*anyopaque, size: ImU64, count: ImU64, file: ImFileHandle) ImU64;
pub extern fn igImFileWrite(data: ?*const anyopaque, size: ImU64, count: ImU64, file: ImFileHandle) ImU64;
pub extern fn igImFileLoadToMemory(filename: [*c]const u8, mode: [*c]const u8, out_file_size: [*c]usize, padding_bytes: c_int) ?*anyopaque;
pub extern fn igImPowFloat(x: f32, y: f32) f32;
pub extern fn igImPowdouble(x: f64, y: f64) f64;
pub extern fn igImLogFloat(x: f32) f32;
pub extern fn igImLogdouble(x: f64) f64;
pub extern fn igImAbsFloat(x: f32) f32;
pub extern fn igImAbsdouble(x: f64) f64;
pub extern fn igImSignFloat(x: f32) f32;
pub extern fn igImSigndouble(x: f64) f64;
pub extern fn igImMin(pOut: [*c]ImVec2, lhs: ImVec2, rhs: ImVec2) void;
pub extern fn igImMax(pOut: [*c]ImVec2, lhs: ImVec2, rhs: ImVec2) void;
pub extern fn igImClamp(pOut: [*c]ImVec2, v: ImVec2, mn: ImVec2, mx: ImVec2) void;
pub extern fn igImLerpVec2Float(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, t: f32) void;
pub extern fn igImLerpVec2Vec2(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, t: ImVec2) void;
pub extern fn igImLerpVec4(pOut: [*c]ImVec4, a: ImVec4, b: ImVec4, t: f32) void;
pub extern fn igImSaturate(f: f32) f32;
pub extern fn igImLengthSqrVec2(lhs: ImVec2) f32;
pub extern fn igImLengthSqrVec4(lhs: ImVec4) f32;
pub extern fn igImInvLength(lhs: ImVec2, fail_value: f32) f32;
pub extern fn igImFloorFloat(f: f32) f32;
pub extern fn igImFloorVec2(pOut: [*c]ImVec2, v: ImVec2) void;
pub extern fn igImModPositive(a: c_int, b: c_int) c_int;
pub extern fn igImDot(a: ImVec2, b: ImVec2) f32;
pub extern fn igImRotate(pOut: [*c]ImVec2, v: ImVec2, cos_a: f32, sin_a: f32) void;
pub extern fn igImLinearSweep(current: f32, target: f32, speed: f32) f32;
pub extern fn igImMul(pOut: [*c]ImVec2, lhs: ImVec2, rhs: ImVec2) void;
pub extern fn igImBezierCalc(pOut: [*c]ImVec2, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, t: f32) void;
pub extern fn igImBezierClosestPoint(pOut: [*c]ImVec2, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, p: ImVec2, num_segments: c_int) void;
pub extern fn igImBezierClosestPointCasteljau(pOut: [*c]ImVec2, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, p: ImVec2, tess_tol: f32) void;
pub extern fn igImLineClosestPoint(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, p: ImVec2) void;
pub extern fn igImTriangleContainsPoint(a: ImVec2, b: ImVec2, c: ImVec2, p: ImVec2) bool;
pub extern fn igImTriangleClosestPoint(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, c: ImVec2, p: ImVec2) void;
pub extern fn igImTriangleBarycentricCoords(a: ImVec2, b: ImVec2, c: ImVec2, p: ImVec2, out_u: [*c]f32, out_v: [*c]f32, out_w: [*c]f32) void;
pub extern fn igImTriangleArea(a: ImVec2, b: ImVec2, c: ImVec2) f32;
pub extern fn igImGetDirQuadrantFromDelta(dx: f32, dy: f32) ImGuiDir;
pub extern fn ImVec1_ImVec1Nil() [*c]ImVec1;
pub extern fn ImVec1_destroy(self: [*c]ImVec1) void;
pub extern fn ImVec1_ImVec1Float(_x: f32) [*c]ImVec1;
pub extern fn ImVec2ih_ImVec2ihNil() [*c]ImVec2ih;
pub extern fn ImVec2ih_destroy(self: [*c]ImVec2ih) void;
pub extern fn ImVec2ih_ImVec2ihshort(_x: c_short, _y: c_short) [*c]ImVec2ih;
pub extern fn ImVec2ih_ImVec2ihVec2(rhs: ImVec2) [*c]ImVec2ih;
pub extern fn ImRect_ImRectNil() [*c]ImRect;
pub extern fn ImRect_destroy(self: [*c]ImRect) void;
pub extern fn ImRect_ImRectVec2(min: ImVec2, max: ImVec2) [*c]ImRect;
pub extern fn ImRect_ImRectVec4(v: ImVec4) [*c]ImRect;
pub extern fn ImRect_ImRectFloat(x1: f32, y1: f32, x2: f32, y2: f32) [*c]ImRect;
pub extern fn ImRect_GetCenter(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_GetSize(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_GetWidth(self: [*c]ImRect) f32;
pub extern fn ImRect_GetHeight(self: [*c]ImRect) f32;
pub extern fn ImRect_GetTL(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_GetTR(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_GetBL(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_GetBR(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_ContainsVec2(self: [*c]ImRect, p: ImVec2) bool;
pub extern fn ImRect_ContainsRect(self: [*c]ImRect, r: ImRect) bool;
pub extern fn ImRect_Overlaps(self: [*c]ImRect, r: ImRect) bool;
pub extern fn ImRect_AddVec2(self: [*c]ImRect, p: ImVec2) void;
pub extern fn ImRect_AddRect(self: [*c]ImRect, r: ImRect) void;
pub extern fn ImRect_ExpandFloat(self: [*c]ImRect, amount: f32) void;
pub extern fn ImRect_ExpandVec2(self: [*c]ImRect, amount: ImVec2) void;
pub extern fn ImRect_Translate(self: [*c]ImRect, d: ImVec2) void;
pub extern fn ImRect_TranslateX(self: [*c]ImRect, dx: f32) void;
pub extern fn ImRect_TranslateY(self: [*c]ImRect, dy: f32) void;
pub extern fn ImRect_ClipWith(self: [*c]ImRect, r: ImRect) void;
pub extern fn ImRect_ClipWithFull(self: [*c]ImRect, r: ImRect) void;
pub extern fn ImRect_Floor(self: [*c]ImRect) void;
pub extern fn ImRect_IsInverted(self: [*c]ImRect) bool;
pub extern fn ImRect_ToVec4(pOut: [*c]ImVec4, self: [*c]ImRect) void;
pub extern fn igImBitArrayTestBit(arr: [*c]const ImU32, n: c_int) bool;
pub extern fn igImBitArrayClearBit(arr: [*c]ImU32, n: c_int) void;
pub extern fn igImBitArraySetBit(arr: [*c]ImU32, n: c_int) void;
pub extern fn igImBitArraySetBitRange(arr: [*c]ImU32, n: c_int, n2: c_int) void;
pub extern fn ImBitVector_Create(self: [*c]ImBitVector, sz: c_int) void;
pub extern fn ImBitVector_Clear(self: [*c]ImBitVector) void;
pub extern fn ImBitVector_TestBit(self: [*c]ImBitVector, n: c_int) bool;
pub extern fn ImBitVector_SetBit(self: [*c]ImBitVector, n: c_int) void;
pub extern fn ImBitVector_ClearBit(self: [*c]ImBitVector, n: c_int) void;
pub extern fn ImDrawListSharedData_ImDrawListSharedData() [*c]ImDrawListSharedData;
pub extern fn ImDrawListSharedData_destroy(self: [*c]ImDrawListSharedData) void;
pub extern fn ImDrawListSharedData_SetCircleSegmentMaxError(self: [*c]ImDrawListSharedData, max_error: f32) void;
pub extern fn ImDrawDataBuilder_Clear(self: [*c]ImDrawDataBuilder) void;
pub extern fn ImDrawDataBuilder_ClearFreeMemory(self: [*c]ImDrawDataBuilder) void;
pub extern fn ImDrawDataBuilder_FlattenIntoSingleLayer(self: [*c]ImDrawDataBuilder) void;
pub extern fn ImGuiStyleMod_ImGuiStyleModInt(idx: ImGuiStyleVar, v: c_int) [*c]ImGuiStyleMod;
pub extern fn ImGuiStyleMod_destroy(self: [*c]ImGuiStyleMod) void;
pub extern fn ImGuiStyleMod_ImGuiStyleModFloat(idx: ImGuiStyleVar, v: f32) [*c]ImGuiStyleMod;
pub extern fn ImGuiStyleMod_ImGuiStyleModVec2(idx: ImGuiStyleVar, v: ImVec2) [*c]ImGuiStyleMod;
pub extern fn ImGuiMenuColumns_ImGuiMenuColumns() [*c]ImGuiMenuColumns;
pub extern fn ImGuiMenuColumns_destroy(self: [*c]ImGuiMenuColumns) void;
pub extern fn ImGuiMenuColumns_Update(self: [*c]ImGuiMenuColumns, count: c_int, spacing: f32, clear: bool) void;
pub extern fn ImGuiMenuColumns_DeclColumns(self: [*c]ImGuiMenuColumns, w0: f32, w1: f32, w2: f32) f32;
pub extern fn ImGuiMenuColumns_CalcExtraSpace(self: [*c]ImGuiMenuColumns, avail_w: f32) f32;
pub extern fn ImGuiInputTextState_ImGuiInputTextState() [*c]ImGuiInputTextState;
pub extern fn ImGuiInputTextState_destroy(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ClearText(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ClearFreeMemory(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_GetUndoAvailCount(self: [*c]ImGuiInputTextState) c_int;
pub extern fn ImGuiInputTextState_GetRedoAvailCount(self: [*c]ImGuiInputTextState) c_int;
pub extern fn ImGuiInputTextState_OnKeyPressed(self: [*c]ImGuiInputTextState, key: c_int) void;
pub extern fn ImGuiInputTextState_CursorAnimReset(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_CursorClamp(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_HasSelection(self: [*c]ImGuiInputTextState) bool;
pub extern fn ImGuiInputTextState_ClearSelection(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_SelectAll(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiPopupData_ImGuiPopupData() [*c]ImGuiPopupData;
pub extern fn ImGuiPopupData_destroy(self: [*c]ImGuiPopupData) void;
pub extern fn ImGuiNavMoveResult_ImGuiNavMoveResult() [*c]ImGuiNavMoveResult;
pub extern fn ImGuiNavMoveResult_destroy(self: [*c]ImGuiNavMoveResult) void;
pub extern fn ImGuiNavMoveResult_Clear(self: [*c]ImGuiNavMoveResult) void;
pub extern fn ImGuiNextWindowData_ImGuiNextWindowData() [*c]ImGuiNextWindowData;
pub extern fn ImGuiNextWindowData_destroy(self: [*c]ImGuiNextWindowData) void;
pub extern fn ImGuiNextWindowData_ClearFlags(self: [*c]ImGuiNextWindowData) void;
pub extern fn ImGuiNextItemData_ImGuiNextItemData() [*c]ImGuiNextItemData;
pub extern fn ImGuiNextItemData_destroy(self: [*c]ImGuiNextItemData) void;
pub extern fn ImGuiNextItemData_ClearFlags(self: [*c]ImGuiNextItemData) void;
pub extern fn ImGuiPtrOrIndex_ImGuiPtrOrIndexPtr(ptr: ?*anyopaque) [*c]ImGuiPtrOrIndex;
pub extern fn ImGuiPtrOrIndex_destroy(self: [*c]ImGuiPtrOrIndex) void;
pub extern fn ImGuiPtrOrIndex_ImGuiPtrOrIndexInt(index: c_int) [*c]ImGuiPtrOrIndex;
pub extern fn ImGuiColumnData_ImGuiColumnData() [*c]ImGuiColumnData;
pub extern fn ImGuiColumnData_destroy(self: [*c]ImGuiColumnData) void;
pub extern fn ImGuiColumns_ImGuiColumns() [*c]ImGuiColumns;
pub extern fn ImGuiColumns_destroy(self: [*c]ImGuiColumns) void;
pub extern fn ImGuiColumns_Clear(self: [*c]ImGuiColumns) void;
pub extern fn ImGuiDockNode_ImGuiDockNode(id: ImGuiID) ?*ImGuiDockNode;
pub extern fn ImGuiDockNode_destroy(self: ?*ImGuiDockNode) void;
pub extern fn ImGuiDockNode_IsRootNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsDockSpace(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsFloatingNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsCentralNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsHiddenTabBar(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsNoTabBar(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsSplitNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsLeafNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsEmpty(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_GetMergedFlags(self: ?*ImGuiDockNode) ImGuiDockNodeFlags;
pub extern fn ImGuiDockNode_Rect(pOut: [*c]ImRect, self: ?*ImGuiDockNode) void;
pub extern fn ImGuiDockContext_ImGuiDockContext() [*c]ImGuiDockContext;
pub extern fn ImGuiDockContext_destroy(self: [*c]ImGuiDockContext) void;
pub extern fn ImGuiViewportP_ImGuiViewportP() [*c]ImGuiViewportP;
pub extern fn ImGuiViewportP_destroy(self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_GetMainRect(pOut: [*c]ImRect, self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_GetWorkRect(pOut: [*c]ImRect, self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_ClearRequestFlags(self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiWindowSettings_ImGuiWindowSettings() [*c]ImGuiWindowSettings;
pub extern fn ImGuiWindowSettings_destroy(self: [*c]ImGuiWindowSettings) void;
pub extern fn ImGuiWindowSettings_GetName(self: [*c]ImGuiWindowSettings) [*c]u8;
pub extern fn ImGuiSettingsHandler_ImGuiSettingsHandler() [*c]ImGuiSettingsHandler;
pub extern fn ImGuiSettingsHandler_destroy(self: [*c]ImGuiSettingsHandler) void;
pub extern fn ImGuiContext_ImGuiContext(shared_font_atlas: [*c]ImFontAtlas) [*c]ImGuiContext;
pub extern fn ImGuiContext_destroy(self: [*c]ImGuiContext) void;
pub extern fn ImGuiWindowTempData_ImGuiWindowTempData() [*c]ImGuiWindowTempData;
pub extern fn ImGuiWindowTempData_destroy(self: [*c]ImGuiWindowTempData) void;
pub extern fn ImGuiWindow_ImGuiWindow(context: [*c]ImGuiContext, name: [*c]const u8) ?*ImGuiWindow;
pub extern fn ImGuiWindow_destroy(self: ?*ImGuiWindow) void;
pub extern fn ImGuiWindow_GetIDStr(self: ?*ImGuiWindow, str: [*c]const u8, str_end: [*c]const u8) ImGuiID;
pub extern fn ImGuiWindow_GetIDPtr(self: ?*ImGuiWindow, ptr: ?*const anyopaque) ImGuiID;
pub extern fn ImGuiWindow_GetIDInt(self: ?*ImGuiWindow, n: c_int) ImGuiID;
pub extern fn ImGuiWindow_GetIDNoKeepAliveStr(self: ?*ImGuiWindow, str: [*c]const u8, str_end: [*c]const u8) ImGuiID;
pub extern fn ImGuiWindow_GetIDNoKeepAlivePtr(self: ?*ImGuiWindow, ptr: ?*const anyopaque) ImGuiID;
pub extern fn ImGuiWindow_GetIDNoKeepAliveInt(self: ?*ImGuiWindow, n: c_int) ImGuiID;
pub extern fn ImGuiWindow_GetIDFromRectangle(self: ?*ImGuiWindow, r_abs: ImRect) ImGuiID;
pub extern fn ImGuiWindow_Rect(pOut: [*c]ImRect, self: ?*ImGuiWindow) void;
pub extern fn ImGuiWindow_CalcFontSize(self: ?*ImGuiWindow) f32;
pub extern fn ImGuiWindow_TitleBarHeight(self: ?*ImGuiWindow) f32;
pub extern fn ImGuiWindow_TitleBarRect(pOut: [*c]ImRect, self: ?*ImGuiWindow) void;
pub extern fn ImGuiWindow_MenuBarHeight(self: ?*ImGuiWindow) f32;
pub extern fn ImGuiWindow_MenuBarRect(pOut: [*c]ImRect, self: ?*ImGuiWindow) void;
pub extern fn ImGuiLastItemDataBackup_ImGuiLastItemDataBackup() [*c]ImGuiLastItemDataBackup;
pub extern fn ImGuiLastItemDataBackup_destroy(self: [*c]ImGuiLastItemDataBackup) void;
pub extern fn ImGuiLastItemDataBackup_Backup(self: [*c]ImGuiLastItemDataBackup) void;
pub extern fn ImGuiLastItemDataBackup_Restore(self: [*c]ImGuiLastItemDataBackup) void;
pub extern fn ImGuiTabItem_ImGuiTabItem() [*c]ImGuiTabItem;
pub extern fn ImGuiTabItem_destroy(self: [*c]ImGuiTabItem) void;
pub extern fn ImGuiTabBar_ImGuiTabBar() [*c]ImGuiTabBar;
pub extern fn ImGuiTabBar_destroy(self: [*c]ImGuiTabBar) void;
pub extern fn ImGuiTabBar_GetTabOrder(self: [*c]ImGuiTabBar, tab: [*c]const ImGuiTabItem) c_int;
pub extern fn ImGuiTabBar_GetTabName(self: [*c]ImGuiTabBar, tab: [*c]const ImGuiTabItem) [*c]const u8;
pub extern fn igGetCurrentWindowRead() ?*ImGuiWindow;
pub extern fn igGetCurrentWindow() ?*ImGuiWindow;
pub extern fn igFindWindowByID(id: ImGuiID) ?*ImGuiWindow;
pub extern fn igFindWindowByName(name: [*c]const u8) ?*ImGuiWindow;
pub extern fn igUpdateWindowParentAndRootLinks(window: ?*ImGuiWindow, flags: ImGuiWindowFlags, parent_window: ?*ImGuiWindow) void;
pub extern fn igCalcWindowExpectedSize(pOut: [*c]ImVec2, window: ?*ImGuiWindow) void;
pub extern fn igIsWindowChildOf(window: ?*ImGuiWindow, potential_parent: ?*ImGuiWindow) bool;
pub extern fn igIsWindowNavFocusable(window: ?*ImGuiWindow) bool;
pub extern fn igGetWindowAllowedExtentRect(pOut: [*c]ImRect, window: ?*ImGuiWindow) void;
pub extern fn igSetWindowPosWindowPtr(window: ?*ImGuiWindow, pos: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowSizeWindowPtr(window: ?*ImGuiWindow, size: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowCollapsedWindowPtr(window: ?*ImGuiWindow, collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetWindowHitTestHole(window: ?*ImGuiWindow, pos: ImVec2, size: ImVec2) void;
pub extern fn igFocusWindow(window: ?*ImGuiWindow) void;
pub extern fn igFocusTopMostWindowUnderOne(under_this_window: ?*ImGuiWindow, ignore_window: ?*ImGuiWindow) void;
pub extern fn igBringWindowToFocusFront(window: ?*ImGuiWindow) void;
pub extern fn igBringWindowToDisplayFront(window: ?*ImGuiWindow) void;
pub extern fn igBringWindowToDisplayBack(window: ?*ImGuiWindow) void;
pub extern fn igSetCurrentFont(font: [*c]ImFont) void;
pub extern fn igGetDefaultFont() [*c]ImFont;
pub extern fn igGetForegroundDrawListWindowPtr(window: ?*ImGuiWindow) [*c]ImDrawList;
pub extern fn igInitialize(context: [*c]ImGuiContext) void;
pub extern fn igShutdown(context: [*c]ImGuiContext) void;
pub extern fn igUpdateHoveredWindowAndCaptureFlags() void;
pub extern fn igStartMouseMovingWindow(window: ?*ImGuiWindow) void;
pub extern fn igStartMouseMovingWindowOrNode(window: ?*ImGuiWindow, node: ?*ImGuiDockNode, undock_floating_node: bool) void;
pub extern fn igUpdateMouseMovingWindowNewFrame() void;
pub extern fn igUpdateMouseMovingWindowEndFrame() void;
pub extern fn igTranslateWindowsInViewport(viewport: [*c]ImGuiViewportP, old_pos: ImVec2, new_pos: ImVec2) void;
pub extern fn igScaleWindowsInViewport(viewport: [*c]ImGuiViewportP, scale: f32) void;
pub extern fn igDestroyPlatformWindow(viewport: [*c]ImGuiViewportP) void;
pub extern fn igShowViewportThumbnails() void;
pub extern fn igMarkIniSettingsDirtyNil() void;
pub extern fn igMarkIniSettingsDirtyWindowPtr(window: ?*ImGuiWindow) void;
pub extern fn igClearIniSettings() void;
pub extern fn igCreateNewWindowSettings(name: [*c]const u8) [*c]ImGuiWindowSettings;
pub extern fn igFindWindowSettings(id: ImGuiID) [*c]ImGuiWindowSettings;
pub extern fn igFindOrCreateWindowSettings(name: [*c]const u8) [*c]ImGuiWindowSettings;
pub extern fn igFindSettingsHandler(type_name: [*c]const u8) [*c]ImGuiSettingsHandler;
pub extern fn igSetNextWindowScroll(scroll: ImVec2) void;
pub extern fn igSetScrollXWindowPtr(window: ?*ImGuiWindow, scroll_x: f32) void;
pub extern fn igSetScrollYWindowPtr(window: ?*ImGuiWindow, scroll_y: f32) void;
pub extern fn igSetScrollFromPosXWindowPtr(window: ?*ImGuiWindow, local_x: f32, center_x_ratio: f32) void;
pub extern fn igSetScrollFromPosYWindowPtr(window: ?*ImGuiWindow, local_y: f32, center_y_ratio: f32) void;
pub extern fn igScrollToBringRectIntoView(pOut: [*c]ImVec2, window: ?*ImGuiWindow, item_rect: ImRect) void;
pub extern fn igGetItemID() ImGuiID;
pub extern fn igGetItemStatusFlags() ImGuiItemStatusFlags;
pub extern fn igGetActiveID() ImGuiID;
pub extern fn igGetFocusID() ImGuiID;
pub extern fn igSetActiveID(id: ImGuiID, window: ?*ImGuiWindow) void;
pub extern fn igSetFocusID(id: ImGuiID, window: ?*ImGuiWindow) void;
pub extern fn igClearActiveID() void;
pub extern fn igGetHoveredID() ImGuiID;
pub extern fn igSetHoveredID(id: ImGuiID) void;
pub extern fn igKeepAliveID(id: ImGuiID) void;
pub extern fn igMarkItemEdited(id: ImGuiID) void;
pub extern fn igPushOverrideID(id: ImGuiID) void;
pub extern fn igGetIDWithSeed(str_id_begin: [*c]const u8, str_id_end: [*c]const u8, seed: ImGuiID) ImGuiID;
pub extern fn igItemSizeVec2(size: ImVec2, text_baseline_y: f32) void;
pub extern fn igItemSizeRect(bb: ImRect, text_baseline_y: f32) void;
pub extern fn igItemAdd(bb: ImRect, id: ImGuiID, nav_bb: [*c]const ImRect) bool;
pub extern fn igItemHoverable(bb: ImRect, id: ImGuiID) bool;
pub extern fn igIsClippedEx(bb: ImRect, id: ImGuiID, clip_even_when_logged: bool) bool;
pub extern fn igSetLastItemData(window: ?*ImGuiWindow, item_id: ImGuiID, status_flags: ImGuiItemStatusFlags, item_rect: ImRect) void;
pub extern fn igFocusableItemRegister(window: ?*ImGuiWindow, id: ImGuiID) bool;
pub extern fn igFocusableItemUnregister(window: ?*ImGuiWindow) void;
pub extern fn igCalcItemSize(pOut: [*c]ImVec2, size: ImVec2, default_w: f32, default_h: f32) void;
pub extern fn igCalcWrapWidthForPos(pos: ImVec2, wrap_pos_x: f32) f32;
pub extern fn igPushMultiItemsWidths(components: c_int, width_full: f32) void;
pub extern fn igPushItemFlag(option: ImGuiItemFlags, enabled: bool) void;
pub extern fn igPopItemFlag() void;
pub extern fn igIsItemToggledSelection() bool;
pub extern fn igGetContentRegionMaxAbs(pOut: [*c]ImVec2) void;
pub extern fn igShrinkWidths(items: [*c]ImGuiShrinkWidthItem, count: c_int, width_excess: f32) void;
pub extern fn igLogBegin(type: ImGuiLogType, auto_open_depth: c_int) void;
pub extern fn igLogToBuffer(auto_open_depth: c_int) void;
pub extern fn igBeginChildEx(name: [*c]const u8, id: ImGuiID, size_arg: ImVec2, border: bool, flags: ImGuiWindowFlags) bool;
pub extern fn igOpenPopupEx(id: ImGuiID, popup_flags: ImGuiPopupFlags) void;
pub extern fn igClosePopupToLevel(remaining: c_int, restore_focus_to_window_under_popup: bool) void;
pub extern fn igClosePopupsOverWindow(ref_window: ?*ImGuiWindow, restore_focus_to_window_under_popup: bool) void;
pub extern fn igIsPopupOpenID(id: ImGuiID, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igBeginPopupEx(id: ImGuiID, extra_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginTooltipEx(extra_flags: ImGuiWindowFlags, tooltip_flags: ImGuiTooltipFlags) void;
pub extern fn igGetTopMostPopupModal() ?*ImGuiWindow;
pub extern fn igFindBestWindowPosForPopup(pOut: [*c]ImVec2, window: ?*ImGuiWindow) void;
pub extern fn igFindBestWindowPosForPopupEx(pOut: [*c]ImVec2, ref_pos: ImVec2, size: ImVec2, last_dir: [*c]ImGuiDir, r_outer: ImRect, r_avoid: ImRect, policy: ImGuiPopupPositionPolicy) void;
pub extern fn igNavInitWindow(window: ?*ImGuiWindow, force_reinit: bool) void;
pub extern fn igNavMoveRequestButNoResultYet() bool;
pub extern fn igNavMoveRequestCancel() void;
pub extern fn igNavMoveRequestForward(move_dir: ImGuiDir, clip_dir: ImGuiDir, bb_rel: ImRect, move_flags: ImGuiNavMoveFlags) void;
pub extern fn igNavMoveRequestTryWrapping(window: ?*ImGuiWindow, move_flags: ImGuiNavMoveFlags) void;
pub extern fn igGetNavInputAmount(n: ImGuiNavInput, mode: ImGuiInputReadMode) f32;
pub extern fn igGetNavInputAmount2d(pOut: [*c]ImVec2, dir_sources: ImGuiNavDirSourceFlags, mode: ImGuiInputReadMode, slow_factor: f32, fast_factor: f32) void;
pub extern fn igCalcTypematicRepeatAmount(t0: f32, t1: f32, repeat_delay: f32, repeat_rate: f32) c_int;
pub extern fn igActivateItem(id: ImGuiID) void;
pub extern fn igSetNavID(id: ImGuiID, nav_layer: c_int, focus_scope_id: ImGuiID) void;
pub extern fn igSetNavIDWithRectRel(id: ImGuiID, nav_layer: c_int, focus_scope_id: ImGuiID, rect_rel: ImRect) void;
pub extern fn igPushFocusScope(id: ImGuiID) void;
pub extern fn igPopFocusScope() void;
pub extern fn igGetFocusScopeID() ImGuiID;
pub extern fn igIsActiveIdUsingNavDir(dir: ImGuiDir) bool;
pub extern fn igIsActiveIdUsingNavInput(input: ImGuiNavInput) bool;
pub extern fn igIsActiveIdUsingKey(key: ImGuiKey) bool;
pub extern fn igIsMouseDragPastThreshold(button: ImGuiMouseButton, lock_threshold: f32) bool;
pub extern fn igIsKeyPressedMap(key: ImGuiKey, repeat: bool) bool;
pub extern fn igIsNavInputDown(n: ImGuiNavInput) bool;
pub extern fn igIsNavInputTest(n: ImGuiNavInput, rm: ImGuiInputReadMode) bool;
pub extern fn igGetMergedKeyModFlags() ImGuiKeyModFlags;
pub extern fn igDockContextInitialize(ctx: [*c]ImGuiContext) void;
pub extern fn igDockContextShutdown(ctx: [*c]ImGuiContext) void;
pub extern fn igDockContextClearNodes(ctx: [*c]ImGuiContext, root_id: ImGuiID, clear_settings_refs: bool) void;
pub extern fn igDockContextRebuildNodes(ctx: [*c]ImGuiContext) void;
pub extern fn igDockContextUpdateUndocking(ctx: [*c]ImGuiContext) void;
pub extern fn igDockContextUpdateDocking(ctx: [*c]ImGuiContext) void;
pub extern fn igDockContextGenNodeID(ctx: [*c]ImGuiContext) ImGuiID;
pub extern fn igDockContextQueueDock(ctx: [*c]ImGuiContext, target: ?*ImGuiWindow, target_node: ?*ImGuiDockNode, payload: ?*ImGuiWindow, split_dir: ImGuiDir, split_ratio: f32, split_outer: bool) void;
pub extern fn igDockContextQueueUndockWindow(ctx: [*c]ImGuiContext, window: ?*ImGuiWindow) void;
pub extern fn igDockContextQueueUndockNode(ctx: [*c]ImGuiContext, node: ?*ImGuiDockNode) void;
pub extern fn igDockContextCalcDropPosForDocking(target: ?*ImGuiWindow, target_node: ?*ImGuiDockNode, payload: ?*ImGuiWindow, split_dir: ImGuiDir, split_outer: bool, out_pos: [*c]ImVec2) bool;
pub extern fn igDockNodeGetRootNode(node: ?*ImGuiDockNode) ?*ImGuiDockNode;
pub extern fn igDockNodeGetDepth(node: ?*const ImGuiDockNode) c_int;
pub extern fn igGetWindowDockNode() ?*ImGuiDockNode;
pub extern fn igGetWindowAlwaysWantOwnTabBar(window: ?*ImGuiWindow) bool;
pub extern fn igBeginDocked(window: ?*ImGuiWindow, p_open: [*c]bool) void;
pub extern fn igBeginDockableDragDropSource(window: ?*ImGuiWindow) void;
pub extern fn igBeginDockableDragDropTarget(window: ?*ImGuiWindow) void;
pub extern fn igSetWindowDock(window: ?*ImGuiWindow, dock_id: ImGuiID, cond: ImGuiCond) void;
pub extern fn igDockBuilderDockWindow(window_name: [*c]const u8, node_id: ImGuiID) void;
pub extern fn igDockBuilderGetNode(node_id: ImGuiID) ?*ImGuiDockNode;
pub extern fn igDockBuilderGetCentralNode(node_id: ImGuiID) ?*ImGuiDockNode;
pub extern fn igDockBuilderAddNode(node_id: ImGuiID, flags: ImGuiDockNodeFlags) ImGuiID;
pub extern fn igDockBuilderRemoveNode(node_id: ImGuiID) void;
pub extern fn igDockBuilderRemoveNodeDockedWindows(node_id: ImGuiID, clear_settings_refs: bool) void;
pub extern fn igDockBuilderRemoveNodeChildNodes(node_id: ImGuiID) void;
pub extern fn igDockBuilderSetNodePos(node_id: ImGuiID, pos: ImVec2) void;
pub extern fn igDockBuilderSetNodeSize(node_id: ImGuiID, size: ImVec2) void;
pub extern fn igDockBuilderSplitNode(node_id: ImGuiID, split_dir: ImGuiDir, size_ratio_for_node_at_dir: f32, out_id_at_dir: [*c]ImGuiID, out_id_at_opposite_dir: [*c]ImGuiID) ImGuiID;
pub extern fn igDockBuilderCopyDockSpace(src_dockspace_id: ImGuiID, dst_dockspace_id: ImGuiID, in_window_remap_pairs: [*c]ImVector_const_charPtr) void;
pub extern fn igDockBuilderCopyNode(src_node_id: ImGuiID, dst_node_id: ImGuiID, out_node_remap_pairs: [*c]ImVector_ImGuiID) void;
pub extern fn igDockBuilderCopyWindowSettings(src_name: [*c]const u8, dst_name: [*c]const u8) void;
pub extern fn igDockBuilderFinish(node_id: ImGuiID) void;
pub extern fn igBeginDragDropTargetCustom(bb: ImRect, id: ImGuiID) bool;
pub extern fn igClearDragDrop() void;
pub extern fn igIsDragDropPayloadBeingAccepted() bool;
pub extern fn igSetWindowClipRectBeforeSetChannel(window: ?*ImGuiWindow, clip_rect: ImRect) void;
pub extern fn igBeginColumns(str_id: [*c]const u8, count: c_int, flags: ImGuiColumnsFlags) void;
pub extern fn igEndColumns() void;
pub extern fn igPushColumnClipRect(column_index: c_int) void;
pub extern fn igPushColumnsBackground() void;
pub extern fn igPopColumnsBackground() void;
pub extern fn igGetColumnsID(str_id: [*c]const u8, count: c_int) ImGuiID;
pub extern fn igFindOrCreateColumns(window: ?*ImGuiWindow, id: ImGuiID) [*c]ImGuiColumns;
pub extern fn igGetColumnOffsetFromNorm(columns: [*c]const ImGuiColumns, offset_norm: f32) f32;
pub extern fn igGetColumnNormFromOffset(columns: [*c]const ImGuiColumns, offset: f32) f32;
pub extern fn igBeginTabBarEx(tab_bar: [*c]ImGuiTabBar, bb: ImRect, flags: ImGuiTabBarFlags, dock_node: ?*ImGuiDockNode) bool;
pub extern fn igTabBarFindTabByID(tab_bar: [*c]ImGuiTabBar, tab_id: ImGuiID) [*c]ImGuiTabItem;
pub extern fn igTabBarFindMostRecentlySelectedTabForActiveWindow(tab_bar: [*c]ImGuiTabBar) [*c]ImGuiTabItem;
pub extern fn igTabBarAddTab(tab_bar: [*c]ImGuiTabBar, tab_flags: ImGuiTabItemFlags, window: ?*ImGuiWindow) void;
pub extern fn igTabBarRemoveTab(tab_bar: [*c]ImGuiTabBar, tab_id: ImGuiID) void;
pub extern fn igTabBarCloseTab(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) void;
pub extern fn igTabBarQueueReorder(tab_bar: [*c]ImGuiTabBar, tab: [*c]const ImGuiTabItem, dir: c_int) void;
pub extern fn igTabBarProcessReorder(tab_bar: [*c]ImGuiTabBar) bool;
pub extern fn igTabItemEx(tab_bar: [*c]ImGuiTabBar, label: [*c]const u8, p_open: [*c]bool, flags: ImGuiTabItemFlags, docked_window: ?*ImGuiWindow) bool;
pub extern fn igTabItemCalcSize(pOut: [*c]ImVec2, label: [*c]const u8, has_close_button: bool) void;
pub extern fn igTabItemBackground(draw_list: [*c]ImDrawList, bb: ImRect, flags: ImGuiTabItemFlags, col: ImU32) void;
pub extern fn igTabItemLabelAndCloseButton(draw_list: [*c]ImDrawList, bb: ImRect, flags: ImGuiTabItemFlags, frame_padding: ImVec2, label: [*c]const u8, tab_id: ImGuiID, close_button_id: ImGuiID, is_contents_visible: bool) bool;
pub extern fn igRenderText(pos: ImVec2, text: [*c]const u8, text_end: [*c]const u8, hide_text_after_hash: bool) void;
pub extern fn igRenderTextWrapped(pos: ImVec2, text: [*c]const u8, text_end: [*c]const u8, wrap_width: f32) void;
pub extern fn igRenderTextClipped(pos_min: ImVec2, pos_max: ImVec2, text: [*c]const u8, text_end: [*c]const u8, text_size_if_known: [*c]const ImVec2, @"align": ImVec2, clip_rect: [*c]const ImRect) void;
pub extern fn igRenderTextClippedEx(draw_list: [*c]ImDrawList, pos_min: ImVec2, pos_max: ImVec2, text: [*c]const u8, text_end: [*c]const u8, text_size_if_known: [*c]const ImVec2, @"align": ImVec2, clip_rect: [*c]const ImRect) void;
pub extern fn igRenderTextEllipsis(draw_list: [*c]ImDrawList, pos_min: ImVec2, pos_max: ImVec2, clip_max_x: f32, ellipsis_max_x: f32, text: [*c]const u8, text_end: [*c]const u8, text_size_if_known: [*c]const ImVec2) void;
pub extern fn igRenderFrame(p_min: ImVec2, p_max: ImVec2, fill_col: ImU32, border: bool, rounding: f32) void;
pub extern fn igRenderFrameBorder(p_min: ImVec2, p_max: ImVec2, rounding: f32) void;
pub extern fn igRenderColorRectWithAlphaCheckerboard(draw_list: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, fill_col: ImU32, grid_step: f32, grid_off: ImVec2, rounding: f32, rounding_corners_flags: c_int) void;
pub extern fn igRenderNavHighlight(bb: ImRect, id: ImGuiID, flags: ImGuiNavHighlightFlags) void;
pub extern fn igFindRenderedTextEnd(text: [*c]const u8, text_end: [*c]const u8) [*c]const u8;
pub extern fn igLogRenderedText(ref_pos: [*c]const ImVec2, text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn igRenderArrow(draw_list: [*c]ImDrawList, pos: ImVec2, col: ImU32, dir: ImGuiDir, scale: f32) void;
pub extern fn igRenderBullet(draw_list: [*c]ImDrawList, pos: ImVec2, col: ImU32) void;
pub extern fn igRenderCheckMark(draw_list: [*c]ImDrawList, pos: ImVec2, col: ImU32, sz: f32) void;
pub extern fn igRenderMouseCursor(draw_list: [*c]ImDrawList, pos: ImVec2, scale: f32, mouse_cursor: ImGuiMouseCursor, col_fill: ImU32, col_border: ImU32, col_shadow: ImU32) void;
pub extern fn igRenderArrowPointingAt(draw_list: [*c]ImDrawList, pos: ImVec2, half_sz: ImVec2, direction: ImGuiDir, col: ImU32) void;
pub extern fn igRenderArrowDockMenu(draw_list: [*c]ImDrawList, p_min: ImVec2, sz: f32, col: ImU32) void;
pub extern fn igRenderRectFilledRangeH(draw_list: [*c]ImDrawList, rect: ImRect, col: ImU32, x_start_norm: f32, x_end_norm: f32, rounding: f32) void;
pub extern fn igRenderRectFilledWithHole(draw_list: [*c]ImDrawList, outer: ImRect, inner: ImRect, col: ImU32, rounding: f32) void;
pub extern fn igTextEx(text: [*c]const u8, text_end: [*c]const u8, flags: ImGuiTextFlags) void;
pub extern fn igButtonEx(label: [*c]const u8, size_arg: ImVec2, flags: ImGuiButtonFlags) bool;
pub extern fn igCloseButton(id: ImGuiID, pos: ImVec2) bool;
pub extern fn igCollapseButton(id: ImGuiID, pos: ImVec2, dock_node: ?*ImGuiDockNode) bool;
pub extern fn igArrowButtonEx(str_id: [*c]const u8, dir: ImGuiDir, size_arg: ImVec2, flags: ImGuiButtonFlags) bool;
pub extern fn igScrollbar(axis: ImGuiAxis) void;
pub extern fn igScrollbarEx(bb: ImRect, id: ImGuiID, axis: ImGuiAxis, p_scroll_v: [*c]f32, avail_v: f32, contents_v: f32, rounding_corners: ImDrawCornerFlags) bool;
pub extern fn igImageButtonEx(id: ImGuiID, texture_id: ImTextureID, size: ImVec2, uv0: ImVec2, uv1: ImVec2, padding: ImVec2, bg_col: ImVec4, tint_col: ImVec4) bool;
pub extern fn igGetWindowScrollbarRect(pOut: [*c]ImRect, window: ?*ImGuiWindow, axis: ImGuiAxis) void;
pub extern fn igGetWindowScrollbarID(window: ?*ImGuiWindow, axis: ImGuiAxis) ImGuiID;
pub extern fn igGetWindowResizeID(window: ?*ImGuiWindow, n: c_int) ImGuiID;
pub extern fn igSeparatorEx(flags: ImGuiSeparatorFlags) void;
pub extern fn igButtonBehavior(bb: ImRect, id: ImGuiID, out_hovered: [*c]bool, out_held: [*c]bool, flags: ImGuiButtonFlags) bool;
pub extern fn igDragBehavior(id: ImGuiID, data_type: ImGuiDataType, p_v: ?*anyopaque, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderBehavior(bb: ImRect, id: ImGuiID, data_type: ImGuiDataType, p_v: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags, out_grab_bb: [*c]ImRect) bool;
pub extern fn igSplitterBehavior(bb: ImRect, id: ImGuiID, axis: ImGuiAxis, size1: [*c]f32, size2: [*c]f32, min_size1: f32, min_size2: f32, hover_extend: f32, hover_visibility_delay: f32) bool;
pub extern fn igTreeNodeBehavior(id: ImGuiID, flags: ImGuiTreeNodeFlags, label: [*c]const u8, label_end: [*c]const u8) bool;
pub extern fn igTreeNodeBehaviorIsOpen(id: ImGuiID, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igTreePushOverrideID(id: ImGuiID) void;
pub extern fn igDataTypeGetInfo(data_type: ImGuiDataType) [*c]const ImGuiDataTypeInfo;
pub extern fn igDataTypeFormatString(buf: [*c]u8, buf_size: c_int, data_type: ImGuiDataType, p_data: ?*const anyopaque, format: [*c]const u8) c_int;
pub extern fn igDataTypeApplyOp(data_type: ImGuiDataType, op: c_int, output: ?*anyopaque, arg_1: ?*const anyopaque, arg_2: ?*const anyopaque) void;
pub extern fn igDataTypeApplyOpFromText(buf: [*c]const u8, initial_value_buf: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, format: [*c]const u8) bool;
pub extern fn igDataTypeCompare(data_type: ImGuiDataType, arg_1: ?*const anyopaque, arg_2: ?*const anyopaque) c_int;
pub extern fn igDataTypeClamp(data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque) bool;
pub extern fn igInputTextEx(label: [*c]const u8, hint: [*c]const u8, buf: [*c]u8, buf_size: c_int, size_arg: ImVec2, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igTempInputText(bb: ImRect, id: ImGuiID, label: [*c]const u8, buf: [*c]u8, buf_size: c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igTempInputScalar(bb: ImRect, id: ImGuiID, label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, format: [*c]const u8, p_clamp_min: ?*const anyopaque, p_clamp_max: ?*const anyopaque) bool;
pub extern fn igTempInputIsActive(id: ImGuiID) bool;
pub extern fn igGetInputTextState(id: ImGuiID) [*c]ImGuiInputTextState;
pub extern fn igColorTooltip(text: [*c]const u8, col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn igColorEditOptionsPopup(col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn igColorPickerOptionsPopup(ref_col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn igPlotEx(plot_type: ImGuiPlotType, label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.C) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, frame_size: ImVec2) c_int;
pub extern fn igShadeVertsLinearColorGradientKeepAlpha(draw_list: [*c]ImDrawList, vert_start_idx: c_int, vert_end_idx: c_int, gradient_p0: ImVec2, gradient_p1: ImVec2, col0: ImU32, col1: ImU32) void;
pub extern fn igShadeVertsLinearUV(draw_list: [*c]ImDrawList, vert_start_idx: c_int, vert_end_idx: c_int, a: ImVec2, b: ImVec2, uv_a: ImVec2, uv_b: ImVec2, clamp: bool) void;
pub extern fn igGcCompactTransientWindowBuffers(window: ?*ImGuiWindow) void;
pub extern fn igGcAwakeTransientWindowBuffers(window: ?*ImGuiWindow) void;
pub extern fn igDebugDrawItemRect(col: ImU32) void;
pub extern fn igDebugStartItemPicker() void;
pub extern fn igImFontAtlasBuildWithStbTruetype(atlas: [*c]ImFontAtlas) bool;
pub extern fn igImFontAtlasBuildInit(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasBuildSetupFont(atlas: [*c]ImFontAtlas, font: [*c]ImFont, font_config: [*c]ImFontConfig, ascent: f32, descent: f32) void;
pub extern fn igImFontAtlasBuildPackCustomRects(atlas: [*c]ImFontAtlas, stbrp_context_opaque: ?*anyopaque) void;
pub extern fn igImFontAtlasBuildFinish(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasBuildRender1bppRectFromString(atlas: [*c]ImFontAtlas, atlas_x: c_int, atlas_y: c_int, w: c_int, h: c_int, in_str: [*c]const u8, in_marker_char: u8, in_marker_pixel_value: u8) void;
pub extern fn igImFontAtlasBuildMultiplyCalcLookupTable(out_table: [*c]u8, in_multiply_factor: f32) void;
pub extern fn igImFontAtlasBuildMultiplyRectAlpha8(table: [*c]const u8, pixels: [*c]u8, x: c_int, y: c_int, w: c_int, h: c_int, stride: c_int) void;
pub extern fn igLogText(fmt: [*c]const u8, ...) void;
pub extern fn ImGuiTextBuffer_appendf(buffer: [*c]struct_ImGuiTextBuffer, fmt: [*c]const u8, ...) void;
pub extern fn igGET_FLT_MAX(...) f32;
pub extern fn ImVector_ImWchar_create(...) [*c]ImVector_ImWchar;
pub extern fn ImVector_ImWchar_destroy(self: [*c]ImVector_ImWchar) void;
pub extern fn ImVector_ImWchar_Init(p: [*c]ImVector_ImWchar) void;
pub extern fn ImVector_ImWchar_UnInit(p: [*c]ImVector_ImWchar) void;
