#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#HotkeyInterval 1000
#MaxHotkeysPerInterval 300

b_symbols := "b β ʙ ɓ"
b := 1
b_size := 0

PostCycle(hk, keys, n, size)
{
	if (A_PriorHotkey = hk or A_PriorHotkey = "")
	{
		if (size = 0) {
			size := 1
		}
		SendInput {BackSpace %size%}
	}
	keys_array := StrSplit(keys, " ")
	SendInput % keys_array[n]
	n++
	if (n > keys_array.MaxIndex())
	{
		n = 1
	}
	return n "|" StrLen(keys_array[n-1])
}

Cycle(hk, keys, n, size)
{
	if (A_PriorHotkey = hk or A_PriorHotkey = "")
	{
		if (size != -1)
		{
			if (size = 0) {
				size := 1
			}
			SendInput {BackSpace %size%}
		}
	}
	keys_array := StrSplit(keys, " ")
	SendInput % keys_array[n]
	n++
	if (n > keys_array.MaxIndex())
	{
		n = 1
	}
	return n "|" StrLen(keys_array[n-1])
}

>!b::
	b_array := Cycle(">!b", b_symbols, b, b_size)
	b_array := StrSplit(b_array, "|")
	b := b_array[1]
	b_size := b_array[2]
return

;~>! Up::
;	b := 1
;return

~RAlt::
	;MsgBox, TRUE
	b := 1
	b_size := -1
return

^del::
	ExitApp
return