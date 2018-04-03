; Credit to aaronbaird1, see: https://autohotkey.com/board/topic/39004-how-to-adjust-display-brightness-im-sure-its-possible/page-2

SetWorkingDir %A_ScriptDir%
FileInstall, DisplayBrightnessConsole.exe, DisplayBrightnessConsole.exe
FileInstall, nircmd.exe, nircmd.exe
#SingleInstance force
#NoTrayIcon
#InstallKeybdHook
SetBatchLines, 10ms
SetTimer, LabelKill, 120000

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

^Del:: ; Exits the script.
	ExitApp
Return

^+Del:: ; Exits the script (universal exit).
	ExitApp
Return