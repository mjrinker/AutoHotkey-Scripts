#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

/*
TO DO:
assign scorecard values
*/

NewGame:
subTotal := 0
scoreTotal := 0

one := 0
two := 0
three := 0
four := 0
five := 0
six := 0
3OfKind := 0
4OfKind := 0
fullHs := 0
smStrt := 0
lgStrt := 0
chance := 0
yahtzee := 0

TurnStart:
holdDice := ""
roll := 1

Roll:

IfNotInString,holdDice,1
{
	Random,die1,1,6
}

IfNotInString,holdDice,2
{
	Random,die2,1,6
}

IfNotInString,holdDice,3
{
	Random,die3,1,6
}

IfNotInString,holdDice,4
{
	Random,die4,1,6
}

IfNotInString,holdDice,5
{
	Random,die5,1,6
}

If(roll>=3)
{
	rollOrEnd := "end"
	goto Skip
}

Hold:
InputBox,holdDice,Yahtzee,%die1% %die2% %die3% %die4% %die5% %die6%`nWhich of these dice would you like to hold (type the numbers of the dice OR leave blank)`nRoll # %roll%,300,300

RollOrEnd:
InputBox,rollOrEnd,Yahtzee,%die1% %die2% %die3% %die4% %die5% %die6%`nWould you like to roll again or end your turn?`nRoll # %roll%,300,300

Skip:

If (rollOrEnd="roll")
{
	++roll
	goto Roll
}
Else If (rollOrEnd="end")
{
	SetChoice:
	InputBox,set,Yahtzee,%die1% %die2% %die3% %die4% %die5% %die6%`nWhat would you like to use this for?,300,300

	score := 0

	i := 1
	If (set="one" Or set="ones" Or set="1")
	{
		If (one=0)
		{
			Loop, 5
			{
				If (die%i%=1)
				{
					score := score + 1
				}
				++i
			}
			subTotal := subTotal + score
			one := 1
		}
		Else
		{
			MsgBox,1,Yahtzee,Sorry, you've already used your ones. Try again.
			goto Skip
		}
	}
	Else If (set="two" Or set="twos" Or set="2")
	{
		If (two=0)
		{
			i := 1
			Loop, 5
			{
				If (die%i%=2)
				{
					score := score + 2
				}
				++i
			}
			subTotal := subTotal + score
			two := 1
		}
		Else
		{
			MsgBox,1,Yahtzee,Sorry, you've already used your twos. Try again.
			goto Skip
		}
	}
	Else If (set="three" Or set="threes" Or set="3")
	{
		If (three=0)
		{
			i := 1
			Loop, 5
			{
				If (die%i%=3)
				{
					score := score + 3
				}
				++i
			}
			subTotal := subTotal + score
			three := 1
		}
		Else
		{
			MsgBox,1,Yahtzee,Sorry, you've already used your threes. Try again.
			goto Skip
		}
	}
	Else If (set="four" Or set="fours" Or set="4")
	{
		If (four=0)
		{
			i := 1
			Loop, 5
			{
				If (die%i%=4)
				{
					score := score + 4
				}
				++i
			}
			subTotal := subTotal + score
			four := 1
		}
		Else
		{
			MsgBox,1,Yahtzee,Sorry, you've already used your fours. Try again.
			goto Skip
		}
	}
	Else If (set="five" Or set="fives" Or set="5")
	{
		If (five=0)
		{
			i := 1
			Loop, 5
			{
				If (die%i%=5)
				{
					score := score + 5
				}
				++i
			}
			subTotal := subTotal + score
			five := 1
		}
		Else
		{
			MsgBox,1,Yahtzee,Sorry, you've already used your fives. Try again.
			goto Skip
		}
	}
	Else If (set="six" Or set="sixes" Or set="6")
	{
		If (six=0)
		{
			i := 1
			Loop, 5
			{
				If (die%i%=6)
				{
					score := score + 6
				}
				++i
			}
			subTotal := subTotal + score
			six := 1
		}
		Else
		{
			MsgBox,1,Yahtzee,Sorry, you've already used your sixes. Try again.
			goto Skip
		}
	}
	Else If (set="three of a kind" Or set="3 of a kind" Or set="x3" Or set="3x")
	{
		If (3OfKind=0)
		{
			i := 1
			kind := 1
			Loop, 4
			{
				k := i - 1
				if (i>1)
				{
					Loop, 4
					{
						If (k<1)
						{
							k := 1
							break
						}
						If (die%i%=die%k%)
						{
							++i
						}
						Else
						{
							--k
						}
					}
				}
				j := i + 1
				kind := 1
				Loop, 4
				{
					If (i>4)
					{
						break
					}
					If (die%i%=die%j%)
					{
						++kind
					}
					++j
					If (j>5)
					{
						break
					}
				}

				If (kind=3 || kind=5)
				{
					score := die1+die2+die3+die4+die5
					goto EndTurn
				}
				++i
				If (i>4)
				{
					break
				}
			}
		}
		Else
		{
			MsgBox,1,Yahtzee,Sorry, you've already used your three of a kind. Try again.
			goto Skip
		}	
	}
	Else If (set="four of a kind" Or set="4 of a kind" Or set="x4" Or set="4x")
	{
		If (4OfKind=0)
		{
			i := 1
			kind := 1
			Loop, 4
			{
				k := i - 1
				if (i>1)
				{
					Loop, 4
					{
						If (k<1)
						{
							k := 1
							break
						}
						If (die%i%=die%k%)
						{
							++i
						}
						Else
						{
							--k
						}
					}
				}
				j := i + 1
				kind := 1
				Loop, 4
				{
					If (i>4)
					{
						break
					}
					If (die%i%=die%j%)
					{
						++kind
					}
					++j
					If (j>5)
					{
						break
					}
				}

				If (kind=4 || kind=5)
				{
					score := die1+die2+die3+die4+die5
					goto EndTurn
				}
				++i
				If (i>4)
				{
					break
				}
			}
		}
		Else
		{
			MsgBox,1,Yahtzee,Sorry, you've already used your four of a kind. Try again.
			goto Skip
		}	
	}
	Else If (set="full house" Or set="fullhouse" Or set="full" Or set="fh")
	{
		If (fullHs=0)
		{
			i := 1
			kind := 1
			2Kind := 0
			3Kind := 0
			Loop, 4
			{
				k := i - 1
				if (i>1)
				{
					Loop, 4
					{
						If (k<1)
						{
							k := 1
							break
						}
						If (die%i%=die%k%)
						{
							++i
						}
						Else
						{
							--k
						}
					}
				}
				j := i + 1
				kind := 1
				Loop, 4
				{
					If (i>4)
					{
						break
					}
					If (die%i%=die%j%)
					{
						++kind
					}
					++j
					If (j>5)
					{
						break
					}
				}
				If (kind=2)
				{
					2Kind := 1
				}
				Else If (kind=3)
				{
					3Kind := 1
				}
				Else If (kind=5)
				{
					2Kind := 1
					3Kind := 1
				}

				If (2Kind=1 && 3Kind=1)
				{
					score := 25
					goto EndTurn
				}
				++i
				If (i>4)
				{
					break
				}
			}
		}
		Else
		{
			MsgBox,1,Yahtzee,Sorry, you've already used your full house. Try again.
			goto Skip
		}
	}
	Else If (set="small straight" Or set="sm straight" Or set="sm")
	{
		If (smStrt=0)
		{
			rollStr := die1 die2 die3 die4 die5
			found1 := InStr(rollStr,1)
			found2 := InStr(rollStr,2)
			found3 := InStr(rollStr,3)
			found4 := InStr(rollStr,4)
			found5 := InStr(rollStr,5)
			found6 := InStr(rollStr,6)

			If (found1!=0 && found2!=0 && found3!=0 && found4!=0)
			{
				score := 30
			}
			If (found2!=0 && found3!=0 && found4!=0 && found5!=0)
			{
				score := 30
			}
			If (found3!=0 && found4!=0 && found5!=0 && found6!=0)
			{
				score := 30
			}
		}
		Else
		{
			MsgBox,1,Yahtzee,Sorry, you've already used your small straight. Try again.
			goto Skip
		}
	}
	Else If (set="large straight" Or set="lg straight" Or set="lg")
	{
		If (lgStrt=0)
		{
			rollStr := die1 die2 die3 die4 die5
			found1 := InStr(rollStr,1)
			found2 := InStr(rollStr,2)
			found3 := InStr(rollStr,3)
			found4 := InStr(rollStr,4)
			found5 := InStr(rollStr,5)
			found6 := InStr(rollStr,6)

			If (found1!=0 && found2!=0 && found3!=0 && found4!=0 && found5!=0)
			{
				score := 40
			}
			If (found2!=0 && found3!=0 && found4!=0 && found5!=0 && found6!=0)
			{
				score := 40
			}
		}
		Else
		{
			MsgBox,1,Yahtzee,Sorry, you've already used your large straight. Try again.
			goto Skip
		}
	}
	Else If (set="chance" Or set="ch")
	{
		If (chance=0)
		{
			score = %die1%+%die2%+%die3%+%die4%+%die5%+%die6%
			chance := 1
		}
		Else
		{
			MsgBox,1,Yahtzee,Sorry, you've already used your chance. Try again.
			goto Skip
		}
	}
	Else If (set="yahtzee" Or set="yatzee" Or set="y")
	{
		If (yahtzee=0)
		{
			If(die1=die2 && die2=die3 && die3=die4 && die4=die5)
			{
				score := 50
			}
			++yahtzee
		}
		Else
		{
			If(die1=die2 && die2=die3 && die3=die4 && die4=die5)
			{
				score := 100
			}
			++yahtzee
			InputBox,set,Yahtzee,%die1% %die2% %die3% %die4% %die5% %die6%`nWhat else would you like to use this for?,300,300
			goto ExtraYahtzee
		}
	}
	Else
	{
		MsgBox,1,Invalid,Invalid input, try again.
		goto SetChoice
	}
}
Else
{
	MsgBox,1,Invalid,Invalid input, try again.
	goto RollOrEnd
}

EndTurn:

If (subTotal>=63)
{
	scoreTotal := scoreTotal + 35
	MsgBox,1,Yahtzee,You got a 35 point bonus!
}

scoreTotal := scoreTotal + score

MsgBox,1,Yahtzee,Your score: %scoreTotal%

If (one!=0 && two!=0 && three!=0 && four!=0 && five!=0 && six!=0 && 3OfKind!=0 && 4OfKind!=0 && fullHs!=0 && smStrt!=0 && lgStrt!=0 && chance!=0 && yahtzee!=0)
{
	goto EndGame
}

goto TurnStart

ExtraYahtzee:

i := 1
If (set="one" Or set="ones" Or set="1")
{
	If (one=0)
	{
		Loop, 5
		{
			If (die%i%=1)
			{
				score := score + 1
			}
			++i
		}
		subTotal := subTotal + score
		one := 1
	}
	Else
	{
		MsgBox,1,Yahtzee,Sorry, you've already used your ones. Try again.
		goto Skip
	}
}
Else If (set="two" Or set="twos" Or set="2")
{
	If (two=0)
	{
		i := 1
		Loop, 5
		{
			If (die%i%=2)
			{
				score := score + 2
			}
			++i
		}
		subTotal := subTotal + score
		two := 1
	}
	Else
	{
		MsgBox,1,Yahtzee,Sorry, you've already used your twos. Try again.
		goto Skip
	}
}
Else If (set="three" Or set="threes" Or set="3")
{
	If (three=0)
	{
		i := 1
		Loop, 5
		{
			If (die%i%=3)
			{
				score := score + 3
			}
			++i
		}
		subTotal := subTotal + score
		three := 1
	}
	Else
	{
		MsgBox,1,Yahtzee,Sorry, you've already used your threes. Try again.
		goto Skip
	}
}
Else If (set="four" Or set="fours" Or set="4")
{
	If (four=0)
	{
		i := 1
		Loop, 5
		{
			If (die%i%=4)
			{
				score := score + 4
			}
			++i
		}
		subTotal := subTotal + score
		four := 1
	}
	Else
	{
		MsgBox,1,Yahtzee,Sorry, you've already used your fours. Try again.
		goto Skip
	}
}
Else If (set="five" Or set="fives" Or set="5")
{
	If (five=0)
	{
		i := 1
		Loop, 5
		{
			If (die%i%=5)
			{
				score := score + 5
			}
			++i
		}
		subTotal := subTotal + score
		five := 1
	}
	Else
	{
		MsgBox,1,Yahtzee,Sorry, you've already used your fives. Try again.
		goto Skip
	}
}
Else If (set="six" Or set="sixes" Or set="6")
{
	If (six=0)
	{
		i := 1
		Loop, 5
		{
			If (die%i%=6)
			{
				score := score + 6
			}
			++i
		}
		subTotal := subTotal + score
		six := 1
	}
	Else
	{
		MsgBox,1,Yahtzee,Sorry, you've already used your sixes. Try again.
		goto Skip
	}
}
Else If (set="three of a kind" Or set="3 of a kind" Or set="x3" Or set="3x")
{
	If (3OfKind=0)
	{
		score := score + die1+die2+die3+die4+die5
		3OfKind := 1
	}
	Else
	{
		MsgBox,1,Yahtzee,Sorry, you've already used your three of a kind. Try again.
		goto Skip
	}	
}
Else If (set="four of a kind" Or set="4 of a kind" Or set="x4" Or set="4x")
{
	If (4OfKind=0)
	{
		score := score + die1+die2+die3+die4+die5
		4OfKind := 1
	}
	Else
	{
		MsgBox,1,Yahtzee,Sorry, you've already used your four of a kind. Try again.
		goto Skip
	}	
}
Else If (set="full house" Or set="fullhouse" Or set="full" Or set="fh")
{
	If (fullHs=0)
	{
		score := score + 25
		fullHs := 1
	}
	Else
	{
		MsgBox,1,Yahtzee,Sorry, you've already used your full house. Try again.
		goto Skip
	}
}
Else If (set="small straight" Or set="sm straight" Or set="sm")
{
	If (smStrt=0)
	{
		MsgBox,1,Yahtzee,Sorry, Yahtzee cannot be used for small straights.
		goto Skip
	}
	Else
	{
		MsgBox,1,Yahtzee,Sorry, you've already used your small straight. Try again.
		goto Skip
	}
}
Else If (set="large straight" Or set="lg straight" Or set="lg")
{
	If (lgStrt=0)
	{
		MsgBox,1,Yahtzee,Sorry, Yahtzee cannot be used for large straights.
		goto Skip
	}
	Else
	{
		MsgBox,1,Yahtzee,Sorry, you've already used your large straight. Try again.
		goto Skip
	}
}
Else If (set="chance" Or set="ch")
{
	If (chance=0)
	{
		score = score + %die1%+%die2%+%die3%+%die4%+%die5%+%die6%
		chance := 1
	}
	Else
	{
		MsgBox,1,Yahtzee,Sorry, you've already used your chance. Try again.
		goto Skip
	}
}

goto EndTurn

EndGame:

MsgBox,1,Yahtzee,Game over.`nYour score: %scoreTotal%`nThanks for playing!