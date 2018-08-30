#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
i=1
^u::
	Loop, 381
	{
		SendInput {AppsKey down}
		Sleep 40
		SendInput {AppsKey up}
		Sleep 40
		SendInput {m down}
		Sleep 40
		SendInput {m up}
		Sleep 100
		Send {ctrl down}
		Sleep 40
		Send {c down}
		Sleep 40
		Send {c up}
		Sleep 40
		Send {ctrl up}
		Sleep 250
		Run, C:\Windows\notepad.exe "d:\users\mjrinker\Desktop\sharepointfilenames.txt"
		Sleep 100
		SendInput ^{End}
		Sleep 100
		Send {ctrl down}
		Sleep 40
		Send {v down}
		Sleep 40
		Send {v up}
		Sleep 40
		Send {ctrl up}
		Sleep 100
		SendInput {Enter}
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
		SendInput {Down}
		Sleep 250
	}
	Run, C:\Windows\notepad.exe "d:\users\mjrinker\Desktop\sharepointfilenames.txt"
Return
^+Del::
	ExitApp
Return