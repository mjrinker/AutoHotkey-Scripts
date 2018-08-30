#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

^Del::
	ExitApp
Return

^g::
	i := 0
	Loop, 115
	{
		SendInput SendInput{Space}
		SendInput `%NewChar%i%`%
		SendInput {Enter}
		SendInput Return
		SendInput {Enter}
		SendInput {Enter}
		++i
	}
	ExitApp
Return