;note - using this script implies that you have read the disclaimer in the readme.md file located at https://github.com/dlipchenko/AHKScripts/tree/master/Warframe and agree with the conditions I've written there
baseSpeedValue = 1150
delayTimer = %baseSpeedValue%
ypos = 
xpos = 
CoordMode, Mouse, Relative


Toggle = 0
ToggleRound = 0
#MaxThreadsPerHotkey 3

+]::
	if (delayTimer > (baseSpeedValue - (250 * 3))) {
		delayTimer-=250
		Send, {shift down}
	} else if (Toggle)  {
		Send, {shift down}
	}
	
return
]::
	if (delayTimer > (baseSpeedValue - (250 * 3))) {
		delayTimer-=250
		Send, {shift down}
	} else if (Toggle)  {
		Send, {shift down}
	}
	
return

+[::
	if (delayTimer < baseSpeedValue) {
		delayTimer+=250
		Send, {shift down}
	} else if (Toggle)  {
		Send, {shift down}
	}
return
[::
	if (delayTimer < baseSpeedValue) {
		delayTimer+=250
		Send, {shift down}
	} else if (Toggle) {
		Send, {shift down}
	}
return

F1::
ToggleRound := !ToggleRound
return

+`::
Toggle := !Toggle
return

`::
    Toggle := !Toggle
	Send, {w down} 
	if (ToggleRound = 0)
	{
		Send, {shift down} 
		While Toggle
		{
			Sleep, delayTimer 
			Send, ^e 
		}
		Sleep, 50
		Send, {shift up} 
		Send, {w up} 
	}
	else if (ToggleRound = 1)
	{	
		BlockInput, MouseMove
		While Toggle
		{
			

			Sleep, delayTimer 
			MouseGetPos, xpos, ypos
			Sleep, 1
			MouseMove, xpos-15, ypos, 50
			Send, ^e 
			if (Toggle = 0)
			{
				break
			}
			Sleep, delayTimer 
			MouseGetPos, xpos, ypos
			Sleep, 1
			MouseMove, xpos+15, ypos, 50
			Send, ^e 
			if (Toggle = 0)
			{
				break
			}
			Sleep, delayTimer 
			MouseGetPos, xpos, ypos
			Sleep, 1
			MouseMove, xpos+15, ypos, 50
			Send, ^e 
			if (Toggle = 0)
			{
				break
			}
			Sleep, delayTimer 
			MouseGetPos, xpos, ypos
			Sleep, 1
			MouseMove, xpos-15, ypos, 50
			Send, ^e 
			if (Toggle = 0)
			{
				break
			}
		}
		Sleep, 50
		BlockInput, MouseMoveOff
		Send, {shift up} 
		Send, {w up} 
	}
return

+-::
Send, %delayTimer%
	Send, {shift down} 
return
