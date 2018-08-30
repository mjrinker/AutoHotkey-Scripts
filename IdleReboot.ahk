#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#NoTrayIcon

#Persistent
SetTimer, Check, 1000
return

Check:
	If (A_Hour>=11 And A_Min<=12)
	{
		If (A_TimeIdle>=30000)
		{
			DetectHiddenWindows, Off
			WinGet,WinList,List,,,Program Manager
			loop,%WinList%
			{
				Current:=WinList%A_Index%
				WinGetTitle,WinTitle,ahk_id %Current%
				If WinTitle
				List.="`n" "--- " WinTitle
				StringReplace,List,List,--- Store,,All
				StringReplace,List,List,--- Windows Shell Experience Host,,All
				StringReplace,List,List,--- Photos,,All
				StringReplace,List,List,--- Calculator,,All
				StringReplace,List,List,--- Settings,,All
				StringReplace,List,List,`n`n,,All
			}
			;MsgBox % countVar(List, "--- ")
			numWin := countVar(List, "--- ")
			If (numWin=0)
			{
				Shutdown, 6
			}
			SetTimer, Check, Off
		}
	}
return

^del::
	ExitApp
return

countVar(Text, var){
    StringReplace, Text, Text, % var, % var, UseErrorLevel
    Return ( ( (var = "`n" || var = "`r") && (Text) ) ? ErrorLevel + 1 : ErrorLevel )
}