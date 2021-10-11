#NoEnv
SendMode Input
 
~F6::Suspend
~End::ExitApp
~F5::Reload
 
LCtrl & ~LButton::
Loop
    If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        moveAmount := (moveAmount = 2) ? 1 : 0
        mouseXY(moveAmount,20)
       
    }
    else
    break
   
Return
 
 
 
mouseXY(x,y)
{
DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
}