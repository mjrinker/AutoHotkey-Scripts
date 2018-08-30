#NoEnv	
SendMode Input	
SetWorkingDir %A_ScriptDir%	
#Persistent	
#SingleInstance force	
#InstallKeybdHook	
#HotKeyInterval 100	
;#NoTrayIcon	
	
;	Doubles
$1::	
	SendInput 11
	Return
$2::	
	SendInput 22
	Return
$3::	
	SendInput 33
	Return
$4::	
	SendInput 44
	Return
$5::	
	SendInput 55
	Return
$6::	
	SendInput 66
	Return
$7::	
	SendInput 77
	Return
$8::	
	SendInput 88
	Return
$9::	
	SendInput 99
	Return
$0::	
	SendInput 00
	Return
$q::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput QQ
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput qq
	}
	Return
$w::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput WW
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput ww
	}
	Return
$e::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput EE
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput ee
	}
	Return
$r::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput RR
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput rr
	}
	Return
$t::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput TT
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput tt
	}
	Return
$y::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput YY
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput yy
	}
	Return
$u::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput UU
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput uu
	}
	Return
$i::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput II
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput ii
	}
	Return
$o::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput OO
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput oo
	}
	Return
$p::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput PP
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput pp
	}
	Return
$a::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput AA
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput aa
	}
	Return
$s::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput SS
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput ss
	}
	Return
$d::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput DD
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput dd
	}
	Return
$f::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput FF
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput ff
	}
	Return
$g::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput GG
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput gg
	}
	Return
$h::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput HH
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput hh
	}
	Return
$j::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput JJ
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput jj
	}
	Return
$k::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput KK
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput kk
	}
	Return
$l::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput LL
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput ll
	}
	Return
$z::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput ZZ
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput zz
	}
	Return
$x::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput XX
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput xx
	}
	Return
$c::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput CC
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput cc
	}
	Return
$v::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput VV
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput vv
	}
	Return
$b::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput BB
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput bb
	}
	Return
$n::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput NN
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput nn
	}
	Return
$m::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput MM
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput mm
	}
	Return
$+q::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput qq
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput QQ
	}
	Return
$+w::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput ww
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput WW
	}
	Return
$+e::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput ee
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput EE
	}
	Return
$+r::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput rr
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput RR
	}
	Return
$+t::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput tt
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput TT
	}
	Return
$+y::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput yy
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput YY
	}
	Return
$+u::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput uu
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput UU
	}
	Return
$+i::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput ii
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput II
	}
	Return
$+o::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput oo
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput OO
	}
	Return
$+p::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput pp
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput PP
	}
	Return
$+a::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput aa
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput AA
	}
	Return
$+s::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput ss
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput SS
	}
	Return
$+d::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput dd
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput DD
	}
	Return
$+f::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput ff
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput FF
	}
	Return
$+g::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput gg
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput GG
	}
	Return
$+h::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput hh
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput HH
	}
	Return
$+j::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput jj
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput JJ
	}
	Return
$+k::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput kk
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput KK
	}
	Return
$+l::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput ll
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput LL
	}
	Return
$+z::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput zz
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput ZZ
	}
	Return
$+x::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput xx
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput XX
	}
	Return
$+c::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput cc
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput CC
	}
	Return
$+v::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput vv
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput VV
	}
	Return
$+b::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput bb
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput BB
	}
	Return
$+n::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput nn
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput NN
	}
	Return
$+m::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput mm
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput MM
	}
	Return
$Numpad0::	
	SendInput 00
	Return
$Numpad1::	
	SendInput 11
	Return
$Numpad2::	
	SendInput 22
	Return
$Numpad3::	
	SendInput 33
	Return
$Numpad4::	
	SendInput 44
	Return
$Numpad5::	
	SendInput 55
	Return
$Numpad6::	
	SendInput 66
	Return
$Numpad7::	
	SendInput 77
	Return
$Numpad8::	
	SendInput 88
	Return
$Numpad9::	
	SendInput 99
	Return
$`::	
	SendInput ```
	Return
$~::	
	SendInput ~~
	Return
$!::	
	SendInput {!!}
	Return
$@::	
	SendInput @@
	Return
$#::	
	SendInput {#}#
	Return
$$::	
	SendInput $$
	Return
$%::	
	SendInput `%`%
	Return
$^::	
	SendInput {^^}
	Return
$&::	
	SendInput &&
	Return
$*::	
	SendInput **
	Return
$(::	
	SendInput ((
	Return
$)::	
	SendInput ))
	Return
$-::	
	SendInput --
	Return
$_::	
	SendInput __
	Return
$=::	
	SendInput {==}
	Return
$+::	
	SendInput {++}
	Return
$[::	
	SendInput [[
	Return
${::	
	SendInput {{{}
	Return
$]::	
	SendInput ]]
	Return
$}::	
	SendInput {}}}
	Return
$\::	
	SendInput \\
	Return
$|::	
	SendInput ||
	Return
$`;::	
	SendInput `;;
	Return
$:::	
	SendInput `::
	Return
$'::	
	SendInput ''
	Return
$"::	
	SendInput ""
	Return
$,::	
	SendInput `,,
	Return
$<::	
	SendInput <<
	Return
$.::	
	SendInput ..
	Return
$>::	
	SendInput >>
	Return
$/::	
	SendInput //
	Return
$?::	
	SendInput ??
	Return
$NumpadDiv::	
	SendInput //
	Return
$NumpadMult::	
	SendInput **
	Return
$NumpadSub::	
	SendInput --
	Return
$NumpadAdd::	
	SendInput {++}
	Return
$NumpadDot::	
	SendInput ..
	Return
$Space::	
	SendInput {Space}{Space}
	Return
$Enter::	
	SendInput {Enter}{Enter}
	Return
$NumpadEnter::	
	SendInput {Enter}{Enter}
	Return
$Backspace::	
	SendInput {Backspace}{Backspace}
	Return
$Tab::	
	SendInput {Tab}{Tab}
	Return
$Delete::	
	SendInput {Delete}{Delete}
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