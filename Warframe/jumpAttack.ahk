baseSpeedValue = 1900
delayTimer = %baseSpeedValue%


toggle = 0
#MaxThreadsPerHotkey 3

=::
	if (delayTimer > (baseSpeedValue - (300 * 2))) {
		delayTimer-=300
	}
return

-::
	if (delayTimer < baseSpeedValue) {
		delayTimer+=300
	}
return

]::
Send, %delayTimer%
return

`::
    Toggle := !Toggle
	Send, {w down}
	While Toggle
	{
		Send, ^{space}
		Send, e
		Sleep, delayTimer
	}
	Send, {w up}
return
