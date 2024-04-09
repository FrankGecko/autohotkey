#SingleInstance
#Requires AutoHotkey >=v2.0

*CapsLock::
{
	thisKey := "CapsLock"

	Send "{Ctrl down}"
	KeyWait(thisKey)
	Send "{Ctrl up}"

	pressedNoNewKey := A_PriorKey = thisKey	
	
	if (pressedNoNewKey)
	{
		Send "{Escape}"
	}
}

 LCtrl::CapsLock