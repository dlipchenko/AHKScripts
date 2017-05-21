These scripts are for a game called warframe. They are simple macros for execution of actions that would otherwise be arthritis-inducing.

**autoSlide.ahk**<br /> 
This is the script for continuous slide attacks (can be toggled on and off), designed specifically for the Atterax modded with Berserker, but could be used for any weapon with some tweaking. As Berserker builds up attack speed, the slide attack can be performed more rapidly, so this script includes hotkeys to increase and decrease the script's attack speed.<br />

I have also modified this script in such a way that allows hands-off movement. This is a mode which I will call the "afk mode" from here on out. If this is toggled off, you will just have a continuous sprint-slide-attack movement as per the old script, but if you toggle it on, your mouse will move in 180 degrees in the opposite direction after every attack. A couple of notes you should be aware of when using afk mode:<br /> 
a) this is not extensively tested. The conditions behind my testing were: 1920x1080 screen resolution (and in-game resolution), mouse sensitivity in the game's options is set to 50, and a run-of-the-mill microsoft mouse (i.e. average DPI). I don't know what variations in these conditions will do with the script, so test it out and see if it works. If it doesn't work exactly the way you want it, open the script and play around with the values. What you're looking for are these two lines:<br /> 
MouseMove, xpos+**18**, ypos, 50<br /> 
MouseMove, xpos**-18**, ypos, 50<br /> 
Make the 18 and -18 less or more, but keep them uniform (i.e. 17/-17 or 20/-20).<br /> 
b) To get this script to work properly, I had to disable user input for the cursor on the desktop. Not doing this would cause some dark magic to do unexpected things. What this means is that while the slide-attack loop is active, you'll still be able to look-around in-game, and even move the cursor in the game's esc menu, but **you will not have control of your cursor when you've tabbed out of the game** - to regain control, just toggle the auto-slide off and it will release the cursor.<br /> 
c) This best works if your screen is leveled with the ground (i.e. point your crosshair to at the horizon). Otherwise, the more off-level your camera view is, the more your camera will spin, and the 180 dregree turn becomes bigger. This is not too big a deal, since you should theoretically always return to your point of origin, but if you notice it, now you know why.

*hotkeys:*<br /> 
&#96; (the tilde key above tab): toggle the auto-slide attacks on and off.<br /> 
F1: Toggle AFK mode on and off<br />
]: increase attack speed. feel free to mash this, as a limit is in place to prevent it from attacking faster than the weapon can handle<br /> 
[: decrease attack speed. also has a limiter in place<br /> 


**jumpAttack.ahk**<br /> 
This is the script for a continuous jump-attack specifically designed for the Ohma modded with Berserker. Given this weapon's devastating capabilities when jump-attacking, this was worth making, but doesn't have much use outside of Ohma thus far. As with autoSlide.ahk, you can toggle it on and off as well as increase or decrease the frequency of attack execution depending on the amount of berserker stacks. 

*hotkeys:*<br /> 
&#96; (tilda key above tab): toggle auto-attacks on or off<br /> 
+: increase attack speed. feel free to mash this, as a limit is in place to prevent it from attacking faster than the weapon can handle<br /> 
-: decrease attack speed. also has a limiter in place<br /> 

**autoCrafter.ahk**<br /> 
With this script you can walk away from your keyboard and it will keep crafting those pesky 1-minute recipes in your foundry (i.e. derelict keys, 10x energy restores, 10x air support charges, 10x ciphers, etc.)
note: This is made for 1920x1080 resolution. If your resolution is different, this will not work for you.<br /> <br /> 

DISCLAIMER: Use this at your own risk. I've optimized the script to be as safe as possible in afk mode, so in ideal afk conditions this script should never use plat for rushing; accidental or otherwise. However, if this does happen, due to external stimulus or otherwise, I am not responsible for the plat you lose due to rushing. I will not compensate you, and I will not be held accountable for your decision - the act of using this script is yours and yours alone.<br /> <br /> 

When you run the script, you will get a GUI with a bunch of checkboxes and a slider. <br />
The 6 checkboxes at the top of the GUI represent the 6 visible items that you see when you open the foundry. So in order to craft items, you simply navigate through your foundry until they are present on the screen, then check off the corresponding checkbox(es) in the GUI. The following screenshot indicates the correlation:<br />
![alt text](https://raw.githubusercontent.com/dlipchenko/AHKScripts/master/Warframe/autoCrafterGUI.png)<br />
note: you can select more than 1 checkbox, and it will craft everything you select.</br >
The slider enables you to choose how many times you wish for the script to craft the item in question. If you want it to run until you've depleted your resources, just check off the "infinite" checkbox. If you want to run it just a specific amount of times, leave the checkbox unchecked, and use the slider to indicate how many you want to run.<br /><br />

Once you've set the GUI to do what you want, tab back into the game, make sure you're looking at the foundry (and that the items in the foundry align with the checkboxes of the GUI) and hit &#96; (tilda key above tab) to start the automation. If you want to turn it off, hit the same key again, but once you do let it complete its current action.<br /><br />

As I mentioned in the disclaimer above, I will not be held responsible for any loss of plat or other damages, and I will not compensate you either. As such, I recommend that you supervise the automation for the first few runs to ensure that it runs smoothly.
