#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#NoTrayIcon
SetTitleMatchMode,2

#IfWinActive, Google Chrome

<^>!n::
	SendEvent {Ctrl down}{n down}{n up}{Ctrl up}
	SendEvent {Alt down}{Tab down}{Tab up}{Alt up}
	SendEvent {Alt down}{F4 down}{F4 up}{F4 down}{F4 up}{Alt up}
return

q::
	ExitApp
return

#IfWinActive
