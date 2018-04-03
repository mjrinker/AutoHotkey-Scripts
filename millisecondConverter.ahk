#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

Loop
	{
	InputBox,totalTimeMS,Input Time,Please input the total time in milliseconds (ms):,,320,150,-600,750

	hours := Round((totalTimeMS/3600000)-0.5)

	minutes := Round((((totalTimeMS/3600000)-hours)*60)-0.5)

	seconds := Round((((((totalTimeMS/3600000)-hours)*60)-minutes)*60)-0.5)

	mseconds := Round(((((((totalTimeMS/3600000)-hours)*60)-minutes)*60)-seconds)*1000,0)

	If (minutes<10)
	{
		minutes := 0 minutes
	}

	If (seconds<10)
	{
		seconds := 0 seconds
	}

	If (mseconds<100 && mseconds>9)
	{
		mseconds := 0 mseconds
	}
	Else If (mseconds<10)
	{
		mseconds := 00 mseconds
	}

	clipboard = %hours%:%minutes%:%seconds%.%mseconds%

	MsgBox,1,Time,h:mm:ss.ms`n%hours%:%minutes%:%seconds%.%mseconds%
}

^del::
	ExitApp
return