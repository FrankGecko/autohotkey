#SingleInstance
#Requires AutoHotkey >=v2.0

*CapsLock::
{
	thisKey := "CapsLock"

	Send "{LControl down}"
	KeyWait(thisKey)
	Send "{LControl up}"

	pressedNoNewKey := A_PriorKey = thisKey	
	
	if (pressedNoNewKey)
	{
		Send "{Escape}"
	}
}

 LCtrl::CapsLock