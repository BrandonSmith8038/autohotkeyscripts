#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


WinGetActiveTitle, FolderPath
FileMove, E:\Google Drive\Red Dirt Web Design\Invoices\Photography\*.pdf, %FolderPath%
FileDelete, %FolderPath%\temp.txt