#SingleInstance, Force

; User Configurable Options
monitorInterval := 1000  ; The amount of time in milliseconds to wait between iterations
idleTime := 30  ; The amount of time in minutes for the computer to be idle before sleeping
minThreshold := 5  ; The amount of minutes to stay awake on low network activity
upThreshold := 10  ; The threshold for upload in Kbps
dnThreshold := 10  ; The threshold for download in Kbps
measure := "up"  ; The direction to monitor ("up" upload vs. "dn" download)
blip := 0  ; A network blip
blipLength := 1  ; Length of a blip in seconds
logging := True  ; Log activity to file
showGui := False  ; Display the network meter GUI

; DO NOT CHANGE: The timer the counts up each time the loop runs and encounters low activity
minuteTimer := 0
prevTime := A_Now

Gui, -Caption +Border +AlwaysOnTop +ToolWindow
Gui, Color, EEAA99
Gui, +LastFound
WinSet, TransColor, EEAA99
Gui, Add, Progress,      w10 h100 cGreen -0x1 Vertical vDn
Gui, Add, Progress, y+10 w10 h100 cRed   -0x1 Vertical vUp

If showGui {
	Gui, Show, x3 y400 , NetMeter  ; Adjust X & Y to suit your screen res
}

^+g::
	showGui := !showGui
	If showGui {
		Gui, Show, x3 y400 , NetMeter  ; Adjust X & Y to suit your screen res
	}
	Else {
		Gui, Show, Hide
	}
return

If GetIfTable(tb)
   ExitApp

Loop, % DecodeInteger(&tb)
{
	If DecodeInteger(&tb + 4 + 860 * (A_Index - 1) + 544) < 4 || DecodeInteger(&tb + 4 + 860 * (A_Index - 1) + 516) = 24
	   Continue
	ptr := &tb + 4 + 860 * (A_Index - 1)
	   Break
}

If !ptr
   ExitApp

SetTimer, NetMeter, On, %monitorInterval%
Return

NetMeter:


DllCall("iphlpapi\GetIfEntry", "Uint", ptr)

dnNew := DecodeInteger(ptr + 552)		; Total Incoming Bytes
upNew := DecodeInteger(ptr + 576)		; Total Outgoing Bytes

dnRate := Round((dnNew - dnOld) / 1024)
upRate := Round((upNew - upOld) / 1024)

GuiControl,, Dn, %dnRate%
GuiControl,, Up, %upRate%

If (measure = "up") {
	If (upRate < upThreshold) {
		minuteTimer := (A_Now - prevTime)
	}
	Else {
		++blip
		if (blip > blipLength+1) {
			minuteTimer := 0
			blip := 0
			prevTime := A_Now
		}
		else {
			minuteTimer := (A_Now - prevTime)
		}
	}
}
Else If (measure = "dn") {
	If (dnRate < dnThreshold) {
		minuteTimer := (A_Now - prevTime)
	}
	Else {
		++blip
		if (blip > blipLength+1) {
			minuteTimer := 0
			blip := 0
			prevTime := A_Now
		}
		else {
			minuteTimer := (A_Now - prevTime)
		}
	}
}

If (logging) {
	FileAppend, `n%A_Now%`t%upRate%Kb/s`t%minuteTimer%s`t%A_TimeIdlePhysical%ms, networkmonitor_log\networkmonitor%A_YYYY%%A_MM%%A_DD%.txt
}

If ((minuteTimer/60) > minThreshold) {
	if (A_TimeIdlePhysical > (idleTime*60000)){
		;FileAppend, `n%A_Now%`tSleeping..., networkmonitor_log\networkmonitor%A_YYYY%%A_MM%%A_DD%.txt
		minuteTimer := 0
		Run, sleep.ahk
		;PwrState("sleep")
		ExitApp
	}
}

dnOld := dnNew
upOld := upNew
Return


GetIfTable(ByRef tb, bOrder = False)
{
	nSize := 4 + 860 * GetNumberOfInterfaces() + 8
	VarSetCapacity(tb, nSize)
	Return DllCall("iphlpapi\GetIfTable", "Uint", &tb, "UintP", nSize, "int", bOrder)
}

GetIfEntry(ByRef tb, idx)
{
	VarSetCapacity(tb, 860)
	DllCall("ntdll\RtlFillMemoryUlong", "Uint", &tb + 512, "Uint", 4, "Uint", idx)
	Return DllCall("iphlpapi\GetIfEntry", "Uint", &tb)
}

GetNumberOfInterfaces()
{
	DllCall("iphlpapi\GetNumberOfInterfaces", "UintP", nIf)
	Return nIf
}

DecodeInteger(ptr)
{
	Return *ptr | *++ptr << 8 | *++ptr << 16 | *++ptr << 24
}

PwrState(state)
{
    if (state = "sleep") {
    	DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
    }
    if (state = "hibernate") {
    	DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)
    }
}

!Del::
	ExitApp
return