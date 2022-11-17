﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;-------------------Screen capture--------------------
;In Keychron K2C3 version, Screen capture key sends Win+Alt+4. Which in AHK can be represented as #+4

#+4::
Send {LWin Down}{Shift Down}s{LWin Up}{Shift Up} ; Windows + Shift + S
return


;-------------------Mouse extra buttons-------------

; COPY
XButton2::
Send, {Control Down}c{Control Up}
return

; PASTE
XButton1::
Send, {Control Down}v{Control Up}
return


::/text1::
::/text11::
::/text111::
Send,
(
This is a very long and repetitive text you can write if you type:
/text1 + TAB
/text11 + TAB
/text111 + TAB
)
return

::/loop::
startTime=%A_Hour%:%A_Min%
MsgBox, , , Start!, 3
Loop, 2
{
	; Your repetitive task here
	Sleep, 60000
}
endTime=%A_Hour%:%A_Min%
MsgBox %startTime%`n%endTime%
return