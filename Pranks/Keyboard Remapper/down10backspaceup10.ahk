#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Persistent
#SingleInstance force
#InstallKeybdHook
;#NoTrayIcon

Down::
	Loop, 10
	{
		SendInput {Down}
	}
	SendInput {Backspace}
return

Up::
	Loop, 10
	{
		SendInput {Up}
	}
return