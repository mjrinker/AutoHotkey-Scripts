LoadSettings() {
    IniRead OpenDir, %IniFile%, Options, OpenDir, %A_MyDocuments%
    IniRead SaveDir, %IniFile%, Options, SaveDir, %A_MyDocuments%
    IniRead CodePage, %IniFile%, Options, CodePage, UTF-8
    FileEncoding % (CodePage = "ANSI") ? "CP1252" : CodePage

    IniRead DesignMode, %IniFile%, Options, DesignMode, 1
    IniRead ShowGrid, %IniFile%, Options, ShowGrid, 1
    IniRead SnapToGrid, %IniFile%, Options, SnapToGrid, 0
    IniRead GridSize, %IniFile%, Options, GridSize, 8
    IniRead NoResizers, %IniFile%, Options, NoResizers, 0

    IniRead g_AltAhkPath, %IniFile%, Options, AltRun, Undefined
    IniRead SysTrayIcon, %IniFile%, Options, TrayIcon, 0
    If (SysTrayIcon) {
        Menu Tray, Tip, % AppName . " v" . Version
    } Else {
        Menu Tray, NoIcon
    }

    IniRead g_SciFontName, %IniFile%, Editor, FontName, Lucida Console
    IniRead g_SciFontSize, %IniFile%, Editor, FontSize, 10
    IniRead g_TabSize, %IniFile%, Editor, TabSize, 4
    IniRead g_LineNumbers, %IniFile%, Editor, LineNumbers, 1
    IniRead g_WordWrap, %IniFile%, Editor, WordWrap, 1
    IniRead g_SyntaxHighlighting, %IniFile%, Editor, SyntaxHighlighting, 1
    IniRead g_AutoBrackets, %IniFile%, Editor, AutoBrackets, 1
    IniRead g_HighlightActiveLine, %IniFile%, Editor, HighlightActiveLine, 1
    IniRead g_HighlightIdenticalText, %IniFile%, Editor, HighlightIdenticalText, 1
    IniRead g_CodeFolding, %IniFile%, Editor, CodeFolding, 0
    IniRead g_IndentWithSpaces, %IniFile%, Editor, IndentWithSpaces, 1
    IniRead g_AutoIndent, %IniFile%, Editor, AutoIndent, 1
    IniRead g_IndentGuides, %IniFile%, Editor, IndentGuides, 0
    IniRead g_CheckTimestamp, %IniFile%, Editor, CheckTimestamp, 1

    IniRead g_AutoCEnabled, %IniFile%, Autocomplete, Enabled, 0
    IniRead g_AutoCMinLength, %IniFile%, Autocomplete, MinLength, 3

    IniRead g_Calltips, %IniFile%, Calltips, Enabled, 1

    IniRead g_Backup, %IniFile%, Backup, Enabled, 1
    IniRead g_BkpDir, %IniFile%, Backup, Dir, %A_Temp%\AutoGUI

    IniRead g_SessionsDir, %IniFile%, Sessions, Dir
    IniRead g_LoadLastSession, %IniFile%, Sessions, AutoLoadLast, 0

    SetIndent()
}

ApplySettings() {
    If (DesignMode) {
        hMenu := GetSubMenu(GetMenu(hAutoWnd), 7)    ; Options Menu
        CheckMenuRadioItem(hMenu, !DesignMode, 0, 1) ; Design Mode checked
        SendMessage TB_CHECKBUTTON, 1060, %DesignMode%,, ahk_id %hToolbar%
    }

    If (ShowGrid) {
        Menu AutoOptionsMenu, Check, Show &Grid
        SendMessage TB_CHECKBUTTON, 1080, 1,, ahk_id %hToolbar%
    }

    If (SnapToGrid) {
        Menu AutoOptionsMenu, Check, S&nap to Grid
        SendMessage TB_CHECKBUTTON, 1090, 1,, ahk_id %hToolbar%
    }

    If (g_WordWrap) {
        Menu AutoOptionsMenu, Check, &Wrap Long Lines
        SendMessage TB_CHECKBUTTON, 2160, 1,, ahk_id %hEditorTB%
    }

    If (g_SyntaxHighlighting) {
        Menu AutoOptionsMenu, Check, Syntax &Highlighting
        SendMessage TB_CHECKBUTTON, 2180, 1,, ahk_id %hEditorTB%
    }

    If (g_LineNumbers) {
        Menu AutoOptionsMenu, Check, &Line Numbering
    }

    If (g_AutoCEnabled) {
        Menu AutoOptionsMenu, Check, &Code Completion
    }

    If (g_Calltips) {
        Menu AutoOptionsMenu, Check, Code &ToolTips
    }

    If (g_AutoBrackets) {
        Menu AutoOptionsMenu, Check, Autoclose &Brackets
    }

    If (g_HighlightActiveLine) {
        Menu AutoOptionsMenu, Check, Highlight &Active Line
    }

    If (g_HighlightIdenticalText) {
        Menu AutoOptionsMenu, Check, Highlight Identical Te&xt
    }

    If (g_CodeFolding) {
        Menu AutoOptionsMenu, Check, Code &Folding
    }
}

SaveSettings() {
    If (!FileExist(IniFile)) {
        Sections := "[Options]`n`n[Auto]`n`n[Properties]`n`n[Editor]`n`n[Autocomplete]`n`n[Calltips]`n`n[Find]`n`n[FindHistory]`n`n[Sessions]`n`n[Backup]`n`n[Recent]`n"
        FileAppend %Sections%, %IniFile%, UTF-16
        If (ErrorLevel) {
            FileCreateDir %A_AppData%\AutoGUI
            IniFile := A_AppData . "\AutoGUI\AutoGUI.ini"
            FileDelete %IniFile%
            FileAppend %Sections%, %IniFile%, UTF-16
        }
    }

    IniWrite %OpenDir%, %IniFile%, Options, OpenDir
    IniWrite %SaveDir%, %IniFile%, Options, SaveDir
    ;IniWrite %CodePage%, %IniFile%, Options, CodePage
    ;IniWrite %SysTrayIcon%, %IniFile%, Options, TrayIcon

    ; GUI designer options
    IniWrite %DesignMode%, %IniFile%, Options, DesignMode
    IniWrite %ShowGrid%, %IniFile%, Options, ShowGrid
    IniWrite %SnapToGrid%, %IniFile%, Options, SnapToGrid
    IniWrite %GridSize%, %IniFile%, Options, GridSize
    ;IniWrite %NoResizers%, %IniFile%, Options, NoResizers

    If (g_AltAhkPath != "") {
        IniWrite %g_AltAhkPath%, %IniFile%, Options, AltRun
    }

    ; Main window position and size
    Pos := GetWindowPlacement(hAutoWnd)
    IniWrite % Pos.x, %IniFile%, Auto, x
    IniWrite % Pos.y, %IniFile%, Auto, y
    IniWrite % Pos.w, %IniFile%, Auto, w
    IniWrite % Pos.h, %IniFile%, Auto, h
    IniWrite % Pos.showCmd, %IniFile%, Auto, Show

    ; Properties dialog position
    If (WinExist("ahk_id " . hPropWnd)) {
        WinGetPos px, py,,, ahk_id %hPropWnd%
        IniWrite %px%, %IniFile%, Properties, x
        IniWrite %py%, %IniFile%, Properties, y
    }

    ; Editor options
    IniWrite %g_SciFontName%, %IniFile%, Editor, FontName
    IniWrite %g_SciFontSize%, %IniFile%, Editor, FontSize
    IniWrite %g_TabSize%, %IniFile%, Editor, TabSize
    IniWrite %g_WordWrap%, %IniFile%, Editor, WordWrap
    IniWrite %g_SyntaxHighlighting%, %IniFile%, Editor, SyntaxHighlighting
    IniWrite %g_AutoBrackets%, %IniFile%, Editor, AutoBrackets
    IniWrite %g_LineNumbers%, %IniFile%, Editor, LineNumbers
    IniWrite %g_HighlightActiveLine%, %IniFile%, Editor, HighlightActiveLine
    IniWrite %g_HighlightIdenticalText%, %IniFile%, Editor, HighlightIdenticalText
    IniWrite %g_CodeFolding%, %IniFile%, Editor, CodeFolding
    IniWrite %g_IndentWithSpaces%, %IniFile%, Editor, IndentWithSpaces
    IniWrite %g_AutoIndent%, %IniFile%, Editor, AutoIndent
    IniWrite %g_IndentGuides%, %IniFile%, Editor, IndentGuides
    IniWrite %g_CheckTimestamp%, %IniFile%, Editor, CheckTimestamp

    ; Autocomplete
    IniWrite %g_AutoCEnabled%, %IniFile%, Autocomplete, Enabled
    IniWrite %g_AutoCMinLength%, %IniFile%, Autocomplete, MinLength

    ; Calltips
    IniWrite %g_Calltips%, %IniFile%, Calltips, Enabled

    ; Backup
    IniWrite %g_Backup%, %IniFile%, Backup, Enabled
    IniWrite %g_BkpDir%, %IniFile%, Backup, Dir

    IniWrite %g_SessionsDir%, %IniFile%, Sessions, Dir
    IniWrite %g_LoadLastSession%, %IniFile%, Sessions, AutoLoadLast

    ; Recent files
    If (RecentFiles.MaxIndex() > 0) {
        For Index, Filename In RecentFiles {
            IniWrite %Filename%, %IniFile%, Recent, %Index%
        }
    }

    ; Find/Replace
    If (WinExist("ahk_id " . hFindReplaceDlg)) {
        WinGetPos px, py,,, ahk_id %hFindReplaceDlg%
        IniWrite %px%, %IniFile%, Find, x
        IniWrite %py%, %IniFile%, Find, y
        Gui FindReplaceDlg: Submit, NoHide
        IniWrite %g_MatchCase%, %IniFile%, Find, MatchCase
        IniWrite %g_WholeWord%, %IniFile%, Find, WholeWord
        IniWrite %g_RegExFind%, %IniFile%, Find, RegExFind
        IniWrite %g_Backslash%, %IniFile%, Find, Backslash

        ; Find/Replace history
        Items := ""

        ControlGet FindItems, List,,, ahk_id %hFindCbx%
        If (FindItems != "") {
            Loop Parse, FindItems, `n
            {
                Items .= "What" . A_Index . "=" . A_LoopField . "`n"
            }
        }

        ControlGet ReplaceItems, List,,, ahk_id %hReplaceCbx%
        If (replaceItems != "") {
            Loop Parse, ReplaceItems, `n
            {
                Items .= "With" . A_Index . "=" . A_LoopField . "`n"
            }
        }

        If (Items != "") {
            IniWrite %Items%, %IniFile%, FindHistory
        }
    }
}
