#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

select(mode="a", n=1, extra="")
{
	loop, %n%
	{
		if (mode = "p")
		{
			sendevent {ShiftDown}{right}{ShiftUp}%extra%
		}
		else if (mode = "n")
		{
			sendevent {ShiftDown}{left}{ShiftUp}%extra%
		}
		else if (mode = "wp")
		{
			sendevent {ShiftDown}{CtrlDown}{right}{CtrlUp}{ShiftUp}%extra%
		}
		else if (mode = "wn")
		{
			sendevent {ShiftDown}{CtrlDown}{left}{CtrlUp}{ShiftUp}%extra%
		}
		else if (mode = "a")
		{
			sendevent {CtrlDown}{a down}{a up}{CtrlUp}%extra%
		}
		else if (mode = "d")
		{
			sendevent {right}{left}%extra%
		}
	}
}
cut(extra="")
{
	sendevent {CtrlDown}{x down}{x up}{CtrlUp}%extra%
}
copy(extra="")
{
	sendevent {CtrlDown}{c down}{c up}{CtrlUp}%extra%
}
paste(mode="n", extra="")
{
	if (mode="f")
	{
		sendevent {CtrlDown}{v down}{v up}{CtrlUp}%extra%
	}
	else
	{
		clipboard = %clipboard%
		sendevent {CtrlDown}{v down}{v up}{CtrlUp}%extra%
	}
}

detect_char(adv=2)
{
	select("n")
	if (adv = 2)
	{
		copy("{left 2}")
	}
	else
	{
		copy("{left}")
	}
	if (Clipboard = " ")
	{
		select("wp")
		cut()
		paste()
		sendinput {left}
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

p::
	; no diacritic
	detect_char(1)
return

y::
	sendinput {U+064E} ; fatha
	detect_char()
return

u::
	sendinput {U+064F} ; damma
	detect_char()
return

i::
	sendinput {U+0650} ; kasra
	detect_char()
return

+y::
	sendinput {U+064B} ; fathatan
	detect_char()
return

+u::
	sendinput {U+064C} ; dammatan
	detect_char()
return

+i::
	sendinput {U+064D} ; kasratan
	detect_char()
return

o::
	sendinput {U+0652} ; sukuun
	detect_char()
return

h::
	sendinput {U+0651} ; shadda
return

t::
	sendinput {U+0670} ; dagger
	detect_char()
return

g::
	sendinput {U+0671} ; wasla
	detect_char()
return

+g::
	sendinput {U+0622} ; maddah
	detect_char()
return

b::
	sendinput {U+0623} ; hamza_up
return

+b::
	sendinput {U+0625} ; hamza_dn
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
;	SendEvent {LWin down}{Space down}{Space up}{LWin up}
	Run, arabVowels.ahk
	ExitApp
return

!Space::
	ExitApp
return