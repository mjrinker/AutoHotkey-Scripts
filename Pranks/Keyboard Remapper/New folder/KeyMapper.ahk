#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Persistent
#SingleInstance force
#InstallKeybdHook
#NoTrayIcon

T = %A_Now% 
T -= 1970,s

;if(T > 1491206400)
;{

ParentFolder = C:\Users\shoopes2\OneDrive - BYU Office 365\Music\BEST VIDEO GAME MUSIC COLLECTION\

Dflt = veniceviolins
GHHG = SuperMarioWorldlevel2
NoS = MDKTommyTallaricoStudios13Gunterplanet
Dbl = zContraIIITheAlienWarsNeoKobeSteelFactory
ABC = twoeight
0A = fortress
Tele = vahalflife2soundtracktrack01wwwpctorrentcom
Rndm = SovietMarch


CurrentScript = %Dflt%
CurrentScriptTitle = Default
i := 1

Loop, 7
{
if (i = 1)
{
CurrentScript = %ParentFolder%%GHHG%
ScriptName = %GHHG%
}
else if (i = 2)
{
CurrentScript = %ParentFolder%%NoS%
ScriptName = %NoS%
}
else if (i = 3)
{
CurrentScript = %ParentFolder%%Dbl%
ScriptName = %Dbl%
}
else if (i = 4)
{
CurrentScript = %ParentFolder%%ABC%
ScriptName = %ABC%
}
else if (i = 5)
{
CurrentScript = %ParentFolder%%0A%
ScriptName = %0A%
}
else if (i = 6)
{
CurrentScript = %ParentFolder%%Tele%
ScriptName = %Tele%
}

Run, %CurrentScript%.exe

Sleep 900000

DetectHiddenWindows, On
SetTitleMatchMode 2
WinClose, %ScriptName%.exe

Sleep 900000

++i
}

Run, "C:\Users\shoopes2\OneDrive - BYU Office 365\Music\BEST VIDEO GAME MUSIC COLLECTION\32SovietMarch.exe"

Sleep 300000

DetectHiddenWindows, On
SetTitleMatchMode 2
WinClose, SovietMarch.exe

BlockInput, On

Run, "C:\Program Files (x86)\Microsoft Office\Office16\WINWORD.EXE"
Sleep 1500
SendInput {Enter}
Sleep 100
Loop, 15
{
	SendEvent {ctrl down}{shift down}{> down}{> up}{shift up}{ctrl up}
}
Sleep 40
SendInput April Fools{!}

BlockInput, Off
;}


ExitApp