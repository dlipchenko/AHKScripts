;note - using this script implies that you have read the disclaimer in the readme.md file located at https://github.com/dlipchenko/AHKScripts/tree/master/Warframe and agree with the conditions I've written there
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
