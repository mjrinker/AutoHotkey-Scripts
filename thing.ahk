#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

var1 := "a"
var2 := "b"
var3 := "c"
var4 := "d"
var5 := "e"
var6 := "f"
var7 := "g"
var8 := "h"
var9 := "i"
var10 := "j"
var11 := "k"
var12 := "l"
var13 := "m"
var14 := "n"
var15 := "o"
var16 := "p"
var17 := "q"
var18 := "r"
var19 := "s"
var20 := "t"
var21 := "u"
var22 := "v"
var23 := "w"
var24 := "x"
var25 := "y"
var26 := "z"
var27 := "ZERO"
var28 := "ONE"
var29 := "TWO"
var30 := "THREE"
var31 := "FOUR"
var32 := "FIVE"
var33 := "SIX"
var34 := "SEVEN"
var35 := "EIGHT"
var36 := "NINE"
var37 := "DASH"
var38 := "COMMA"
var39 := "DOT"
var40 := "SQUOTE"
var41 := "COLON"
var42 := "LEFT"
var43 := "RIGHT"
var44 := "UP"
var45 := "DOWN"

i := 0

^del::
	ExitApp
return

^v::
	Loop, 45
	{
		i++
		if (i = 1)
		{
			var := var1
		}
		else if (i = 2)
		{
			var := var2
		}
		else if (i = 3)
		{
			var := var3
		}
		else if (i = 4)
		{
			var := var4
		}
		else if (i = 5)
		{
			var := var5
		}
		else if (i = 6)
		{
			var := var6
		}
		else if (i = 7)
		{
			var := var7
		}
		else if (i = 8)
		{
			var := var8
		}
		else if (i = 9)
		{
			var := var9
		}
		else if (i = 10)
		{
			var := var10
		}
		else if (i = 11)
		{
			var := var11
		}
		else if (i = 12)
		{
			var := var12
		}
		else if (i = 13)
		{
			var := var13
		}
		else if (i = 14)
		{
			var := var14
		}
		else if (i = 15)
		{
			var := var15
		}
		else if (i = 16)
		{
			var := var16
		}
		else if (i = 17)
		{
			var := var17
		}
		else if (i = 18)
		{
			var := var18
		}
		else if (i = 19)
		{
			var := var19
		}
		else if (i = 20)
		{
			var := var20
		}
		else if (i = 21)
		{
			var := var21
		}
		else if (i = 22)
		{
			var := var22
		}
		else if (i = 23)
		{
			var := var23
		}
		else if (i = 24)
		{
			var := var24
		}
		else if (i = 25)
		{
			var := var25
		}
		else if (i = 26)
		{
			var := var26
		}
		else if (i = 27)
		{
			var := var27
		}
		else if (i = 28)
		{
			var := var28
		}
		else if (i = 29)
		{
			var := var29
		}
		else if (i = 30)
		{
			var := var30
		}
		else if (i = 31)
		{
			var := var31
		}
		else if (i = 32)
		{
			var := var32
		}
		else if (i = 33)
		{
			var := var33
		}
		else if (i = 34)
		{
			var := var34
		}
		else if (i = 35)
		{
			var := var35
		}
		else if (i = 36)
		{
			var := var36
		}
		else if (i = 37)
		{
			var := var37
		}
		else if (i = 38)
		{
			var := var38
		}
		else if (i = 39)
		{
			var := var39
		}
		else if (i = 40)
		{
			var := var40
		}
		else if (i = 41)
		{
			var := var41
		}
		else if (i = 42)
		{
			var := var42
		}
		else if (i = 43)
		{
			var := var43
		}
		else if (i = 44)
		{
			var := var44
		}
		else if (i = 45)
		{
			var := var45
		}
		else
		{
			var := done
		}
		sendinput >{!}
		sendinput % var
		sendinput ::{Enter}{Tab}
		sendinput % var
		sendinput _array := Cycle(">{!}
		sendinput % var
		sendinput `,{Space}
		sendinput % var
		sendinput _symbols,{Space}
		sendinput % var
		sendinput `,{Space}
		sendinput % var
		sendinput _size){Enter}{Tab}
		sendinput % var
		sendinput _array := StrSplit(
		sendinput % var
		sendinput _array, "|"){Enter}{Tab}
		sendinput % var
		sendinput {Space}:={Space}
		sendinput % var
		sendinput _array[1]{Enter}{Tab}
		sendinput % var
		sendinput _size :={Space}
		sendinput % var
		sendinput _array[2]{Enter}
		sendinput return{Enter}{Enter}
	}
return