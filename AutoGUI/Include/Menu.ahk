; File Menu
;AddMenu("AutoFileMenu", "New &GUI`tCtrl+P", "NewGUI", IconLib, 6)
AddMenu("AutoFileMenu", "&New File`tCtrl+N", "NewTab", IconLib, 7)
AddMenu("AutoFileMenu", "New From &Template`tCtrl+T", "NewFromTemplate", IconLib, 100)
Menu AutoFileMenu, Add
AddMenu("AutoFileMenu", "&Open File...`tCtrl+O", "OpenFile", IconLib, 9)
AddMenu("AutoFileMenu", "Open Included File...", "ShowIncludesDialog", IconLib, 101)
Menu AutoFileMenu, Add
AddMenu("AutoFileMenu", "Recent &Files",, IconLib, 42)
Menu AutoFileMenu, Disable, Recent &Files
Menu AutoFileMenu, Add
AddMenu("AutoFileMenu", "Import G&UI...`tCtrl+I", "ImportGUI", IconLib, 40)
Menu AutoFileMenu, Add
AddMenu("AutoFileMenu", "&Save`tCtrl+S", "Save", IconLib, 10)
AddMenu("AutoFileMenu", "Save &As...`tCtrl+Shift+S", "SaveAs")
;AddMenu("AutoFileMenu", "Copy to Clip&board", "CopyToClipboard", IconLib, 11)
Menu AutoFileMenu, Add
AddMenu("AutoFileMenu", "Load Session",, IconLib, 102)
AddMenu("AutoFileMenu", "Save Session...", "SaveSession")
Menu AutoFileMenu, Add
AddMenu("AutoFileMenu", "&Close File`tCtrl+W", "CloseTab", IconLib, 8)
AddMenu("AutoFileMenu", "Close All Tabs", "CloseAllTabs")
Menu AutoFileMenu, Add
AddMenu("AutoFileMenu", "Com&pile...", "Compile", IconLib, 13)
Menu AutoFileMenu, Add
AddMenu("AutoFileMenu", "E&xit`tAlt+Q", "AutoClose")

; Edit Menu
;Menu AutoEditMenu, Add, &Undo`tCtrl+Z, Undo
Menu AutoEditMenu, Add, R&edo`tCtrl+Y, Redo
Menu AutoEditMenu, Add
Menu AutoEditMenu, Add, Cu&t`tCtrl+X, Cut
Menu AutoEditMenu, Add, &Copy`tCtrl+C, Copy
Menu AutoEditMenu, Add, &Paste`tCtrl+V, Paste
Menu AutoEditMenu, Add, &Delete`tDel, Clear
Menu AutoEditMenu, Add, Select &All`tCtrl+A, SelectAll
Menu AutoEditMenu, Add
Menu AutoEditMenu, Add, &Find...`tCtrl+F, ShowSearchDialog
Menu AutoEditMenu, Add, Find &Next`tF3, FindNext
Menu AutoEditMenu, Add, &Replace...`tCtrl+H, ShowReplaceDialog
Menu AutoEditMenu, Add, &Go to Line...`tCtrl+G, ShowGoToLineDialog
Menu AutoEditMenu, Add
Menu AutoEditMenu, Add, &Mark Selected Text`tCtrl+M, MarkSelectedText
Menu AutoEditMenu, Add, Go to Next Mark`tCtrl+PgDn, GoToNextMark
Menu AutoEditMenu, Add, Go to Previous Mark`tCtrl+PgUp, GoToPreviousMark
Menu AutoEditMenu, Add, Clear All Mar&ks`tAlt+M, ClearAllMarks
Menu AutoEditMenu, Add
Menu AutoEditMenu, Add, &Insert Date and Time`tCtrl+D, InsertDateTime

; Convert Menu
;Menu AutoConvertMenu, Add, &UPPERCASE`tCtrl+Shift+U, Uppercase
Menu AutoConvertMenu, Add, &lowercase`tCtrl+Shift+L, Lowercase
Menu AutoConvertMenu, Add, &Title Case`tCtrl+Shift+T, TitleCase
Menu AutoConvertMenu, Add
Menu AutoConvertMenu, Add, Decimal to &Hexadecimal`tCtrl+Shift+H, Dec2Hex
Menu AutoConvertMenu, Add, Hexadecimal to &Decimal`tCtrl+Shift+D, Hex2Dec
Menu AutoConvertMenu, Add
Menu AutoConvertMenu, Add, Win32 Constant: Declare, ReplaceConstant
Menu AutoConvertMenu, Add, Win32 Constant: SendMessage, ReplaceConstant
Menu AutoConvertMenu, Add, Win32 Constant: OnMessage, ReplaceConstant
Menu AutoConvertMenu, Add
Menu AutoConvertMenu, Add, Comment/Uncomment`tCtrl+K, ToggleComment

; Control Menu (menu bar)
;AddMenu("AutoControlMenu", "Change Text...", "ChangeText", IconLib, 14)
Menu AutoControlMenu, Add
AddMenu("AutoControlMenu", "Cut", "CutControl", IconLib, 15)
AddMenu("AutoControlMenu", "Copy", "CopyControl", IconLib, 16)
AddMenu("AutoControlMenu", "Paste", "PasteControl", IconLib, 17)
AddMenu("AutoControlMenu", "Delete", "DeleteSelectedControls", IconLib, 18)
AddMenu("AutoControlMenu", "Select &All", "SelectAllControls", IconLib, 41)
Menu AutoControlMenu, Add
AddMenu("AutoControlMenu", "Position and Size...", "ShowAdjustPositionDialog", IconLib, 75)
AddMenu("AutoControlMenu", "Font...", "ShowFontDialog", IconLib, 20)
AddMenu("AutoControlMenu", "Styles...", "ShowStylesDialog", IconLib, 19)
AddMenu("AutoControlMenu", "Options...", "ShowOptionsTab", IconLib, 91)
Menu AutoControlMenu, Add
AddMenu("AutoControlMenu", "Properties", "ShowProperties", IconLib, 25)

; Layout Menu
;AddMenu("AutoLayoutMenu", "Align &Lefts", "AlignLefts", IconLib, 26)
AddMenu("AutoLayoutMenu", "Align &Rights", "AlignRights", IconLib, 27)
AddMenu("AutoLayoutMenu", "Align &Tops", "AlignTops", IconLib, 28)
AddMenu("AutoLayoutMenu", "Align &Bottoms", "AlignBottoms", IconLib, 29)
Menu AutoLayoutMenu, Add
AddMenu("AutoLayoutMenu", "&Center Horizontally", "CenterHorizontally", IconLib, 30)
AddMenu("AutoLayoutMenu", "Center &Vertically", "CenterVertically", IconLib, 31)
Menu AutoLayoutMenu, Add
AddMenu("AutoLayoutMenu", "Hori&zontally Space", "HorizontallySpace", IconLib, 33)
AddMenu("AutoLayoutMenu", "V&ertically Space", "VerticallySpace", IconLib, 32)
Menu AutoLayoutMenu, Add
AddMenu("AutoLayoutMenu", "Make Same &Width", "MakeSameWidth", IconLib, 34)
AddMenu("AutoLayoutMenu", "Make Same &Height", "MakeSameHeight", IconLib, 35)
AddMenu("AutoLayoutMenu", "Make Same &Size", "MakeSameSize", IconLib, 36)
Menu AutoLayoutMenu, Add
AddMenu("AutoLayoutMenu", "Stretch Horizontally", "StretchControl", IconLib, 97)
AddMenu("AutoLayoutMenu", "Stretch Vertically", "StretchControl", IconLib, 98)

; Window Menu (menu bar)
;AddMenu("AutoWindowMenu", "Change &Title...", "ChangeTitle", IconLib, 37)
Menu AutoWindowMenu, Add
AddMenu("AutoWindowMenu", "Fit Window to Contents", "AutoSizeWindow", IconLib, 99)
AddMenu("AutoWindowMenu", "Font...", "ShowFontDialog", IconLib, 20)
AddMenu("AutoWindowMenu", "Styles...", "ShowStylesDialog", IconLib, 19)
AddMenu("AutoWindowMenu", "&Properties...", "ShowWindowProperties", IconLib, 25)
Menu AutoWindowMenu, Add
AddMenu("AutoWindowMenu", "&Show/Hide Preview Window`tF11", "ShowChildWindow", IconLib, 38)
AddMenu("AutoWindowMenu", "&Repaint", "RedrawWindow", IconLib, 39)
If (SysTrayIcon) {
    Menu AutoWindowMenu, Add
    AddMenu("AutoWindowMenu", "Re&create From Script", "RecreateFromScript", IconLib, 40)
}

; Run Menu
;AddMenu("AutoRunMenu", "&AutoHotkey 32-bit`tF9", "RunScript", IconLib, 12)
;AddMenu("AutoRunMenu", "AutoHotkey 64-&bit`tShift+F9", "RunScript", IconLib, 92)
AddMenu("AutoRunMenu", "Run &Selected Text`tF5", "RunSelectedText", IconLib, 95)
AddMenu("AutoRunMenu", "Run to &Cursor`tCtrl+F5", "RunToCursor", IconLib, 96)
Menu AutoRunMenu, Add
AddMenu("AutoRunMenu", "Command Line &Parameters...", "ShowParamsDlg", IconLib, 91)
Menu AutoRunMenu, Add
AddMenu("AutoRunMenu", "Run &External Application...", "RunFileDlg", "shell32.dll", 25)

; Options Menu
;AddMenu("AutoOptionsMenu", "&Design Mode", "SwitchToDesignMode")
AddMenu("AutoOptionsMenu", "&Editor Mode", "SwitchToEditorMode")
Menu AutoOptionsMenu, Add
AddMenu("AutoOptionsMenu", "Show &Grid", "ToggleGrid")
AddMenu("AutoOptionsMenu", "S&nap to Grid", "ToggleSnapToGrid")
Menu AutoOptionsMenu, Add
AddMenu("AutoOptionsMenu", "Syntax &Highlighting", "ToggleSyntaxHighlighting")
AddMenu("AutoOptionsMenu", "&Line Numbering", "ToggleLineNumbers")
AddMenu("AutoOptionsMenu", "&Code Completion", "ToggleAutoComplete")
AddMenu("AutoOptionsMenu", "Code &ToolTips", "ToggleCalltips")
AddMenu("AutoOptionsMenu", "Code &Folding", "ToggleCodeFolding")
AddMenu("AutoOptionsMenu", "Autoclose &Brackets", "ToggleAutoBrackets")
AddMenu("AutoOptionsMenu", "&Wrap Long Lines", "ToggleWordWrap")
AddMenu("AutoOptionsMenu", "Highlight &Active Line", "ToggleHighlightActiveLine")
AddMenu("AutoOptionsMenu", "Highlight Identical Te&xt", "ToggleHighlightIdenticalText")
AddMenu("AutoOptionsMenu", "Indentation Settings...", "ShowIndentationDialog")
AddMenu("AutoOptionsMenu", "&Read Only", "ToggleReadOnly")
Menu AutoOptionsMenu, Add, &Show Whitespaces, ToggleSymbols
If (SysTrayIcon) {
    Menu AutoOptionsMenu, Add, Save Settings Now, SaveSettings
}
Menu AutoOptionsMenu, Add
AddMenu("AutoOptionsMenu", "Change Editor Font...", "ChangeEditorFont", IconLib, 20)
;Menu AutoOptionsMenu, Add
;AddMenu("AutoOptionsMenu", "&Settings...", "ShowSettings", IconLib, 43)

; Tools Menu
;AddMenu("AutoToolsMenu", "&Window Cloning Tool", "ShowCloneDialog", IconLib, 44)
Menu AutoToolsMenu, Add
;AddMenu("AutoToolsMenu", "&A_Variables", "A_Variables", "Icons\A_Variables.ico")
;AddMenu("AutoToolsMenu", "&Constantine", "Constantine", "Icons\Constantine.icl", 1)
;AddMenu("AutoToolsMenu", "&Expressive", "Expressive", "Icons\Expressive.icl", 1)
;AddMenu("AutoToolsMenu", "&Scripts Manager", "ScriptsManager", "Icons\ScriptsManager.icl", 1)

; Help Menu
;AddMenu("AutoHelpMenu", "AutoHotkey &Help File`tF1", "HelpMenuHandler", IconLib, 78)
Menu AutoHelpMenu, Add ; Separator
AddMenu("AutoHelpMenu", "&About", "ShowAbout", IconLib, 80)

; Preview Window: Insert: Context Menu
AddMenu("InsertMenu", "Button", "InsertControl", IconLib, 47)
AddMenu("InsertMenu", "CheckBox", "InsertControl", IconLib, 48)
AddMenu("InsertMenu", "ComboBox", "InsertControl", IconLib, 49)
AddMenu("InsertMenu", "Date Time Picker", "InsertControl", IconLib, 51)
AddMenu("InsertMenu", "DropDownList", "InsertControl", IconLib, 50)
AddMenu("InsertMenu", "Edit Box", "InsertControl", IconLib, 52)
AddMenu("InsertMenu", "GroupBox", "InsertControl", IconLib, 53)
AddMenu("InsertMenu", "Hotkey Box", "InsertControl", IconLib, 54)
AddMenu("InsertMenu", "Link", "InsertControl", IconLib, 55)
AddMenu("InsertMenu", "ListBox", "InsertControl", IconLib, 56)
AddMenu("InsertMenu", "ListView", "InsertControl", IconLib, 57)
AddMenu("InsertMenu", "Month Calendar", "InsertControl", IconLib, 59)
AddMenu("InsertMenu", "Picture", "InsertControl", IconLib, 60)
AddMenu("InsertMenu", "Progress Bar", "InsertControl", IconLib, 61)
AddMenu("InsertMenu", "Radio Button", "InsertControl", IconLib, 62)
AddMenu("InsertMenu", "Separator", "InsertControl", IconLib, 63)
AddMenu("InsertMenu", "Slider", "InsertControl", IconLib, 64)
AddMenu("InsertMenu", "Tab", "InsertControl", IconLib, 66)
AddMenu("InsertMenu", "Text", "InsertControl", IconLib, 67)
AddMenu("InsertMenu", "TreeView", "InsertControl", IconLib, 68)
AddMenu("InsertMenu", "UpDown", "InsertControl", IconLib, 70)

; Preview Window: Context Menu
AddMenu("WindowContextMenu", "Add Control", ":InsertMenu", IconLib, 44)
AddMenu("WindowContextMenu", "Paste", "PasteControl", IconLib, 17)
AddMenu("WindowContextMenu")
AddMenu("WindowContextMenu", "Change Title...", "ChangeTitle", IconLib, 37)
AddMenu("WindowContextMenu")
AddMenu("WindowContextMenu", "Fit to Contents", "AutoSizeWindow", IconLib, 99)
AddMenu("WindowContextMenu", "Font...", "ShowFontDialog", IconLib, 20)
AddMenu("WindowContextMenu", "Styles...", "ShowStylesDialog", IconLib, 19)
AddMenu("WindowContextMenu", "Options...", "ShowWindowOptions", IconLib, 91)
AddMenu("WindowContextMenu")
AddMenu("WindowContextMenu", "Toggle Grid", "ToggleGrid", IconLib, 72)
AddMenu("WindowContextMenu", "Repaint", "RedrawWindow", IconLib, 39)
AddMenu("WindowContextMenu")
AddMenu("WindowContextMenu", "Properties", "ShowProperties", IconLib, 25)
Menu WindowContextMenu, Color, 0xFAFAFA

; Control Context Menu
AddMenu("ControlContextMenu", "Change &Text...", "ChangeText", IconLib, 14)
Menu ControlContextMenu, Add
AddMenu("ControlContextMenu", "C&ut", "CutControl", IconLib, 15)
AddMenu("ControlContextMenu", "&Copy", "CopyControl", IconLib, 16)
AddMenu("ControlContextMenu", "&Paste", "PasteControl", IconLib, 17)
AddMenu("ControlContextMenu", "&Delete", "DeleteSelectedControls", IconLib, 18)
Menu ControlContextMenu, Add
AddMenu("ControlContextMenu", "Position a&nd Size...", "ShowAdjustPositionDialog", IconLib, 75)
AddMenu("ControlContextMenu", "&Font...", "ShowFontDialog", IconLib, 20)
AddMenu("ControlContextMenu", "&Styles...", "ShowStylesDialog", IconLib, 19)
AddMenu("ControlOptionsMenu", "None", "MenuHandler")
AddMenu("ControlContextMenu", "&Options", ":ControlOptionsMenu", IconLib, 91)
Menu ControlContextMenu, Add
AddMenu("ControlContextMenu", "Prop&erties", "ShowProperties", IconLib, 25)

; Tab Context Menu
AddMenu("TabContextMenu", "Close Tab", "CloseTabN", IconLib, 8)
Menu TabContextMenu, Add
AddMenu("TabContextMenu", "Duplicate Tab Contents", "DuplicateTab", IconLib, 7)
AddMenu("TabContextMenu", "Open Folder in Explorer", "OpenFolder", IconLib, 9)
AddMenu("TabContextMenu", "Copy Path to Clipboard", "CopyFilePath", IconLib, 11)
AddMenu("TabContextMenu", "Open in a New Window", "OpenNewInstance", IconLib, 1)
Menu TabContextMenu, Add
AddMenu("TabContextMenu", "File Properties", "ShowFileProperties", IconLib, 25)

LoadHelpMenu() {
    g_HelpMenuXMLObj := LoadXML(A_ScriptDir . "\Include\HelpMenu.xml")
    Nodes := g_HelpMenuXMLObj.selectSingleNode("HelpMenu").childNodes

    StartPos := 2
    For Node in Nodes {
        Index := StartPos + A_Index

        If (Node.hasChildNodes()) {
            SubMenu := True
            MenuName := "AutoHelpMenu" . Index

            ChildNodes := Node.childNodes
            For ChildNode in ChildNodes {
                MenuItemText := ChildNode.getAttribute("name")
                Icon := GetHelpMenuItemIcon(ChildNode)
                AddMenu(MenuName, MenuItemText, "HelpMenuHandler", Icon[1], Icon[2])
            }
        } Else {
            SubMenu := False
        }

        MenuItemText := Node.getAttribute("name")
        Menu AutoHelpMenu, Insert, %Index%&, %MenuItemText%, % (SubMenu) ? ":" . MenuName : "HelpMenuHandler"

        If (SubMenu) {
            Menu AutoHelpMenu, Icon, %MenuItemText%, %IconLib%, 9
        } Else {
            Icon := GetHelpMenuItemIcon(Node)
            Menu AutoHelpMenu, Icon, %MenuItemText%, % Icon[1], % Icon[2]
        }
    }

    Index++
    Menu AutoHelpMenu, Insert, %Index%&
}

GetHelpMenuItemIcon(Node) {
    URL := Node.getAttribute("url")

    If (SubStr(URL, 1, 1) == "/") {
        Icon := IconLib
        IconIndex := 79
    } Else {
        Icon := "shell32.dll"
        IconIndex := 14
    }

    Return [Icon, IconIndex]
}
