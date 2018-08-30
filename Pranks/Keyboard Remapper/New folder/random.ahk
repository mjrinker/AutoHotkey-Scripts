#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force
#NoTrayIcon

NewChar = string

g::
goto, Keys
return

h::
goto, Keys
return

Keys:	
Random, RandInt, 0, 114
if (RandInt = 0) {	
	NewChar = 0
	}	
else if (RandInt = 1) {	
	NewChar = 1
	}	
else if (RandInt = 2) {	
	NewChar = 2
	}	
else if (RandInt = 3) {	
	NewChar = 3
	}	
else if (RandInt = 4) {	
	NewChar = 4
	}	
else if (RandInt = 5) {	
	NewChar = 5
	}	
else if (RandInt = 6) {	
	NewChar = 6
	}	
else if (RandInt = 7) {	
	NewChar = 7
	}	
else if (RandInt = 8) {	
	NewChar = 8
	}	
else if (RandInt = 9) {	
	NewChar = 9
	}	
else if (RandInt = 10) {	
	NewChar = q
	}	
else if (RandInt = 11) {	
	NewChar = w
	}	
else if (RandInt = 12) {	
	NewChar = e
	}	
else if (RandInt = 13) {	
	NewChar = r
	}	
else if (RandInt = 14) {	
	NewChar = t
	}	
else if (RandInt = 15) {	
	NewChar = y
	}	
else if (RandInt = 16) {	
	NewChar = u
	}	
else if (RandInt = 17) {	
	NewChar = i
	}	
else if (RandInt = 18) {	
	NewChar = o
	}	
else if (RandInt = 19) {	
	NewChar = p
	}	
else if (RandInt = 20) {	
	NewChar = a
	}	
else if (RandInt = 21) {	
	NewChar = s
	}	
else if (RandInt = 22) {	
	NewChar = d
	}	
else if (RandInt = 23) {	
	NewChar = f
	}	
else if (RandInt = 24) {	
	NewChar = g
	}	
else if (RandInt = 25) {	
	NewChar = h
	}	
else if (RandInt = 26) {	
	NewChar = j
	}	
else if (RandInt = 27) {	
	NewChar = k
	}	
else if (RandInt = 28) {	
	NewChar = l
	}	
else if (RandInt = 29) {	
	NewChar = z
	}	
else if (RandInt = 30) {	
	NewChar = x
	}	
else if (RandInt = 31) {	
	NewChar = c
	}	
else if (RandInt = 32) {	
	NewChar = v
	}	
else if (RandInt = 33) {	
	NewChar = b
	}	
else if (RandInt = 34) {	
	NewChar = n
	}	
else if (RandInt = 35) {	
	NewChar = m
	}	
else if (RandInt = 36) {	
	NewChar = Q
	}	
else if (RandInt = 37) {	
	NewChar = W
	}	
else if (RandInt = 38) {	
	NewChar = E
	}	
else if (RandInt = 39) {	
	NewChar = R
	}	
else if (RandInt = 40) {	
	NewChar = T
	}	
else if (RandInt = 41) {	
	NewChar = Y
	}	
else if (RandInt = 42) {	
	NewChar = U
	}	
else if (RandInt = 43) {	
	NewChar = I
	}	
else if (RandInt = 44) {	
	NewChar = O
	}	
else if (RandInt = 45) {	
	NewChar = P
	}	
else if (RandInt = 46) {	
	NewChar = A
	}	
else if (RandInt = 47) {	
	NewChar = S
	}	
else if (RandInt = 48) {	
	NewChar = D
	}	
else if (RandInt = 49) {	
	NewChar = F
	}	
else if (RandInt = 50) {	
	NewChar = G
	}	
else if (RandInt = 51) {	
	NewChar = H
	}	
else if (RandInt = 52) {	
	NewChar = J
	}	
else if (RandInt = 53) {	
	NewChar = K
	}	
else if (RandInt = 54) {	
	NewChar = L
	}	
else if (RandInt = 55) {	
	NewChar = Z
	}	
else if (RandInt = 56) {	
	NewChar = X
	}	
else if (RandInt = 57) {	
	NewChar = C
	}	
else if (RandInt = 58) {	
	NewChar = V
	}	
else if (RandInt = 59) {	
	NewChar = B
	}	
else if (RandInt = 60) {	
	NewChar = N
	}	
else if (RandInt = 61) {	
	NewChar = M
	}	
else if (RandInt = 62) {	
	NewChar = 0
	}	
else if (RandInt = 63) {	
	NewChar = 1
	}	
else if (RandInt = 64) {	
	NewChar = 2
	}	
else if (RandInt = 65) {	
	NewChar = 3
	}	
else if (RandInt = 66) {	
	NewChar = 4
	}	
else if (RandInt = 67) {	
	NewChar = 5
	}	
else if (RandInt = 68) {	
	NewChar = 6
	}	
else if (RandInt = 69) {	
	NewChar = 7
	}	
else if (RandInt = 70) {	
	NewChar = 8
	}	
else if (RandInt = 71) {	
	NewChar = 9
	}	
else if (RandInt = 72) {	
	NewChar = ``
	}	
else if (RandInt = 73) {	
	NewChar = ~
	}	
else if (RandInt = 74) {	
	NewChar = !
	}	
else if (RandInt = 75) {	
	NewChar = @
	}	
else if (RandInt = 76) {	
	NewChar = #
	}	
else if (RandInt = 77) {	
	NewChar = $
	}	
else if (RandInt = 78) {	
	NewChar = `%
	}	
else if (RandInt = 79) {	
	NewChar = ^
	}	
else if (RandInt = 80) {	
	NewChar = &
	}	
else if (RandInt = 81) {	
	NewChar = *
	}	
else if (RandInt = 82) {	
	NewChar = (
	}	
else if (RandInt = 83) {	
	NewChar = )
	}	
else if (RandInt = 84) {	
	NewChar = -
	}	
else if (RandInt = 85) {	
	NewChar = _
	}	
else if (RandInt = 86) {	
	NewChar = =
	}	
else if (RandInt = 87) {	
	NewChar = +
	}	
else if (RandInt = 88) {	
	NewChar = [
	}	
else if (RandInt = 89) {	
	NewChar = 
	}	
else if (RandInt = 90) {	
	NewChar = ]
	}	
else if (RandInt = 91) {	
	NewChar = 
	}	
else if (RandInt = 92) {	
	NewChar = \
	}	
else if (RandInt = 93) {	
	NewChar = |
	}	
else if (RandInt = 94) {	
	NewChar = `;
	}	
else if (RandInt = 95) {	
	NewChar = :
	}	
else if (RandInt = 96) {	
	NewChar = '
	}	
else if (RandInt = 97) {	
	NewChar = '"
	}	
else if (RandInt = 98) {	
	NewChar = `,
	}	
else if (RandInt = 99) {	
	NewChar = <
	}	
else if (RandInt = 100) {	
	NewChar = .
	}	
else if (RandInt = 101) {	
	NewChar = >
	}	
else if (RandInt = 102) {	
	NewChar = /
	}	
else if (RandInt = 103) {	
	NewChar = ?
	}	
else if (RandInt = 104) {	
	NewChar = /
	}	
else if (RandInt = 105) {	
	NewChar = *
	}	
else if (RandInt = 106) {	
	NewChar = -
	}	
else if (RandInt = 107) {	
	NewChar = +
	}	
else if (RandInt = 108) {	
	NewChar = .
	}	
else if (RandInt = 109) {	
	NewChar = Space
	}	
else if (RandInt = 110) {	
	NewChar = Enter
	}	
else if (RandInt = 111) {	
	NewChar = Enter
	}	
else if (RandInt = 112) {	
	NewChar = Backspace
	}	
else if (RandInt = 113) {	
	NewChar = Tab
	}	
else if (RandInt = 114) {	
	NewChar = Delete
	}
SendInput {%NewChar%}
Return