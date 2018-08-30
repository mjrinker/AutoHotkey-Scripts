#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#Include D:\Users\mjrinker\Google Drive\Documents\Other\AutoHotKey Scripts\DynaRun.ahk


IncludeFiles(a_scriptdir "\folder\*.ahk")

IncludeFiles(dir=".\*.ahk",name="",files=0,sub=0){
  If InStr(A_ScriptFullPath,"\\.\pipe")
    Return
  FileRead,MyScript,%A_ScriptFullPath%
  MyScript.="`n"
  Loop,% dir,% files,% sub
  {
    If (A_LoopFileLongPath=A_ScriptFullPath)
      continue
    FileRead,outputVar,% A_LoopFileFullPath
    MyScript .= outputvar "`n"
  }
  DynaRun(MyScript,name=""?A_ScriptFullPath:name)
  ExitApp
}