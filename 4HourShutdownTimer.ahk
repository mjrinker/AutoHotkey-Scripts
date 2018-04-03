#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force

Sleep 14400000	; 4 hours
Shutdown, 9	; Shutdown and Power Down (1+8=9)
ExitApp
Return
