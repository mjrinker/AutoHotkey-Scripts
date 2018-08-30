#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Persistent
#SingleInstance force
#InstallKeybdHook
FileInstall, DisplayBrightnessConsole.exe, DisplayBrightnessConsole.exe
FileInstall, nircmd.exe, nircmd.exe

SetBatchLines, 10ms
SetTimer, LabelKill, 120000

netdis=0
mtpdis=0
scrnoff=0

*F1::
	GetKeyState, state, Alt
	if (state = "D")
	{
		SendInput, {F1}
		Exit
	}

	GetKeyState, state, Ctrl
	if (state = "D")
	{
		DllCall("PowrProf\SetSuspendState", "int", 0, "int", 1, "int", 0)
		Exit
	}
	
	if netdis=0
	{
		commands=
		(join&
		devcon disable =bluetooth
		devcon disable =net
		)
		run, %comspec% /c %commands%,,hide
		scrnoff=1
	}
	Sleep 500
	
	DllCall("LockWorkStation")
	Sleep 500
	
	Run %ComSpec% /c "nircmd.exe monitor off",,Hide
	Sleep 2000
	Process, close, nircmd.exe
	

;	SendInput {Sleep}


Return



*F2::
	GetKeyState, state, Alt	;
	if (state = "D")
	{
		SendInput, {F2}
		Exit
	}

	if netdis=0
	{
		commands=
		(join&
		devcon disable =bluetooth
		devcon disable =net
		)
		run, %comspec% /c %commands%,,hide
		netdis=1
	}
	else
	{
		commands=
		(join&
		devcon enable =bluetooth
		devcon enable =net
		)
		run, %comspec% /c %commands%,,hide
		netdis=0
	}
Return

;*F3::
;	GetKeyState, state, Alt
;	if (state = "D")
;	{
;		SendInput, {F3}
;		Exit
;	}
;Return

;*F4:
;	GetKeyState, state, Alt
;	if (state = "D")
;	{
;		SendInput, {F4}
;		Exit
;	}
;Return

IfNotExist, levels.txt
{
	lvlcount = 0
	RunWait %comspec% /c "(DisplayBrightnessConsole.exe -getlevels)>levels.txt",,Hide
}
loop, read, levels.txt
{
	lvl%A_Index% := A_LoopReadLine
	lvlcount += 1
}
maxlvl := lvl%lvlcount%
RunWait %comspec% /c DisplayBrightnessConsole>current.txt,,Hide
FileReadLine, currentlvl, current.txt, 1

#MaxThreadsBuffer On
*F5::
Critical
GetKeyState, state, Alt
if (state = "D")
{
	SendInput, {F5}
	Exit
}
if currentlvl = %lvl1%
{
	Exit
}
loop , %lvlcount%
{
	looplvl := lvl%A_Index%
	if currentlvl = %looplvl%
	{
		newcount := A_Index-5
		newlvl := lvl%newcount%
		RunWait %comspec% /c DisplayBrightnessConsole %newlvl%,,Hide
		break
	}
}
RunWait %comspec% /c DisplayBrightnessConsole>current.txt,,Hide
FileReadLine, currentlvl, current.txt, 1
return

*F6::
Critical
GetKeyState, state, Alt
if (state = "D")
{
	SendInput, {F6}
	Exit
}
if currentlvl = %maxlvl%
{	
	Exit
}
loop , %lvlcount%
{
	looplvl := lvl%A_Index%
	if currentlvl = %looplvl%
	{
		newcount := A_Index+5
		newlvl := lvl%newcount%
		RunWait %comspec% /c DisplayBrightnessConsole %newlvl%,,Hide
		break
	}
}
RunWait %comspec% /c DisplayBrightnessConsole>current.txt,,Hide
FileReadLine, currentlvl, current.txt, 1
return
#MaxThreadsBuffer Off

*F7::
GetKeyState, state, Alt
if (state = "D")
{
	SendInput, {F7}
	Exit
}
Run %ComSpec% /c "nircmd.exe monitor off",,Hide
sleep 2000
Process, close, nircmd.exe
return

LabelKill:
	RunWait %comspec% /c DisplayBrightnessConsole>current.txt,,Hide
	FileReadLine, currentlvl, current.txt, 1
	Process, close, nircmd.exe
return

*F8::
	GetKeyState, state, Alt
	if (state = "D")
	{
		SendInput, {F8}
		Exit
	}

	SendInput {LWin down}
	Sleep 10
	SendInput {P down}
	Sleep 10
	SendInput {P up}
	Sleep 10
	SendInput {LWin up}
Return

*F9::
	GetKeyState, state, Alt
	if (state = "D")
	{
		SendInput, {F9}
		Exit
	}

	if mtpdis=0
	{
		commands=
		(join&
		devcon disable "HID\VEN_ELAN&DEV_0100&Col01"
		)
		runwait, %comspec% /c %commands%,,hide
		mtpdis=1
	}
	else
	{
		commands=
		(join&
		devcon enable "HID\VEN_ELAN&DEV_0100&Col01"
		)
		runwait, %comspec% /c %commands%,,hide
		mtpdis=0
	}
Return

*F10::
	GetKeyState, state, Alt
	if (state = "D")
	{
		SendInput, {F10}
		Exit
	}

	SendInput {Volume_Mute}
Return

*F11::
	GetKeyState, state, Alt
	if (state = "D")
	{
		SendInput, {F11}
		Exit
	}

	SendInput {Volume_Down}
Return

*F12::
	GetKeyState, state, Alt
	if (state = "D")
	{
		SendInput, {F12}
		Exit
	}

	SendInput {Volume_Up}
Return

^Del::
	ExitApp
Return

^+Del::
	ExitApp
Return