SetStoreCapsLockMode False

; Mac OS X CapsLock behavior
CapsLock::
{
    KeyWait("CapsLock")
    if (A_TimeSinceThisHotkey < 300) {
        Send "#{Space}"
    } else {
        Send "{CapsLock}"   
    }
}