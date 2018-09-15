#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force
#NoTrayIcon

; Reassign Back mouse button to move desktop right
XButton1::
	SendEvent {Ctrl down}{LWin down}{Right down}{Right up}{LWin up}{Ctrl up}
return

; Reassign Forward mouse button to move desktop left
XButton2::
	SendEvent {Ctrl down}{LWin down}{Left down}{Left up}{LWin up}{Ctrl up}
return