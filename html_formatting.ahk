#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
SetTitleMatchMode,2

Copy() {
	sendevent {ctrl down}{c down}{c up}{ctrl up}
	sleep 20
}


#IfWinActive, Sublime Text

^i::
	Copy()
	SendInput <i>%clipboard%</
return
^b::
	Copy()
	SendInput <b>%clipboard%</
return
^+k::
	Copy()
	SendInput <small>%clipboard%</
return
^!n::
	Copy()
	SendInput <sup><a href="#note%clipboard%">%clipboard%</</
return
^Right::
	SendEvent {ctrl down}{f6 down}{f6 up}{ctrl up}
return
^Left::
	SendEvent {ctrl down}{shift down}{f6 down}{f6 up}{shift up}{ctrl up}
return

#IfWinActive

^del::
	ExitApp
return