#SingleInstance, Force

; file := FileOpen("networkmonitor.txt", "w")
; file.Write("")
; file.Close()

minuteTimer := 0
minThreshold := 5
upThreshold := 10
dnThreshold :=10
measure := "up"
blip := 0
logging := True

Gui, -Caption +Border +AlwaysOnTop +ToolWindow
Gui, Color, EEAA99
Gui, +LastFound
WinSet, TransColor, EEAA99
Gui, Add, Progress,      w10 h100 cGreen -0x1 Vertical vDn
Gui, Add, Progress, y+10 w10 h100 cRed   -0x1 Vertical vUp
; Gui, Show, x3 y400 , NetMeter                  ; Adjust X & Y to suit your screen res

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

SetTimer, NetMeter, On, 1000
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
		minuteTimer += 1
	}
	Else {
		++blip
		if (blip > 2) {
			minuteTimer := 0
		}
		else {
			minuteTimer += 1
		}
	}
}
Else If (measure = "dn") {
	If (dnRate < dnThreshold) {
		minuteTimer += 1
	}
	Else {
		++blip
		if (blip > 2) {
			minuteTimer := 0
		}
		else {
			minuteTimer += 1
		}
	}
}

If (logging) {
	FileAppend, `n%A_Now%`t%upRate%Kb/s`t%minuteTimer%s`t%A_TimeIdlePhysical%ms, networkmonitor.txt
}

If ((minuteTimer/60) > minThreshold) {
	if (A_TimeIdlePhysical > 1800000){
		;FileAppend, `n%A_Now%`tSleeping..., networkmonitor.txt
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