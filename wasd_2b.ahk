#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

select(mode="a", n=1)
{
	loop, %n%
	{
		if (mode = "n")
		{
			sendevent {ShiftDown}{right}{ShiftUp}
		}
		else if (mode = "p")
		{
			sendevent {ShiftDown}{left}{ShiftUp}
		}
		else if (mode = "wn")
		{
			sendevent {ShiftDown}{CtrlDown}{right}{CtrlUp}{ShiftUp}
		}
		else if (mode = "wp")
		{
			sendevent {ShiftDown}{CtrlDown}{left}{CtrlUp}{ShiftUp}
		}
		else if (mode = "a")
		{
			sendevent {CtrlDown}{a down}{a up}{CtrlUp}
		}
		else if (mode = "d")
		{
			sendevent {right}{left}
		}
	}
}
cut()
{
	sendevent {CtrlDown}{x down}{x up}{CtrlUp}
}
copy()
{
	sendevent {CtrlDown}{c down}{c up}{CtrlUp}
}
paste()
{
	sendevent %clipboard%
}

insert_char(char="", direction="rtl")
{
	if (direction = "rtl")
	{
		select("n")
		copy()
		prev_char := clipboard
		sendinput {left}
		select("p")
		copy()
		next_char := clipboard
		sendinput {right 2}
		select("p", 2)
		sendevent %prev_char%%char%%next_char%{U+200D}
		if (next_char = " ")
		{
			sendinput {right}
			select("wn")
			cut()
			sendinput {space}
			paste()
			;sendinput {backspace}
			sendinput {left 2}
		}
	}
	else if (direction = "ltr")
	{
		select("p")
		copy()
		prev_char := clipboard
		sendinput {right}
		select("n")
		copy()
		next_char := clipboard
		sendinput {left 2}
		select("n", 2)
		sendevent %prev_char%%char%%next_char%
	}
}

; fatha =    "{U+064E}"
; damma =    "{U+064F}"
; kasra =    "{U+0650}"
; fathatan = "{U+064B}"
; dammatan = "{U+064C}"
; kasratan = "{U+064D}"
; shadda =   "{U+0651}"
; sukuun =   "{U+0652}"
; dagger =   "{U+0670}"
; wasla =    "{U+0671}"
; maddah =   "{U+0622}"
; hamza_up = "{U+0623}"
; hamza_dn = "{U+0625}"
; joiner =   "{U+200D}"

y::
	insert_char("{U+064E}") ; fatha
return

u::
	insert_char("{U+064F}") ; damma
return

i::
	insert_char("{U+0650}") ; kasra
return

+y::
	insert_char("{U+064B}") ; fathatan
return

+u::
	insert_char("{U+064C}") ; dammatan
return

+i::
	insert_char("{U+064D}") ; kasratan
return

o::
	insert_char("{U+0652}") ; sukuun
return

h::
	insert_char("{U+0651}") ; shadda
return

t::
	insert_char("{U+0670}") ; dagger
return

g::
	insert_char("{U+0671}") ; wasla
return

+g::
	insert_char("{U+0622}") ; maddah
return

b::
	insert_char("{U+0623}") ; hamza_up
return

+b::
	insert_char("{U+0625}") ; hamza_dn
return

;-----

w::
	sendinput {up}
return

a::
	sendinput {left}
return

s::
	sendinput {down}
return

d::
	sendinput {right}
return

+w::
	sendinput {pgup}
return

+a::
	sendinput {end}
return

+s::
	sendinput {pgdn}
return

+d::
	sendinput {home}
return

e::
	sendinput {delete}
return

f::
	sendinput {backspace}
return

^Space::
	SendEvent {LWin down}{Space down}{Space up}{LWin up}
	Run, arabVowels.ahk
	ExitApp
return

!Space::
	ExitApp
return