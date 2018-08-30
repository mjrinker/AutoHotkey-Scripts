#NoEnv	
SendMode Input	
SetWorkingDir %A_ScriptDir%	
#Persistent	
#SingleInstance force	
#InstallKeybdHook	
#HotKeyInterval 100	
;#NoTrayIcon	


^g::
Run, "C:\Users\mjrinker\Google Drive\Documents\Other\AutoHotKey Scripts\Keyboard Remapper\GHHG.ahk"
sleep 250
PID := PIDCurrentScript()
sleep 250
SendInput %PID%
return