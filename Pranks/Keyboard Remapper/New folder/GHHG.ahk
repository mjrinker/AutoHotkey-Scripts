#NoEnv	
SendMode Input	
SetWorkingDir %A_ScriptDir%	
#Persistent	
#SingleInstance force	
#InstallKeybdHook	
#HotKeyInterval 100	
#NoTrayIcon	
	
;	G>H, H>G
$1::	
	SendInput 1
	Return
$2::	
	SendInput 2
	Return
$3::	
	SendInput 3
	Return
$4::	
	SendInput 4
	Return
$5::	
	SendInput 5
	Return
$6::	
	SendInput 6
	Return
$7::	
	SendInput 7
	Return
$8::	
	SendInput 8
	Return
$9::	
	SendInput 9
	Return
$0::	
	SendInput 0
	Return
$q::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput Q
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput q
	}
	Return
$w::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput W
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput w
	}
	Return
$e::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput E
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput e
	}
	Return
$r::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput R
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput r
	}
	Return
$t::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput T
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput t
	}
	Return
$y::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput Y
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput y
	}
	Return
$u::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput U
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput u
	}
	Return
$i::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput I
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput i
	}
	Return
$o::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput O
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput o
	}
	Return
$p::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput P
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput p
	}
	Return
$a::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput A
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput a
	}
	Return
$s::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput S
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput s
	}
	Return
$d::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput D
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput d
	}
	Return
$f::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput F
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput f
	}
	Return
$g::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput H
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput h
	}
	Return
$h::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput G
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput g
	}
	Return
$j::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput J
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput j
	}
	Return
$k::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput K
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput k
	}
	Return
$l::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput L
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput l
	}
	Return
$z::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput Z
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput z
	}
	Return
$x::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput X
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput x
	}
	Return
$c::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput C
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput c
	}
	Return
$v::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput V
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput v
	}
	Return
$b::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput B
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput b
	}
	Return
$n::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput N
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput n
	}
	Return
$m::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput M
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput m
	}
	Return
$+q::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput q
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput Q
	}
	Return
$+w::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput w
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput W
	}
	Return
$+e::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput e
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput E
	}
	Return
$+r::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput r
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput R
	}
	Return
$+t::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput t
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput T
	}
	Return
$+y::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput y
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput Y
	}
	Return
$+u::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput u
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput U
	}
	Return
$+i::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput i
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput I
	}
	Return
$+o::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput o
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput O
	}
	Return
$+p::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput p
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput P
	}
	Return
$+a::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput a
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput A
	}
	Return
$+s::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput s
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput S
	}
	Return
$+d::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput d
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput D
	}
	Return
$+f::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput f
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput F
	}
	Return
$+g::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput h
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput G
	}
	Return
$+h::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput g
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput G
	}
	Return
$+j::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput j
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput J
	}
	Return
$+k::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput k
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput K
	}
	Return
$+l::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput l
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput L
	}
	Return
$+z::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput z
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput Z
	}
	Return
$+x::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput x
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput X
	}
	Return
$+c::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput c
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput C
	}
	Return
$+v::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput v
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput V
	}
	Return
$+b::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput b
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput B
	}
	Return
$+n::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput n
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput N
	}
	Return
$+m::	
	if GetKeyState("CapsLock", "T") = 1
	{
		SendInput m
	}
	else if GetKeyState("CapsLock", "F") = 0
	{
		SendInput M
	}
	Return
$Numpad0::	
	SendInput 0
	Return
$Numpad1::	
	SendInput 1
	Return
$Numpad2::	
	SendInput 2
	Return
$Numpad3::	
	SendInput 3
	Return
$Numpad4::	
	SendInput 4
	Return
$Numpad5::	
	SendInput 5
	Return
$Numpad6::	
	SendInput 6
	Return
$Numpad7::	
	SendInput 7
	Return
$Numpad8::	
	SendInput 8
	Return
$Numpad9::	
	SendInput 9
	Return
$`::	
	SendInput ``
	Return
$~::	
	SendInput ~
	Return
$!::	
	SendInput {!}
	Return
$@::	
	SendInput @
	Return
$#::	
	SendInput {#}
	Return
$$::	
	SendInput $
	Return
$%::	
	SendInput `%
	Return
$^::	
	SendInput {^}
	Return
$&::	
	SendInput &
	Return
$*::	
	SendInput *
	Return
$(::	
	SendInput (
	Return
$)::	
	SendInput )
	Return
$-::	
	SendInput -
	Return
$_::	
	SendInput _
	Return
$=::	
	SendInput {=}
	Return
$+::	
	SendInput {+}
	Return
$[::	
	SendInput [
	Return
${::	
	SendInput {{}
	Return
$]::	
	SendInput ]
	Return
$}::	
	SendInput {}}
	Return
$\::	
	SendInput \
	Return
$|::	
	SendInput |
	Return
$`;::	
	SendInput `;
	Return
$:::	
	SendInput `:
	Return
$'::	
	SendInput '
	Return
$"::	
	SendInput "
	Return
$,::	
	SendInput `,
	Return
$<::	
	SendInput <
	Return
$.::	
	SendInput .
	Return
$>::	
	SendInput >
	Return
$/::	
	SendInput /
	Return
$?::	
	SendInput ?
	Return
$NumpadDiv::	
	SendInput /
	Return
$NumpadMult::	
	SendInput *
	Return
$NumpadSub::	
	SendInput -
	Return
$NumpadAdd::	
	SendInput {+}
	Return
$NumpadDot::	
	SendInput .
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
