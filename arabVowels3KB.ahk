#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

;i = 1

^Space::
;	SendEvent {LWin down}{Space down}{Space up}{LWin up}
;	++i
;	if (i = 3)
;	{
	Run, wasd3KB_2b_2.ahk
	ExitApp
;	}
return