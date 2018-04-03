#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

file := FileOpen("yahtzeeTestOutput.txt","w")

FileRead,testCases,yahtzeeTestCases.txt
StringReplace,testCases,testCases,`r,,A
StringSplit,roll,testCases,`n
r := 1
Loop, 7
{
	scoreTotal := 0
	StringReplace,rollCurr,roll%r%,`t,`,,A
	StringSplit,die,roll%r%,`t
	file.Write(rollCurr "`t")
	score := 0

	Yahtzee:

	If(die1=die2 && die2=die3 && die3=die4 && die4=die5)
	{
		score := 50
		yahtzeeBonus := yahtzeeBonus+1
	}
	If (yahtzeeBonus>0)
	{
		score := 100
	}

	EndTurn:

	scoreTotal := scoreTotal + score
	file.Write(scoreTotal "`r`n")

	++r
}

file.Close()

Run,yahtzeeTestOutput.txt