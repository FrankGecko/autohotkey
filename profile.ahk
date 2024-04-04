#SingleInstance
#Requires AutoHotkey >=v2.0

*CapsLock::
{
	Send "{Ctrl down}"
	if (KeyWait("CapsLock", "T0.15"))
	{
		Send "{Ctrl up}"
		Send "{Escape}"
		return
	}

	KeyWait "CapsLock"
	Send "{Ctrl up}"
}

LCtrl::CapsLock