#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#NoTrayIcon
SetTitleMatchMode,2

Loop
{
Sleep 600000
BlockInput, On
Run, cmd.exe
Sleep 250
SendInput cd C:\{Enter}
Sleep 40
SendInput cls{Enter}
Sleep 40
#IfWinActive, Command Prompt
Loop, 250
{
	Loop, 8
	{
		Random, rand, 0, 1
		SendInput % rand
		Sleep 20
	}
	SendInput {Space}
	Sleep 20
}
SendEvent {Alt down}{F4 down}{F4 up}{Alt up}
#IfWinActive
BlockInput, Off
}