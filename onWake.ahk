#SingleInstance force
;#NoTrayIcon

OnMessage(536, "OnPBMsg")     ;WM_POWERBROADCAST
Return

OnPBMsg(wParam, lParam, msg, hwnd) {
	If (wParam = 7) {	;PBT_APMRESUMESUSPEND
		Run, networkmonitor.ahk
		FileAppend, `n%A_Now%`tWaking..., networkmonitor.txt
	}
	Else If (wParam = 4) {	;PBT_APMSUSPEND 
		FileAppend, `n%A_Now%`tSleeping..., networkmonitor.txt
		DetectHiddenWindows, On
		
		WinClose, "D:\Box\Matt\Scripts\AutoHotKey Scripts\networkmonitor.ahk" ahk_class AutoHotkey
	}
	
	;Must return True after message is processed
	Return True
}