Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c StartupScripts.bat"
oShell.Run strArgs, 0, false