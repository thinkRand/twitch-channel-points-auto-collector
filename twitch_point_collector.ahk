; <<Copyright (C)  2022 Abel Granados>>
; https://es.fiverr.com/abelgranados


#SingleInstance Force
#WinActivateForce
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode 2
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1
SetDefaultMouseSpeed, 30
CoordMode, mouse, Screen
CoordMode, Pixel, Screen

start_script()
SetTimer, collectChanelPoints, 500
return

^LButton::
	add_pixel()
return


+LButton::
	selectedPixel := {}
return


Esc::
	ExitApp
return


collectChanelPoints(){
	Global selectedPixel
	
	if selectedPixel.x = "" || selectedPixel.x = 0 
		return

	if selectedPixel.color = "" || selectedPixel.color = 0 
		return

	PixelGetColor, currentColor, selectedPixel.x, selectedPixel.y
	if (ErrorLevel) {
		MsgBox, Error getting color
		ExitApp
	}
	if (currentColor != selectedPixel.color){

		BlockInput, On
		MouseGetPos, currx, curry
		x :=selectedPixel.x
		y :=selectedPixel.y
		Click, %x%, %y% 
		MouseMove currx, curry
		BlockInput, Off
	}
}

add_pixel() {
	Global selectedPixel
	MouseGetPos, currx, curry
	PixelGetColor, temp, currx, curry
	selectedPixel := {"x":currx,"y":curry, "color":temp}
	Tooltip, pixel added
	sleep 600
	Tooltip
}


start_script() {
	MsgBox, ESC to exit. `nCRTL + LEFTCLICK to put the point to watch. `nSHIFT + LEFTCLICK to reset. `nFirst off, select the pixel when the box is normal (no green). This script will look on the pixel to detect if it change.
}
