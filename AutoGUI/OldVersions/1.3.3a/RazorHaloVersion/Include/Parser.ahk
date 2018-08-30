ParseScript(Source) {
	m.Code := ""

	;Added to disable these vars unless in the script beibg loaded -RH
	Script.NoEnv := 0
	Script.Warn := ""
	Script.SingleInstance := ""
	Script.WorkingDir := ""
	Script.SendMode := ""
	hAnchor := []
	g.Window.GuiClose := false
	g.Window.GuiEscape := false
	NoReturn := True
	Loop Parse, Source, `n, `r
	{
		If (A_LoopField = g_Delimiter) {
			GuiLoaded := True
			If (NoReturn = True) {
				g.Window.GuiClose := False
				g.Window.GuiEscape := False
				g.Window.GuiSize := False
				g.Window.GuiContextMenu := False
				g.Window.GuiDropFiles := False
				g.Window.OnClipboardChange := False
			}
		}
		
		; Sets the Tabindex and Tabcontrol numbers for the current controls - RH
		IfInString A_LoopField, Gui Add`, Tab2`,
			fTabControl++
		If (RegExMatch(A_LoopField, "iO)^\s*?Gui\s*\,?\s*(\w+\:)?\s?Tab,\s?(?P<TabIndex>([\w\+\-\s]+))", Rex))
			fTabIndex := RegExReplace(Rex.TabIndex, "[\r\n]*")
			
		If (!GuiLoaded) {
		
					; Get Window Events in script to set proper checkboxes -RH
			IfInString A_LoopField, Close: 
				g.Window.GuiClose := 1
			IfInString A_LoopField, Escape: 
				g.Window.GuiEscape := 1
			IfInString A_LoopField, Size:
				g.Window.GuiSize := 1
			IfInString A_LoopField, ContextMenu: 
				g.Window.GuiContextMenu := 1
			IfInString A_LoopField, DropFiles:
				g.Window.GuiDropFiles := 1
			IfInString A_LoopField, OnClipboardChange: 
				g.Window.OnClipboardChange := 1
			If (A_LoopField = "Return") {
				NoReturn := False
			}
			;Get Script Options to set correct Checkboxes and set correct item in dropdown choices -RH
			IfInString A_LoopField, #NoEnv 
				Script.NoEnv := 1
			IfInString A_LoopField, #Warn
				If (SubStr(A_LoopField,9) = "")
					Script.Warn := "MsgBox"
				Else
					Script.Warn := RegExReplace(SubStr(A_LoopField,9), "[\r\n]*")
			IfInString A_LoopField, #SingleInstance 
				Script.SingleInstance := SubStr(A_LoopField,17)
			IfInString A_LoopField, #NoTrayIcon 
				Script.NoTrayIcon := 1
			IfInString A_LoopField, SetWorkingDir
				{
				Script.WorkingDir := SubStr(A_LoopField,15)
				SetWorkingDir % RegExReplace(SubStr(A_LoopField,15), "[\r\n]*")
				}
			IfInString A_LoopField, SendMode
				Script.SendMode := RegExReplace(SubStr(A_LoopField,10), "[\r\n]*")
			IfInString A_LoopField, SetBatchLines 
				Script.NoBatchLines := 1
			IfInString A_LoopField, ListLines 
				Script.ListLinesOff := 1
			IfInString A_LoopField, #Persistent 
				Script.Persistent := 1
			IfInString A_LoopField, Menu Tray`, UseErrorLevel
				Script.IgnoreMenuErrors := 1
						
			;Get Font Info,  for some reason needs to be applied 2 lines after it appears in script to be be applied to the correct control - RH
			If A_LoopField = Gui Font
				Gui %Child%: Font
			If (fft = A_Index-2)
				{
				g[hwnd].fontoptions := flfont
				fft = 0
				}
			IfInString A_LoopField, Font`,
				{
				flFont := Substr(A_Loopfield,11)
				fft := A_Index
				Gui %Child%: Font, % flFont
				}
		
		
		
			; Match menu item
			If (RegExMatch(A_LoopField, "iO)^Menu\s*\,?\s*(?P<MenuName>([\w]+)),\s?Add(,\s?(?P<MenuItem>.*),\s?(?P<GoSub>([\w\:]+)))?", Rex)) {
				m.Code .= "Menu " . Rex.MenuName . ", Add, " . Rex.MenuItem . ", " . Rex.GoSub . CRLF
				Menu % Rex.MenuName, Add, % Rex.MenuItem, % Rex.GoSub
			} Else If (RegExMatch(A_LoopField, "iO)^Menu\s*\,?\s*(?P<MenuName>([\w]+)),\s?Add", Rex)) {
				m.Code .= "Menu " . Rex.MenuName . ", Add`n"
				Menu % Rex.MenuName, Add
			}
			
					;Added to Load Window options - RH
			If (RegExMatch(A_LoopField, "iO)^\s*?Gui\s*\,?\s*(\w+\:)?\s?New,\s?(?P<Options>([\w\+\-\s]+))", Rex)) {
			g.Window.Options := RegExReplace(Rex.Options, "([\,\s]?g\w+|[\,\s]?v\w+)")
			g.Window.Options := StrReplace(g.window.options, "+OwnDialo", "+OwnDialogs")
			IfInString A_LoopField, : New
				g.Window.Name := SubStr(A_LoopField, 5,InStr(A_LoopField, ":")-5)
			Loop Parse, % g.Window.Options, %A_Space% 
				{
				IfInString A_LoopField, Label
					g.Window.Label := SubStr(A_LoopField,6)
				IfInString A_LoopField, hwnd
					g.Window.hWndvar := SubStr(A_LoopField,5)
				}
			g.Window.Options := StrReplace(g.window.options, "Label"g.window.label)
			g.Window.Options := StrReplace(g.window.options, "hWnd"g.window.hWndVar)
		}
		
			IfInString A_LoopField, Gui Color`,	;Loads the background Colour -RH
				g.Window.Color := SubStr(A_LoopField,12)
			IfInString A_LoopField,	Menu Tray`, Icon	;Loads the Tray Icon - RH
				Loop Parse, A_LoopField, `,
					{
					If A_Index = 3
						g.Window.Icon := SubStr(A_LoopField,2)
					If A_Index = 4
						g.Window.IconIndex := SubStr(A_LoopField,2)
					}

			; Match control
			If (RegExMatch(A_LoopField, "iO)^\s*?Gui\s*\,?\s*(\w+\:)?\s?Add,\s?(?P<Type>([A-Za-z]+)\d?),\s?(?P<Options>([\w\+\-\s]+))(,\s?(?P<Text>(.+)))?", Rex)) {
				;OutputDebug % Rex.Type . ", " . Rex.Options . ", " . Rex.Text

				ParseControlOptions := ""
				Position := ""
				vVar := ""
				gLabel := ""
				hWndVar := ""
				Style := ""
				ExStyle := ""

				Options := StrSplit(Rex.Options, " ")
				For Each, Item in Options {
					If (Item ~= "i)\+?(Grid|Vertical|VScroll)") {
						ParseControlOptions .= Item . " "
					} Else If (Item ~= "i)^\+?v") {
						vVar := RegExReplace(Item, "i)^\+?v")
					} Else If (Item ~= "i)^\+?g") {
						gLabel := RegExReplace(Item, "i)^\+?g")
					} Else If (Item ~= "i)^\+?hWnd") {
						hWndVar := RegExReplace(Item, "i)^\+?hWnd")
					} Else If (Item ~= "i)^(x|y)" || Item ~= "i)^(w|h)p" || Item ~= "i)^(w|h)\d+") {
						Position .= Item . " "
					} Else If (InStr(Item, "0") == 1) {
						Style := Item
					} Else If (InStr(Item, "E0") == 1) {
						ExStyle := Item
					} Else {
						ParseControlOptions .= Item . " "
					}
				}
				
				TabPos := [fTabIndex, fTabControl] ; Controls Tab placement of controls -RH
				
				IfInString A_LoopField, Gui Add`, Tab2`,
				TabPos := ""

				If (Rex.Type = "StatusBar" && StatusBarExist()) {
					GuiControl %Child%: Show, msctls_statusbar321
				} Else {
					Try {
						If fTabIndex  ; Puts the controls into the correct tab in gui window - RH
							Gui %Child%: Tab, % TabPos[1], % TabPos[2]
						Gui %Child%: Add, % Rex.Type
						, % "hWndhWnd " . Position . " " . ParseControlOptions . " " . Style . " " . ExStyle, % Rex.Text
					} Catch e {
						MsgBox 0x10, Error
						, % RexType . ", " Position . " " . ParseControlOptions . " " . Style . " " . ExStyle . " " . Rex.Text
					}
				}

				If (Rex.Type = "TreeView") {
					Parent := TV_Add("TreeView")
					TV_Add("Child", Parent)
				}
				GuiControlGet c, %Child%: Pos, %hWnd%
				Register(hWnd, Rex.Type, "", Rex.Text, cx, cy, cw, ch, hWndVar, vVar, gLabel, ParseControlOptions, Style, ExStyle, "", "", TabPos)
				g.ControlList.Insert(hWnd)
				hAnchor[hWndVar] := hWnd
			}
			
			IfInString A_LoopField, AutoXYWH(  ;Detects if there are anchored controls, sets the anchor flag and loads the anchor coords into the controls variables list -RH
			{
				StringReplace scr, A_Loopfield, `", , All ;"; extra quote in comment stops of syntax hilighting incorretly for the following lines :) - RH
				RegExMatch(scr, "iO)^\s*?AutoXYWH\s*\(?\s*(?P<Anchor>([\w\+\-\s]+)),\s?(?P<CtlhWndVar>(.+)\w)", Rex)
				g.Anchor := True
				g[hAnchor[rex.ctlhwndvar]].Anchor := Rex.Anchor

			}

			; Match Gui Show
			If (RegExMatch(A_LoopField, "iO)^Gui\s?\,?\s?Show,\s?(?P<Options>([\w\s]+)),?\s?(?P<Title>(.+))?", Rex)) {
				Gui %Child%: Show, % Rex.Options, % Rex.Title
				g.Window.Title := Rex.Title
				Options := StrSplit(Rex.Options, " ")
				For Each, Item in Options {
					If (Item ~= "i)^\+?x") {
						g.Window.x := RegExReplace(Item, "i)^\+?x")
						g.Window.Center := 0
						}
					If (Item ~= "i)^\+?y") {
						g.Window.y := RegExReplace(Item, "i)^\+?y")
						g.Window.Center := 0
						}
					If (Item ~= "i)^\+?w")
						g.Window.w := RegExReplace(Item, "i)^\+?w")
					If (Item ~= "i)^\+?h")
						g.Window.h := RegExReplace(Item, "i)^\+?h")
				}
			}
		} ; End of If(!GuiLoaded)
	} ; End of the main parse loop
	SetWorkingDir %A_ScriptDir%
	
	If (m.Code != "") {
		m.Code .= "Gui Menu, MenuBar" . CRLF
		Gui %Child%: Menu, MenuBar
	}

	GenerateCode()
	Properties_Reload()
}
