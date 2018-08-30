#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Persistent
#SingleInstance force
#InstallKeybdHook
;#NoTrayIcon

Sleep 3000

BlockInput, On

Run, "C:\Program Files (x86)\PuTTY\putty.exe" -ssh matt@76.8.211.143:22, Hide

Sleep 20

SendInput {Ctrl down}
Sleep 10
SendInput {Alt down}
Sleep 10
SendInput {Tab down}
Sleep 10
SendInput {Tab up}
Sleep 10
SendInput {Alt up}
Sleep 10
SendInput {Ctrl up}
Sleep 10
SendInput {Enter}

Sleep 600

;Run putty.ahk
;Sleep 60
;SendInput {Enter}

Sleep 5

SendInput {Shift down}
Sleep 10
SendInput {LWin down}
Sleep 10
SendInput {Right down}
Sleep 10
SendInput {Right up}
Sleep 10
SendInput {LWin up}
Sleep 10
SendInput {Shift up}

Sleep 5

WinMaximize A

Sleep 5

BlockInput, Off

Sleep 1000

ExitApp