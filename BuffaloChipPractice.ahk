#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon              ;if you don't want a tray icon for this AutoHotkey program.

; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


InputBox, EventDate, Enter The Date Of The Event
FileCreateDir E:\Google Drive\Camera 2019\Buffalo Chip\Practice Nights\%EventDate%\Facebook
FileCreateDir E:\Google Drive\Camera 2019\Buffalo Chip\Practice Nights\%EventDate%\Website
FileCreateDir E:\Google Drive\Camera 2019\Buffalo Chip\Practice Nights\%EventDate%\Orders\Order Forms
FileAppend,dfas,E:\Google Drive\Camera 2019\Buffalo Chip\Practice Nights\%EventDate%\Orders\Order Forms\temp.txt

Sleep, 2000

shell := ComObjCreate("Shell.Application")

; pin
shell.Namespace("E:\Google Drive\Camera 2019\Buffalo Chip\Practice Nights\" . EventDate . "\").Self.InvokeVerb("pintohome")

; unpin
; for e in shell.Namespace("shell:::{679f85cb-0220-4080-b29b-5540cc05aab6}").Items()
; {
; 	if (e.Path == ThePathIWantToUnpin)
; 	{
; 		e.InvokeVerb("unpinfromhome")
; 		break
; 	}
; }