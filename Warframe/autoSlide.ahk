baseSpeedValue = 1150
delayTimer = %baseSpeedValue%


Toggle = 0
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

+`::
Toggle := !Toggle
return

`::
    Toggle := !Toggle
	Send, {shift down} 
	Send, {w down} 
	While Toggle
	{
		Sleep, delayTimer 
		Send, ^e 
	}
	Sleep, 50
	Send, {shift up} 
	Send, {w up} 
return

+-::
Send, %delayTimer%
	Send, {shift down} 
return

