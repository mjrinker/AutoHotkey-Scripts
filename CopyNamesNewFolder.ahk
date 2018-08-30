#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
i=1
^t::
	Loop, 29
	{
		Run, C:\Windows\notepad.exe "d:\users\mjrinker\Desktop\home-wrecker_circuits.txt"
		Sleep 100
		SendInput {End}
		Sleep 100
		Send +{Home}
		Sleep 40
		Send {ctrl down}
		Sleep 40
		Send {x down}
		Sleep 40
		Send {x up}
		Sleep 40
		Send {ctrl up}
		Sleep 100
		SendInput {Del}
		Sleep 100
		Send {ctrl down}
		Sleep 40
		Send {s down}
		Sleep 40
		Send {s up}
		Sleep 40
		Send {ctrl up}
		Sleep 100
		SendInput !{F4}
		Sleep 250
		Send {ctrl down}
		Sleep 40
		Send {shift down}
		Sleep 40
		Send {n down}
		Sleep 40
		Send {n up}
		Sleep 40
		Send {shift up}
		Sleep 40
		Send {ctrl up}
		Sleep 40
		Send {ctrl down}
		Sleep 40
		Send {v down}
		Sleep 40
		Send {v up}
		Sleep 40
		Send {ctrl up}
		Sleep 40
		SendInput {Enter}
		Sleep 100
	}
Return
^+Del::
	ExitApp
Return