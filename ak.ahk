#NoEnv
SendMode Input
#SingleInstance, force 
 
~F8::Suspend
~End::ExitApp
~F11::Reload
 
LCtrl & ~LButton::
Loop 8

   If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(-5.5,7)
    }
    else
    break
Loop 8

   If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(1,7)
    }
    else
    break
Loop 8

   If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(-7,6.5)
    }
    else
    break
Loop 8

   If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(-7,6.5)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(-1.5,4.5)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(1,6)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(5,3)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(5.5,2)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(6.5,2)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(6.5,2)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(6,0)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(5,2)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(2,4)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(0,5)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(0,5)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(-3,6)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(-4.5,3.5)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(-6,5)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(-6,4)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(-7,3)
    }
    else
    break
Loop 8
	If GetKeyState("LButton", "LCtrl") {
        Sleep, 6
        mouseXY(-6,1)
    }
    else
    break

		
Return

mouseXY(x,y)
{
DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
}