#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Persistent
#SingleInstance force
#InstallKeybdHook
;#NoTrayIcon

Sleep 1000

;FormatTime, date,, ddMMyyyy
;Send, %date%

T = %A_Now% 
T -= 1970,s
S = 1970
S += T,s

Send, %T%
SendInput {Enter}
Send, %S%

