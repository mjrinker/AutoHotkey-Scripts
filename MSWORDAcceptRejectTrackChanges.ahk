#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Persistent
#SingleInstance force
#InstallKeybdHook

^d::
	SendEvent {Alt down}{r down}{r up}{a down}{a up}{m down}{m up}{Alt up}
return

^f::
	SendEvent {Alt down}{r down}{r up}{j down}{j up}{m down}{m up}{Alt up}
return

^g::
	SendEvent {Alt down}{r down}{r up}{d down}{d up}{d down}{d up}{Alt up}
return

^Del::
	ExitApp
return