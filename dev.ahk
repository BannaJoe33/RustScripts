#SingleInstance, force
#NoEnv
Menu, Tray, Icon, D:\Downloads\rust new logo (1).ico
SetWorkingDir, %A_ScriptDir%
; Please don't delete 
; Original Script by Manny - https://github.com/Manny542
; Covered by the MIT Copyright License - https://opensource.org/licenses/MIT

;Script Version
;___________________________________
SVersion = 0.10
;RCode = RANDOM CODE: ????
;___________________________________

;Global Variables
;___________________________________
Global Always_On_Top :=
;___________________________________

;Gui Layout
;___________________________________
Gui, Show, w300 h370, FatMonkey
Gui, Color, 000000
Gui, Add, Text, x2 y355 cRed BackgroundTrans, V - %SVersion%
;Gui, Add, Text, x90 y70 cRed BackgroundTrans,%RCode%
Gui, Add, Checkbox, x93 y292 gAlways_On_Top_Control cRed vAlways_On_Top,Always On Top?

Gui, Add, Button, x87 y104 w50 h30 gAk cRed, [ AK ]
Gui, Add, Button, x153 y104 w50 h30 gSAR cRed, [ SAR ]
Gui, Add, Button, x87 y145 w50 h30 gMP5 cRed, [ MP5 ]
Gui, Add, Button, x153 y145 w50 h30 gM2 cRed, [ M2 ]
Gui, Add, Button, x87 y186 w116 h30 gCross cRed, [ CROSSHAIR ]
Gui, Add, Button, x87 y227 w116 h30 gCode cRed, [ CODE GNERATOR ]
Gui, Add, Picture, x0 y0, D:\Pictures\sbkg1.png
return

;___________________________________

;Script
;___________________________________
Ak:
	Run, open "C:\Users\Catmo\Desktop\Script\ak.ahk"
	MsgBox, 0, Info,AK Script On, 1.7
	return

SAR:
	Run, open "C:\Users\Catmo\Desktop\Script\sar.ahk"
	MsgBox, 0, Info,SAR Script On, .7
	return

MP5:
	MsgBox, 0, Info, Currently not available, 1.0
	return

M2:
	Run, open "C:\Users\Catmo\Desktop\Script\m2.ahk"
	MsgBox, 0, Info,M2 Script On, .7
	return
	
Cross:
	Run, open "C:\Users\Catmo\Desktop\crosshair.ahk"
	MsgBox, 0, Info,Press "Q" to disable, 1.2
	return

Code:
	loop
 {
   random, n, 1000, 9999
   if (n > 500 && n < 600)
    {
      continue
    }
   else
    {
      break
    }
 }
	MsgBox, 64, Code Lock Combination, Code Generated: %n%
	return
;___________________________________
;Lables
;___________________________________
GuiClose:
ExitApp

Always_On_Top_Control:
	Gui, Submit, NoHide
	if(Always_On_Top==True)
		{
			Gui, +AlwaysOnTop
		}
	if(Always_On_Top==False)
		{
			Gui, -AlwaysOnTop
		}
return
;___________________________________

;Hotkeys
;___________________________________
F5::ExitApp

End:: ;closes all other scripts
DetectHiddenWindows, On
WinGet, AHKList, List, ahk_class AutoHotkey
Loop, %AHKList%
{
    ID := AHKList%A_Index%
    If (ID <> A_ScriptHwnd)
        WinClose, ahk_id %ID%
}
Return
;___________________________________

