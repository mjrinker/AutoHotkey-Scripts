#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Persistent
#SingleInstance force
#InstallKeybdHook
#HotKeyInterval 100
;#MaxHotkeysPerInterval 10000
;#NoTrayIcon

k := 0

Loop, 115
{
	Random, RandInt, 0, 114
	if(RandInt = 0) {
		NewChar%k% := "0"
		}
	else if(RandInt = 1) {
		NewChar%k% := "1"
		}
	else if(RandInt = 2) {
		NewChar%k% := "2"
		}
	else if(RandInt = 3) {
		NewChar%k% := "3"
		}
	else if(RandInt = 4) {
		NewChar%k% := "4"
		}
	else if(RandInt = 5) {
		NewChar%k% := "5"
		}
	else if(RandInt = 6) {
		NewChar%k% := "6"
		}
	else if(RandInt = 7) {
		NewChar%k% := "7"
		}
	else if(RandInt = 8) {
		NewChar%k% := "8"
		}
	else if(RandInt = 9) {
		NewChar%k% := "9"
		}
	else if(RandInt = 10) {
		NewChar%k% := "q"
		}
	else if(RandInt = 11) {
		NewChar%k% := "w"
		}
	else if(RandInt = 12) {
		NewChar%k% := "e"
		}
	else if(RandInt = 13) {
		NewChar%k% := "r"
		}
	else if(RandInt = 14) {
		NewChar%k% := "t"
		}
	else if(RandInt = 15) {
		NewChar%k% := "y"
		}
	else if(RandInt = 16) {
		NewChar%k% := "u"
		}
	else if(RandInt = 17) {
		NewChar%k% := "i"
		}
	else if(RandInt = 18) {
		NewChar%k% := "o"
		}
	else if(RandInt = 19) {
		NewChar%k% := "p"
		}
	else if(RandInt = 20) {
		NewChar%k% := "a"
		}
	else if(RandInt = 21) {
		NewChar%k% := "s"
		}
	else if(RandInt = 22) {
		NewChar%k% := "d"
		}
	else if(RandInt = 23) {
		NewChar%k% := "f"
		}
	else if(RandInt = 24) {
		NewChar%k% := "g"
		}
	else if(RandInt = 25) {
		NewChar%k% := "h"
		}
	else if(RandInt = 26) {
		NewChar%k% := "j"
		}
	else if(RandInt = 27) {
		NewChar%k% := "k"
		}
	else if(RandInt = 28) {
		NewChar%k% := "l"
		}
	else if(RandInt = 29) {
		NewChar%k% := "z"
		}
	else if(RandInt = 30) {
		NewChar%k% := "x"
		}
	else if(RandInt = 31) {
		NewChar%k% := "c"
		}
	else if(RandInt = 32) {
		NewChar%k% := "v"
		}
	else if(RandInt = 33) {
		NewChar%k% := "b"
		}
	else if(RandInt = 34) {
		NewChar%k% := "n"
		}
	else if(RandInt = 35) {
		NewChar%k% := "m"
		}
	else if(RandInt = 36) {
		NewChar%k% := "Q"
		}
	else if(RandInt = 37) {
		NewChar%k% := "W"
		}
	else if(RandInt = 38) {
		NewChar%k% := "E"
		}
	else if(RandInt = 39) {
		NewChar%k% := "R"
		}
	else if(RandInt = 40) {
		NewChar%k% := "T"
		}
	else if(RandInt = 41) {
		NewChar%k% := "Y"
		}
	else if(RandInt = 42) {
		NewChar%k% := "U"
		}
	else if(RandInt = 43) {
		NewChar%k% := "I"
		}
	else if(RandInt = 44) {
		NewChar%k% := "O"
		}
	else if(RandInt = 45) {
		NewChar%k% := "P"
		}
	else if(RandInt = 46) {
		NewChar%k% := "A"
		}
	else if(RandInt = 47) {
		NewChar%k% := "S"
		}
	else if(RandInt = 48) {
		NewChar%k% := "D"
		}
	else if(RandInt = 49) {
		NewChar%k% := "F"
		}
	else if(RandInt = 50) {
		NewChar%k% := "G"
		}
	else if(RandInt = 51) {
		NewChar%k% := "H"
		}
	else if(RandInt = 52) {
		NewChar%k% := "J"
		}
	else if(RandInt = 53) {
		NewChar%k% := "K"
		}
	else if(RandInt = 54) {
		NewChar%k% := "L"
		}
	else if(RandInt = 55) {
		NewChar%k% := "Z"
		}
	else if(RandInt = 56) {
		NewChar%k% := "X"
		}
	else if(RandInt = 57) {
		NewChar%k% := "C"
		}
	else if(RandInt = 58) {
		NewChar%k% := "V"
		}
	else if(RandInt = 59) {
		NewChar%k% := "B"
		}
	else if(RandInt = 60) {
		NewChar%k% := "N"
		}
	else if(RandInt = 61) {
		NewChar%k% := "M"
		}
	else if(RandInt = 62) {
		NewChar%k% := "0"
		}
	else if(RandInt = 63) {
		NewChar%k% := "1"
		}
	else if(RandInt = 64) {
		NewChar%k% := "2"
		}
	else if(RandInt = 65) {
		NewChar%k% := "3"
		}
	else if(RandInt = 66) {
		NewChar%k% := "4"
		}
	else if(RandInt = 67) {
		NewChar%k% := "5"
		}
	else if(RandInt = 68) {
		NewChar%k% := "6"
		}
	else if(RandInt = 69) {
		NewChar%k% := "7"
		}
	else if(RandInt = 70) {
		NewChar%k% := "8"
		}
	else if(RandInt = 71) {
		NewChar%k% := "9"
		}
	else if(RandInt = 72) {
		NewChar%k% := "``"
		}
	else if(RandInt = 73) {
		NewChar%k% := "~"
		}
	else if(RandInt = 74) {
		NewChar%k% := "{!}"
		}
	else if(RandInt = 75) {
		NewChar%k% := "@"
		}
	else if(RandInt = 76) {
		NewChar%k% := "{#}"
		}
	else if(RandInt = 77) {
		NewChar%k% := "$"
		}
	else if(RandInt = 78) {
		NewChar%k% := "`%"
		}
	else if(RandInt = 79) {
		NewChar%k% := "{^}"
		}
	else if(RandInt = 80) {
		NewChar%k% := "&"
		}
	else if(RandInt = 81) {
		NewChar%k% := "*"
		}
	else if(RandInt = 82) {
		NewChar%k% := "("
		}
	else if(RandInt = 83) {
		NewChar%k% := ")"
		}
	else if(RandInt = 84) {
		NewChar%k% := "-"
		}
	else if(RandInt = 85) {
		NewChar%k% := "_"
		}
	else if(RandInt = 86) {
		NewChar%k% := "{=}"
		}
	else if(RandInt = 87) {
		NewChar%k% := "{+}"
		}
	else if(RandInt = 88) {
		NewChar%k% := "["
		}
	else if(RandInt = 89) {
		NewChar%k% := "{{}"
		}
	else if(RandInt = 90) {
		NewChar%k% := "]"
		}
	else if(RandInt = 91) {
		NewChar%k% := "{}}"
		}
	else if(RandInt = 92) {
		NewChar%k% := "\"
		}
	else if(RandInt = 93) {
		NewChar%k% := "|"
		}
	else if(RandInt = 94) {
		NewChar%k% := ";"
		}
	else if(RandInt = 95) {
		NewChar%k% := ":"
		}
	else if(RandInt = 96) {
		NewChar%k% := "{Asc 044}"
		}
	else if(RandInt = 97) {
		NewChar%k% := "{Asc 034}"
		}
	else if(RandInt = 98) {
		NewChar%k% := ","
		}
	else if(RandInt = 99) {
		NewChar%k% := "<"
		}
	else if(RandInt = 100) {
		NewChar%k% := "."
		}
	else if(RandInt = 101) {
		NewChar%k% := ">"
		}
	else if(RandInt = 102) {
		NewChar%k% := "/"
		}
	else if(RandInt = 103) {
		NewChar%k% := "?"
		}
	else if(RandInt = 104) {
		NewChar%k% := "/"
		}
	else if(RandInt = 105) {
		NewChar%k% := "*"
		}
	else if(RandInt = 106) {
		NewChar%k% := "-"
		}
	else if(RandInt = 107) {
		NewChar%k% := "{+}"
		}
	else if(RandInt = 108) {
		NewChar%k% := "."
		}
	else if(RandInt = 109) {
		NewChar%k% := "{Space}"
		}
	else if(RandInt = 110) {
		NewChar%k% := "{Enter}"
		}
	else if(RandInt = 111) {
		NewChar%k% := "{Enter}"
		}
	else if(RandInt = 112) {
		NewChar%k% := "{Backspace}"
		}
	else if(RandInt = 113) {
		NewChar%k% := "{Tab}"
		}
	else if(RandInt = 114) {
		NewChar%k% := "{Delete}"
		}

		++k
}




$1::	
	SendInput %NewChar0%
	Return
$2::	
	SendInput %NewChar1%
	Return
$3::	
	SendInput %NewChar2%
	Return
$4::	
	SendInput %NewChar3%
	Return
$5::
	SendInput %NewChar4%
	Return
$6::
	SendInput %NewChar5%
	Return
$7::
	SendInput %NewChar6%
	Return
$8::
	SendInput %NewChar7%
	Return
$9::
	SendInput %NewChar8%
	Return
$0::
	SendInput %NewChar9%
	Return
$q::
	SendInput %NewChar10%
	Return
$w::
	SendInput %NewChar11%
	Return
$e::
	SendInput %NewChar12%
	Return
$r::
	SendInput %NewChar13%
	Return
$t::
	SendInput %NewChar14%
	Return
$y::
	SendInput %NewChar15%
	Return
$u::
	SendInput %NewChar16%
	Return
$i::
	SendInput %NewChar17%
	Return
$o::
	SendInput %NewChar18%
	Return
$p::
	SendInput %NewChar19%
	Return
$a::
	SendInput %NewChar20%
	Return
$s::
	SendInput %NewChar21%
	Return
$d::
	SendInput %NewChar22%
	Return
$f::
	SendInput %NewChar23%
	Return
$g::
	SendInput %NewChar24%
	Return
$h::
	SendInput %NewChar25%
	Return
$j::
	SendInput %NewChar26%
	Return
$k::
	SendInput %NewChar27%
	Return
$l::
	SendInput %NewChar28%
	Return
$z::
	SendInput %NewChar29%
	Return
$x::
	SendInput %NewChar30%
	Return
$c::
	SendInput %NewChar31%
	Return
$v::
	SendInput %NewChar32%
	Return
$b::
	SendInput %NewChar33%
	Return
$n::
	SendInput %NewChar34%
	Return
$m::
	SendInput %NewChar35%
	Return
$+q::	
	SendInput %NewChar36%
	Return
$+w::	
	SendInput %NewChar37%
	Return
$+e::	
	SendInput %NewChar38%
	Return
$+r::	
	SendInput %NewChar39%
	Return
$+t::	
	SendInput %NewChar40%
	Return
$+y::	
	SendInput %NewChar41%
	Return
$+u::	
	SendInput %NewChar42%
	Return
$+i::	
	SendInput %NewChar43%
	Return
$+o::	
	SendInput %NewChar44%
	Return
$+p::	
	SendInput %NewChar45%
	Return
$+a::	
	SendInput %NewChar46%
	Return
$+s::	
	SendInput %NewChar47%
	Return
$+d::	
	SendInput %NewChar48%
	Return
$+f::	
	SendInput %NewChar49%
	Return
$+g::	
	SendInput %NewChar50%
	Return
$+h::	
	SendInput %NewChar51%
	Return
$+j::	
	SendInput %NewChar52%
	Return
$+k::	
	SendInput %NewChar53%
	Return
$+l::	
	SendInput %NewChar54%
	Return
$+z::	
	SendInput %NewChar55%
	Return
$+x::	
	SendInput %NewChar56%
	Return
$+c::	
	SendInput %NewChar57%
	Return
$+v::	
	SendInput %NewChar58%
	Return
$+b::	
	SendInput %NewChar59%
	Return
$+n::	
	SendInput %NewChar60%
	Return
$+m::	
	SendInput %NewChar61%
	Return
$Numpad0::	
	SendInput %NewChar62%
	Return
$Numpad1::	
	SendInput %NewChar63%
	Return
$Numpad2::	
	SendInput %NewChar64%
	Return
$Numpad3::	
	SendInput %NewChar65%
	Return
$Numpad4::	
	SendInput %NewChar66%
	Return
$Numpad5::	
	SendInput %NewChar67%
	Return
$Numpad6::	
	SendInput %NewChar68%
	Return
$Numpad7::	
	SendInput %NewChar69%
	Return
$Numpad8::	
	SendInput %NewChar70%
	Return
$Numpad9::	
	SendInput %NewChar71%
	Return
$`::
	SendInput %NewChar72%
	Return
$~::
	SendInput %NewChar73%
	Return
$!::
	SendInput %NewChar74%
	Return
$@::
	SendInput %NewChar75%
	Return
$#::
	SendInput %NewChar76%
	Return
$$::
	SendInput %NewChar77%
	Return
$%::
	SendInput %NewChar78%
	Return
$^::
	SendInput %NewChar79%
	Return
$&::
	SendInput %NewChar80%
	Return
$*::
	SendInput %NewChar81%
	Return
$(::
	SendInput %NewChar82%
	Return
$)::
	SendInput %NewChar83%
	Return
$-::
	SendInput %NewChar84%
	Return
$_::
	SendInput %NewChar85%
	Return
$=::
	SendInput %NewChar86%
	Return
$+::
	SendInput %NewChar87%
	Return
$[::
	SendInput %NewChar88%
	Return
${::
	SendInput %NewChar89%
	Return
$]::
	SendInput %NewChar90%
	Return
$}::
	SendInput %NewChar91%
	Return
$\::
	SendInput %NewChar92%
	Return
$|::
	SendInput %NewChar93%
	Return
$`;::	
	SendInput %NewChar94%
	Return
$:::
	SendInput %NewChar95%
	Return
$'::
	SendInput %NewChar96%
	Return
$"::	
	SendInput %NewChar97%
	Return
$,::
	SendInput %NewChar98%
	Return
$<::
	SendInput %NewChar99%
	Return
$.::
	SendInput %NewChar100%
	Return
$>::
	SendInput %NewChar101%
	Return
$/::
	SendInput %NewChar102%
	Return
$?::
	SendInput %NewChar103%
	Return
$NumpadDiv::	
	SendInput %NewChar104%
	Return
$NumpadMult::	
	SendInput %NewChar105%
		Return
$NumpadSub::	
	SendInput %NewChar106%
	Return
$NumpadAdd::	
	SendInput %NewChar107%
	Return
$NumpadDot::	
	SendInput %NewChar108%
	Return
$Space::
	SendInput %NewChar109%
	Return
$Enter::
	SendInput %NewChar110%
	Return
$NumpadEnter::	
	SendInput %NewChar111%
	Return
$Backspace::	
	SendInput %NewChar112%
	Return
$Tab::
	SendInput %NewChar113%
	Return
$Delete::	
	SendInput %NewChar114%
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