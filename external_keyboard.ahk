; 外接键盘控制, 主要用户IDE的调试, 运行, 停止


F13:: DeveloperKey("run")
F14:: DeveloperKey("debug")
F15:: DeveloperKey("stop")
F16:: DeveloperKey("left")
F17:: DeveloperKey("right")

VsCodeP := "Code.exe"
JetbrainP := ["rider64.exe", "goland64.exe"]
VisualStudioP := "devenv.exe"


Jetbrain := Map()
Jetbrain["run"] := "+{F10}"
Jetbrain["stop"] := "+{F2}"
Jetbrain["debug"] := "+{F9}"
Jetbrain["left"] := "^!{Left}"
Jetbrain["right"] := "^!{Right}"


Vs := Map()
Vs["run"] := "^{F5}"
Vs["stop"] := "+{F5}"
Vs["debug"] := "{F5}"
Vs["left"] := "^{-}"
Vs["right"] := "^+{-}"


Vsc := Map()
Vsc["run"] := "^{F5}"
Vsc["stop"] := "^{F6}"
Vsc["debug"] := "{F5}"
Vsc["left"] := "^!{Left}"
Vsc["right"] := "^!{Right}"


DeveloperKey(mode) {
    p := WinGetProcessName("A")
    if InStr(p, VsCodeP) {
        Send(Vsc[mode])
    } else if InStr(p, VisualStudioP) {
        Send(Vs[mode])
    } else {
        loop JetbrainP.Length {
            if InStr(p, JetbrainP[A_Index]) {
                Send(Jetbrain[mode])
            }
        }
    }
}

