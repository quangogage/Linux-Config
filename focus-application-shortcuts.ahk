; Script to create shortcuts to focus applications

; Focus Chrome with Ctrl + Alt + z
^!z:: {
    if WinExist("ahk_class Chrome_WidgetWin_1")
        WinActivate
}

; Switch to Alacritty with Ctrl + Alt + x
^!x:: {
    if WinExist("ahk_exe alacritty.exe")
        WinActivate
}

