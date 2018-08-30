#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

i := 1

^u::
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("æ a ä ɐ ɒ̈ ɑ ɑ̃ ɒ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("A", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("b β ʙ ɓ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("B", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("c ɕ ç", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("̯", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ð d ɗ d͡ʒ ɖ ᶑ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("̪̺", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("e ɘ ɵ ə ɚ ᵊ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ɛ ɛ̃ ɜ ɝ ɞ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("͡ ͜ ‿", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ː ˑ̆", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ɡ ɠ ɣ ɢ ʛ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("G", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ɥ ɧ ħ ʜ h ɦ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ʰ ʱ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("i ɪ ɨ ɪ̈ ı", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("̩", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ɟ ʝ j̊ j ȷ ʄ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ᶡ ᶨ ʲ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("k k͡x", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("K", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ɬ ɮ l ɫ ɭ ꞎ ʟ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ˡ ᶩ ᶫ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("m ɱ ᵐ ᶬ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("̼", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("n ɳ ɲ ŋ ɴ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ⁿ ᶯ ᶮ ᵑ ᶰ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ø œ ɶ o ɔ ɔ̃ ꟹ ᵒ ᵓ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("̥ ̊ ̻", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("p ɸ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ᵖ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("q", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("́ ̀", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ɹ ɾ r ɺ ɻ ɽ ʁ ʀ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ʴ ʳ ʵ ʶ ˞", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("s ʃ ʂ ˢ ᶴ ᶳ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("̃ ̴ ̰", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("θ t t͡s t͡ʃ ʈ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ᶿ ᵗ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ʉ ʊ̈ ʊ u", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ᶶ ᶷ ᵘ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("v ʋ ⱱ ʌ ᵛ ᶹ ᶺ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("̬", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ʍ w ɰ ɯ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ʷ ᵚ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("x χ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("̽ˣ ᵡ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("y ʏ ɤ ʎ ɣ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ʸ ˠ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("z ʒ ʐ ʑ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ᶻ ᶾ ᶼ ᶽ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("∅ ̊", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit(")", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ʘ ǀ ǂ ! ¡ ǁ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("| ‖", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ʕ ʡ ʢ ʔ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ˤ ˀ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("3", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("#", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("4", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("$", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("5", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("`%", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("6", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("^", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SEVEN_symbols =  "̚"
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("&", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("8", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("*", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("9", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("(", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("– —", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("-", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ˈ ˌ ʼ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("̹ ̜", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ː ˑ ̆", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("̈ ̤", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ˈ ˌ ʼ", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("“ ”", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("ː ˑ ̆", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit(":", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("̋ ́ ̄ ̀ ̏ ̌ ̂ ᷄ ᷅ ᷈ ᷇᷆ ᷉", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("˥ ˦ ˧ ˨ ˩ ↗ ↘", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("̟ ̘ ←", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("̠ ̙ →", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("̝ ↑", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
	SendInput symbols_array[
	SendInput %i%
	SendInput ]{Space}:={Space}StrSplit("̞ ↓", " "){Enter}
	i++
	if GetKeyState(BackSpace, "P")
	{
		ExitApp
	}
Return

^del::
	ExitApp
return