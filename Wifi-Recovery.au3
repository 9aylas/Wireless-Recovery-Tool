
;
; i was #High af when i wrot this script , just some nekfeu :D !
; greet's to all aliens
;
#NoTrayIcon
#include <GUIConstantsEx.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <WindowsConstants.au3>
#include <StaticConstants.au3>
#include <Process.au3>
#Region # Fuq'n Gui #
$fucking_gui = GUICreate("        # Wireless Recovery Tool # ", 205, 113, 537, 286, -1, BitOR($WS_EX_TOOLWINDOW,$WS_EX_WINDOWEDGE))
$get = GUICtrlCreateButton("! Get SSID List !", 8, 8, 97, 25)
$restor = GUICtrlCreateButton("! Get SSID Key !", 8, 64, 97, 25)
$name = GUICtrlCreateInput("SSID", 8, 40, 97, 21)
$about = GUICtrlCreateButton("About Me ?", 120, 8, 81, 81)
$FuqTheSociety = GUICtrlCreateLabel("  #Made #in #213 - 9aylas", 24, 96, 180, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
GUISetState(@SW_SHOW)
#EndRegion # e0f Fuq'n Gui #

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		 case $get
		    _RunDos("netsh wlan show profiles key=clear>>List_SSID.txt")
			sleep(900)
		    MsgBox(64,"Wireless Restor Tool","Success ! " &@crlf& "Check this file :  List_SSID.txt")
			if @error then msgbox(16,"WTF" , " What's Wrong ? ")  EndIf
		 case $restor
			_RunDos("netsh wlan show profiles " & GUICtrlRead($name) & " key=clear>>Restored.txt")
			sleep(1000)
			MsgBox(64,"Wireless Restor Tool","Success ! " &@crlf& "Check this file :  Restored.txt")
			if @error then msgbox(16,"WTF" , " What's Wrong ? ")  EndIf
		 case $about
			MsgBox(4144,"About Me ?","Author : Aghilas" & @CRLF & "Email   : N/A" & @CRLF & "" & @CRLF & "Greet's t0 :  EliteTrojan & Ghosty & All..." &@CRLF  & "" & @CRLF & "Weed Corporation 2016 ~ Buenos Tardes x) !" & @CRLF & "" & @CRLF & "")
	EndSwitch
WEnd
