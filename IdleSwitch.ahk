#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#NoTrayIcon

#Persistent
SetTimer, Check, 1000
return

Check:
If (A_TimeIdle>=300000)
{
	Loop, 8
	{
		SendEvent {LWin down}{Ctrl down}{Left down}{Left up}{Ctrl up}{LWin up}
		Sleep 40
	}
	SetTimer, Check, Off
}
return

^+del::
	ExitApp
return