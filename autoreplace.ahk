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
	if (StrLen(lastStr) >= 3)
	{
		lastStr := lastStr . lastKey
		StringTrimLeft, lastStr, lastStr, 1
	}
	else
	{
		lastStr := lastStr . lastKey
	}
;	tooltip, %lastStr%, 0, 0
	if (lastStr = "mr ") {
		SendInput {Backspace 3}
		SendInput Matt{Space}Rinker{Space}
	}
	else {
	}
}

^+del::
	ExitApp
return