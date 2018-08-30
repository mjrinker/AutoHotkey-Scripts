#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#HotkeyInterval 1000
#MaxHotkeysPerInterval 300

a_symbols := "ɑ æ ɐ ɑ̃"
ashift_symbols := "A"
b_symbols := "β ɓ ʙ"
bshift_symbols := "B"
c_symbols := "ɕ ç"
cshift_symbols := "̯"
d_symbols := "ð d͡ʒ ɖ ɗ"
dshift_symbols := "̪̺"
e_symbols := "ə ɚ ɵ ɘ"
eshift_symbols := "ᵊ"
f_symbols := "͡ ͜ ‿"
fshift_symbols := "ː ˑ̆"
g_symbols := "ɠ ɢ ʛ ɡ"
gshift_symbols := "G"
h_symbols := "ɥ ɦ ħ ɧ ʜ"
hshift_symbols := "ʰ ʱ"
i_symbols := "ɪ ɪ̈ ɨ"
ishift_symbols := "̩"
j_symbols := "ʝ ɟ ʄ"
jshift_symbols := "ʲ"
k_symbols := "ǀ ǁ ǂ ǃ ʘ"
kshift_symbols := "K"
l_symbols := "ɫ ɬ ʟ ɭ ɮ"
lshift_symbols := "ˡ"
m_symbols := "ɱ"
mshift_symbols := "̼"
n_symbols := "ŋ ɲ ɴ ɳ"
nshift_symbols := "ⁿ"
o_symbols := "ɔ œ ø ɒ ɔ̃ ɶ"
oshift_symbols := "̥ ̊ ̻"
p_symbols := "ɸ"
pshift_symbols := "P"
q_symbols := "q"
qshift_symbols := "́ ̀"
r_symbols := "ɾ ʁ ɹ ɻ ʀ ɽ ɺ"
rshift_symbols := "ʳ ˞"
s_symbols := "ʃ ʂ"
sshift_symbols := "̃ ̴ ̰"
t_symbols := "θ ʈ"
tshift_symbols := "ᵗ"
u_symbols := "ʊ ʊ̈ ʉ"
ushift_symbols := "U"
v_symbols := "ʌ ʋ ⱱ"
vshift_symbols := "̬"
w_symbols := "ʍ ɯ ɰ"
wshift_symbols := "ʷ"
x_symbols := "χ"
xshift_symbols := "̽"
y_symbols := "ʎ ɣ ʏ ɤ"
yshift_symbols := "ˠ"
z_symbols := "ʒ ʐ ʑ"
zshift_symbols := "Z"
ZERO_symbols := "∅̊"
ZEROshift_symbols := "0"
ONE_symbols := "| ‖"
ONEshift_symbols := "1"
TWO_symbols := "ʔ ʕ ʢ ʡ"
TWOshift_symbols := "ˤ ˀ"
THREE_symbols := "ɛ ɜ ɝ ɛ̃ ɞ"
THREEshift_symbols := "3"
FOUR_symbols := "4"
FOURshift_symbols := "4"
FIVE_symbols := "5"
FIVEshift_symbols := "5"
SIX_symbols := "6"
SIXshift_symbols := "6"
SEVEN_symbols := "7"
SEVENshift_symbols := "̚"
EIGHT_symbols := "8"
EIGHTshift_symbols := "8"
NINE_symbols := "9"
NINEshift_symbols := "9"
DASH_symbols := "– —"
DASHshift_symbols := "-"
COMMA_symbols := "ˈ ˌ ʼ"
COMMAshift_symbols := "̹ ̜"
DOT_symbols := "ː ˑ̆"
DOTshift_symbols := "̈ ̤"
SQUOTE_symbols := "ˈ ˌ ʼ"
SQUOTEshift_symbols := "“ ”"
COLON_symbols := "ː ˑ̆"
COLONshift_symbols := ":"
LEFT_symbols := "̟ ̘"
RIGHT_symbols := "̠ ̙ →"
UP_symbols := "̝"
DOWN_symbols := "̞"

Cycle(hk, keys, n, size)
{
	if (A_PriorHotkey = hk or A_PriorHotkey = "")
	{
		timesincepriorhotkey := A_TimeSincePriorHotkey
		if (timesincepriorhotkey > 500 or timesincepriorhotkey = -1)
		{
			n := 1
		}
		else
		{
			Loop, %size%
			{
				SendInput {BackSpace}
			}
		}
	}
	;SendInput % SubStr(keys, n, 1)
	keys_array := StrSplit(keys, " ")
	SendInput % keys_array[n]
	n++
	;if (n > StrLen(keys))
	if (n > keys_array.MaxIndex())
	{
		n = 1
	}
	;return %n%
	return n "|" StrLen(keys_array[n-1])
}


d := 1
d_size := 0

a := 1
a_size := 0
>!a::
	a := Cycle(">!a", a_symbols, a, a_size)
return

b := 1
b_size := 0
>!b::
	b := Cycle(">!b", b_symbols, b, b_size)
return

c := 1
c_size := 0
>!c::
	c := Cycle(">!c", c_symbols, c, c_size)
return

>!d::
	d_array := Cycle(">!d", d_symbols, d, d_size)
	d_array := StrSplit(d_array, "|")
	;MsgBox, % d_array[1]
	;MsgBox, % d_array[2]
	d := d_array[1]
	d_size := d_array[2]
return

e := 1
e_size := 0
>!e::
	e := Cycle(">!e", e_symbols, e, e_size)
return

f := 1
f_size := 0
>!f::
	f := Cycle(">!f", f_symbols, f, f_size)
return

g := 1
g_size := 0
>!g::
	g := Cycle(">!g", g_symbols, g, g_size)
return

h := 1
h_size := 0
>!h::
	h := Cycle(">!h", h_symbols, h, h_size)
return

i := 1
i_size := 0
>!i::
	i := Cycle(">!i", i_symbols, i, i_size)
return

j := 1
j_size := 0
>!j::
	j := Cycle(">!j", j_symbols, j, j_size)
return

k := 1
k_size := 0
>!k::
	k := Cycle(">!k", k_symbols, k, k_size)
return

l := 1
l_size := 0
>!l::
	l := Cycle(">!l", l_symbols, l, l_size)
return

m := 1
m_size := 0
>!m::
	m := Cycle(">!m", m_symbols, m, m_size)
return

n := 1
n_size := 0
>!n::
	n := Cycle(">!n", n_symbols, n, n_size)
return

o := 1
o_size := 0
>!o::
	o := Cycle(">!o", o_symbols, o, o_size)
return

p := 1
p_size := 0
>!p::
	p := Cycle(">!p", p_symbols, p, p_size)
return

q := 1
q_size := 0
>!q::
	q := Cycle(">!q", q_symbols, q, q_size)
return

r := 1
r_size := 0
>!r::
	r := Cycle(">!r", r_symbols, r, r_size)
return

s := 1
s_size := 0
>!s::
	s := Cycle(">!s", s_symbols, s, s_size)
return

t := 1
t_size := 0
>!t::
	t := Cycle(">!t", t_symbols, t, t_size)
return

u := 1
u_size := 0
>!u::
	u := Cycle(">!u", u_symbols, u, u_size)
return

v := 1
v_size := 0
>!v::
	v := Cycle(">!v", v_symbols, v, v_size)
return

w := 1
w_size := 0
>!w::
	w := Cycle(">!w", w_symbols, w, w_size)
return

x := 1
x_size := 0
>!x::
	x := Cycle(">!x", x_symbols, x, x_size)
return

y := 1
y_size := 0
>!y::
	y := Cycle(">!y", y_symbols, y, y_size)
return

z := 1
z_size := 0
>!z::
	z := Cycle(">!z", z_symbols, z, z_size)
return

ZERO := 1
>!0::
	ZERO := Cycle(">!0", 0_symbols, 0, 0_size)
return

ONE := 1
>!1::
	ONE := Cycle(">!1", 1_symbols, 1, 1_size)
return

TWO := 1
>!2::
	TWO := Cycle(">!2", 2_symbols, 2, 2_size)
return

THREE := 1
>!3::
	THREE := Cycle(">!3", 3_symbols, 3, 3_size)
return

FOUR := 1
>!4::
	FOUR := Cycle(">!4", 4_symbols, 4, 4_size)
return

FIVE := 1
>!5::
	FIVE := Cycle(">!5", 5_symbols, 5, 5_size)
return

SIX := 1
>!6::
	SIX := Cycle(">!6", 6_symbols, 6, 6_size)
return

SEVEN := 1
>!7::
	SEVEN := Cycle(">!7", 7_symbols, 7, 7_size)
return

EIGHT := 1
>!8::
	EIGHT := Cycle(">!8", 8_symbols, 8, 8_size)
return

NINE := 1
>!9::
	NINE := Cycle(">!9", 9_symbols, 9, 9_size)
return

DASH := 1
>!VKBD::
	DASH := Cycle(">!VKBD", VKBD_symbols, VKBD, VKBD_size)
return

COMMA := 1
>!VKBC::
	COMMA := Cycle(">!VKBC", VKBC_symbols, VKBC, VKBC_size)
return

DOT := 1
>!VKBE::
	DOT := Cycle(">!VKBE", VKBE_symbols, VKBE, VKBE_size)
return

SQUOTE := 1
>!VKDE::
	SQUOTE := Cycle(">!VKDE", VKDE_symbols, VKDE, VKDE_size)
return

COLON := 1
>!VKBA::
	COLON := Cycle(">!VKBA", VKBA_symbols, VKBA, VKBA_size)
return

LEFT_var := 1
>!VK25::
	LEFT_var := Cycle(">!VK25", VK25_symbols, VK25, VK25_size)
return

RIGHT_var := 1
>!VK27::
	RIGHT_var := Cycle(">!VK27", VK27_symbols, VK27, VK27_size)
return

UP_var := 1
>!VK26::
	UP_var := Cycle(">!VK26", VK26_symbols, VK26, VK26_size)
return

DOWN_var := 1
>!VK28::
	DOWN_var := Cycle(">!VK28", VK28_symbols, VK28, VK28_size)
return









^del::
	ExitApp
return


/**
|-----IPA SYMBOLS-----|

ɑæɐɑ̃ɔɒ
βɓʙ
ɕç
ðd͡ʒɖɗ
əɚɵɘᵊ
͡   ͜   ‿ ̯ ̆ ̹ ̜
ɡɠɢʛɣˠ
ɥɦħɧʜʰ ʱ
ɪɪ̈ɨ ̩
ʝɟʄʲ
ǀ ǁ ǂ ǃ ʘ
ɫɬʟɭɮ ˡ
ɱɯɰ
ŋɲɴɳ ̃ ⁿ
ɔœøɒɔ̃ɶ∅ ̊ ̥ ̻
ɸ
ˈˌ
ɾʁɹɻʀɽɺʳ˞
ʃʂ
θt͡ʃt͡sʈ ᵗ
ʊʊ̈ʉ
ʌʋⱱɣ ̬ ˠ
ʍɯɰʷ
χ ̽
ʎɣʏɤˠ
ʒʐʑ
∅
| ‖
ʔʕʢʡ ˤ ˀ
ɛɜɝɛ̃ɞ
̚
ː ˑ ̆  ̈  ̃ ̴  ̰  ̼
– —
̟ ̘
̠ ̙ →
̝
̞
̏  ̀  ̄  ́  ̋  ̂  ̌  ᷅  ᷄  ᷈  
˩ ˨ ˧ ˦ ˥ ˥˩ ˩˥ ˩˨ ˦˥ ˧˦˧ ↓ ↑ ↘ ↗
́  ̀

|---------END---------|
*/
