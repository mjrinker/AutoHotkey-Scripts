#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#NoTrayIcon
#HotkeyInterval 1000
#MaxHotkeysPerInterval 300
#Include ipa_vars.ahk
#Include ipa_kb_switcher.ahk

HasVal(haystack, needle) {
	if !(IsObject(haystack)) || (haystack.Length() = 0)
		return 0
	for index, value in haystack
		if (value = needle)
			return index
	return 0
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
	SendInput % keys[n]
	n++
	if (n > keys.MaxIndex())
	{
		n = 1
	}
	return n "|" StrLen(keys[n-1])
}

>!a::
	cycle_vals["a"] := Cycle(">!a", symbols["a"], char_vars["a"], size["a"])
	cycle_vals["a"] := StrSplit(cycle_vals["a"], "|")
	char_vars["a"] := cycle_vals["a"][1]
	size["a"] := cycle_vals["a"][2]
return

>!+a::
	cycle_vals["ashift"] := Cycle(">!+a", symbols["ashift"], char_vars["ashift"], size["ashift"])
	cycle_vals["ashift"] := StrSplit(cycle_vals["ashift"], "|")
	char_vars["ashift"] := cycle_vals["ashift"][1]
	size["ashift"] := cycle_vals["ashift"][2]
return

>!b::
	cycle_vals["b"] := Cycle(">!b", symbols["b"], char_vars["b"], size["b"])
	cycle_vals["b"] := StrSplit(cycle_vals["b"], "|")
	char_vars["b"] := cycle_vals["b"][1]
	size["b"] := cycle_vals["b"][2]
return

>!+b::
	cycle_vals["bshift"] := Cycle(">!+b", symbols["bshift"], char_vars["bshift"], size["bshift"])
	cycle_vals["bshift"] := StrSplit(cycle_vals["bshift"], "|")
	char_vars["bshift"] := cycle_vals["bshift"][1]
	size["bshift"] := cycle_vals["bshift"][2]
return

>!c::
	cycle_vals["c"] := Cycle(">!c", symbols["c"], char_vars["c"], size["c"])
	cycle_vals["c"] := StrSplit(cycle_vals["c"], "|")
	char_vars["c"] := cycle_vals["c"][1]
	size["c"] := cycle_vals["c"][2]
return

>!+c::
	cycle_vals["cshift"] := Cycle(">!+c", symbols["cshift"], char_vars["cshift"], size["cshift"])
	cycle_vals["cshift"] := StrSplit(cycle_vals["cshift"], "|")
	char_vars["cshift"] := cycle_vals["cshift"][1]
	size["cshift"] := cycle_vals["cshift"][2]
return

>!d::
	cycle_vals["d"] := Cycle(">!d", symbols["d"], char_vars["d"], size["d"])
	cycle_vals["d"] := StrSplit(cycle_vals["d"], "|")
	char_vars["d"] := cycle_vals["d"][1]
	size["d"] := cycle_vals["d"][2]
return

>!+d::
	cycle_vals["dshift"] := Cycle(">!+d", symbols["dshift"], char_vars["dshift"], size["dshift"])
	cycle_vals["dshift"] := StrSplit(cycle_vals["dshift"], "|")
	char_vars["dshift"] := cycle_vals["dshift"][1]
	size["dshift"] := cycle_vals["dshift"][2]
return

>!e::
	cycle_vals["e"] := Cycle(">!e", symbols["e"], char_vars["e"], size["e"])
	cycle_vals["e"] := StrSplit(cycle_vals["e"], "|")
	char_vars["e"] := cycle_vals["e"][1]
	size["e"] := cycle_vals["e"][2]
return

>!+e::
	cycle_vals["eshift"] := Cycle(">!+e", symbols["eshift"], char_vars["eshift"], size["eshift"])
	cycle_vals["eshift"] := StrSplit(cycle_vals["eshift"], "|")
	char_vars["eshift"] := cycle_vals["eshift"][1]
	size["eshift"] := cycle_vals["eshift"][2]
return

>!f::
	cycle_vals["f"] := Cycle(">!f", symbols["f"], char_vars["f"], size["f"])
	cycle_vals["f"] := StrSplit(cycle_vals["f"], "|")
	char_vars["f"] := cycle_vals["f"][1]
	size["f"] := cycle_vals["f"][2]
return

>!+f::
	cycle_vals["fshift"] := Cycle(">!+f", symbols["fshift"], char_vars["fshift"], size["fshift"])
	cycle_vals["fshift"] := StrSplit(cycle_vals["fshift"], "|")
	char_vars["fshift"] := cycle_vals["fshift"][1]
	size["fshift"] := cycle_vals["fshift"][2]
return

>!g::
	cycle_vals["g"] := Cycle(">!g", symbols["g"], char_vars["g"], size["g"])
	cycle_vals["g"] := StrSplit(cycle_vals["g"], "|")
	char_vars["g"] := cycle_vals["g"][1]
	size["g"] := cycle_vals["g"][2]
return

>!+g::
	cycle_vals["gshift"] := Cycle(">!+g", symbols["gshift"], char_vars["gshift"], size["gshift"])
	cycle_vals["gshift"] := StrSplit(cycle_vals["gshift"], "|")
	char_vars["gshift"] := cycle_vals["gshift"][1]
	size["gshift"] := cycle_vals["gshift"][2]
return

>!h::
	cycle_vals["h"] := Cycle(">!h", symbols["h"], char_vars["h"], size["h"])
	cycle_vals["h"] := StrSplit(cycle_vals["h"], "|")
	char_vars["h"] := cycle_vals["h"][1]
	size["h"] := cycle_vals["h"][2]
return

>!+h::
	cycle_vals["hshift"] := Cycle(">!+h", symbols["hshift"], char_vars["hshift"], size["hshift"])
	cycle_vals["hshift"] := StrSplit(cycle_vals["hshift"], "|")
	char_vars["hshift"] := cycle_vals["hshift"][1]
	size["hshift"] := cycle_vals["hshift"][2]
return

>!i::
	cycle_vals["i"] := Cycle(">!i", symbols["i"], char_vars["i"], size["i"])
	cycle_vals["i"] := StrSplit(cycle_vals["i"], "|")
	char_vars["i"] := cycle_vals["i"][1]
	size["i"] := cycle_vals["i"][2]
return

>!+i::
	cycle_vals["ishift"] := Cycle(">!+i", symbols["ishift"], char_vars["ishift"], size["ishift"])
	cycle_vals["ishift"] := StrSplit(cycle_vals["ishift"], "|")
	char_vars["ishift"] := cycle_vals["ishift"][1]
	size["ishift"] := cycle_vals["ishift"][2]
return

>!j::
	cycle_vals["j"] := Cycle(">!j", symbols["j"], char_vars["j"], size["j"])
	cycle_vals["j"] := StrSplit(cycle_vals["j"], "|")
	char_vars["j"] := cycle_vals["j"][1]
	size["j"] := cycle_vals["j"][2]
return

>!+j::
	cycle_vals["jshift"] := Cycle(">!+j", symbols["jshift"], char_vars["jshift"], size["jshift"])
	cycle_vals["jshift"] := StrSplit(cycle_vals["jshift"], "|")
	char_vars["jshift"] := cycle_vals["jshift"][1]
	size["jshift"] := cycle_vals["jshift"][2]
return

>!k::
	cycle_vals["k"] := Cycle(">!k", symbols["k"], char_vars["k"], size["k"])
	cycle_vals["k"] := StrSplit(cycle_vals["k"], "|")
	char_vars["k"] := cycle_vals["k"][1]
	size["k"] := cycle_vals["k"][2]
return

>!+k::
	cycle_vals["kshift"] := Cycle(">!+k", symbols["kshift"], char_vars["kshift"], size["kshift"])
	cycle_vals["kshift"] := StrSplit(cycle_vals["kshift"], "|")
	char_vars["kshift"] := cycle_vals["kshift"][1]
	size["kshift"] := cycle_vals["kshift"][2]
return

>!l::
	cycle_vals["l"] := Cycle(">!l", symbols["l"], char_vars["l"], size["l"])
	cycle_vals["l"] := StrSplit(cycle_vals["l"], "|")
	char_vars["l"] := cycle_vals["l"][1]
	size["l"] := cycle_vals["l"][2]
return

>!+l::
	cycle_vals["lshift"] := Cycle(">!+l", symbols["lshift"], char_vars["lshift"], size["lshift"])
	cycle_vals["lshift"] := StrSplit(cycle_vals["lshift"], "|")
	char_vars["lshift"] := cycle_vals["lshift"][1]
	size["lshift"] := cycle_vals["lshift"][2]
return

>!m::
	cycle_vals["m"] := Cycle(">!m", symbols["m"], char_vars["m"], size["m"])
	cycle_vals["m"] := StrSplit(cycle_vals["m"], "|")
	char_vars["m"] := cycle_vals["m"][1]
	size["m"] := cycle_vals["m"][2]
return

>!+m::
	cycle_vals["mshift"] := Cycle(">!+m", symbols["mshift"], char_vars["mshift"], size["mshift"])
	cycle_vals["mshift"] := StrSplit(cycle_vals["mshift"], "|")
	char_vars["mshift"] := cycle_vals["mshift"][1]
	size["mshift"] := cycle_vals["mshift"][2]
return

>!n::
	cycle_vals["n"] := Cycle(">!n", symbols["n"], char_vars["n"], size["n"])
	cycle_vals["n"] := StrSplit(cycle_vals["n"], "|")
	char_vars["n"] := cycle_vals["n"][1]
	size["n"] := cycle_vals["n"][2]
return

>!+n::
	cycle_vals["nshift"] := Cycle(">!+n", symbols["nshift"], char_vars["nshift"], size["nshift"])
	cycle_vals["nshift"] := StrSplit(cycle_vals["nshift"], "|")
	char_vars["nshift"] := cycle_vals["nshift"][1]
	size["nshift"] := cycle_vals["nshift"][2]
return

>!o::
	cycle_vals["o"] := Cycle(">!o", symbols["o"], char_vars["o"], size["o"])
	cycle_vals["o"] := StrSplit(cycle_vals["o"], "|")
	char_vars["o"] := cycle_vals["o"][1]
	size["o"] := cycle_vals["o"][2]
return

>!+o::
	cycle_vals["oshift"] := Cycle(">!+o", symbols["oshift"], char_vars["oshift"], size["oshift"])
	cycle_vals["oshift"] := StrSplit(cycle_vals["oshift"], "|")
	char_vars["oshift"] := cycle_vals["oshift"][1]
	size["oshift"] := cycle_vals["oshift"][2]
return

>!p::
	cycle_vals["p"] := Cycle(">!p", symbols["p"], char_vars["p"], size["p"])
	cycle_vals["p"] := StrSplit(cycle_vals["p"], "|")
	char_vars["p"] := cycle_vals["p"][1]
	size["p"] := cycle_vals["p"][2]
return

>!+p::
	cycle_vals["pshift"] := Cycle(">!+p", symbols["pshift"], char_vars["pshift"], size["pshift"])
	cycle_vals["pshift"] := StrSplit(cycle_vals["pshift"], "|")
	char_vars["pshift"] := cycle_vals["pshift"][1]
	size["pshift"] := cycle_vals["pshift"][2]
return

>!q::
	cycle_vals["q"] := Cycle(">!q", symbols["q"], char_vars["q"], size["q"])
	cycle_vals["q"] := StrSplit(cycle_vals["q"], "|")
	char_vars["q"] := cycle_vals["q"][1]
	size["q"] := cycle_vals["q"][2]
return

>!+q::
	cycle_vals["qshift"] := Cycle(">!+q", symbols["qshift"], char_vars["qshift"], size["qshift"])
	cycle_vals["qshift"] := StrSplit(cycle_vals["qshift"], "|")
	char_vars["qshift"] := cycle_vals["qshift"][1]
	size["qshift"] := cycle_vals["qshift"][2]
return

>!r::
	cycle_vals["r"] := Cycle(">!r", symbols["r"], char_vars["r"], size["r"])
	cycle_vals["r"] := StrSplit(cycle_vals["r"], "|")
	char_vars["r"] := cycle_vals["r"][1]
	size["r"] := cycle_vals["r"][2]
return

>!+r::
	cycle_vals["rshift"] := Cycle(">!+r", symbols["rshift"], char_vars["rshift"], size["rshift"])
	cycle_vals["rshift"] := StrSplit(cycle_vals["rshift"], "|")
	char_vars["rshift"] := cycle_vals["rshift"][1]
	size["rshift"] := cycle_vals["rshift"][2]
return

>!s::
	cycle_vals["s"] := Cycle(">!s", symbols["s"], char_vars["s"], size["s"])
	cycle_vals["s"] := StrSplit(cycle_vals["s"], "|")
	char_vars["s"] := cycle_vals["s"][1]
	size["s"] := cycle_vals["s"][2]
return

>!+s::
	cycle_vals["sshift"] := Cycle(">!+s", symbols["sshift"], char_vars["sshift"], size["sshift"])
	cycle_vals["sshift"] := StrSplit(cycle_vals["sshift"], "|")
	char_vars["sshift"] := cycle_vals["sshift"][1]
	size["sshift"] := cycle_vals["sshift"][2]
return

>!t::
	cycle_vals["t"] := Cycle(">!t", symbols["t"], char_vars["t"], size["t"])
	cycle_vals["t"] := StrSplit(cycle_vals["t"], "|")
	char_vars["t"] := cycle_vals["t"][1]
	size["t"] := cycle_vals["t"][2]
return

>!+t::
	cycle_vals["tshift"] := Cycle(">!+t", symbols["tshift"], char_vars["tshift"], size["tshift"])
	cycle_vals["tshift"] := StrSplit(cycle_vals["tshift"], "|")
	char_vars["tshift"] := cycle_vals["tshift"][1]
	size["tshift"] := cycle_vals["tshift"][2]
return

>!u::
	cycle_vals["u"] := Cycle(">!u", symbols["u"], char_vars["u"], size["u"])
	cycle_vals["u"] := StrSplit(cycle_vals["u"], "|")
	char_vars["u"] := cycle_vals["u"][1]
	size["u"] := cycle_vals["u"][2]
return

>!+u::
	cycle_vals["ushift"] := Cycle(">!+u", symbols["ushift"], char_vars["ushift"], size["ushift"])
	cycle_vals["ushift"] := StrSplit(cycle_vals["ushift"], "|")
	char_vars["ushift"] := cycle_vals["ushift"][1]
	size["ushift"] := cycle_vals["ushift"][2]
return

>!v::
	cycle_vals["v"] := Cycle(">!v", symbols["v"], char_vars["v"], size["v"])
	cycle_vals["v"] := StrSplit(cycle_vals["v"], "|")
	char_vars["v"] := cycle_vals["v"][1]
	size["v"] := cycle_vals["v"][2]
return

>!+v::
	cycle_vals["vshift"] := Cycle(">!+v", symbols["vshift"], char_vars["vshift"], size["vshift"])
	cycle_vals["vshift"] := StrSplit(cycle_vals["vshift"], "|")
	char_vars["vshift"] := cycle_vals["vshift"][1]
	size["vshift"] := cycle_vals["vshift"][2]
return

>!w::
	cycle_vals["w"] := Cycle(">!w", symbols["w"], char_vars["w"], size["w"])
	cycle_vals["w"] := StrSplit(cycle_vals["w"], "|")
	char_vars["w"] := cycle_vals["w"][1]
	size["w"] := cycle_vals["w"][2]
return

>!+w::
	cycle_vals["wshift"] := Cycle(">!+w", symbols["wshift"], char_vars["wshift"], size["wshift"])
	cycle_vals["wshift"] := StrSplit(cycle_vals["wshift"], "|")
	char_vars["wshift"] := cycle_vals["wshift"][1]
	size["wshift"] := cycle_vals["wshift"][2]
return

>!x::
	cycle_vals["x"] := Cycle(">!x", symbols["x"], char_vars["x"], size["x"])
	cycle_vals["x"] := StrSplit(cycle_vals["x"], "|")
	char_vars["x"] := cycle_vals["x"][1]
	size["x"] := cycle_vals["x"][2]
return

>!+x::
	cycle_vals["xshift"] := Cycle(">!+x", symbols["xshift"], char_vars["xshift"], size["xshift"])
	cycle_vals["xshift"] := StrSplit(cycle_vals["xshift"], "|")
	char_vars["xshift"] := cycle_vals["xshift"][1]
	size["xshift"] := cycle_vals["xshift"][2]
return

>!y::
	cycle_vals["y"] := Cycle(">!y", symbols["y"], char_vars["y"], size["y"])
	cycle_vals["y"] := StrSplit(cycle_vals["y"], "|")
	char_vars["y"] := cycle_vals["y"][1]
	size["y"] := cycle_vals["y"][2]
return

>!+y::
	cycle_vals["yshift"] := Cycle(">!+y", symbols["yshift"], char_vars["yshift"], size["yshift"])
	cycle_vals["yshift"] := StrSplit(cycle_vals["yshift"], "|")
	char_vars["yshift"] := cycle_vals["yshift"][1]
	size["yshift"] := cycle_vals["yshift"][2]
return

>!z::
	cycle_vals["z"] := Cycle(">!z", symbols["z"], char_vars["z"], size["z"])
	cycle_vals["z"] := StrSplit(cycle_vals["z"], "|")
	char_vars["z"] := cycle_vals["z"][1]
	size["z"] := cycle_vals["z"][2]
return

>!+z::
	cycle_vals["zshift"] := Cycle(">!+z", symbols["zshift"], char_vars["zshift"], size["zshift"])
	cycle_vals["zshift"] := StrSplit(cycle_vals["zshift"], "|")
	char_vars["zshift"] := cycle_vals["zshift"][1]
	size["zshift"] := cycle_vals["zshift"][2]
return

>!0::
	cycle_vals["ZERO"] := Cycle(">!0", symbols["ZERO"], char_vars["ZERO"], size["ZERO"])
	cycle_vals["ZERO"] := StrSplit(cycle_vals["ZERO"], "|")
	char_vars["ZERO"] := cycle_vals["ZERO"][1]
	size["ZERO"] := cycle_vals["ZERO"][2]
return

>!+0::
	cycle_vals["ZEROshift"] := Cycle(">!+0", symbols["ZEROshift"], char_vars["ZEROshift"], size["ZEROshift"])
	cycle_vals["ZEROshift"] := StrSplit(cycle_vals["ZEROshift"], "|")
	char_vars["ZEROshift"] := cycle_vals["ZEROshift"][1]
	size["ZEROshift"] := cycle_vals["ZEROshift"][2]
return

>!1::
	cycle_vals["ONE"] := Cycle(">!1", symbols["ONE"], char_vars["ONE"], size["ONE"])
	cycle_vals["ONE"] := StrSplit(cycle_vals["ONE"], "|")
	char_vars["ONE"] := cycle_vals["ONE"][1]
	size["ONE"] := cycle_vals["ONE"][2]
return

>!+1::
	cycle_vals["ONEshift"] := Cycle(">!+1", symbols["ONEshift"], char_vars["ONEshift"], size["ONEshift"])
	cycle_vals["ONEshift"] := StrSplit(cycle_vals["ONEshift"], "|")
	char_vars["ONEshift"] := cycle_vals["ONEshift"][1]
	size["ONEshift"] := cycle_vals["ONEshift"][2]
return

>!2::
	cycle_vals["TWO"] := Cycle(">!2", symbols["TWO"], char_vars["TWO"], size["TWO"])
	cycle_vals["TWO"] := StrSplit(cycle_vals["TWO"], "|")
	char_vars["TWO"] := cycle_vals["TWO"][1]
	size["TWO"] := cycle_vals["TWO"][2]
return

>!+2::
	cycle_vals["TWOshift"] := Cycle(">!+2", symbols["TWOshift"], char_vars["TWOshift"], size["TWOshift"])
	cycle_vals["TWOshift"] := StrSplit(cycle_vals["TWOshift"], "|")
	char_vars["TWOshift"] := cycle_vals["TWOshift"][1]
	size["TWOshift"] := cycle_vals["TWOshift"][2]
return

>!3::
	cycle_vals["THREE"] := Cycle(">!3", symbols["THREE"], char_vars["THREE"], size["THREE"])
	cycle_vals["THREE"] := StrSplit(cycle_vals["THREE"], "|")
	char_vars["THREE"] := cycle_vals["THREE"][1]
	size["THREE"] := cycle_vals["THREE"][2]
return

>!+3::
	cycle_vals["THREEshift"] := Cycle(">!+3", symbols["THREEshift"], char_vars["THREEshift"], size["THREEshift"])
	cycle_vals["THREEshift"] := StrSplit(cycle_vals["THREEshift"], "|")
	char_vars["THREEshift"] := cycle_vals["THREEshift"][1]
	size["THREEshift"] := cycle_vals["THREEshift"][2]
return

>!4::
	cycle_vals["FOUR"] := Cycle(">!4", symbols["FOUR"], char_vars["FOUR"], size["FOUR"])
	cycle_vals["FOUR"] := StrSplit(cycle_vals["FOUR"], "|")
	char_vars["FOUR"] := cycle_vals["FOUR"][1]
	size["FOUR"] := cycle_vals["FOUR"][2]
return

>!+4::
	cycle_vals["FOURshift"] := Cycle(">!+4", symbols["FOURshift"], char_vars["FOURshift"], size["FOURshift"])
	cycle_vals["FOURshift"] := StrSplit(cycle_vals["FOURshift"], "|")
	char_vars["FOURshift"] := cycle_vals["FOURshift"][1]
	size["FOURshift"] := cycle_vals["FOURshift"][2]
return

>!5::
	cycle_vals["FIVE"] := Cycle(">!5", symbols["FIVE"], char_vars["FIVE"], size["FIVE"])
	cycle_vals["FIVE"] := StrSplit(cycle_vals["FIVE"], "|")
	char_vars["FIVE"] := cycle_vals["FIVE"][1]
	size["FIVE"] := cycle_vals["FIVE"][2]
return

>!+5::
	cycle_vals["FIVEshift"] := Cycle(">!+5", symbols["FIVEshift"], char_vars["FIVEshift"], size["FIVEshift"])
	cycle_vals["FIVEshift"] := StrSplit(cycle_vals["FIVEshift"], "|")
	char_vars["FIVEshift"] := cycle_vals["FIVEshift"][1]
	size["FIVEshift"] := cycle_vals["FIVEshift"][2]
return

>!6::
	cycle_vals["SIX"] := Cycle(">!6", symbols["SIX"], char_vars["SIX"], size["SIX"])
	cycle_vals["SIX"] := StrSplit(cycle_vals["SIX"], "|")
	char_vars["SIX"] := cycle_vals["SIX"][1]
	size["SIX"] := cycle_vals["SIX"][2]
return

>!+6::
	cycle_vals["SIXshift"] := Cycle(">!+6", symbols["SIXshift"], char_vars["SIXshift"], size["SIXshift"])
	cycle_vals["SIXshift"] := StrSplit(cycle_vals["SIXshift"], "|")
	char_vars["SIXshift"] := cycle_vals["SIXshift"][1]
	size["SIXshift"] := cycle_vals["SIXshift"][2]
return

>!7::
	cycle_vals["SEVEN"] := Cycle(">!7", symbols["SEVEN"], char_vars["SEVEN"], size["SEVEN"])
	cycle_vals["SEVEN"] := StrSplit(cycle_vals["SEVEN"], "|")
	char_vars["SEVEN"] := cycle_vals["SEVEN"][1]
	size["SEVEN"] := cycle_vals["SEVEN"][2]
return

>!+7::
	cycle_vals["SEVENshift"] := Cycle(">!+7", symbols["SEVENshift"], char_vars["SEVENshift"], size["SEVENshift"])
	cycle_vals["SEVENshift"] := StrSplit(cycle_vals["SEVENshift"], "|")
	char_vars["SEVENshift"] := cycle_vals["SEVENshift"][1]
	size["SEVENshift"] := cycle_vals["SEVENshift"][2]
return

>!8::
	cycle_vals["EIGHT"] := Cycle(">!8", symbols["EIGHT"], char_vars["EIGHT"], size["EIGHT"])
	cycle_vals["EIGHT"] := StrSplit(cycle_vals["EIGHT"], "|")
	char_vars["EIGHT"] := cycle_vals["EIGHT"][1]
	size["EIGHT"] := cycle_vals["EIGHT"][2]
return

>!+8::
	cycle_vals["EIGHTshift"] := Cycle(">!+8", symbols["EIGHTshift"], char_vars["EIGHTshift"], size["EIGHTshift"])
	cycle_vals["EIGHTshift"] := StrSplit(cycle_vals["EIGHTshift"], "|")
	char_vars["EIGHTshift"] := cycle_vals["EIGHTshift"][1]
	size["EIGHTshift"] := cycle_vals["EIGHTshift"][2]
return

>!9::
	cycle_vals["NINE"] := Cycle(">!9", symbols["NINE"], char_vars["NINE"], size["NINE"])
	cycle_vals["NINE"] := StrSplit(cycle_vals["NINE"], "|")
	char_vars["NINE"] := cycle_vals["NINE"][1]
	size["NINE"] := cycle_vals["NINE"][2]
return

>!+9::
	cycle_vals["NINEshift"] := Cycle(">!+9", symbols["NINEshift"], char_vars["NINEshift"], size["NINEshift"])
	cycle_vals["NINEshift"] := StrSplit(cycle_vals["NINEshift"], "|")
	char_vars["NINEshift"] := cycle_vals["NINEshift"][1]
	size["NINEshift"] := cycle_vals["NINEshift"][2]
return

>!-::
	cycle_vals["DASH"] := Cycle(">!-", symbols["DASH"], char_vars["DASH"], size["DASH"])
	cycle_vals["DASH"] := StrSplit(cycle_vals["DASH"], "|")
	char_vars["DASH"] := cycle_vals["DASH"][1]
	size["DASH"] := cycle_vals["DASH"][2]
return

>!+-::
	cycle_vals["DASHshift"] := Cycle(">!+-", symbols["DASHshift"], char_vars["DASHshift"], size["DASHshift"])
	cycle_vals["DASHshift"] := StrSplit(cycle_vals["DASHshift"], "|")
	char_vars["DASHshift"] := cycle_vals["DASHshift"][1]
	size["DASHshift"] := cycle_vals["DASHshift"][2]
return

>!,::
	cycle_vals["COMMA"] := Cycle(">!,", symbols["COMMA"], char_vars["COMMA"], size["COMMA"])
	cycle_vals["COMMA"] := StrSplit(cycle_vals["COMMA"], "|")
	char_vars["COMMA"] := cycle_vals["COMMA"][1]
	size["COMMA"] := cycle_vals["COMMA"][2]
return

>!+,::
	cycle_vals["COMMAshift"] := Cycle(">!+,", symbols["COMMAshift"], char_vars["COMMAshift"], size["COMMAshift"])
	cycle_vals["COMMAshift"] := StrSplit(cycle_vals["COMMAshift"], "|")
	char_vars["COMMAshift"] := cycle_vals["COMMAshift"][1]
	size["COMMAshift"] := cycle_vals["COMMAshift"][2]
return

>!.::
	cycle_vals["DOT"] := Cycle(">!.", symbols["DOT"], char_vars["DOT"], size["DOT"])
	cycle_vals["DOT"] := StrSplit(cycle_vals["DOT"], "|")
	char_vars["DOT"] := cycle_vals["DOT"][1]
	size["DOT"] := cycle_vals["DOT"][2]
return

>!+.::
	cycle_vals["DOTshift"] := Cycle(">!+.", symbols["DOTshift"], char_vars["DOTshift"], size["DOTshift"])
	cycle_vals["DOTshift"] := StrSplit(cycle_vals["DOTshift"], "|")
	char_vars["DOTshift"] := cycle_vals["DOTshift"][1]
	size["DOTshift"] := cycle_vals["DOTshift"][2]
return

>!'::
	cycle_vals["SQUOTE"] := Cycle(">!'", symbols["SQUOTE"], char_vars["SQUOTE"], size["SQUOTE"])
	cycle_vals["SQUOTE"] := StrSplit(cycle_vals["SQUOTE"], "|")
	char_vars["SQUOTE"] := cycle_vals["SQUOTE"][1]
	size["SQUOTE"] := cycle_vals["SQUOTE"][2]
return

>!+'::
	cycle_vals["SQUOTEshift"] := Cycle(">!+'", symbols["SQUOTEshift"], char_vars["SQUOTEshift"], size["SQUOTEshift"])
	cycle_vals["SQUOTEshift"] := StrSplit(cycle_vals["SQUOTEshift"], "|")
	char_vars["SQUOTEshift"] := cycle_vals["SQUOTEshift"][1]
	size["SQUOTEshift"] := cycle_vals["SQUOTEshift"][2]
return

>!;::
	cycle_vals["COLON"] := Cycle(">!;", symbols["COLON"], char_vars["COLON"], size["COLON"])
	cycle_vals["COLON"] := StrSplit(cycle_vals["COLON"], "|")
	char_vars["COLON"] := cycle_vals["COLON"][1]
	size["COLON"] := cycle_vals["COLON"][2]
return

>!+;::
	cycle_vals["COLONshift"] := Cycle(">!+;", symbols["COLONshift"], char_vars["COLONshift"], size["COLONshift"])
	cycle_vals["COLONshift"] := StrSplit(cycle_vals["COLONshift"], "|")
	char_vars["COLONshift"] := cycle_vals["COLONshift"][1]
	size["COLONshift"] := cycle_vals["COLONshift"][2]
return

>!=::
	cycle_vals["EQUALS"] := Cycle(">!=", symbols["EQUALS"], char_vars["EQUALS"], size["EQUALS"])
	cycle_vals["EQUALS"] := StrSplit(cycle_vals["EQUALS"], "|")
	char_vars["EQUALS"] := cycle_vals["EQUALS"][1]
	size["EQUALS"] := cycle_vals["EQUALS"][2]
return

>!+=::
	cycle_vals["EQUALSshift"] := Cycle(">!+=", symbols["EQUALSshift"], char_vars["EQUALSshift"], size["EQUALSshift"])
	cycle_vals["EQUALSshift"] := StrSplit(cycle_vals["EQUALSshift"], "|")
	char_vars["EQUALSshift"] := cycle_vals["EQUALSshift"][1]
	size["EQUALSshift"] := cycle_vals["EQUALSshift"][2]
return

>!Left::
	cycle_vals["LEFT"] := Cycle(">!Left", symbols["LEFT"], char_vars["LEFT"], size["LEFT"])
	cycle_vals["LEFT"] := StrSplit(cycle_vals["LEFT"], "|")
	char_vars["LEFT"] := cycle_vals["LEFT"][1]
	size["LEFT"] := cycle_vals["LEFT"][2]
return

>!Right::
	cycle_vals["RIGHT"] := Cycle(">!Right", symbols["RIGHT"], char_vars["RIGHT"], size["RIGHT"])
	cycle_vals["RIGHT"] := StrSplit(cycle_vals["RIGHT"], "|")
	char_vars["RIGHT"] := cycle_vals["RIGHT"][1]
	size["RIGHT"] := cycle_vals["RIGHT"][2]
return

>!Up::
	cycle_vals["UP"] := Cycle(">!Up", symbols["UP"], char_vars["UP"], size["UP"])
	cycle_vals["UP"] := StrSplit(cycle_vals["UP"], "|")
	char_vars["UP"] := cycle_vals["UP"][1]
	size["UP"] := cycle_vals["UP"][2]
return

>!Down::
	cycle_vals["DOWN"] := Cycle(">!Down", symbols["DOWN"], char_vars["DOWN"], size["DOWN"])
	cycle_vals["DOWN"] := StrSplit(cycle_vals["DOWN"], "|")
	char_vars["DOWN"] := cycle_vals["DOWN"][1]
	size["DOWN"] := cycle_vals["DOWN"][2]
return

~RAlt Up::
	for key, value in char_vars
		char_vars[key] := 1
	for key, value in size
		size[key] := -1
return

PostCycle(symbols, kb_keys)
{
	SendEvent {Shift down}{Left 3}{Shift up}{Ctrl down}{c down}{c up}{Ctrl up}{Right 3}
	hk := Clipboard
	hk2 := SubStr(hk, 2, 2)
	hk1 := SubStr(hk, 3, 1)
	i := 1
	cut := 3
	n := 0
	Loop, 88
	{
		if (HasVal(symbols[kb_keys[i]], hk) != 0)
		{
			n := HasVal(symbols[kb_keys[i]], hk)
			n++
			break
		}
		else if (HasVal(symbols[kb_keys[i]], hk2) != 0)
		{
			n := HasVal(symbols[kb_keys[i]], hk2)
			n++
			cut := 2
			break
		}
		else if (HasVal(symbols[kb_keys[i]], hk1) != 0)
		{
			n := HasVal(symbols[kb_keys[i]], hk1)
			n++
			cut := 1
			break
		}
		i++
	}
	if (n != 0)
	{
		;MsgBox, %n%
		len := symbols[kb_keys[i]].MaxIndex()
		if (n > len)
		{
			n := 1
		}
		SendInput {BackSpace %cut%}
		;MsgBox, %n%
		SendInput % symbols[kb_keys[i], n]
	}
}

~RCtrl::
	PostCycle(symbols, kb_keys)
return

>!del::
	ExitApp
return
