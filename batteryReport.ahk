#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

GetSystemPowerStatus(ByRef _ACLineStatus=0, ByRef _BatteryFlag=0, ByRef _BatteryLifePercent=0
						, ByRef _BatteryLifeTime=0, ByRef _BatteryFullLifeTime=0)
{
	static System_Power_Status
	
	VarSetCapacity(System_Power_Status, 12, 0)
	
	if !DllCall("kernel32.dll\GetSystemPowerStatus", "Ptr", &System_Power_Status)
		return false
	
	_ACLineStatus        := NumGet(System_Power_Status, 0, "UChar")
	_BatteryFlag         := NumGet(System_Power_Status, 1, "UChar")
	_BatteryLifePercent  := NumGet(System_Power_Status, 2, "UChar")
	_BatteryLifeTime     := NumGet(System_Power_Status, 4, "Int")
	_BatteryFullLifeTime := NumGet(System_Power_Status, 8, "Int")
	return true
}

startTime := A_TickCount
Loop
{
	Sleep, 1000
	elapsedTime := A_TickCount - startTime
	FileAppend,%elapsedTime%`n,batteryReport.txt

	if !GetSystemPowerStatus(PowerStatus,, LifePct)
	{
		MsgBox, % "GetSystemPowerStatus failed " A_LastError
		return
	}

	if (LifePct=100 && PowerStatus=1)
	{
		goto End
	}
}

End:

MsgBox, DONE

ExitApp