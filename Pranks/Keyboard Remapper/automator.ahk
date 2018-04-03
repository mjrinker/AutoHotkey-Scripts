#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force
;#NoTrayIcon

iftype = else if
i = 14
InputEnd = t
NewCharVal = }

^+j::

SendInput %iftype%(RandInt = %i%) {{}{Enter}{Tab}NewChar{%InputEnd%} = {%NewCharVal%}{Enter}{Tab}{}}{Enter}

return

^+u::

	J = 0
	Loop:
		if (J >= 115) {
		Return
		}

if (J = 0) {	
	InputEnd = 0
	}	
else if (J = 1) {	
	InputEnd = 1
	}	
else if (J = 2) {	
	InputEnd = 2
	}	
else if (J = 3) {	
	InputEnd = 3
	}	
else if (J = 4) {	
	InputEnd = 4
	}	
else if (J = 5) {	
	InputEnd = 5
	}	
else if (J = 6) {	
	InputEnd = 6
	}	
else if (J = 7) {	
	InputEnd = 7
	}	
else if (J = 8) {	
	InputEnd = 8
	}	
else if (J = 9) {	
	InputEnd = 9
	}	
else if (J = 10) {	
	InputEnd = q
	}	
else if (J = 11) {	
	InputEnd = w
	}	
else if (J = 12) {	
	InputEnd = e
	}	
else if (J = 13) {	
	InputEnd = r
	}	
else if (J = 14) {	
	InputEnd = t
	}	
else if (J = 15) {	
	InputEnd = y
	}	
else if (J = 16) {	
	InputEnd = u
	}	
else if (J = 17) {	
	InputEnd = i
	}	
else if (J = 18) {	
	InputEnd = o
	}	
else if (J = 19) {	
	InputEnd = p
	}	
else if (J = 20) {	
	InputEnd = a
	}	
else if (J = 21) {	
	InputEnd = s
	}	
else if (J = 22) {	
	InputEnd = d
	}	
else if (J = 23) {	
	InputEnd = f
	}	
else if (J = 24) {	
	InputEnd = g
	}	
else if (J = 25) {	
	InputEnd = h
	}	
else if (J = 26) {	
	InputEnd = j
	}	
else if (J = 27) {	
	InputEnd = k
	}	
else if (J = 28) {	
	InputEnd = l
	}	
else if (J = 29) {	
	InputEnd = z
	}	
else if (J = 30) {	
	InputEnd = x
	}	
else if (J = 31) {	
	InputEnd = c
	}	
else if (J = 32) {	
	InputEnd = v
	}	
else if (J = 33) {	
	InputEnd = b
	}	
else if (J = 34) {	
	InputEnd = n
	}	
else if (J = 35) {	
	InputEnd = m
	}	
else if (J = 36) {	
	InputEnd = Q
	}	
else if (J = 37) {	
	InputEnd = W
	}	
else if (J = 38) {	
	InputEnd = E
	}	
else if (J = 39) {	
	InputEnd = R
	}	
else if (J = 40) {	
	InputEnd = T
	}	
else if (J = 41) {	
	InputEnd = Y
	}	
else if (J = 42) {	
	InputEnd = U
	}	
else if (J = 43) {	
	InputEnd = I
	}	
else if (J = 44) {	
	InputEnd = O
	}	
else if (J = 45) {	
	InputEnd = P
	}	
else if (J = 46) {	
	InputEnd = A
	}	
else if (J = 47) {	
	InputEnd = S
	}	
else if (J = 48) {	
	InputEnd = D
	}	
else if (J = 49) {	
	InputEnd = F
	}	
else if (J = 50) {	
	InputEnd = G
	}	
else if (J = 51) {	
	InputEnd = H
	}	
else if (J = 52) {	
	InputEnd = J
	}	
else if (J = 53) {	
	InputEnd = K
	}	
else if (J = 54) {	
	InputEnd = L
	}	
else if (J = 55) {	
	InputEnd = Z
	}	
else if (J = 56) {	
	InputEnd = X
	}	
else if (J = 57) {	
	InputEnd = C
	}	
else if (J = 58) {	
	InputEnd = V
	}	
else if (J = 59) {	
	InputEnd = B
	}	
else if (J = 60) {	
	InputEnd = N
	}	
else if (J = 61) {	
	InputEnd = M
	}	
else if (J = 62) {	
	InputEnd = 0
	}	
else if (J = 63) {	
	InputEnd = 1
	}	
else if (J = 64) {	
	InputEnd = 2
	}	
else if (J = 65) {	
	InputEnd = 3
	}	
else if (J = 66) {	
	InputEnd = 4
	}	
else if (J = 67) {	
	InputEnd = 5
	}	
else if (J = 68) {	
	InputEnd = 6
	}	
else if (J = 69) {	
	InputEnd = 7
	}	
else if (J = 70) {	
	InputEnd = 8
	}	
else if (J = 71) {	
	InputEnd = 9
	}	
else if (J = 72) {	
	InputEnd = ``
	}	
else if (J = 73) {	
	InputEnd = ~
	}	
else if (J = 74) {	
	InputEnd = !
	}	
else if (J = 75) {	
	InputEnd = @
	}	
else if (J = 76) {	
	InputEnd = #
	}	
else if (J = 77) {	
	InputEnd = $
	}	
else if (J = 78) {	
	InputEnd = `%
	}	
else if (J = 79) {	
	InputEnd = ^
	}	
else if (J = 80) {	
	InputEnd = &
	}	
else if (J = 81) {	
	InputEnd = *
	}	
else if (J = 82) {	
	InputEnd = (
	}	
else if (J = 83) {	
	InputEnd = )
	}	
else if (J = 84) {	
	InputEnd = -
	}	
else if (J = 85) {	
	InputEnd = _
	}	
else if (J = 86) {	
	InputEnd = =
	}	
else if (J = 87) {	
	InputEnd = +
	}	
else if (J = 88) {	
	InputEnd = [
	}	
else if (J = 89) {	
	InputEnd = 
	}	
else if (J = 90) {	
	InputEnd = ]
	}	
else if (J = 91) {	
	InputEnd = 
	}	
else if (J = 92) {	
	InputEnd = \
	}	
else if (J = 93) {	
	InputEnd = |
	}	
else if (J = 94) {	
	InputEnd = `;
	}	
else if (J = 95) {	
	InputEnd = :
	}	
else if (J = 96) {	
	InputEnd = '
	}	
else if (J = 97) {	
	InputEnd = '"
	}	
else if (J = 98) {	
	InputEnd = `,
	}	
else if (J = 99) {	
	InputEnd = <
	}	
else if (J = 100) {	
	InputEnd = .
	}	
else if (J = 101) {	
	InputEnd = >
	}	
else if (J = 102) {	
	InputEnd = /
	}	
else if (J = 103) {	
	InputEnd = ?
	}	
else if (J = 104) {	
	InputEnd = /
	}	
else if (J = 105) {	
	InputEnd = *
	}	
else if (J = 106) {	
	InputEnd = -
	}	
else if (J = 107) {	
	InputEnd = +
	}	
else if (J = 108) {	
	InputEnd = .
	}	
else if (J = 109) {	
	InputEnd = Space
	}	
else if (J = 110) {	
	InputEnd = Enter
	}	
else if (J = 111) {	
	InputEnd = Enter
	}	
else if (J = 112) {	
	InputEnd = Backspace
	}	
else if (J = 113) {	
	InputEnd = Tab
	}	
else if (J = 114) {	
	InputEnd = Delete
	}

		Sleep 250
		SendInput {ctrl down}
		Sleep 250
		SendInput {h down}
		Sleep 250
		SendInput {h up}
		Sleep 250
		SendInput {ctrl up}

		Sleep 250

		SendInput NewChar
		Sleep 250
		SendInput {Tab}
		Sleep 250
		SendInput NewChar
		Sleep 250
		SendInput %InputEnd%
		Sleep 250
		SendInput {Tab}
		Sleep 250
		SendInput {Tab}
		Sleep 250
		SendInput {Tab}
		Sleep 250
		SendInput {Tab}
		Sleep 250
		SendInput {Enter}

		Sleep 250

		SendInput {ctrl down}
		Sleep 250
		SendInput {a down}
		Sleep 250
		SendInput {a up}
		Sleep 250
		SendInput {ctrl up}

		Sleep 250

		SendInput {ctrl down}
		Sleep 250
		SendInput {v down}
		Sleep 250
		SendInput {v up}
		Sleep 250
		SendInput {ctrl up}

		Sleep 250

		SendInput {ctrl down}
		Sleep 250
		SendInput {alt down}
		Sleep 250
		SendInput {Tab down}
		Sleep 250
		SendInput {Tab up}
		Sleep 250
		SendInput {alt up}
		Sleep 250
		SendInput {ctrl up}
		Sleep 250
		SendInput {Enter}
		
		Sleep 250		

		SendInput {ctrl down}
		Sleep 250
		SendInput {c down}
		Sleep 250
		SendInput {c up}
		Sleep 250
		SendInput {ctrl up}

		Sleep 250

		SendInput {ctrl down}
		Sleep 250
		SendInput {alt down}
		Sleep 250
		SendInput {Tab down}
		Sleep 250
		SendInput {Tab up}
		Sleep 250
		SendInput {alt up}
		Sleep 250
		SendInput {ctrl up}
		Sleep 250
		SendInput {Enter}

		Sleep 250
		SendInput {ctrl down}
		Sleep 250
		SendInput {h down}
		Sleep 250
		SendInput {h up}
		Sleep 250
		SendInput {ctrl up}

		Sleep 250

		SendInput NewChar
		Sleep 250
		SendInput %InputEnd%
		Sleep 250
		SendInput {Tab}
		Sleep 250
		SendInput NewChar
		Sleep 250
		SendInput {Tab}
		Sleep 250
		SendInput {Tab}
		Sleep 250
		SendInput {Tab}
		Sleep 250
		SendInput {Tab}
		Sleep 250
		SendInput {Enter}
	
		Sleep 250

		J += 1

		Goto Loop

^+Del::
	ExitApp
Return
