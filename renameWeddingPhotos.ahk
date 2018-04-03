#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

file1 := "007.JPG"
file2 := "013.JPG"
file3 := "016.JPG"
file4 := "030.JPG"
file5 := "036.JPG"
file6 := "039.JPG"
file7 := "044.JPG"
file8 := "047.JPG"
file9 := "055.JPG"
file10 := "058.JPG"
file11 := "081.JPG"
file12 := "086.JPG"
file13 := "088.JPG"
file14 := "102.JPG"
file15 := "107.JPG"
file16 := "111.JPG"
file17 := "115.JPG"
file18 := "121.JPG"
file19 := "123.JPG"
file20 := "124.JPG"
file21 := "133.JPG"
file22 := "136.JPG"
file23 := "137.JPG"
file24 := "145.JPG"
file25 := "147.JPG"
file26 := "157.JPG"
file27 := "162.JPG"
file28 := "168.JPG"
file29 := "177.JPG"
file30 := "181.JPG"
file31 := "190.JPG"
file32 := "191.JPG"
file33 := "201.JPG"
file34 := "202.JPG"
file35 := "205.JPG"
file36 := "207.JPG"
file37 := "208.JPG"
file38 := "210.JPG"
file39 := "214.JPG"
file40 := "216.JPG"
file41 := "221.JPG"
file42 := "223.JPG"
file43 := "230.JPG"
file44 := "233.JPG"
file45 := "237.JPG"
file46 := "239.JPG"
file47 := "245.JPG"
file48 := "250.JPG"
file49 := "259.JPG"
file50 := "263.JPG"
file51 := "264.JPG"
file52 := "265.JPG"
file53 := "269.JPG"
file54 := "271.JPG"
file55 := "273.JPG"
file56 := "275.JPG"
file57 := "277.JPG"
file58 := "285.JPG"
file59 := "290.JPG"
file60 := "298.JPG"
file61 := "299.JPG"
file62 := "301.JPG"
file63 := "302.JPG"
file64 := "304.JPG"
file65 := "329.JPG"
file66 := "332.JPG"
file67 := "335.JPG"
file68 := "339.JPG"
file69 := "341.JPG"
file70 := "350.JPG"
file71 := "352.JPG"
file72 := "365.JPG"
file73 := "368.JPG"
file74 := "374.JPG"
file75 := "377.JPG"
file76 := "396.JPG"
file77 := "399.JPG"
file78 := "404.JPG"
file79 := "407.JPG"
file80 := "410.JPG"
file81 := "414.JPG"
file82 := "432.JPG"
file83 := "433.JPG"
file84 := "438.JPG"
file85 := "451.JPG"
file86 := "457.JPG"
file87 := "461.JPG"
file88 := "464.JPG"
file89 := "471.JPG"
file90 := "474.JPG"
file91 := "478.JPG"
file92 := "480.JPG"
file93 := "483.JPG"
file94 := "492.JPG"
file95 := "504.JPG"
file96 := "507.JPG"
file97 := "508.JPG"
file98 := "514.JPG"
file99 := "522.JPG"
file100 := "532.JPG"
file101 := "539.JPG"
file102 := "541.JPG"
file103 := "547.JPG"
file104 := "549.JPG"
file105 := "553.JPG"
file106 := "558.JPG"
file107 := "559.JPG"
file108 := "563.JPG"
file109 := "565.JPG"
file110 := "582.JPG"
file111 := "583.JPG"
file112 := "586.JPG"
file113 := "590.JPG"
file114 := "591.JPG"
file115 := "593.JPG"
file116 := "596.JPG"
file117 := "609.JPG"
file118 := "617.JPG"
file119 := "626.JPG"
file120 := "628.JPG"
file121 := "630.JPG"
file122 := "631.JPG"
file123 := "634.JPG"
file124 := "639.JPG"
file125 := "640.JPG"
file126 := "646.JPG"
file127 := "647.JPG"
file128 := "651.JPG"
file129 := "652.JPG"
file130 := "655.JPG"
file131 := "660.JPG"
file132 := "662.JPG"
file133 := "665.JPG"
file134 := "666.JPG"
file135 := "669.JPG"
file136 := "671.JPG"
file137 := "676.JPG"
file138 := "677.JPG"
file139 := "684.JPG"
file140 := "685.JPG"
file141 := "690.JPG"
file142 := "692.JPG"
file143 := "706.JPG"
file144 := "710.JPG"
file145 := "711.JPG"
file146 := "713.JPG"
file147 := "716.JPG"
file148 := "717.JPG"
file149 := "721.JPG"
file150 := "729.JPG"
file151 := "733.JPG"
file152 := "734.JPG"
file153 := "738.JPG"
file154 := "739.JPG"
file155 := "741.JPG"
file156 := "744.JPG"
file157 := "748.JPG"

file158 := "040.JPG"
file159 := "051.JPG"
file160 := "165.JPG"
file161 := "206.JPG"
file162 := "207.JPG"
file163 := "214.JPG"
file164 := "221.JPG"
file165 := "230.JPG"
file166 := "237.JPG"
file167 := "239.JPG"
file168 := "246.JPG"
file169 := "269.JPG"
file170 := "271.JPG"
file171 := "273.JPG"
file172 := "276.JPG"
file173 := "307.JPG"
file174 := "311.JPG"
file175 := "320.JPG"
file176 := "373.JPG"
file177 := "374.JPG"
file178 := "744.JPG"

^g::
	i := 158
	run, cmd.exe
	Sleep 250
	SendInput d:
	Sleep 20
	SendInput {Enter}
	Sleep 250
	SendInput cd {"}D:\Users\mjrinker\Google{Space}Drive\Documents\Wedding{"}
	Sleep 20
	SendInput {Enter}
	Sleep 250

	;Run %comspec% /c d:
	;Run %comspec% /c cd `"D:\Users\mjrinker\Google Drive\Documents\Wedding`"


		;Run %comspec% /c robocopy Wedding Book % file%i% /copy:dat /r:2 /w:2 /log:copy_log.txt

	SendInput robocopy{Space}Wedding{Space}Prints{Space}
	Sleep 20
	Loop, 21
	{
		SendInput % file%i%
		Sleep 20
		SendInput {Space}
		Sleep 20
		i := i + 1
	}
	SendInput {Space}/copy:dat{Space}/r:2{Space}/w:2{Space}/log:copy_log.txt
	Sleep 20
	SendInput {Enter}
	Sleep 250
	ExitApp
return

^t::
	SendInput {=}{I}{F}{(}{O}{R}{(}
	Sleep 40
	SendInput {Right 29}
	Sleep 40
	SendInput {)}
	Sleep 40
	SendInput {Right}
	Sleep 40
	SendInput {A}{3}{;}
return


^f::
	i := 1
	run, cmd.exe
	Sleep 250
	SendInput cd C:\Users\mjrinker\Desktop\renamed
	Sleep 20
	SendInput {Enter}
	Sleep 250
	Loop, 153
	{
		renameFile := SubStr(file%i%, 1, 3)
		SendInput rename{Space}
		Sleep 20
		SendInput % file%i%
		Sleep 20
		SendInput {Space}
		Sleep 20
		SendInput %renameFile%
		Sleep 20
		SendInput `.JPG
		Sleep 20
		SendInput {Enter}
		Sleep 250
		i := i + 1
	}
return

^d::
	i := 1
	run, cmd.exe
	Sleep 250
	SendInput f:
	Sleep 20
	SendInput {Enter}
	Sleep 250
	SendInput robocopy{Space}F:\FinalEditsAshleeOlsonWedding
	Sleep 20
	SendInput {Space}F:\FinalEditsAshleeOlsonWedding\missing{Space}
	Sleep 20
	Loop, 153
	{
		SendInput % file%i%
		Sleep 20
		SendInput {Space}
		Sleep 20
		i := i + 1
	}
	SendInput /copy:dato{Space}/log:F:\FinalEditsAshleeOlsonWedding\missing\log.txt{Space}/np
	Sleep 20
	SendInput {Enter}
return

^h::
	endfilenames := ""
	err := 0
	stayVar := 0
	loopIter1 := 1
	loopIter2 := 1
	Loop
	{
		if (stayVar=0)
		{
			FileReadLine, line2, filenames2.txt, %loopIter2%
			line2Start := SubStr(line2, 1, 3)
		}
		stayVar := 0
		FileReadLine, line1, filenames1.txt, %loopIter1%
		line1Start := SubStr(line1, 1, 3)
		line1End := SubStr(line1, 9, 4)
		;MsgBox, %line1Start% and %line2Start%
    	if ErrorLevel
    	{
    		err := 1
        	break
    	}
    	if(line1Start=line2Start)
		{
			endfilenames = %endfilenames%`n%line1End%
			loopIter2 := loopIter2 + 1
		}
		else
		{
			stayVar := 1
		}
		loopIter1 := loopIter1 + 1
	}
	MsgBox, The end of the file has been reached or there was a problem.
return

^+v::
	SendInput %endfilenames%
return

^del::
	ExitApp
return

