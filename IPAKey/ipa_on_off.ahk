#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

Menu, Tray, Icon, ipaON.ico
Menu, Tray, Tip, IPAKey (on)

full_script_path := A_ScriptDir "\ipa.ahk"

DetectHiddenWindows, On

Run, %full_script_path% ahk_class AutoHotkey
on := True

>!Enter::
	if (on)
	{
		WinClose, %full_script_path% ahk_class AutoHotkey
		Menu, Tray, Icon, ipaOFF.ico
		Menu, Tray, Tip, IPAKey (off)
		on := False
	}
	else
	{
		Run, %full_script_path% ahk_class AutoHotkey
		Menu, Tray, Icon, ipaON.ico
		Menu, Tray, Tip, IPAKey (on)
		on := True
	}
return

^del::
	WinClose, %full_script_path% ahk_class AutoHotkey
	ExitApp
return