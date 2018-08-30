Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c StartupScripts.ahk"
oShell.Run strArgs, 0, false