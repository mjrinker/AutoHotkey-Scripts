ParseScript(Script) {
    m.Code := ""

    Loop Parse, Script, `n, `r
    {
        ; Match menu item
        If (RegExMatch(A_LoopField, "iO)^Menu\s*\,?\s*(?P<MenuName>([\w]+)),\s?Add(,\s?(?P<MenuItem>.*),\s?(?P<GoSub>([\w\:]+)))?", Rex)) {
            m.Code .= "Menu " . Rex.MenuName . ", Add, " . Rex.MenuItem . ", " . Rex.GoSub . CRLF
            Menu % Rex.MenuName, Add, % Rex.MenuItem, % Rex.GoSub
        } Else If (RegExMatch(A_LoopField, "iO)^Menu\s*\,?\s*(?P<MenuName>([\w]+)),\s?Add", Rex)) {
            m.Code .= "Menu " . Rex.MenuName . ", Add`n"
            Menu % Rex.MenuName, Add
        }

        ; Match control
        If (RegExMatch(A_LoopField, "iO)^\s*?Gui\s*\,?\s*(\w+\:)?\s?Add,\s?(?P<Type>([A-Za-z]+)\d?),\s?(?P<Options>([\w\+\-\s]+))(,\s?(?P<Text>(.+)))?", Rex)) {
            ;OutputDebug % Rex.Type . ", " . Rex.Options . ", " . Rex.Text

            ControlOptions := ""
            Position := ""
            vVar := ""
            gLabel := ""
            hWndVar := ""
            Style := ""
            ExStyle := ""

            Options := StrSplit(Rex.Options, " ")
            For Each, Item in Options {
                If (Item ~= "i)\+?(Grid|Group|Vertical|VScroll)") {
                    ControlOptions .= Item . " "
                } Else If (Item ~= "i)\+?v") {
                    vVar := RegExReplace(Item, "i)^\+?v")
                } Else If (Item ~= "i)^\+?g") {
                    gLabel := Item
                } Else If (Item ~= "i)^\+?hWnd") {
                    hWndVar := RegExReplace(Item, "i)^\+?hWnd")
                } Else If (Item ~= "i)^(x|y)" || Item ~= "i)^(w|h)p" || Item ~= "i)^(w|h)\d+") {
                    Position .= Item . " "
                } Else If (InStr(Item, "0") == 1) {
                    Style := Item
                } Else If (InStr(Item, "E0") == 1) {
                    ExStyle := Item
                } Else {
                    ControlOptions .= Item . " "
                }
            }

            If (Rex.Type = "StatusBar" && StatusBarExist()) {
                GuiControl %Child%: Show, msctls_statusbar321
            } Else {
                Try {
                    Gui %Child%: Add, % Rex.Type
                    , % "hWndhWnd " . Position . " " . ControlOptions . " " . Style . " " . ExStyle, % Rex.Text
                } Catch e {
                    MsgBox 0x10, Error
                    , % RexType . ", " Position . " " . ControlOptions . " " . Style . " " . ExStyle . " " . Rex.Text
                }
            }

            If (Rex.Type = "TreeView") {
                Parent := TV_Add("TreeView")
                TV_Add("Child", Parent)
            }

            GuiControlGet c, %Child%: Pos, %hWnd%
            Register(hWnd, Rex.Type, "", Rex.Text, cx, cy, cw, ch, hWndVar, vVar, "", ControlOptions, Style, ExStyle, "", "", TabPos)

            g.ControlList.Insert(hWnd)
        }

        ; Match Gui Show
        If (RegExMatch(A_LoopField, "iO)^Gui\s?\,?\s?Show,\s?(?P<Options>([\w\s]+)),?\s?(?P<Title>(.+))?", Rex)) {
            Gui %Child%: Show, % Rex.Options, % Rex.Title
            WinGetPos,,, Width, Height
            g.Window.w := Width
            g.Window.h := Height
        }
    }

    If (m.Code != "") {
        m.Code .= "Gui Menu, MenuBar" . CRLF
        Gui %Child%: Menu, MenuBar
    }

    GenerateCode()
    Properties_Reload()
}
