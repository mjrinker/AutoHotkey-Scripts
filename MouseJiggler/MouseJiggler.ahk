#NoEnv
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force

start:
Sleep 10
Loop
{
	MouseGetPos, currentX, currentY
	jiggleX := currentX+1
	jiggleY := currentY
	MouseMove, jiggleX, jiggleY
	Sleep 1
	MouseMove, currentX, currentY
	Sleep 1
}

~LButton::
	goto start
return

~RButton::
	goto start
return

^Del::
	ExitApp
return