#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Persistent
#SingleInstance force
#InstallKeybdHook
;#NoTrayIcon

T = %A_Now% 
T -= 1970,s

if(T > 1491206400)
{

ParentFolder = C:\Users\mjrinker\Desktop\AutoHotKeyShortcuts\

Dflt = %ParentFolder%Default
GHHG = %ParentFolder%GHHG
NoS = %ParentFolder%NoS
Dbl = %ParentFolder%Doubles
ABC = %ParentFolder%ABC
0A = %ParentFolder%0A
Han = %ParentFolder%Hangul
Tele = %ParentFolder%Telephony
Rndm = %ParentFolder%random


CurrentScript = %Dflt%
CurrentScriptTitle = Default
i := 1

Loop, 7
{
if (i = 1)
{
CurrentScript = %GHHG%
}
else if (i = 2)
{
CurrentScript = %NoS%
}
else if (i = 3)
{
CurrentScript = %Dbl%
}
else if (i = 4)
{
CurrentScript = %ABC%
}
else if (i = 5)
{
CurrentScript = %0A%
}
else if (i = 6)
{
CurrentScript = %Tele%
}

Run, %CurrentScript%

Sleep 900000

DetectHiddenWindows, On
SetTitleMatchMode 2
WinClose, %ScriptName%.ahk - AutoHotkey

Sleep 900000

++i
}

Run, C:\Users\mjrinker\Desktop\AutoHotKeyShortcuts\random

Sleep 300000

DetectHiddenWindows, On
SetTitleMatchMode 2
WinClose, random.ahk - AutoHotkey

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
}


ExitApp