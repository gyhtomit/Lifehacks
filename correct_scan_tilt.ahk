#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Irfanview Tilt n images


^j::
Loop, 3
{
	Send, ^u 			; enter Tilt Menu
	Send, {Enter} ; confirm Tilt
	Send, ^s 			; save Image
	Send, {Enter} ; confirm Save
	Send, {Left}	; select override
	Send, {Enter} ; confirm Override
	Send, {Right} ; next Image
	Sleep, 500
}
Return
