;Uses Google search instead of Bing
#IfWinActive, ahk_class Windows.UI.Core.CoreWindow
	Enter::
	SendInput, {Ctrl down}a
	sleep 25
	SendInput, c{Ctrl up}
	sleep 25
	SendInput, {Enter}
	sleep 1000
	IfWinActive,ahk_class Chrome_WidgetWin_1
	{
		SendInput, {Alt down}d{Alt up}
		sleep 25
		SendInput, %clipboard%
		sleep 25
		SendInput, {Enter}
	}
	#IfWinActive
	return
