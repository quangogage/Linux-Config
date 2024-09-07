; Script to create shortcuts to focus applications

; Focus Chrome with Ctrl + Alt + z
^!z:: {
    if WinExist("ahk_exe chrome.exe")
        WinActivate
        Sleep(100)
        WinWaitActive
        WinMoveTop
}

; Switch to Alacritty with Ctrl + Alt + x
^!x:: {
    if WinExist("ahk_exe alacritty.exe")
        WinActivate
        Sleep(100)
        WinWaitActive
        WinMoveTop
}


; Switch to Trello with Ctrl + Alt + c
^!c:: {
    if WinExist("ahk_exe Trello.exe")
        WinActivate
        Sleep(100)
        WinWaitActive
        WinMoveTop
}
