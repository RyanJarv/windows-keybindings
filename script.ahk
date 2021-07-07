#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
#KeyHistory 100
KeyHistory
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;#MenuMaskKey vkE8; Change the masking key to something unassigned such as vkE8.

; Docs: 
; https://autohotkey.com/docs/Hotkeys.htm
; https://autohotkey.com/docs/KeyList.htm
; Ref https://autohotkey.com/board/topic/60675-osx-style-command-keys-in-windows/

; You need to disable "Between input languages" shotcut from Control Panel\Clock, Language, and Region\Language\Advanced settings > Change lanugage bar hot keys

Capslock::return

; Way to disable capslock in case it gets stuck for whatever reason.




;; Universal shotcuts
;
; Alt is Control
$!x::Send ^x
; Use ^SendInput because some idiot decided that copy should be the same thing as SIGTERM
$!c::SendInput ^{Insert}
$!v::Send ^v
$!s::Send ^s
$!a::Send ^a
$!z::Send ^z

$!+z::Send ^y

; Search, Search next, Search last
$!f::Send ^f
$!g::Send {Enter}
$+!g::
	Send {ShiftDown}{Enter}
	Send {ShiftUp}
return

Capslock & a::Send {Home}
Capslock & e::Send {End}
Capslock & b::Send {Left}
Capslock & f::Send {Right}
Capslock & p::Send {Up}
Capslock & n::Send {Down}
Capslock & d::Send {Delete}
Capslock & h::Send {Backspace}
Capslock & w::Send ^{Backspace}
; SIGTERM
Capslock & c::Send ^c
Capslock & k::
	Send {ShiftDown}{End}
	Send {ShiftUp}{Delete}
return
#b::Send ^{Left}
#f::Send ^{Right}



$!n::Send ^n
$!q::Send !{f4}
$!r::Send ^{f5}
$!m::Send {LWin Down}{Down}{LWin Up}
$!`::Send {Alt Down}{Shift Down}{Tab}{Shift Up}

; Quick Switch Tab shotcuts

$!1::Send ^1
$!2::Send ^2
$!3::Send ^3
$!4::Send ^4
$!5::Send ^5
$!6::Send ^6
$!7::Send ^7
$!8::Send ^8
$!9::Send ^9
$!0::Send ^0



; AHK
^!k::
	WinGetClass, class, A
	MsgBox, The active window's class is "%class%".
return


;; Chrome shotcuts
#IfWinActive ahk_class Chrome_WidgetWin_1
	$!t::Send ^t
	$!+t::Send ^+t
	$!+]::Send {Ctrl Down}{Tab Down}{Tab Up}{Ctrl Up}
	$!+[::Send {Ctrl Down}{Shift Down}{Tab Down}{Tab Up}{Shift Up}{Ctrl Up}
	$!w::Send ^w
#IfWinActive

#IfWinActive ahk_class Notepad

; input methods

; $+,::Send ^,
; $+.::Send ^.

; navigation, selection, delete a word/till end

$!Left::Send {Home}
$!Right::Send {End}
$!Up::Send {Lctrl down}{Home}{Lctrl up}
$!Down::Send {Lctrl down}{End}{Lctrl up}

$#Left::Send {ctrl down}{Left}{ctrl up}
$#Right::Send {ctrl down}{Right}{ctrl up}
$#+Left::Send {ctrl down}{shift down}{Left}{shift up}{ctrl up}
$#+Right::Send {ctrl down}{shift down}{Right}{shift up}{ctrl up}

$!+Left::Send {shift down}{Home}{shift up}
$!+Right::Send {shift down}{End}{shift up}
$!+Up::Send {Ctrl Down}{shift down}{Home}{shift up}{Ctrl Up}
$!+Down::Send {Ctrl Down}{shift down}{End}{shift up}{Ctrl Up}

!BS::Send {LShift down}{Home}{LShift Up}{Del}
#BS::Send {LCtrl down}{BS}{LCtrl up}

$#Space::Send {Ctrl Down}{LWin Down}{Space}{LWin Up}{Ctrl Up}
