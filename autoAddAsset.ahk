#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

tag1 := "1-102989"
tag2 := "1-102990"
tag3 := "1-102991"
tag4 := "1-102992"
tag5 := "1-102993"
tag6 := "1-102994"
tag7 := "1-102995"
tag8 := "1-103907"
tag9 := "1-103906"
tag10 := "1-103905"
tag11 := "1-103904"
tag12 := "1-103903"
tag13 := "1-103902"
tag14 := "1-103901"
tag15 := "1-103900"
tag16 := "1-103899"
tag17 := "1-103898"
tag18 := "1-103897"
tag19 := "1-103896"
tag20 := "1-103895"
tag21 := "1-103894"
tag22 := "1-103893"
tag23 := "1-103892"
tag24 := "1-103872"
tag25 := "1-103871"
tag26 := "1-103870"
tag27 := "1-61475"
tag28 := "1-103869"
tag29 := "1-103868"
tag30 := "1-103867"
tag31 := "1-103866"
tag32 := "1-103865"
tag33 := "1-103864"
tag34 := "1-103863"
tag35 := "1-103862"
tag36 := "1-103861"
tag37 := "1-103860"
tag38 := "1-103859"
tag39 := "1-103858"
tag40 := "1-103857"
tag41 := "1-103856"
tag42 := "1-103855"
tag43 := "1-103854"
tag44 := "1-103853"
tag45 := "1-103806"
tag46 := "1-103807"
tag47 := "1-103808"
;tag48 := "1-103809"
tag48 := "1-103810"
tag49 := "1-103811"

^t::
	r := 1
	Loop, 49
	{
		SendEvent {ctrl down}{f down}{f up}{ctrl up}
		Sleep 100
		SendInput % tag%r%
		Sleep 100
		SendInput {Enter}
		Sleep 100
		SendInput {Tab 4}
		Sleep 100
		SendInput {Enter}
		Sleep 100
		SendInput {Left}
		Sleep 100
		SendEvent {ctrl down}{c down}{c up}{c up}
		Sleep 100
		owner%r% = %clipboard%
		SendInput {ctrl down}{home down}{home up}{ctrl up}
		Sleep 100
		++r
	}
	MsgBox,,Auto Add Asset,Go to where you want to paste results and then press OK.
	r := 1
	Loop, 49
	{
		SendInput % owner%r%
		Sleep 100
		SendInput {Enter}
		Sleep 100
		++r
	}
return

^y::
	test = {Tab 11}m{Tab}dd{Tab}2408WFPb{Tab}MX-0G283H-74262-95M-2C1S{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}1-102989{Tab}
	SendEvent %test%
	Sleep 40
return

^g::
	i := 1
;	MsgBox,,Auto Add Asset,You can quit this script at any time by pressing Ctrl+Delete.
	InputBox,assetCount,Auto Add Asset,How many assets do you need to enter? (Count the number of rows minus the header row.),,320,150
	If (ErrorLevel=1 or ErrorLevel=2)
	{
		ExitApp
	}
	batch = %clipboard%
	batch = {Tab 11}%batch%
	StringReplace,batch,batch,`n,`n{Tab 11},A
;	StringReplace,batch,batch,`r,`r{Tab 11},A
	StringSplit,line,batch,`n
	Loop, %assetCount%
	{
;		StringSplit,var%i%,line%i%,`t
		StringSplit,line%i%page,line%i%,§
		StringReplace,line%i%page1,line%i%page1,`t,{Tab},A
		StringReplace,line%i%page2,line%i%page2,`t,{Tab},A
		++i
	}
	i := 1
	page := 1
return

^h::
;	MsgBox,1,Auto Add Asset,%i%
;	if (i > %assetCount%)
;	{
;		MsgBox,1,Auto Add Asset,Asset tracker submission complete.
;		ExitApp
;	}
;	else
;	{
;		j := 1
;		if (page = 1)
;		{
			SendEvent % line%i%page1
			Sleep 40
			page := 2
;		}
;		else if(page = 2)
;		{
;			SendInput {Tab 10}
;			Sleep 40
;			SendEvent % line%i%page2
;			Sleep 40
;			page := 1
			++i
;		}
;	}
return

^j::
	i := 1
	MsgBox,,Auto Add Asset,You can quit this script at any time by pressing Ctrl+Delete.
	InputBox,assetCount,Auto Add Asset,How many assets do you need to enter? (Count the number of rows minus the header row.),,320,150
	If (ErrorLevel=1 or ErrorLevel=2)
	{
		ExitApp
	}
	MsgBox,1,Auto Add Asset,Open the file in Excel and then click OK.,60
	IfMsgBox Cancel
		ExitApp

	Loop, 25
	{
		clipboard := ""
	}
	SendEvent {Ctrl down}{a down}{a up}{Ctrl up}
	Sleep 40
	SendEvent {Ctrl down}{c down}{c up}{Ctrl up}
	Sleep 40
	batch = %clipboard%
	StringSplit,line,batch,`n
	Loop, %assetCount%
	{
		StringSplit,var%i%,line%i%,`t
		++i
	}
	StringSplit,var%i%,line%i%,`t
	i := 2
	Loop, %assetCount%
	{
		var%i%18 := var%i%12`t"Pending"
	}
	MsgBox,1,Auto Add Asset,Go to the asset tracker home page and then click OK.,60
	IfMsgBox Cancel
		ExitApp
;	SendEvent {Alt down}{Tab down}{Tab up}{Alt up}
;	Sleep 40
	Loop, 10
	{
		SendInput {Tab}
		Sleep 40
	}
	SendInput {Enter}
	Sleep 500
	i := 2
	Loop, %assetCount%
	{
		j := 1
		Loop, 10
		{
			SendInput {Tab}
			Sleep 40
		}
		Loop, 7
		{
			SendInput % var%i%%j%
			Sleep 40
			++j
			SendInput {Tab}
			Sleep 40
		}
		SendInput % var%i%%j%
		Sleep 40
		++j
		SendInput {Tab 2}
		Sleep 40
		Loop, 5
		{
			SendInput % var%i%%j%
			Sleep 40
			++j
			SendInput {Tab}
			Sleep 40
		}
		SendInput {Enter}
		Sleep 500
		Loop, 11
		{
			SendInput {Tab}
			Sleep 40
		}
		SendInput % var%i%%j%
		Sleep 40
		++j
		SendInput {Tab}
		Sleep 40
		If(var%i%%j%=1)
		{
			SendInput {Right}
			Sleep 40
		}
		Else
		{
			Loop, % var%i%%j%
			{
				SendInput {Right}
				Sleep 40
			}
		}
		++j
		SendInput {Tab}
		Sleep 40
		Loop, 2
		{
			SendInput % var%i%%j%
			Sleep 40
			++j
			SendInput {Tab}
			Sleep 40
		}
		SendInput {Enter}
		Sleep 500
		var%i%18 := var%i%12`t"DONE"
		Loop, 8
		{
			SendInput {Tab}
			Sleep 500
		}
		SendInput {Enter}
		Sleep 500
	}
return

^k::
	i := 1
	Loop, %assetCount%
	{
		SendInput % var%i%18
		Sleep 40
		SendInput {Enter}
		Sleep 40
	}
return

^del::
	ExitApp
return