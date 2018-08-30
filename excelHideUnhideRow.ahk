#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

^g::	;Unhide
	SendEvent {Alt}houo
	Sleep 10
return

^h::	;Hide
	SendEvent {Alt}hour
	Sleep 10
return