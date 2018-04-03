#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#NoTrayIcon

lastStr := ""

Loop
{
	Input, lastKey, L1 V B I
	if (StrLen(lastStr) >= 6)
	{
		lastStr := lastStr . lastKey
		StringTrimLeft, lastStr, lastStr, 1
	}
	else
	{
		lastStr := lastStr . lastKey
	}
;	tooltip, %lastStr%, 0, 0
	if (lastStr = "jayson") {
		SendInput {Backspace 6}
		SendInput Jayshon
	}
	else {
	}
}

^del::
	ExitApp
return