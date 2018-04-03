#NoEnv  																				; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  																				; Enable warnings to assist with detecting common errors.
SendMode Input  																		; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  															; Ensures a consistent starting directory.
#SingleInstance force																	; Ensures that only one instance of this file will run at a time (force closes old instances)


; This script takes IP addresses or hostnames from Excel and puts them into the FindHost page in NIT and then searches. It then retrieves the MAC address and puts it into column G in Excel. Then it loops 256 times. In order for this to work, make sure you only have two windows open: Excel and a browser with https://nit.byu.edu/ry/webapp/nit/app?service=page/Findhost loaded. In Excel, make sure you have two sheets: one with either hostnames or IP addresses in column A and nothing in column G, and the other as just a blank sheet. Start with the first sheet (the one with IP addresses or hostnames) as the active one, with the first IP address or hostname as the selected cell. Then run the script and press Ctrl+G and watch it go. DO NOT TOUCH ANYTHING WHILE IT IS RUNNING. If you need to do an emergency quit, press Ctrl+Delete.

ipNum := 1

^g::																					; Hotkey: when Ctrl+G is pressed

	Loop, 254																			; Repeat the part in {} 254 times
	{
		SendEvent {Ctrl down}{c down}{c up}{Ctrl up}									; Copy what is currently selected (should be a MAC address)
		Sleep 40
		SendEvent {Ctrl down}{PgDn down}{PgDn up}{Ctrl up}								; Switch tabs in Excel
		Sleep 40
		SendEvent {Ctrl down}{f down}{f up}{Ctrl up}									; Open Find and Replace window
		Sleep 40
		SendEvent {Ctrl down}{v down}{v up}{Ctrl up}									; Paste the MAC address
		Sleep 40
		SendInput {Enter}																; Find
		Sleep 40
		SendInput {Tab 4}																; Tab 4 times to get to Close Button
		Sleep 40
		SendInput {Enter}																; Close Find and Replace window
		Sleep 40
		SendInput {Right 2}																; Go to Owner cell
		Sleep 40
		SendEvent {Ctrl down}{c down}{c up}{Ctrl up}									; Copy the owner
		Sleep 40
		SendEvent {Ctrl down}{Home down}{Home up}{Ctrl up}								; Go to the top of the sheet
		Sleep 40
		SendEvent {Ctrl down}{PgUp down}{PgUp up}{Ctrl up}								; Switch tabs in Excel
		Sleep 40
		SendInput {Left 3}																; Go to Owner (tracker) column
		Sleep 40
		SendEvent {Ctrl down}{v down}{v up}{Ctrl up}									; Paste the owner
		Sleep 40
		SendInput {Down}																; Go down a row
		Sleep 40
		SendInput {Right 3}																; Go to MAC address column
		Sleep 40
	}

	SendInput {Down 3}																	; Go down to next Subnet section
	Sleep 40

	Loop, 64																			; Repeat the part in {} 64 times
	{
		SendEvent {Ctrl down}{c down}{c up}{Ctrl up}									; Copy what is currently selected (should be a MAC address)
		Sleep 40
		SendEvent {Ctrl down}{PgDn down}{PgDn up}{Ctrl up}								; Switch tabs in Excel
		Sleep 40
		SendEvent {Ctrl down}{f down}{f up}{Ctrl up}									; Open Find and Replace window
		Sleep 40
		SendEvent {Ctrl down}{v down}{v up}{Ctrl up}									; Paste the MAC address
		Sleep 40
		SendInput {Enter}																; Find
		Sleep 40
		SendInput {Tab 4}																; Tab 4 times to get to Close Button
		Sleep 40
		SendInput {Enter}																; Close Find and Replace window
		Sleep 40
		SendInput {Right 2}																; Go to Owner cell
		Sleep 40
		SendEvent {Ctrl down}{c down}{c up}{Ctrl up}									; Copy the owner
		Sleep 40
		SendEvent {Ctrl down}{Home down}{Home up}{Ctrl up}								; Go to the top of the sheet
		Sleep 40
		SendEvent {Ctrl down}{PgUp down}{PgUp up}{Ctrl up}								; Switch tabs in Excel
		Sleep 40
		SendInput {Left 3}																; Go to Owner (tracker) column
		Sleep 40
		SendEvent {Ctrl down}{v down}{v up}{Ctrl up}									; Paste the owner
		Sleep 40
		SendInput {Down}																; Go down a row
		Sleep 40
		SendInput {Right 3}																; Go to MAC address column
		Sleep 40
	}

Return																					; End the current hotkey

^+v::
	posRegExRm := RegExMatch(Clipboard, "Room: (W)?[0-9A-Z]{3}([A-Z])?")
	posRegExRm += 6
	room := SubStr(Clipboard, posRegExRm, 5)
	SendInput %room%
	Sleep 40
	SendInput {Right 2}
	Sleep 40
	posRegExMac := RegExMatch(Clipboard, "[0-9A-Z]{4}\.[0-9A-Z]{4}\.[0-9A-Z]{4}")
	macAddress := SubStr(Clipboard, posRegExMac, 14)
	SendInput %macAddress%
	Sleep 40
	SendInput {Down}
	Sleep 40
	SendInput {Left 2}
	Sleep 40
Return

^b::
	SendInput {Right 2}
	Sleep 40
	posRegExMac := RegExMatch(Clipboard, "[0-9A-Z]{4}\.[0-9A-Z]{4}\.[0-9A-Z]{4}")
	macAddress := SubStr(Clipboard, posRegExMac, 14)
	SendInput %macAddress%
	Sleep 40
	SendInput {Down}
	Sleep 40
	SendInput {Left 2}
	Sleep 40
Return



^d::
	if (ipNum > 255)
	{
		ipNum := 1
	}
	SendInput {BackSpace %ipNumDig%}
	SendInput %ipNum%
	Sleep 40
	SendInput {Enter}
	ipNumDig := StrLen(ipNum)
	ipNum += 1
Return

^t::
	Loop, 323
	{
		Loop, 5
		{
			SendInput {Right 2}
			Sleep 20
			SendInput {U+003A}
			Sleep 20
		}
		SendInput {Down}
		Sleep 20
		SendInput {Home}
		Sleep 20
	}
Return

^del::																					; Hotkey: when Ctrl+Delete is pressed
	ExitApp																				; Force quit the script
Return