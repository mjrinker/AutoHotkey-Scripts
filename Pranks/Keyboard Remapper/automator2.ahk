#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force
;#NoTrayIcon

^+Del::
	ExitApp
return

^+u::
j = 114
Loop, 1 {

i = 0

iftype = if

if (j = 0) {	
	InputEnd = 0
	}	
else if (j = 1) {	
	InputEnd = 1
	}	
else if (j = 2) {	
	InputEnd = 2
	}	
else if (j = 3) {	
	InputEnd = 3
	}	
else if (j = 4) {	
	InputEnd = 4
	}	
else if (j = 5) {	
	InputEnd = 5
	}	
else if (j = 6) {	
	InputEnd = 6
	}	
else if (j = 7) {	
	InputEnd = 7
	}	
else if (j = 8) {	
	InputEnd = 8
	}	
else if (j = 9) {	
	InputEnd = 9
	}	
else if (j = 10) {	
	InputEnd = q
	}	
else if (j = 11) {	
	InputEnd = w
	}	
else if (j = 12) {	
	InputEnd = e
	}	
else if (j = 13) {	
	InputEnd = r
	}	
else if (j = 14) {	
	InputEnd = t
	}	
else if (j = 15) {	
	InputEnd = y
	}	
else if (j = 16) {	
	InputEnd = u
	}	
else if (j = 17) {	
	InputEnd = i
	}	
else if (j = 18) {	
	InputEnd = o
	}	
else if (j = 19) {	
	InputEnd = p
	}	
else if (j = 20) {	
	InputEnd = a
	}	
else if (j = 21) {	
	InputEnd = s
	}	
else if (j = 22) {	
	InputEnd = d
	}	
else if (j = 23) {	
	InputEnd = f
	}	
else if (j = 24) {	
	InputEnd = g
	}	
else if (j = 25) {	
	InputEnd = h
	}	
else if (j = 26) {	
	InputEnd = j
	}	
else if (j = 27) {	
	InputEnd = k
	}	
else if (j = 28) {	
	InputEnd = l
	}	
else if (j = 29) {	
	InputEnd = z
	}	
else if (j = 30) {	
	InputEnd = x
	}	
else if (j = 31) {	
	InputEnd = c
	}	
else if (j = 32) {	
	InputEnd = v
	}	
else if (j = 33) {	
	InputEnd = b
	}	
else if (j = 34) {	
	InputEnd = n
	}	
else if (j = 35) {	
	InputEnd = m
	}	
else if (j = 36) {	
	InputEnd = ShQ
	}	
else if (j = 37) {	
	InputEnd = ShW
	}	
else if (j = 38) {	
	InputEnd = ShE
	}	
else if (j = 39) {	
	InputEnd = ShR
	}	
else if (j = 40) {	
	InputEnd = ShT
	}	
else if (j = 41) {	
	InputEnd = ShY
	}	
else if (j = 42) {	
	InputEnd = ShU
	}	
else if (j = 43) {	
	InputEnd = ShI
	}	
else if (j = 44) {	
	InputEnd = ShO
	}	
else if (j = 45) {	
	InputEnd = ShP
	}	
else if (j = 46) {	
	InputEnd = ShA
	}	
else if (j = 47) {	
	InputEnd = ShS
	}	
else if (j = 48) {	
	InputEnd = ShD
	}	
else if (j = 49) {	
	InputEnd = ShF
	}	
else if (j = 50) {	
	InputEnd = ShG
	}	
else if (j = 51) {	
	InputEnd = ShH
	}	
else if (j = 52) {	
	InputEnd = ShJ
	}	
else if (j = 53) {	
	InputEnd = ShK
	}	
else if (j = 54) {	
	InputEnd = ShL
	}	
else if (j = 55) {	
	InputEnd = ShZ
	}	
else if (j = 56) {	
	InputEnd = ShX
	}	
else if (j = 57) {	
	InputEnd = ShC
	}	
else if (j = 58) {	
	InputEnd = ShV
	}	
else if (j = 59) {	
	InputEnd = ShB
	}	
else if (j = 60) {	
	InputEnd = ShN
	}	
else if (j = 61) {	
	InputEnd = ShM
	}	
else if (j = 62) {	
	InputEnd = Num0
	}	
else if (j = 63) {	
	InputEnd = Num1
	}	
else if (j = 64) {	
	InputEnd = Num2
	}	
else if (j = 65) {	
	InputEnd = Num3
	}	
else if (j = 66) {	
	InputEnd = Num4
	}	
else if (j = 67) {	
	InputEnd = Num5
	}	
else if (j = 68) {	
	InputEnd = Num6
	}	
else if (j = 69) {	
	InputEnd = Num7
	}	
else if (j = 70) {	
	InputEnd = Num8
	}	
else if (j = 71) {	
	InputEnd = Num9
	}	
else if (j = 72) {	
	InputEnd = Acc
	}	
else if (j = 73) {	
	InputEnd = Tild
	}	
else if (j = 74) {	
	InputEnd = Excl
	}	
else if (j = 75) {	
	InputEnd = At
	}	
else if (j = 76) {	
	InputEnd = Pnd
	}	
else if (j = 77) {	
	InputEnd = Doll
	}	
else if (j = 78) {	
	InputEnd = Perc
	}	
else if (j = 79) {	
	InputEnd = Car
	}	
else if (j = 80) {	
	InputEnd = Ampr
	}	
else if (j = 81) {	
	InputEnd = Astr
	}	
else if (j = 82) {	
	InputEnd = ParL
	}	
else if (j = 83) {	
	InputEnd = ParR
	}	
else if (j = 84) {	
	InputEnd = Dash
	}	
else if (j = 85) {	
	InputEnd = Und
	}	
else if (j = 86) {	
	InputEnd = Eq
	}	
else if (j = 87) {	
	InputEnd = Plus
	}	
else if (j = 88) {	
	InputEnd = SqBL
	}	
else if (j = 89) {	
	InputEnd = CrlBL
	}	
else if (j = 90) {	
	InputEnd = SqBR
	}	
else if (j = 91) {	
	InputEnd = CrlBR
	}	
else if (j = 92) {	
	InputEnd = BkSl
	}	
else if (j = 93) {	
	InputEnd = VL
	}	
else if (j = 94) {	
	InputEnd = SCol
	}	
else if (j = 95) {	
	InputEnd = Col
	}	
else if (j = 96) {	
	InputEnd = Apos
	}	
else if (j = 97) {	
	InputEnd = Quo
	}	
else if (j = 98) {	
	InputEnd = Com
	}	
else if (j = 99) {	
	InputEnd = Less
	}	
else if (j = 100) {	
	InputEnd = Prd
	}	
else if (j = 101) {	
	InputEnd = Grt
	}	
else if (j = 102) {	
	InputEnd = FrSl
	}	
else if (j = 103) {	
	InputEnd = Q
	}	
else if (j = 104) {	
	InputEnd = NumDiv
	}	
else if (j = 105) {	
	InputEnd = NumMult
	}	
else if (j = 106) {	
	InputEnd = NumSub
	}	
else if (j = 107) {	
	InputEnd = NumAdd
	}	
else if (j = 108) {	
	InputEnd = NumDot
	}	
else if (j = 109) {	
	InputEnd = Space
	}	
else if (j = 110) {	
	InputEnd = Enter
	}	
else if (j = 111) {	
	InputEnd = NumEnter
	}	
else if (j = 112) {	
	InputEnd = Backspace
	}	
else if (j = 113) {	
	InputEnd = Tab
	}	
else if (j = 114) {	
	InputEnd = Delete
	}

Sleep 250
SendInput {Enter}Random{,} RandInt{,} 0{,} 114{Enter}
Sleep 250

Loop, 115 {

if (i = 0) {	
	NewCharVal = 0
	}	
else if (i = 1) {	
	NewCharVal = 1
	}	
else if (i = 2) {	
	NewCharVal = 2
	}	
else if (i = 3) {	
	NewCharVal = 3
	}	
else if (i = 4) {	
	NewCharVal = 4
	}	
else if (i = 5) {	
	NewCharVal = 5
	}	
else if (i = 6) {	
	NewCharVal = 6
	}	
else if (i = 7) {	
	NewCharVal = 7
	}	
else if (i = 8) {	
	NewCharVal = 8
	}	
else if (i = 9) {	
	NewCharVal = 9
	}	
else if (i = 10) {	
	NewCharVal = q
	}	
else if (i = 11) {	
	NewCharVal = w
	}	
else if (i = 12) {	
	NewCharVal = e
	}	
else if (i = 13) {	
	NewCharVal = r
	}	
else if (i = 14) {	
	NewCharVal = t
	}	
else if (i = 15) {	
	NewCharVal = y
	}	
else if (i = 16) {	
	NewCharVal = u
	}	
else if (i = 17) {	
	NewCharVal = i
	}	
else if (i = 18) {	
	NewCharVal = o
	}	
else if (i = 19) {	
	NewCharVal = p
	}	
else if (i = 20) {	
	NewCharVal = a
	}	
else if (i = 21) {	
	NewCharVal = s
	}	
else if (i = 22) {	
	NewCharVal = d
	}	
else if (i = 23) {	
	NewCharVal = f
	}	
else if (i = 24) {	
	NewCharVal = g
	}	
else if (i = 25) {	
	NewCharVal = h
	}	
else if (i = 26) {	
	NewCharVal = j
	}	
else if (i = 27) {	
	NewCharVal = k
	}	
else if (i = 28) {	
	NewCharVal = l
	}	
else if (i = 29) {	
	NewCharVal = z
	}	
else if (i = 30) {	
	NewCharVal = x
	}	
else if (i = 31) {	
	NewCharVal = c
	}	
else if (i = 32) {	
	NewCharVal = v
	}	
else if (i = 33) {	
	NewCharVal = b
	}	
else if (i = 34) {	
	NewCharVal = n
	}	
else if (i = 35) {	
	NewCharVal = m
	}	
else if (i = 36) {	
	NewCharVal = Q
	}	
else if (i = 37) {	
	NewCharVal = W
	}	
else if (i = 38) {	
	NewCharVal = E
	}	
else if (i = 39) {	
	NewCharVal = R
	}	
else if (i = 40) {	
	NewCharVal = T
	}	
else if (i = 41) {	
	NewCharVal = Y
	}	
else if (i = 42) {	
	NewCharVal = U
	}	
else if (i = 43) {	
	NewCharVal = I
	}	
else if (i = 44) {	
	NewCharVal = O
	}	
else if (i = 45) {	
	NewCharVal = P
	}	
else if (i = 46) {	
	NewCharVal = A
	}	
else if (i = 47) {	
	NewCharVal = S
	}	
else if (i = 48) {	
	NewCharVal = D
	}	
else if (i = 49) {	
	NewCharVal = F
	}	
else if (i = 50) {	
	NewCharVal = G
	}	
else if (i = 51) {	
	NewCharVal = H
	}	
else if (i = 52) {	
	NewCharVal = J
	}	
else if (i = 53) {	
	NewCharVal = K
	}	
else if (i = 54) {	
	NewCharVal = L
	}	
else if (i = 55) {	
	NewCharVal = Z
	}	
else if (i = 56) {	
	NewCharVal = X
	}	
else if (i = 57) {	
	NewCharVal = C
	}	
else if (i = 58) {	
	NewCharVal = V
	}	
else if (i = 59) {	
	NewCharVal = B
	}	
else if (i = 60) {	
	NewCharVal = N
	}	
else if (i = 61) {	
	NewCharVal = M
	}	
else if (i = 62) {	
	NewCharVal = 0
	}	
else if (i = 63) {	
	NewCharVal = 1
	}	
else if (i = 64) {	
	NewCharVal = 2
	}	
else if (i = 65) {	
	NewCharVal = 3
	}	
else if (i = 66) {	
	NewCharVal = 4
	}	
else if (i = 67) {	
	NewCharVal = 5
	}	
else if (i = 68) {	
	NewCharVal = 6
	}	
else if (i = 69) {	
	NewCharVal = 7
	}	
else if (i = 70) {	
	NewCharVal = 8
	}	
else if (i = 71) {	
	NewCharVal = 9
	}	
else if (i = 72) {	
	NewCharVal = ``
	}	
else if (i = 73) {	
	NewCharVal = ~
	}	
else if (i = 74) {	
	NewCharVal = {!}
	}	
else if (i = 75) {	
	NewCharVal = @
	}	
else if (i = 76) {	
	NewCharVal = {#}
	}	
else if (i = 77) {	
	NewCharVal = $
	}	
else if (i = 78) {	
	NewCharVal = `%
	}	
else if (i = 79) {	
	NewCharVal = {^}
	}	
else if (i = 80) {	
	NewCharVal = &
	}	
else if (i = 81) {	
	NewCharVal = *
	}	
else if (i = 82) {	
	NewCharVal = (
	}	
else if (i = 83) {	
	NewCharVal = )
	}	
else if (i = 84) {	
	NewCharVal = -
	}	
else if (i = 85) {	
	NewCharVal = _
	}	
else if (i = 86) {	
	NewCharVal = =
	}	
else if (i = 87) {	
	NewCharVal = {+}
	}	
else if (i = 88) {	
	NewCharVal = [
	}	
else if (i = 89) {	
	NewCharVal = {{}
	}	
else if (i = 90) {	
	NewCharVal = ]
	}	
else if (i = 91) {	
	NewCharVal = {}}
	}	
else if (i = 92) {	
	NewCharVal = \
	}	
else if (i = 93) {	
	NewCharVal = |
	}	
else if (i = 94) {	
	NewCharVal = `;
	}	
else if (i = 95) {	
	NewCharVal = :
	}	
else if (i = 96) {	
	NewCharVal = '
	}	
else if (i = 97) {	
	NewCharVal = "
	}	
else if (i = 98) {	
	NewCharVal = `,
	}	
else if (i = 99) {	
	NewCharVal = <
	}	
else if (i = 100) {	
	NewCharVal = .
	}	
else if (i = 101) {	
	NewCharVal = >
	}	
else if (i = 102) {	
	NewCharVal = /
	}	
else if (i = 103) {	
	NewCharVal = ?
	}	
else if (i = 104) {	
	NewCharVal = /
	}	
else if (i = 105) {	
	NewCharVal = *
	}	
else if (i = 106) {	
	NewCharVal = -
	}	
else if (i = 107) {	
	NewCharVal = {+}
	}	
else if (i = 108) {	
	NewCharVal = .
	}	
else if (i = 109) {	
	NewCharVal = Space
	}	
else if (i = 110) {	
	NewCharVal = Enter
	}	
else if (i = 111) {	
	NewCharVal = Enter
	}	
else if (i = 112) {	
	NewCharVal = Backspace
	}	
else if (i = 113) {	
	NewCharVal = Tab
	}	
else if (i = 114) {	
	NewCharVal = Delete
	}

Sleep 250
SendInput %iftype%(RandInt = %i%) {{}{Enter}{Tab}NewChar%InputEnd% = %NewCharVal%{Enter}{Tab}{}}{Enter}
Sleep 250

iftype = else if
i += 1
Sleep 250
}

j += 1
Sleep 250
}

Sleep 250
SendInput Script completed

Sleep 1000
SendInput {ctrl down}
Sleep 40
SendInput {s down}
Sleep 40
SendInput {s up}
Sleep 40
SendInput {ctrl up}
Sleep 3000

ExitApp

return