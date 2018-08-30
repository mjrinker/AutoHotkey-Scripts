#NoEnv	
SendMode Input	
SetWorkingDir %A_ScriptDir%	
#Persistent	
#SingleInstance force	
#InstallKeybdHook	
#HotKeyInterval 100	
;#NoTrayIcon	
	
;	Hangul
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
	SendInput ㅂ
	Return
$w::	
	SendInput ㅈ
	Return
$e::	
	SendInput ㄷ
	Return
$r::	
	SendInput ㄱ
	Return
$t::	
	SendInput ㅅ
	Return
$y::	
	SendInput ㅛ
	Return
$u::	
	SendInput ㅕ
	Return
$i::	
	SendInput ㅑ
	Return
$o::	
	SendInput ㅐ
	Return
$p::	
	SendInput ㅔ
	Return
$a::	
	SendInput ㅁ
	Return
$s::	
	SendInput ㄴ
	Return
$d::	
	SendInput ㅇ
	Return
$f::	
	SendInput ㄹ
	Return
$g::	
	SendInput ㅎ
	Return
$h::	
	SendInput ㅗ
	Return
$j::	
	SendInput ㅓ
	Return
$k::	
	SendInput ㅏ
	Return
$l::	
	SendInput ㅣ
	Return
$z::	
	SendInput ㅋ
	Return
$x::	
	SendInput ㅌ
	Return
$c::	
	SendInput ㅊ
	Return
$v::	
	SendInput ㅍ
	Return
$b::	
	SendInput ㅠ
	Return
$n::	
	SendInput ㅜ
	Return
$m::	
	SendInput ㅡ
	Return
$+q::	
	SendInput ㅃ
	Return
$+w::	
	SendInput ㅉ
	Return
$+e::	
	SendInput ㄸ
	Return
$+r::	
	SendInput ㄲ
	Return
$+t::	
	SendInput ㅆ
	Return
$+y::	
	SendInput ㅛ
	Return
$+u::	
	SendInput ㅕ
	Return
$+i::	
	SendInput ㅑ
	Return
$+o::	
	SendInput ㅒ
	Return
$+p::	
	SendInput ㅖ
	Return
$+a::	
	SendInput ㅁ
	Return
$+s::	
	SendInput ㄴ
	Return
$+d::	
	SendInput ㅇ
	Return
$+f::	
	SendInput ㄹ
	Return
$+g::	
	SendInput ㅎ
	Return
$+h::	
	SendInput ㅗ
	Return
$+j::	
	SendInput ㅓ
	Return
$+k::	
	SendInput ㅏ
	Return
$+l::	
	SendInput ㅣ
	Return
$+z::	
	SendInput ㅋ
	Return
$+x::	
	SendInput ㅌ
	Return
$+c::	
	SendInput ㅊ
	Return
$+v::	
	SendInput ㅍ
	Return
$+b::	
	SendInput ㅠ
	Return
$+n::	
	SendInput ㅜ
	Return
$+m::	
	SendInput ㅡ
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
$NumLock::	
	if GetKeyState("NumLock", "T") = 1
	 {
	   SetNumLockState, off
	 }
	else if GetKeyState("NumLock", "F") = 0
	 {
	   SetNumLockState, on
	 }
	 Return