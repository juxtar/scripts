#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

XButton2 & WheelUp::
Send {Volume_Up}
return

XButton2 & WheelDown::
Send {Volume_Down}
return

XButton2 & MButton::
Send {Media_Play_Pause}
return

XButton2 & RButton::ShiftAltTab
XButton2 & LButton::AltTab

XButton1 & RButton::Media_Next
XButton1 & LButton::Media_Prev

XButton1 & WheelUp::  ; Scroll left.
ControlGetFocus, fcontrol, A
Loop 2  ; <-- Increase this value to scroll faster.
    SendMessage, 0x114, 0, 0, %fcontrol%, A  ; 0x114 is WM_HSCROLL and the 0 after it is SB_LINELEFT.
return

XButton1 & WheelDown::  ; Scroll right.
ControlGetFocus, fcontrol, A
Loop 2  ; <-- Increase this value to scroll faster.
    SendMessage, 0x114, 1, 0, %fcontrol%, A  ; 0x114 is WM_HSCROLL and the 1 after it is SB_LINERIGHT.
return

; Keep original key function
XButton2::
Send {XButton2}
return

; Keep original key function
XButton1::
Send {XButton1}
return

; QT hide screens
^+WheelDown::
Send {Left}
Send {Down}
return
