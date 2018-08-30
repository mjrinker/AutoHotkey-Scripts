#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force


Loop, 3
{
	MsgBox, Loop1 %A_Index%
	Loop, 4
	{
		MsgBox, Loop2 %A_Index%
	}
}

ExitApp