SetScintilla(n) {
    Sci[n].SetLexer(200) ; SCLEX_AHKL
    Sci[n].SetCodePage(65001)
    Sci[n].SetWrapMode(g_WordWrap)

    ; Indentation
    ;Sci[n].SetIndent(g_TabSize)
    Sci[n].SetTabWidth(g_TabSize)
    Sci[n].SetUseTabs(!g_IndentWithSpaces) ; Indent with spaces
    Sci[n].SetIndentationGuides(g_IndentGuides ? 3 : 0)

    Sci[n].MarginLen := 0
    SciSetStyle(n, g_SciFontName, g_SciFontSize)
    Sci[n].Notify := "OnWM_NOTIFY"
    Sci[n].SetExtraAscent(2) ; Increase space between lines

    ; Autocomplete settings
    Sci[n].AutoCSetIgnoreCase(True)
    Sci[n].AutoCSetMaxHeight(g_AutoCMaxItems)
    Sci[n].AutoCSetOrder(1) ; SC_ORDER_PERFORMSORT

    ; Calltip settings
    Sci[n].CalltipSetFore(CvtClr(0x000000))
    Sci[n].CalltipSetBack(CvtClr(0xFFFFDD))
    Sci[n].SetMouseDwellTime(1000) ; Hover time

    Sci[n].AssignCmdKey(SCK_END, SCI_LINEENDWRAP)
    Sci[n].AssignCmdKey(SCK_HOME, SCI_HOMEWRAP)

    If (g_ShowSymbols) {
        g_ShowSymbols := False
        GoSub ToggleSymbols
    }
}

SciSetStyle(n, FontName := "Lucida Console", FontSize := 10) {
    Sci[n].StyleSetFont(STYLE_DEFAULT, "" . FontName, 2)
    Sci[n].StyleSetSize(STYLE_DEFAULT, FontSize)

    Sci[n].StyleSetBack(STYLE_DEFAULT, CvtClr(0xFAFAFA))
    Sci[n].StyleClearAll() ; This message sets all styles to have the same attributes as STYLE_DEFAULT.

    ; Active line background color
    Sci[n].SetCaretLineBack(CvtClr(g_HighlightActiveLine ? 0xD8F3FF : 0xFFFFFF))
    Sci[n].SetCaretLineVisible(True)
    Sci[n].SetCaretLineVisibleAlways(1)

    ; Margin settings
    Sci[n].SetMarginTypeN(0, 1)
    SetLineNumberWidth(n)
    Sci[n].SetMarginLeft(0, 2) ; Left padding
    Sci[n].SetMarginWidthN(1, 2) ; Line number right margin
    Sci[n].StyleSetFore(33, CvtClr(0xCFD2CA)) ; Margin foreground color
    Sci[n].StyleSetBack(33, CvtClr(0xFFFFFF)) ; Margin background color

    If (g_CodeFolding) {
        Sci[n].SetProperty("fold", "1")
        Sci[n].SetProperty("fold.compact", "1")
        SetCodeFolding(n)
    }

    ; Selection
    Sci[n].SetSelFore(1, CvtClr(0xFFFFFF))
    Sci[n].SetSelBack(1, CvtClr(0x3399FF))

    ; Matching braces
    Sci[n].StyleSetFore(STYLE_BRACELIGHT, CvtClr(0x3399FF))
    Sci[n].StyleSetBold(STYLE_BRACELIGHT, True)
    Sci[n].StyleSetFore(STYLE_BRACEBAD  , CvtClr(0x00EE00))

    If (g_SyntaxHighlighting) {
        ; AHK syntax elements
        Sci[n].StyleSetFore(SCE_AHKL_IDENTIFIER     , CvtClr(0x000000))
        Sci[n].StyleSetFore(SCE_AHKL_COMMENTDOC     , CvtClr(0x008888))
        Sci[n].StyleSetFore(SCE_AHKL_COMMENTLINE    , CvtClr(0x767676))
        Sci[n].StyleSetFore(SCE_AHKL_COMMENTBLOCK   , CvtClr(0x767676))
        Sci[n].StyleSetFore(SCE_AHKL_COMMENTKEYWORD , CvtClr(0xA50000))
        Sci[n].StyleSetFore(SCE_AHKL_STRING         , CvtClr(0x183691))
        Sci[n].StyleSetFore(SCE_AHKL_STRINGOPTS     , CvtClr(0x0000EE))
        Sci[n].StyleSetFore(SCE_AHKL_STRINGBLOCK    , CvtClr(0x183691))
        Sci[n].StyleSetFore(SCE_AHKL_STRINGCOMMENT  , CvtClr(0xFF0000))
        Sci[n].StyleSetFore(SCE_AHKL_LABEL          , CvtClr(0x0000DD))
        Sci[n].StyleSetFore(SCE_AHKL_HOTKEY         , CvtClr(0x0000DD))
        Sci[n].StyleSetFore(SCE_AHKL_HOTSTRING      , CvtClr(0x183691))
        Sci[n].StyleSetFore(SCE_AHKL_HOTSTRINGOPT   , CvtClr(0x990099))
        Sci[n].StyleSetFore(SCE_AHKL_HEXNUMBER      , CvtClr(0x880088))
        Sci[n].StyleSetFore(SCE_AHKL_DECNUMBER      , CvtClr(0x606870))
        ;Sci[n].StyleSetFore(SCE_AHKL_VAR            , CvtClr(0x9F1F6F))
        Sci[n].StyleSetFore(SCE_AHKL_VARREF         , CvtClr(0x990055))
        ;Sci[n].StyleSetFore(SCE_AHKL_OBJECT         , CvtClr(0x008888))
        Sci[n].StyleSetFore(SCE_AHKL_USERFUNCTION   , CvtClr(0x0000DD))
        Sci[n].StyleSetFore(SCE_AHKL_DIRECTIVE      , CvtClr(0x0000CF))
        Sci[n].StyleSetFore(SCE_AHKL_COMMAND        , CvtClr(0x0070A0))
        Sci[n].StyleSetFore(SCE_AHKL_PARAM          , CvtClr(0x0070A0))
        Sci[n].StyleSetFore(SCE_AHKL_CONTROLFLOW    , CvtClr(0x0000DD))
        Sci[n].StyleSetFore(SCE_AHKL_BUILTINFUNCTION, CvtClr(0x0F707F))
        Sci[n].StyleSetFore(SCE_AHKL_BUILTINVAR     , CvtClr(0x9F1F6F))
        Sci[n].StyleSetFore(SCE_AHKL_KEY            , CvtClr(0xA2A2A2))
        ;Sci[n].StyleSetFore(SCE_AHKL_USERDEFINED1   , CvtClr(0x000000))
        ;Sci[n].StyleSetFore(SCE_AHKL_USERDEFINED2   , CvtClr(0x000000))
        Sci[n].StyleSetFore(SCE_AHKL_ESCAPESEQ      , CvtClr(0x660000))
        ;Sci[n].StyleSetFore(SCE_AHKL_ERROR          , 0xFF0000)

        ; Keywords
        Sci[n].SetKeywords(0, Keywords.Directives, 2)
        Sci[n].SetKeywords(1, Keywords.Commands, 2)
        Sci[n].SetKeywords(2, Keywords.Parameters, 2)
        Sci[n].SetKeywords(3, Keywords.ControlFlow, 2)
        Sci[n].SetKeywords(4, Keywords.Functions, 2)
        Sci[n].SetKeywords(5, Keywords.BuiltinVariables, 2)
        Sci[n].SetKeywords(6, Keywords.Keys, 2)
        ;Sci[n].SetKeywords(7, Keywords.UserDefined1, 2)
        ;Sci[n].SetKeywords(8, Keywords.UserDefined2, 2)
    }
}

NewTab:
    NewTab()
Return

NewTab() {
    g_TabCounter++
    TabIndex := TabEx.GetCount() + 1
    Sci[TabIndex] := New Scintilla
    x := (DesignMode) ? 169 : 7
    Sci[TabIndex].Add(hAutoWnd, x, 60, 1576, 1420, SciLexer, 0x50010000, 0)
    SetScintilla(TabIndex)
    TabEx.SetIcon(TabEx.Add("Untitled " . g_TabCounter), 1)
    TabEx.SetSel(TabIndex)
    GoSub AutoSize
    Sci[TabIndex].Number := g_TabCounter ; Untitled number
    Return TabIndex
}

NewFromTemplate:
    n := TabEx.GetSel()
    If (n == g_GuiTab || Sci[n].GetModify() || Sci[n].FileName != "") {
        n := NewTab()
    }

    Template := A_WinDir . "\ShellNew\Template.ahk"

    If (FileExist(Template) && !GetKeyState("Shift", "P")) {
        FileRead Template, %Template%
    } Else {
        Template := 
        (LTrim
            "#NoEnv
            #SingleInstance Force
            SetWorkingDir %A_ScriptDir%
            SendMode Input
            SetBatchLines -1"
        )
        Template .= CRLF
    }

    Sci[n].SetText("", Template . CRLF, 2)
    Sci[n].GoToPos(10000)
Return

DuplicateTab:
    n := g_TabIndex
    nLen := Sci[n].GetText(Sci[n].GetLength() + 1, SciText)
    Sci[n].GetText(nLen + 1, SciText)
    Sci[NewTab()].SetText("", SciText, 2)
Return

CloseTab:
    CloseTab(TabEx.GetSel())
Return

CloseTabN:
    CloseTab(g_TabIndex)
Return

CloseTab(TabIndex) {
    If (Sci[TabIndex].GetModify()) {
        TabEx.SetSel(TabIndex)
        TabCaption := TabEx.GetText(TabIndex)
        Gui Auto: +OwnDialogs
        MsgBox 0x33, %TabCaption%, The file was modified. Do you want to save it?
        IfMsgBox Yes, {
            If (!Save()) {
                Return
            }
        } Else IfMsgBox Cancel, {
            Return
        }
    }

    If (TabIndex == g_GuiTab) {
        Gui %Child%: Destroy
        g_GuiTab := 0
        g_GuiSB := False
        SetStatusBar()
    }

    TabCount := TabEx.GetCount()
    If (TabCount > 1) {

        If (TabIndex != TabEx.GetSel()) {
            ToActivate := 0 ; Do not activate another tab
        } Else {
            ToActivate := TabIndex == TabCount ? TabIndex - 1 : TabIndex
        }

        SendMessage 0x1308, TabIndex - 1, 0,, ahk_id %hTab% ; TCM_DELETEITEM
        DestroyWindow(Sci[TabIndex].hWnd)
        Sci.Remove(TabIndex)

        If (g_GuiTab > TabIndex) {
            g_GuiTab--
        }

        If (ToActivate) {
            SendMessage 0x130C, ToActivate - 1,,, ahk_id %hTab% ; TCM_SETCURSEL
            GoSub TabHandler
        } Else {
            Repaint(hAutoWnd)
        }

    } Else {
        ClearFile(1)
        SetWindowTitle()
        If (Sci[TabIndex].GetLexer() != 200) {
            SetScintilla(TabIndex)
        }
    }
}

ClearFile(n) {
    Sci[n].FullFileName := ""
    Sci[n].FileName := ""
    Sci[n].Timestamp := ""
    Sci[n].ClearAll()
    Sci[n].SetSavePoint()
    TabEx.SetIcon(n, 1)
}

CloseAllTabs:
    Loop % nTabs := Sci.Length() {
        CloseTab(nTabs--)
    }

    Sci[1].Number := g_TabCounter := 1
    TabEx.SetText(1, "Untitled 1")
    Repaint(hAutoWnd)
Return

ToggleReadOnly() {
    ToggleReadOnly:
    n := TabEx.GetSel()
    ReadOnly := !Sci[n].GetReadOnly()
    sci[n].SetReadOnly(ReadOnly)
    Menu AutoOptionsMenu, ToggleCheck, &Read Only
    SendMessage TB_CHECKBUTTON, 2170, ReadOnly,, ahk_id %hEditorTB%
    If (WinActive("ahk_id" . hAutoWnd)) {
        If (ReadOnly) {
            SB_SetText("Read only", 3)
        } Else {
            If (Sci[n].GetModify()) {
                SB_SetText("Modified", 3)
            } Else {
                SB_SetText("", 3)
            }
        }
    }
    Return
}

ToggleWordWrap() {
    n := TabEx.GetSel()
    g_WordWrap := !Sci[n].GetWrapMode()
    Sci[n].SetWrapMode(g_WordWrap)
    Menu AutoOptionsMenu, ToggleCheck, &Wrap Long Lines ; &Word Wrap
    SendMessage TB_CHECKBUTTON, 2160, %g_WordWrap%,, ahk_id %hEditorTB%
}

ToggleLineNumbers:
    g_LineNumbers := !g_LineNumbers

    Loop % Sci.Length() {
        SetLineNumberWidth(A_Index)
    }

    Menu AutoOptionsMenu, ToggleCheck, &Line Numbering
Return

ToggleSyntaxHighlighting:
    g_SyntaxHighlighting := !g_SyntaxHighlighting

    If (g_SyntaxHighlighting) {
        Loop % Sci.Length() {
            SciSetStyle(A_Index, g_SciFontName, g_SciFontSize)
        }
    } Else {
        Loop % Sci.Length() {
            Sci[A_Index].StyleClearAll()
            Sci[A_Index].StyleSetFore(33, CvtClr(0xCFD2CA)) ; Margin foreground color
            Sci[A_Index].StyleSetBack(33, CvtClr(0xFFFFFF)) ; Margin background color
        }
    }

    Menu AutoOptionsMenu, ToggleCheck, Syntax &Highlighting
    SendMessage TB_CHECKBUTTON, 2180, %g_SyntaxHighlighting%,, ahk_id %hEditorTB%
Return

ToggleAutoComplete:
    g_AutoCEnabled := !g_AutoCEnabled
    Menu AutoOptionsMenu, ToggleCheck, &Code Completion ; &Autocompletion
Return

ToggleCalltips:
    g_Calltips := !g_Calltips
    Menu AutoOptionsMenu, ToggleCheck, Code &ToolTips ; &Calltips
Return

ToggleAutoBrackets:
    g_AutoBrackets := !g_AutoBrackets
    Menu AutoOptionsMenu, ToggleCheck, Autoclose &Brackets
Return

Undo:
    Sci[TabEx.GetSel()].Undo()
Return

Redo:
    Sci[TabEx.GetSel()].Redo()
Return

Cut:
    Sci[TabEx.GetSel()].Cut()
Return

Copy:
    Sci[TabEx.GetSel()].Copy()
Return

Paste:
    Sci[TabEx.GetSel()].Paste()
Return

Clear:
    Sci[TabEx.GetSel()].Clear()
Return

SelectAll:
    Sci[TabEx.GetSel()].SelectAll()
Return

Lowercase:
    Sci[TabEx.GetSel()].LowerCase()
Return

Uppercase:
    Sci[TabEx.GetSel()].UpperCase()
Return

TitleCase:
    n := TabEx.GetSel()
    Start := Sci[n].GetSelectionStart()
    End := Sci[n].GetSelectionEnd()
    Sci[n].GetTextRange([Start, End], Selection)
    StringUpper Selection, Selection, T
    Sci[n].ReplaceSel("", Selection, 2)
    Sci[n].SetSel(Start, End)
Return

OnWM_NOTIFY(wParam, lParam, msg, hWnd, obj) {
    n := TabEx.GetSel()
    CurPos := Sci[n].GetCurrentPos()

    If (obj.SCNCode == SCN_UPDATEUI) {
        ; The updated field is set to the bit set of things changed since the previous notification.
        ; SC_UPDATE_CONTENT 	0x01 	Contents, styling or markers have been changed.
        ; SC_UPDATE_SELECTION 	0x02 	Selection has been changed.
        ; SC_UPDATE_V_SCROLL 	0x04 	Scrolled vertically.
        ; SC_UPDATE_H_SCROLL 	0x08 	Scrolled horizontally.

        ; Highlight identical text
        If (obj.updated < 4 && g_HighlightIdenticalText) {
            Sci[n].SetIndicatorCurrent(2)
            Sci[n].IndicatorClearRange(0, Sci[n].GetLength())

            WordStartPos := Sci[n].WordStartPosition(CurPos, True)
            WordEndPos := Sci[n].WordEndPosition(CurPos, True)
            SelStart := Sci[n].GetSelectionStart()
            SelEnd := Sci[n].GetSelectionEnd()
            If (SelStart != SelEnd && WordStartPos == SelStart && WordEndPos == SelEnd) {
                HighlightIdenticalText(GetSelectedText())
            }
        }

        ; Brace matching
        BracePos := CurPos - 1
        BraceMatch := Sci[n].BraceMatch(BracePos, 0)
        If (BraceMatch == -1) {
            BracePos := CurPos
            BraceMatch := Sci[n].BraceMatch(CurPos, 0)
        }

        If (BraceMatch != -1) {
            Sci[n].BraceHighlight(BracePos, BraceMatch)
        } Else {
            Sci[n].BraceHighlight(-1, -1)
        }

        UpdateStatusBar()

    } Else If (obj.SCNCode == SCN_MODIFIED) {
        ;OutputDebug % obj.modType
        ;UpdateStatusBar() ; ???

        If (obj.linesAdded) {
            SetLineNumberWidth(n)
        }

    } Else If (obj.SCNCode == SCN_SAVEPOINTREACHED) {

        SetDocumentStatus(n)

    } Else If (obj.SCNCode == SCN_SAVEPOINTLEFT) {

        SetDocumentStatus(n)

    } Else If (obj.SCNCode == SCN_CHARADDED) {

        ; Auto-indent
        If (obj.ch == 13 && g_AutoIndent && !GetKeyState("Shift", "P")) {
            Line := Sci[n].LineFromPosition(CurPos)
            Indentation := Sci[n].GetLineIndentation(Line - 1)
            Sci[n].SetLineIndentation(Line, Indentation)
            If (Indentation) {
                Sci[n].GoToPos(Sci[n].GetLineIndentPosition(Line))
            }
        }

        ; Autocomplete
        If (g_AutoCEnabled) {
            AutoComplete(g_AutoCMinLength)
        }

        ; Calltips
        If (g_Calltips && (obj.ch == 40 || obj.ch == 44 || obj.ch == 32)) {
            WordPos := GetCurrentWord(Word, CurPos - 1)
            Calltip := GetCalltip(Word)
            If (Word != "If") {
                ShowCalltip(n, Calltip, WordPos[1])
            }
        }

        If (!g_AutoBrackets) {
            Return
        }

        PrevChar := Sci[n].GetCharAt(CurPos - 2)
        NextChar := Sci[n].GetCharAt(CurPos)

        ; Autoclose brackets ([{""}])
        If (obj.ch == 40 && NextChar != 41) { ; Parenthesis
            Sci[n].InsertText(CurPos, ")", 2)
        } Else If (obj.ch == 91 && NextChar != 93) { ; Brackets
            Sci[n].InsertText(CurPos, "]", 2)
        } Else If (obj.ch == 123 && NextChar != 125) { ; Braces
            Sci[n].GetTextRange([CurPos - 5, CurPos], PrevChars)
            If (RegExMatch(PrevChars, "\(\)\s?\n?")) {
                Line := Sci[n].LineFromPosition(CurPos)
                iIndentation := Sci[n].GetLineIndentation(Line)

                If (iIndentation) {
                    If (g_IndentWithSpaces) {
                        sIndentation := Format("{1: " . iIndentation . "}", "")
                    } Else {
                        Loop % iIndentation // g_TabSize {
                            sIndentation .= "`t"
                        }
                    }
                } Else {
                    sIndentation := ""
                }

                Sci[n].InsertText(CurPos, CRLF . sIndentation . Indent . CRLF . sIndentation . "}", 2)
                Sci[n].GoToPos(CurPos + StrLen(CRLF . sIndentation . Indent))
            } Else {
                Sci[n].InsertText(CurPos, "}", 2)
            }
        } Else If (obj.ch == 34  ; Quotes
            && (NextChar == 0
            || NextChar == 9     ; Tab
            || NextChar == 32    ; Space
            || NextChar == 33    ; Exclamation mark
            || NextChar == 41    ; Close parenthesis
            || NextChar == 44    ; Comma
            || NextChar == 46    ; Period
            || NextChar == 58    ; Colon
            || NextChar == 59    ; Semicolon
            || NextChar == 63    ; Question mark
            || NextChar == 93    ; Right bracket
            || NextChar == 125)  ; Right brace
            && (PrevChar == 0
            || PrevChar == 9
            || PrevChar == 10    ; New line
            || PrevChar == 32
            || PrevChar == 40    ; Open parenthesis
            || PrevChar == 91    ; Left bracket
            || PrevChar == 123)) ; Left brace
        {
            Sci[n].InsertText(CurPos, """", 2)
        }
    } Else If (obj.SCNCode == SCN_AUTOCCOMPLETED) {

        Keyword := StrGet(obj.Text,, "UTF-8")

        If (g_AutoCWin32Const) {
            ConstValue := LookupConstant(Keyword)
            Sci[n].InsertText(CurPos, " := " . ConstValue, 2)
            Sci[n].GoToPos(CurPos + StrLen(" := " . ConstValue))
            g_AutoCWin32Const := False
        } Else {
            If (g_Calltips && Keyword != "GuiClose") {
                CallTip := GetCallTip(Keyword, True)
                ShowCalltip(n, CallTip, GetWordPos()[1])
            }
        }

    } Else If (obj.SCNCode == SCN_AUTOCCANCELLED) {

        g_AutoCWin32Const := False

    } Else If (obj.SCNCode == SCN_DWELLSTART) {

        If (g_Calltips) {
            If (obj.position != -1) {
                WordPos := GetCurrentWord(Word, obj.position)
                ShowCalltip(n, GetCalltip(Word, False), WordPos[1])
            }
        }

    } Else If (obj.SCNCode == SCN_DWELLEND) {

        Sci[n].CalltipCancel()

    } Else If (obj.SCNCode == SCN_CALLTIPCLICK) {

        ; The position field is set to 1 if the click is in an up arrow, 2 if in a down arrow, and 0 if elsewhere.
        If (obj.position == 0) {
            InsertCalltip()
            Return
        } Else If (obj.position == 1) {
            g_CalltipParamsIndex--
        } Else {
            g_CalltipParamsIndex++
        }

        If ((obj.position == 1 && g_CalltipParamsIndex > 1)
        || (g_CalltipParams.Length() == g_CalltipParamsIndex)) {
            Arrow := 1 ; Up arrow
        } Else {
            Arrow := 2 ; Down arrow
        }

        WordStartPos := Sci[n].WordStartPosition(CurPos - 1, True)

        Sci[n].CalltipShow(WordStartPos, Chr(Arrow) . g_CalltipParams[g_CalltipParamsIndex], 2)

    } Else If (obj.SCNCode == SCN_MARGINCLICK) {

        ; Get the line the margin click was made on and toggle folding
        Sci[n].ToggleFold(Sci[n].LineFromPosition(obj.position))

    } Else If (obj.SCNCode == SCN_ZOOM) {
        Sci[n].MarginLen := 0
        SetLineNumberWidth(n)
    }

    Return
}

ShowGoToLineDialog:
    Line := InputBoxEx("Line Number:", "", "Go to Line", "", "", "x94 w80 Number", 270,,, hAutoWnd, "", "") - 1
    If (!ErrorLevel) {
        ShowChildWindow(0)

        n := TabEx.GetSel()
        Sci[n].GrabFocus()
        Sci[n].GoToLine(Line) ; 0-based index

        LineCount := Sci[n].GetLineCount()
        VisCenterLine := Sci[n].LinesOnScreen() // 2

        If (VisCenterLine < (LineCount - Line)) {
            Sci[n].VerticalCentreCaret()
        } Else {
            Sci[n].ScrolltoEnd()
        }
    }
Return

ChangeEditorFont:
    If (ChooseFont(g_SciFontName, g_SciFontSize, "", "0x000000", 0, hAutoWnd)) {
        Loop % Sci.Length() {
            Sci[A_Index].MarginLen := 0
            SciSetStyle(A_Index, g_SciFontName, g_SciFontSize)
        }
    }
Return

ZoomIn:
    Sci[TabEx.GetSel()].ZoomIn()
Return

ZoomOut:
    Sci[TabEx.GetSel()].ZoomOut()
Return

ResetFontSize:
    Sci[TabEx.GetSel()].SetZoom(0)
Return

; Called from SCN_UPDATEUI, SCN_MODIFIED, TabHandler and SetStatusBar
UpdateStatusBar() {
    If (!g_GuiSB) {
        n := TabEx.GetSel()
        CurPos := Sci[n].GetCurrentPos()
        Line := Sci[n].LineFromPosition(CurPos) + 1
        Column := Sci[n].GetColumn(CurPos) + 1

        SelStart := Sci[n].GetSelectionStart()
        SelEnd := Sci[n].GetSelectionEnd()
        SelLength := SelEnd - SelStart
        Selection := SelLength ? ", " . SelLength : ""

        Gui Auto: Default
        SB_SetText(Line . ":" . Column . Selection, 2)

        If (Sci[n].GetReadOnly()) {
            SB_SetText("Read only", 3)
        } Else If (Sci[n].GetModify()) {
            SB_SetText("Modified", 3)
        } Else {
            SB_SetText("", 3)
        }
    }
}

; Called from SCN_SAVEPOINTREACHED, SCN_SAVEPOINTLEFT and NewWindow
SetDocumentStatus(n) {
    Gui Auto: Default

    If (Sci[n].GetReadOnly()) {
        If (!g_GuiSB) {
            SB_SetText("Read only", 3)
        }
    } Else If (Sci[n].GetModify()) {
        GuiControl -Redraw, %hTab%
        GuiControl Disable, %hTab%
        TabCaption := (Sci[n].FileName != "") ? Sci[n].FileName . " *" : "Untitled " . Sci[n].Number . " *"
        TabEx.SetText(n, TabCaption)
        GuiControl +Redraw, %hTab%
        GuiControl Enable, %hTab%

        If (!g_GuiSB) {
            SB_SetText("Modified", 3)
        }
    } Else {
        GuiControl -Redraw, %hTab%
        GuiControl Disable, %hTab%
        TabCaption := (Sci[n].FileName != "") ? Sci[n].FileName : "Untitled " . Sci[n].Number
        TabEx.SetText(n, TabCaption)
        GuiControl +Redraw, %hTab%
        GuiControl Enable, %hTab%

        If (!g_GuiSB) {
            SB_SetText("", 3)
        }
    }
}

InsertDateTime:
    n := TabEx.GetSel()
    CurrentPos := Sci[n].GetCurrentPos()
    FormatTime TimeString, D1
    Sci[n].InsertText(CurrentPos, "" . TimeString, 2)
    Sci[n].GoToPos(CurrentPos + StrPut(TimeString, "UTF-8") - 1)
Return

; Show spaces, tabs and line breaks
ToggleSymbols:
    g_ShowSymbols := !g_ShowSymbols

    Loop % Sci.Length() {
        Sci[A_Index].2086(g_ShowSymbols ? 2 : 0) ; SCI_SETWHITESPACESIZE
        Sci[A_Index].SetViewWS(g_ShowSymbols)
        Sci[A_Index].SetViewEOL(g_ShowSymbols)
    }

    Menu AutoOptionsMenu, % g_ShowSymbols ? "Check" : "Uncheck", &Show Whitespaces
Return

ToggleComment:
    n := TabEx.GetSel()
    SelText := GetSelectedText()

    If (SelText == "") {
        SelText := GetCurrentLine()
        CurrPos := Sci[n].GetCurrentPos()
        LineNum := Sci[n].LineFromPosition(CurrPos)
        StartPos := Sci[n].PositionFromLine(LineNum) ; Start of the line
        EndPos := Sci[n].GetLineEndPosition(LineNum)
        Sci[n].SetSel(StartPos, EndPos) ; Select current line
        RestorePos := True ; Restore caret position
    } Else {
        RestorePos := False
    }

    Lines := ""
    Loop Parse, SelText, `n, `r
    {
        If (RegExMatch(A_LoopField, "^\s*\;")) {
            Line := RegExReplace(A_LoopField, "\;", "", "", 1)
        } Else If (A_LoopField == "") {
            Line := ""
        } Else {
            Line := ";" . A_LoopField
        }
        Lines .= Line . CRLF
    }

    Lines := RegExReplace(Lines, "`r`n$", "", "", 1)
    SetSelectedText(Lines)

    If (RestorePos) {
        Sci[n].GoToPos(CurrPos)
    }
Return

GetCurrentLine() {
    n := TabEx.GetSel()
    LineNum := Sci[n].LineFromPosition(Sci[n].GetCurrentPos())
    LineLen := Sci[n].LineLength(LineNum)
    VarSetCapacity(LineText, LineLen, 0)
    Sci[n].GetCurLine(LineLen + 1, LineText)
    Sci[n].GetCurLine(LineLen + 1, LineText)
    Return RTrim(LineText, CRLF)
}

DuplicateLine:
    Sci[TabEx.GetSel()].LineDuplicate()
Return

TransposeLine:
    Sci[TabEx.GetSel()].LineTranspose()
Return

LoadXML(FileName) {
    Local x
    x := ComObjCreate("MSXML2.DOMDocument.6.0")
    x.async := False
    x.load(FileName)
    Return x
}

LoadAutoComplete(FileName) {
    Static XMLLoaded := False

    If (!XMLLoaded) {
        g_AutoCXMLObj := LoadXML(FileName)

        Keys := g_AutoCXMLObj.getElementsByTagName("key")
        For Key in Keys {
            g_AutoCList .= key.getAttribute("name") . " "
        }

        g_AutoCList := RTrim(g_AutoCList, " ")

        XMLLoaded := True
    }
}

AutoComplete(MinLength := 3, Filter := "") {
    n := TabEx.GetSel()
    CurPos := Sci[n].GetCurrentPos()

    WordStartPos := Sci[n].WordStartPosition(CurPos, True)
    LengthEntered := CurPos - WordStartPos
    WordFirstChar := Sci[n].GetCharAt(WordStartPos - 1)

    If (WordFirstChar == 35 || WordFirstChar == 46) { ; # .
        LengthEntered++
    }

    If ((LengthEntered >= MinLength) && !Sci[n].AutoCActive()) {
        Sci[n].AutoCShow(LengthEntered, "" . g_AutoCList, 2)
        /*
        GetCurrentWord(Word)
        If (Word = "Ret") {
            Sci[n].AutoCSelect("", "Return", 2)
        }
        */
    }
}

AutoCompleteWin32() {
    Static Items

    If (!IsObject(g_AutoCWin32XMLObj)) {
        g_AutoCWin32XMLObj := LoadXML(A_ScriptDir . "\Tools\Windows.xml")
        Items := g_AutoCWin32XMLObj.getElementsByTagName("item")
    }

    n := TabEx.GetSel()
    CurPos := Sci[n].GetCurrentPos()
    WordStartPos := Sci[n].WordStartPosition(CurPos, True)
    LengthEntered := CurPos - WordStartPos
    Sci[n].GetTextRange([WordStartPos, CurPos], TempText)

    ConstList := ""
    For Item in Items {
        Const := Item.getAttribute("const")
        If (InStr(Const, TempText) == 1) {
            ConstList .= Const . " "
        }
    }

    If ((LengthEntered >= 0) && !Sci[n].AutoCActive()) {
        Sci[n].AutoCShow(LengthEntered, RTrim(ConstList), 2)
    }

    If (Sci[n].AutoCActive()) {
        g_AutoCWin32Const := True
    }
}

GetCallTip(Keyword, Overload := True) {
    RegExMatch(" " . g_AutoCList . " ", "i) " . Keyword . " ", Keyword)
    Keyword := Trim(Keyword)
    Node := g_AutoCXMLObj.selectSingleNode("//key[@name=""" . Keyword . """]")
/*
    If (Keyword == "Hotkey" || Keyword == "Progress") {
        VarSetCapacity(LineText, 100)
        Sci[TabEx.GetSel()].GetCurLine(100, LineText)
        If (RegExMatch(LineText, "i)\s*Gui")) {
            Return
        }
    }
*/
    Params := Node.selectNodes("params")
    g_CalltipParams := []
    Loop % Params.length {
        Calltip := Params.item(A_Index - 1).text
        Separator := (SubStr(Calltip, 1, 1) != "(") ? " " : ""
        g_CalltipParams.Push(Keyword . Separator . Calltip)
    }

    If (Params.item(0).text != "") {
        Return (Overload && Params.length > 1) ? Chr(2) . g_CalltipParams[1] : g_CalltipParams[1]
    }
}

ShowCalltip(n, Calltip, StartPos) {
    If (CallTip != "") {
        Sci[n].CalltipShow(StartPos, CallTip, 2)
        Return g_CalltipParamsIndex := 1
    }
}

InsertCalltip() {
    n := TabEx.GetSel()
    If (Sci[n].AutoCActive()) {
        Sci[n].AutoCComplete()
    }

    EndPos := GetCurrentWord(Word)[2]
    GetCalltip(Word, False)
    Calltip := StrReplace(g_CalltipParams[g_CalltipParamsIndex], Word,,, 1)

    NextChar := Chr(Sci[n].GetCharAt(EndPos))
    If (NextChar == " " || NextChar == ",") {
        Sci[n].2645(EndPos, 1) ; SCI_DELETERANGE
    }

    Sci[n].InsertText(EndPos, Calltip, 2)
    Sci[n].WordRight()
    Sci[n].CalltipCancel()
}

GetCurrentWord(ByRef Word, Pos := -1) {
    n := TabEx.GetSel()
    CurrentPos := Sci[n].GetCurrentPos()
    PrevChar := Chr(Sci[n].GetCharAt(CurrentPos - 1))
    If (PrevChar == " " || PrevChar == ",") {
        CurrentPos--
    }
    CurrentPos := (Pos == -1) ? CurrentPos : Pos
    WordStartPos := Sci[n].WordStartPosition(CurrentPos, True)
    PrevChar := Chr(Sci[n].GetCharAt(WordStartPos - 1))
    If (PrevChar == "#" || PrevChar == ".") {
        WordStartPos--
    }
    WordEndPos := Sci[n].WordEndPosition(CurrentPos, True)
    Sci[n].GetTextRange([WordStartPos, WordEndPos], Word)
    Return [WordStartPos, WordEndPos]
}

GetSelectedText() {
    n := TabEx.GetSel()
    Start := Sci[n].GetSelectionStart()
    End := Sci[n].GetSelectionEnd()
    Sci[n].GetTextRange([Start, End], SelText)
    Return SelText
}

SetSelectedText(Text) {
    Sci[TabEx.GetSel()].ReplaceSel("", Text, 2)
}

; SCI_WORDSTARTPOSITION(int pos, bool onlyWordCharacters) → int
GetWordPos() {
    n := TabEx.GetSel()
    Pos := Sci[n].GetCurrentPos()
    WordStartPos := Sci[n].WordStartPosition(Pos, True)
    PrevChar := Chr(Sci[n].GetCharAt(WordStartPos - 1))
    If (PrevChar == "#" || PrevChar == ".") {
        WordStartPos--
    }
    WordEndPos := Sci[n].WordEndPosition(Pos, True)
    Return [WordStartPos, WordEndPos]
}

MarkSelectedText:
    n := TabEx.GetSel()
    Sci[n].SetIndicatorCurrent(1)

    SelStart := Sci[n].GetSelectionStart()
    SelEnd := Sci[n].GetSelectionEnd()

    ; Unmark if marked
    If ((Sci[n].IndicatorAllOnFor(SelStart) & 2) == 2) {
        Sci[n].IndicatorClearRange(SelStart, SelEnd - SelStart)
        Return
    }

    Sci[n].IndicSetStyle(1, INDIC_ROUNDBOX)
    Sci[n].IndicSetFore(1, CvtClr(0x3FBBE3))
    Sci[n].IndicSetOutlineAlpha(1, 255) ; Opaque border
    Sci[n].IndicSetAlpha(1, 80)
    Sci[n].IndicatorFillRange(SelStart, SelEnd - SelStart)
    Sci[n].SetSel(-1, Sci[n].GetCurrentPos())
Return

ClearAllMarks:
    n := TabEx.GetSel()
    Sci[n].SetIndicatorCurrent(1)
    Sci[n].IndicatorClearRange(0, Sci[n].GetLength())
Return

GoToNextMark:
    n := TabEx.GetSel()
    CurrentPos := Sci[n].GetCurrentPos()
    Marks := GetMarks()

    LineCount := Sci[n].GetLineCount()
    VisCenterLine := Sci[n].LinesOnScreen() // 2

    Loop % Marks.Length() {
        If (Marks[A_Index] > CurrentPos) {
            Sci[n].GoToPos(Marks[A_Index])

            MarkLine := Sci[n].LineFromPosition(Marks[A_Index])

            If (VisCenterLine < (LineCount - MarkLine)) {
                Sci[n].VerticalCentreCaret()
            } Else {
                Sci[n].ScrolltoEnd()
            }

            Break
        }
    }
Return

GoToPreviousMark:
    n := TabEx.GetSel()
    CurrentPos := Sci[n].GetCurrentPos()
    Marks := GetMarks()
    Max := Marks.Length()

    Loop %Max% {
        Index := Max - A_Index + 1
        If (Marks[Index] < CurrentPos) {
            Sci[n].GoToPos(Marks[Index])
            Sci[n].VerticalCentreCaret()
            Break
        }
    }
Return

; SCI_INDICATORALLONFOR: Retrieve a bitmap value representing which indicators are non-zero at a position.
GetMarks() {
    n := TabEx.GetSel()
    StartPos := 0
    EndPos := 0
    Max := Sci[n].GetLength()
    Marks := []

    Loop {
        StartPos := Sci[n].IndicatorStart(1, EndPos)
        EndPos := Sci[n].IndicatorEnd(1, StartPos)

        If ((Sci[n].IndicatorAllOnFor(StartPos) & 2) == 2) {
            Marks.Push(EndPos)
        }
    } Until !(EndPos != 0 && EndPos < Max)

    Return Marks
}

ToggleHighlightActiveLine:
    g_HighlightActiveLine := !g_HighlightActiveLine

    ActiveLineColor := g_HighlightActiveLine ? 0xD8F3FF : 0xFFFFFF
    Loop % Sci.Length() {
        Sci[A_Index].SetCaretLineBack(CvtClr(ActiveLineColor))
    }

    Menu AutoOptionsMenu, % g_HighlightActiveLine ? "Check" : "Uncheck", Highlight &Active Line
Return

SetLineNumberWidth(n) {
    If (g_LineNumbers) {
        LineCount := Sci[n].GetLineCount()
        LineCountLen := StrLen(LineCount)
        If (LineCountLen < 2) {
            LineCountLen := 2
        }

        If (LineCountLen != Sci[n].MarginLen) {
            Sci[n].MarginLen := LineCountLen

            If (LineCount < 100) {
                String := "99"
            } Else {
                String := ""
                LineCountLen := StrLen(LineCount)
                Loop %LineCountLen% {
                    String .= "9"
                }
            }

            PixelWidth := Sci[n].TextWidth(STYLE_LINENUMBER, "" . String, 2) + 6
            Sci[n].SetMarginWidthN(0, PixelWidth)
        }
    } Else {
        Sci[n].SetMarginWidthN(0, 0)
        Sci[n].MarginLen := 0
    }
}

HighlightIdenticalText(String) {
    n := TabEx.GetSel()
    SelEnd := Sci[n].GetSelectionEnd()

    Sci[n].SetIndicatorCurrent(2)
    Sci[n].IndicSetStyle(2, 8) ; INDIC_STRAIGHTBOX
    Sci[n].IndicSetFore(2, CvtClr(0x3FBBE3))
    Sci[n].IndicSetOutlineAlpha(2, 80) ; Opaque border
    Sci[n].IndicSetAlpha(2, 80)

    TextLength := Sci[n].GetLength()
    Sci[n].SetTargetStart(0)
    Sci[n].SetTargetEnd(TextLength)
    StringLength := StrPut(String, "UTF-8") - 1

    While (Sci[n].SearchInTarget(StringLength, "" . String, 2) != -1) {
        TargetStart := Sci[n].GetTargetStart()
        TargetEnd := Sci[n].GetTargetEnd()
        If (TargetEnd != SelEnd) {
            Sci[n].IndicatorFillRange(TargetStart, TargetEnd - TargetStart)
        }

        Sci[n].SetTargetStart(TargetEnd)
        Sci[n].SetTargetEnd(TextLength)
    }
}

ToggleHighlightIdenticalText:
    g_HighlightIdenticalText := !g_HighlightIdenticalText
    Sci[n].SetIndicatorCurrent(2)
    Sci[n].IndicatorClearRange(0, Sci[n].GetLength())
    Menu AutoOptionsMenu, ToggleCheck, Highlight Identical Te&xt
Return

SetCodeFolding(n) {
    Sci[n].SetMarginTypeN(2, SC_MARGIN_SYMBOL)
    Sci[n].SetMarginWidthN(2, 20)
    Sci[n].SetMarginMaskN(2, SC_MASK_FOLDERS)
    Sci[n].SetMarginSensitiveN(2, True)

    Loop 7 {
        i := A_Index + 24
        Sci[n].MarkerSetFore(i, 0xFFFFFF)
        Sci[n].MarkerSetBack(i, 0x000000)
    }

    Sci[n].MarkerDefine(SC_MARKNUM_FOLDER, SC_MARK_BOXPLUS)
    Sci[n].MarkerDefine(SC_MARKNUM_FOLDEROPEN, SC_MARK_BOXMINUS)
    Sci[n].MarkerDefine(SC_MARKNUM_FOLDEREND, SC_MARK_BOXPLUSCONNECTED)
    Sci[n].MarkerDefine(SC_MARKNUM_FOLDERMIDTAIL, SC_MARK_TCORNER)
    Sci[n].MarkerDefine(SC_MARKNUM_FOLDEROPENMID, SC_MARK_BOXMINUSCONNECTED)
    Sci[n].MarkerDefine(SC_MARKNUM_FOLDERSUB, SC_MARK_VLINE)
    Sci[n].MarkerDefine(SC_MARKNUM_FOLDERTAIL, SC_MARK_LCORNER)
}

ToggleCodeFolding:
    g_CodeFolding := !g_CodeFolding

    If (g_CodeFolding) {
        Loop % Sci.Length() {
            SetCodeFolding(A_Index)
        }
    } Else {
        Loop % Sci.Length() {
            Sci[A_Index].SetMarginWidthN(2, 0)
        }
    }

    Menu AutoOptionsMenu, ToggleCheck, Code &Folding
Return

ShowIndentationDialog:
    Gui IndentDlg: New, LabelIndentDlg hWndhIndentDlg -MinimizeBox OwnerAuto
    SetWindowIcon(hIndentDlg, IconLib, 91)
    Gui Font, s9, Segoe UI
    Gui Color, White
    Gui Add, Text, x16 y16 w95 h23 +0x200, Indentation size:
    Gui Add, Edit, vg_TabSize x112 y17 w50 h21 Number
    Gui Add, UpDown, x167 y18 w17 h21, %g_TabSize%
    Gui Add, CheckBox, vg_IndentWithSpaces x16 y47 w181 h23 Checked%g_IndentWithSpaces%, Indent with spaces
    Gui Add, CheckBox, vg_AutoIndent x15 y78 w181 h23 Checked%g_AutoIndent%, Automatic indentation
    Gui Add, CheckBox, vg_IndentGuides x14 y111 w181 h23 Checked%g_IndentGuides%, Show indentation guides
    Gui Add, Text, x-1 y146 w337 h49 -Background +Border
    Gui Add, Button, gSetIndentationSettings x80 y158 w84 h24 +Default, &OK
    Gui Add, Button, gIndentDlgClose x171 y158 w84 h24, &Cancel
    Gui Show, w334 h194, Indentation Settings
Return

IndentDlgEscape:
IndentDlgClose:
    Gui IndentDlg: Destroy
Return

SetIndentationSettings:
    Gui IndentDlg: Submit

    IndentView := g_IndentGuides ? 3 : 0 ; 3 = SC_IV_LOOKBOTH

    Loop % Sci.Length() {
        Sci[A_Index].SetTabWidth(g_TabSize)
        Sci[A_Index].SetUseTabs(!g_IndentWithSpaces)
        Sci[A_Index].SetIndentationGuides(IndentView)
    }

    SetIndent() ; For generated code
Return
