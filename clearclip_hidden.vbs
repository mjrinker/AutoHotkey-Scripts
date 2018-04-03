Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c clearclip.bat"
oShell.Run strArgs, 0, false