#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
SetTitleMatchMode,2

; screenshots_path := "D:\Users\mjrinker\YaleBofM_png"
screenshots_path := "D:\YaleBofM_png"

SelectAll() {
	sendevent {ctrl down}{a down}{a up}{ctrl up}
}
FlipHorizontal() {
	sendevent {alt down}hroh{alt up}
}
Deselect() {
	sendevent {alt down}hser{alt up}
}
ResizeCanvas(w="", h="") {
	sendevent {ctrl down}{e down}{e up}{ctrl up}
	sleep 40
	sendinput %w%
	sleep 40
	sendinput {tab}
	sleep 40
	sendinput %h%
	sleep 40
	sendinput {Enter}
	sleep 40
}
Save() {
	sendevent {ctrl down}{s down}{s up}{ctrl up}
}
Close() {
	sendevent {alt down}{f4 down}{f4 up}{alt up}
}

n = 0

^h::
	while n < 900 {
		Run, %comspec% /c mspaint.exe %screenshots_path%\screenshot%n%.png
		Sleep 5000
		;#IfWinActive, Paint
		ResizeCanvas("1384")
		FlipHorizontal()
		ResizeCanvas("847")
		FlipHorizontal()
		SelectAll()
		SendInput {up 2}
		Sleep 80
		Deselect()
		ResizeCanvas(, "1039")
		Save()
		Close()
		n++
		;#IfWinActive
	}
	ExitApp
return

^del::
	ExitApp
return