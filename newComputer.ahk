#NoTrayIcon
#SingleInstance force

width = 200
height = 150

InputBox, status, New Computer Script, Are you at the START or END of the process?,, %width%, %height%,
if ErrorLevel
{
	ExitApp
}
StringLower, status, status

if (status = "start")
{
	newIsAdmin := ""
	InputBox, netID, New Computer Script, Enter the employee's netID: (press enter if N/A),, %width%, %height%,
	if ErrorLevel
	{
		ExitApp
	}
	createLocal:
	InputBox, createUser, New Computer Script, Create a local user account? (y/n),, %width%, %height%,
	if ErrorLevel
	{
		ExitApp
	}
	StringLower, createUser, createUser
	if (createUser = "y" or createUser = "yes")
	{
		InputBox, newUser, New Computer Script, Enter new username:,, %width%, %height%,
		if ErrorLevel
		{
			ExitApp
		}
		newPassword:
		InputBox, newPass, New Computer Script, Enter new password: (press enter if none), HIDE, %width%, %height%,
		if ErrorLevel
		{
			ExitApp
		}
		if (newPass != "")
		{
			InputBox, verPass, New Computer Script, Verify new password:, HIDE, %width%, %height%,
			if ErrorLevel
			{
				ExitApp
			}
			if (newPass != verPass)
			{
				MsgBox, Passwords don't match!
				goto newPassword
			}
			newPass := " " newPass
		}
		InputBox, newDN, New Computer Script, Enter display name:,, %width%, %height%,
		if ErrorLevel
		{
			ExitApp
		}
		InputBox, newIsAdmin, New Computer Script, Set new user as admin? (y/n),, %width%, %height%,
		if ErrorLevel
		{
			ExitApp
		}
		goto createLocal
	}
	StringLower, newIsAdmin, newIsAdmin
	Run, %comspec% /c net user %newUser%%newPass% /add /expires:never /fullname:`"%newDN%`"
	if (newIsAdmin = "y" or newIsAdmin = "yes")
	{
		Run, %comspec% /c net localgroup administrators %newuser% /add
	}
	byuadminPassword:
	InputBox, byuadminPass, New Computer Script, Enter BYUAdmin password:, HIDE, %width%, %height%,
	if ErrorLevel
	{
		ExitApp
	}
	InputBox, verbyuadminPass, New Computer Script, Verify BYUAdmin password:, HIDE, %width%, %height%,
	if ErrorLevel
	{
		ExitApp
	}
	if (byuadminPass != verbyuadminPass)
	{
		MsgBox, Passwords don't match!
		goto byuadminPassword
	}
	Run, %comspec% /c net user byuadmin %byuadminPass%
	Run, %comspec% /c net localgroup administrators byuadmin /add
	if (netID != "")
	{
		Run, %comspec% /c net localgroup administrators %netID% /add
	}
	Run, %comspec% /c powercfg -monitor-timeout-ac 0
	Run, %comspec% /c powercfg -standby-timeout-ac 0
	Run, %comspec% /c powercfg -monitor-timeout-dc 60
	Run, %comspec% /c powercfg -standby-timeout-dc 60
}
else if (status = "end")
{
	Run, %comspec% /c powercfg -monitor-timeout-ac 10
	Run, %comspec% /c powercfg -standby-timeout-ac 30
	Run, %comspec% /c powercfg -monitor-timeout-dc 5
	Run, %comspec% /c powercfg -standby-timeout-dc 15
}
else
{
	ExitApp
}

^del::
	ExitApp
return