VsSend(key) {
    p := WinGetProcessName("A")
    if InStr(p, "devenv.exe") {
        Send(key)
        return
    }
    Send(SubStr(A_ThisHotkey, 2))
}

    
$^-:: VsSend("^m^s")

$^!l:: VsSend("^k^d")

$^!Left:: VsSend("^-")

$^!Right:: VsSend("^!-")