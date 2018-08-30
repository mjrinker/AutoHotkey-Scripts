#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force
#NoTrayIcon

F7::
	Run,%comspec% /c blackscreen.png,,Hide
	Sleep 1000
	WinMaximize, "blackscreen.png - Photos"
	Sleep 200
	MouseClick, L, 1891, 986
Return

^g::
	MouseGetPos, xpos, ypos
	msgbox, %xpos% %ypos%
return

^+Del::
	ExitApp
Return