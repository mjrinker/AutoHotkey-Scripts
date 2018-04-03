#NoEnv	
SendMode Input	
SetWorkingDir %A_ScriptDir%	
#Persistent	
#SingleInstance force	
#InstallKeybdHook	
#HotKeyInterval 100	
#NoTrayIcon	
	
;	Telephony
$1::	
	SendInput One
	Return
$2::	
	SendInput Two
	Return
$3::	
	SendInput Three
	Return
$4::	
	SendInput Four
	Return
$5::	
	SendInput Five
	Return
$6::	
	SendInput Six
	Return
$7::	
	SendInput Seven
	Return
$8::	
	SendInput Eight
	Return
$9::	
	SendInput Nine
	Return
$0::	
	SendInput Zero
	Return
$q::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput QUEBEC
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput quebec
	}
	Return
$w::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput WHISKEY
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput whiskey
	}
	Return
$e::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput ECHO
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput echo
	}
	Return
$r::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput ROMEO
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput romeo
	}
	Return
$t::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput TANGO
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput tango
	}
	Return
$y::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput YANKEE
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput yankee
	}
	Return
$u::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput UNIFORM
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput uniform
	}
	Return
$i::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput INDIA
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput india
	}
	Return
$o::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput OSCAR
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput oscar
	}
	Return
$p::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput PAPA
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput papa
	}
	Return
$a::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput ALPHA
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput alpha
	}
	Return
$s::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput SIERRA
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput sierra
	}
	Return
$d::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput DELTA
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput delta
	}
	Return
$f::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput FOXTROT
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput foxtrot
	}
	Return
$g::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput GOLF
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput golf
	}
	Return
$h::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput HOTEL
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput hotel
	}
	Return
$j::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput JULIET
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput juliet
	}
	Return
$k::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput KILO
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput kilo
	}
	Return
$l::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput LIMA
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput lima
	}
	Return
$z::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput ZULU
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput zulu
	}
	Return
$x::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput X-RAY
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput x-ray
	}
	Return
$c::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput CHARLIE
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput charlie
	}
	Return
$v::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput VICTOR
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput victor
	}
	Return
$b::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput BRAVO
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput bravo
	}
	Return
$n::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput NOVEMBER
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput november
	}
	Return
$m::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput MIKE
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput mike
	}
	Return
$+q::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput quebec
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput QUEBEC
	}
	Return
$+w::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput whiskey
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput WHISKEY
	}
	Return
$+e::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput echo
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput ECHO
	}
	Return
$+r::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput romeo
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput ROMEO
	}
	Return
$+t::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput tango
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput TANGO
	}
	Return
$+y::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput yankee
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput YANKEE
	}
	Return
$+u::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput uniform
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput UNIFORM
	}
	Return
$+i::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput india
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput INDIA
	}
	Return
$+o::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput oscar
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput OSCAR
	}
	Return
$+p::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput papa
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput PAPA
	}
	Return
$+a::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput alpha
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput ALPHA
	}
	Return
$+s::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput sierra
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput SIERRA
	}
	Return
$+d::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput delta
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput DELTA
	}
	Return
$+f::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput foxtrot
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput FOXTROT
	}
	Return
$+g::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput golf
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput GOLF
	}
	Return
$+h::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput hotel
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput HOTEL
	}
	Return
$+j::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput juliet
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput JULIET
	}
	Return
$+k::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput kilo
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput KILO
	}
	Return
$+l::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput lima
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput LIMA
	}
	Return
$+z::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput zulu
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput ZULU
	}
	Return
$+x::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput x-ray
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput X-RAY
	}
	Return
$+c::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput charlie
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput CHARLIE
	}
	Return
$+v::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput victor
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput VICTOR
	}
	Return
$+b::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput bravo
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput BRAVO
	}
	Return
$+n::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput november
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput NOVEMBER
	}
	Return
$+m::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput mike
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput MIKE
	}
	Return
$Numpad0::	
	SendInput Zero
	Return
$Numpad1::	
	SendInput One
	Return
$Numpad2::	
	SendInput Two
	Return
$Numpad3::	
	SendInput Three
	Return
$Numpad4::	
	SendInput Four
	Return
$Numpad5::	
	SendInput Five
	Return
$Numpad6::	
	SendInput Six
	Return
$Numpad7::	
	SendInput Seven
	Return
$Numpad8::	
	SendInput Eight
	Return
$Numpad9::	
	SendInput Nine
	Return
$`::	
	SendInput Accent
	Return
$~::	
	SendInput Tilda
	Return
$!::	
	SendInput Exclamation
	Return
$@::	
	SendInput AT
	Return
$#::	
	SendInput Pound
	Return
$$::	
	SendInput Dollar
	Return
$%::	
	SendInput Percent
	Return
$^::	
	SendInput Carrot
	Return
$&::	
	SendInput Ampersand
	Return
$*::	
	SendInput Asterisk
	Return
$(::	
	SendInput Parenthesis
	Return
$)::	
	SendInput Parenthesis
	Return
$-::	
	SendInput Dash
	Return
$_::	
	SendInput Underscore
	Return
$=::	
	SendInput Equals
	Return
$+::	
	SendInput Plus
	Return
$[::	
	SendInput Square Bracket
	Return
${::	
	SendInput Curly Bracket
	Return
$]::	
	SendInput Square Bracket
	Return
$}::	
	SendInput Curly Bracket
	Return
$\::	
	SendInput Backslash
	Return
$|::	
	SendInput Vertical Line
	Return
$`;::	
	SendInput Semi-colon
	Return
$:::	
	SendInput Colon
	Return
$'::	
	SendInput Apostrophe
	Return
$"::	
	SendInput Quotation
	Return
$,::	
	SendInput Comma
	Return
$<::	
	SendInput Less than
	Return
$.::	
	SendInput Stop
	Return
$>::	
	SendInput Greater than
	Return
$/::	
	SendInput Slash
	Return
$?::	
	SendInput Question
	Return
$NumpadDiv::	
	SendInput Slash
	Return
$NumpadMult::	
	SendInput Asterisk
	Return
$NumpadSub::	
	SendInput Dash
	Return
$NumpadAdd::	
	SendInput Plus
	Return
$NumpadDot::	
	SendInput Dot
	Return
$Space::	
	SendInput {Space}
	Return
$Enter::	
	SendInput {Enter}
	Return
$NumpadEnter::	
	SendInput {Enter}
	Return
$Backspace::	
	SendInput {Backspace}
	Return
$Tab::	
	SendInput {Tab}
	Return
$Delete::	
	SendInput {Delete}
	Return
$CapsLock::	
	if GetKeyState("CapsLock", "T") = 1
	 {
	   SetCapsLockState, off
	 }
	else if GetKeyState("CapsLock", "F") = 0
	 {
	   SetCapsLockState, on
	 }
	 Return