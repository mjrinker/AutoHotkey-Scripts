#NoEnv	; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input	; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%	; Ensures a consistent starting directory.
#Persistent	; Keeps a script permanently running (that is, until the user closes it or ExitApp is encountered).
#SingleInstance force	; Skips the "Already running" dialog box and replaces the old instance automatically.
#InstallKeybdHook	; Forces the unconditional installation of the keyboard hook, which monitors keystrokes.
FileInstall, DisplayBrightnessConsole.exe, DisplayBrightnessConsole.exe	; File necessary for the brightness control.
FileInstall, nircmd.exe, nircmd.exe	; File necessary for the screen off control.

; This is a remapping of the keyboard function keys (F1-F12), so that the Fn key is not required to use system hotkeys.
; F1  - Sleep (currently not active)
; F2  - Airplane Mode
; F3  - Gamma Down (currently not active)
; F4  - Gamma Up (currently not active)
; F5  - Brightness Down
; F6  - Brightness Up
; F7  - Screen Off
; F8  - Screen Project
; F9  - Touchpad
; F10 - Mute
; F11 - Volume Down
; F12 - Volume Up

Run "D:\Users\Matt\Google Drive\Documents\Other\AutoHotKey Scripts\FunctionKeys\brightness_v2.ahk"	; Run screen brightness file

netdis=0	; Airplane Mode, Off=0, On=1
mtpdis=0	; Mouse Touchpad, Enabled=0, Disabled=1

;*F1::	; Puts the computer to sleep.
;	GetKeyState, state, Alt	; If Alt is pressed then F1 plays default ;function.
;	if (state = "D")
;	{
;		SendInput, {F1}
;		Exit
;	}
;
;	DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)
;Return

*F2::	; Emulates Airplane Mode by disabling the Bluetooth and Network devices via Microsoft DevCon.
	GetKeyState, state, Alt	; If Alt is pressed then F2 plays default function.
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
;	GetKeyState, state, Alt	; If Alt is pressed then F3 plays default function.
;	if (state = "D")
;	{
;		SendInput, {F3}
;		Exit
;	}
;Return

;*F4:
;	GetKeyState, state, Alt	; If Alt is pressed then F4 plays default function.
;	if (state = "D")
;	{
;		SendInput, {F4}
;		Exit
;	}
;Return

; F5-F7 (screen brightness controls) are handled by brightness_v2.ahk, credit to aaronbaird1, see: https://autohotkey.com/board/topic/39004-how-to-adjust-display-brightness-im-sure-its-possible/page-2

*F8::	; Displays the "screen project" dialog.
	GetKeyState, state, Alt	; If Alt is pressed then F8 plays default function.
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

*F9::	; Disables the touchpad by disabling the touchpad device via Microsoft DevCon.
	GetKeyState, state, Alt	; If Alt is pressed then F9 plays default function.
	if (state = "D")
	{
		SendInput, {F9}
		Exit
	}

	if mtpdis=0
	{
		commands=
		(join&
		devcon disable "HID\VEN_ELAN&DEV_0100&Col01"	; You will need to find your touchpad ID and insert it between the ""
		)
		runwait, %comspec% /c %commands%,,hide
		mtpdis=1
	}
	else
	{
		commands=
		(join&
		devcon enable "HID\VEN_ELAN&DEV_0100&Col01"	; You will need to find your touchpad ID and insert it between the ""
		)
		runwait, %comspec% /c %commands%,,hide
		mtpdis=0
	}
Return

*F10::	; Mutes the volume.
	GetKeyState, state, Alt	; If Alt is pressed then F10 plays default function.
	if (state = "D")
	{
		SendInput, {F10}
		Exit
	}

	SendInput {Volume_Mute}
Return

*F11::	; Lowers the volume.
	GetKeyState, state, Alt	; If Alt is pressed then F11 plays default function.
	if (state = "D")
	{
		SendInput, {F11}
		Exit
	}

	SendInput {Volume_Down}
Return

*F12::	; Raises the volume.
	GetKeyState, state, Alt	; If Alt is pressed then F12 plays default function.
	if (state = "D")
	{
		SendInput, {F12}
		Exit
	}

	SendInput {Volume_Up}
Return

^Del:: ; Exits the script.
	ExitApp
Return

^+Del:: ; Exits the script (universal exit).
	ExitApp
Return