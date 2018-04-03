#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance off

;Run, thisthing.ahk
;Run, thisthing.ahk
Gui, Add, Text, Center, Error 0xe44f673d
Gui, Show, w200 h100 Center, Error

!End::
	Gui, Destroy
	ExitApp
return