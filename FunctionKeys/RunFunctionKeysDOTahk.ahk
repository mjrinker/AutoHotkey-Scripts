#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent
#SingleInstance force
#InstallKeybdHook
#NoTrayIcon

^Space::
	Run "D:\Users\Matt\Google Drive\Documents\Other\AutoHotKey Scripts\FunctionKeys\FunctionKeysDOTahkADMIN"
Return