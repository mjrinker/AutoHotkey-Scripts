#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#NoTrayIcon

kb_keys := StrSplit("a ashift b bshift c cshift d dshift e eshift f fshift g gshift h hshift i ishift j jshift k kshift l lshift m mshift n nshift o oshift p pshift q qshift r rshift s sshift t tshift u ushift v vshift w wshift x xshift y yshift z zshift ZERO ZEROshift ONE ONEshift TWO TWOshift THREE THREEshift FOUR FOURshift FIVE FIVEshift SIX SIXshift SEVEN SEVENshift EIGHT EIGHTshift NINE NINEshift DASH DASHshift COMMA COMMAshift DOT DOTshift SQUOTE SQUOTEshift COLON COLONshift EQUALS EQUALSshift LEFT RIGHT UP DOWN", " ")
kbs := Object()

Loop, Files, %A_ScriptDir%\kb\*.akb
{
  kb_count := A_Index
  kbs[kb_count] := Object()
  Loop, Read, % A_LoopFileFullPath
  {
    kbs[kb_count][A_Index] := StrSplit(A_LoopReadLine, " ")
  }
}

symbols := Object()
kb_count := 1
For key, value in kbs[kb_count]
  symbols[kb_keys[key]] := value

>!PgUp::
	kb_count++
  if (kb_count > kbs.MaxIndex())
  {
    kb_count := 1
  }
	For key, value in kbs[kb_count]
    symbols[kb_keys[key]] := value
return

>!PgDn::
	kb_count--
  if (kb_count < 1)
  {
    kb_count := kbs.MaxIndex()
  }
	For key, value in kbs[kb_count]
    symbols[kb_keys[key]] := value
return