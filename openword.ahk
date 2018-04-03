#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Persistent
#SingleInstance force
#Include talk.ahk
#InstallKeybdHook
;#NoTrayIcon

^g::
	Run, "C:\Program Files (x86)\Microsoft Office\Office16\WINWORD.EXE"
	Sleep 1500
	SendInput {Enter}
	Sleep 100
	Loop, 15
	{
		SendEvent {ctrl down}{shift down}{> down}{> up}{shift up}{ctrl up}
	}
	Sleep 40
	SendInput April Fools
Return