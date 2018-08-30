#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#NoTrayIcon
#Include tf.ahk

SetTitleMatchMode,2

#IfWinActive, PyCharm Community Edition

!p::
	SendEvent {Alt down}{t down}{t up}{Alt up}
	Sleep 20
	SendInput {Down 5}
	Sleep 20
	SendInput {Enter}
	Sleep 20
return

#f8::
	clip := clipboard
	SendEvent {Ctrl down}{c down}{c up}{Ctrl up}
	Sleep 20
	lines := TF_CountLines(clipboard)
	Loop, %lines%
	{
		SendEvent {Ctrl down}{f8 down}{f8 up}{Ctrl up}
		Sleep 20
		SendInput {Down}
		Sleep 20
	}
	clipboard := clip
return

+#f8::
	clip := clipboard
	SendEvent {Ctrl down}{c down}{c up}{Ctrl up}
	Sleep 20
	lines := TF_CountLines(clipboard)
	Loop, %lines%
	{
		SendEvent {Ctrl down}{f8 down}{f8 up}{Ctrl up}
		Sleep 20
		SendInput {Up}
		Sleep 20
	}
	clipboard := clip
return

#IfWinActive

^+del::
	exitapp
return