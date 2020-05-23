#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; toggle automatic clicking for mincraft afk farming

^Numpad0::
pause
return

^Numpad1::
Loop,
{
	Click Left
	Sleep, 625
}
return

!LButton::
	Send, {LButton down}
	;Sleep, 1200 ; one block
	Sleep, 2500
	Send, {LButton up}
	Sleep, 125
	Send, 3
	Sleep, 125
	Click Right
	Sleep, 125
	Send, 4
	Sleep, 125
	Click Right
	Sleep, 125
	Send, 2
	Return