#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#NoTrayIcon

$LButton::
	Random, rand, 0, 300
	Random, randLimit, 0, 200
	Random, speed, 0, 100
	if (rand >= randLimit and rand < randLimit+100) {
		Random, randX, 10, 200
		Random, randY, 10, 200
		Random, directionX, 0, 1
		Random, directionY, 0, 1
		MouseGetPos, currentX, currentY
		if (directionX = 0) {
			if (directionY = 0) { 
				MouseMove, currentX-randX, currentY-randY, speed
			}
			else if (directionY = 1) {
				MouseMove, currentX-randX, currentY+randY, speed
			}
		}
		else if (directionX = 1) {
			if (directionY = 0) { 
				MouseMove, currentX+randX, currentY-randY, speed
			}
			else if (directionY = 1) {
				MouseMove, currentX+randX, currentY+randY, speed
			}
		}
		MouseClick, L
	}
Return