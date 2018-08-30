#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

w::
	sendinput {up}
return

a::
	sendinput {left}
return

s::
	sendinput {down}
return

d::
	sendinput {right}
return

+w::
	sendinput {pgup}
return

+a::
	sendinput {end}
return

+s::
	sendinput {pgdn}
return

+d::
	sendinput {home}
return

e::
	sendinput {delete}
return

f::
	sendinput {backspace}
return

^Space::
	SendEvent {LWin down}{Space down}{Space up}{LWin up}
	Run, arabVowels.ahk
	ExitApp
return

!Space::
	ExitApp
return