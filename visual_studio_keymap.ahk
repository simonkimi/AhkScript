#HotIf Vs()
$^-:: Send("^m^s")

#HotIf Vs()
$^!l:: Send("^k^d")

#HotIf Vs()
$^!Left:: Send("^-")

#HotIf Vs()
$^!Right:: Send("^!-")


Vs() {
    return InStr(WinGetProcessName("A"), "devenv.exe")
}