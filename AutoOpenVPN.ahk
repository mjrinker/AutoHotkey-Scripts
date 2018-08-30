#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#NoTrayIcon
#SingleInstance force
Run,%comspec% /c openvpn "C:\Program Files\OpenVPN\config\[client].ovpn",,Hide
ExitApp