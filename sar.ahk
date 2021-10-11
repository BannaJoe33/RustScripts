SetBatchLines, -1
#NoEnv
SendMode Input
 
_auto := true
 
LCtrl & ~LButton::recoil()
Numlock::_auto := ! _auto
End::ExitApp 
 
 
recoil()
{
global _auto
if _auto
{
Loop
{
if GetKeyState("LButton", "P")
{
MouseXY(0,3)
sleep 30
}
else
break
} ;; loop
} ;; if
} ;; recoil()
 
mouseXY(x,y)
{
DllCall("mouse_event",uint,1,int,x,int,y,uint,0,int,0)
}