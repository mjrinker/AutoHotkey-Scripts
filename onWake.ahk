#SingleInstance force
;#NoTrayIcon

logging := True

OnMessage(536, "OnPBMsg")     ;WM_POWERBROADCAST
Return

OnPBMsg(wParam, lParam, msg, hwnd) {
	If (wParam = 7) {	;PBT_APMRESUMESUSPEND
		Run, networkmonitor.ahk
		If (logging) {
			FileAppend, `n%A_Now%`tWaking..., networkmonitor_log\networkmonitor%A_YYYY%%A_MM%%A_DD%.txt
		}
	}
	Else If (wParam = 4) {	;PBT_APMSUSPEND 
		If (loggin) {
			FileAppend, `n%A_Now%`tSleeping..., networkmonitor_log\networkmonitor%A_YYYY%%A_MM%%A_DD%.txt
		}
		DetectHiddenWindows, On
		
		WinClose, "D:\Box\Matt\Scripts\AutoHotKey Scripts\networkmonitor.ahk" ahk_class AutoHotkey
	}
	
	;Must return True after message is processed
	Return True
}