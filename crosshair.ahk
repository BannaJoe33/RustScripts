
Gui, Color, 0xFFFF00
Gui, Add, Picture, ,crosshair.png ; dimensions of 41x41
Gui, +LastFound +AlwaysOnTop -Caption +E0x20 ; Click through GUI always on top.
WinSet, TransColor, 0xFFFF00
Gui, Show, % "x" A_ScreenWidth/2-21 " y" A_ScreenHeight/2-21 ; this centers it on screen, or at least what should be the center. Might be off by a pixel or two in either axis in any direction.
return