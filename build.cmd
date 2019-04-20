IF NOT EXIST depot_tools (
git clone --depth 1 https://chromium.googlesource.com/chromium/tools/depot_tools.git
)

set PATH=depot_tools;%PATH%
set DEPOT_TOOLS_WIN_TOOLCHAIN=depot_tools/win_toolchain
fetch --nohooks webrtc
gclient sync --nohooks .