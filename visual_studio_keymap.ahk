#HotIf Vs()
$^-:: Send("^m^s")

#HotIf Vs()
$^!l:: Send("^k^d")

#HotIf Vs()
$^!Left:: Send("^-")

#HotIf Vs()
$^!Right:: Send("^!-")

#HotIf Vs()
$!\:: Send("^!\")

#HotIf Vs()
F11:: Send("^``")

#HotIf Vs()
$Shift:: 
{
    If (A_PriorHotkey == A_ThisHotkey && A_TimeSincePriorHotkey < 500) {
        Send "^n"
    }
    
}


Vs() {
    return InStr(WinGetProcessName("A"), "devenv.exe")
}