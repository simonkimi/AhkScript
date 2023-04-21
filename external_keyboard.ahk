; 外接键盘控制, 主要用户IDE的调试, 运行, 停止


F13:: DeveloperKey("run")
F14:: DeveloperKey("debug")
F15:: DeveloperKey("stop")

VsCodeP := "Code.exe"
JetbrainP := ["rider64.exe", "goland64.exe", "pycharm64.exe"]
VisualStudioP := "devenv.exe"


JetbrainCommand := Map()
JetbrainCommand["run"] := "+{F10}"
JetbrainCommand["stop"] := "^{F2}"
JetbrainCommand["debug"] := "+{F9}"


VsCommand := Map()
VsCommand["run"] := "^{F5}"
VsCommand["stop"] := "+{F5}"
VsCommand["debug"] := "{F5}"


VscCommand := Map()
VscCommand["run"] := "^{F5}"
VscCommand["stop"] := "^{F6}"
VscCommand["debug"] := "{F5}"


DeveloperKey(mode) {
    p := WinGetProcessName("A")
    if InStr(p, VsCodeP) {
        Send(VscCommand[mode])
    } else if InStr(p, VisualStudioP) {
        Send(VsCommand[mode])
    } else {
        loop JetbrainP.Length {
            if InStr(p, JetbrainP[A_Index]) {
                Send(JetbrainCommand[mode])
            }
        }
    }
}

