#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^d::
	SendInput Keys {AppsKey}wmm{Enter}
Return
^h::
	Loop 29
	{
		SendInput !{Left}
		Sleep 250
		SendInput {Down}
		Sleep 250
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
		SendInput {Enter}
		Sleep 250
		SendInput {Enter}
		Sleep 1000
		SendInput {AppsKey down}
		Sleep 40
		SendInput {AppsKey up}
		Sleep 40
		SendInput {w down}
		Sleep 40
		SendInput {w up}
		Sleep 40
		SendInput {m down}
		Sleep 40
		SendInput {m up}
		Sleep 40
		SendInput {m down}
		Sleep 40
		SendInput {m up}
		Sleep 40
		SendInput {Enter down}
		Sleep 40
		SendInput {Enter up}
		Sleep 250
		Send {ctrl down}
		Sleep 40
		Send {v down}
		Sleep 40
		Send {v up}
		Sleep 40
		Send {ctrl up}
		Sleep 250
		SendInput {Enter}
	}
Return

^+Del::
	ExitApp
Return