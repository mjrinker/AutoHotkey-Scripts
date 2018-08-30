#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Persistent
#SingleInstance force
#InstallKeybdHook
;#NoTrayIcon

^g::
	loop, 26
	{
		loop, 3
		{
			SendInput {;}
			SendInput {Down}
		}
		SendInput {Left}
	}
	exitapp
return

^u::
	loop, 3
	{
		SendInput {Del}
		SendInput {Up}
	}
	loop, 6
	{
		SendInput {Down}
	}
	Sleep 40
	SendEvent {Ctrl down}{s down}{s up}{Ctrl up}
	SendEvent {Ctrl down}{Shift down}{r down}{r up}{Shift up}{Ctrl up}
return

^+r::
	Run "C:\Users\mjrinker\Google Drive\Documents\Other\AutoHotKey Scripts\Keyboard Remapper\random.ahk"
return

^+j::
	loop, 115
	{
		SendInput {$}
		SendInput {Down}
		SendInput {Down}
		SendInput {Down}
		SendInput {Left}
	}
return

^del::
	exitapp
return