Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c AHKStartupScripts.bat"
oShell.Run strArgs, 0, false