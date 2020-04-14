Scriptname STI_dunIcerunnerScript extends Quest

GlobalVariable Property IcerunnerReturnEnabled  Auto
ReferenceAlias Property SavedIcerunnerEnableMarker  Auto

Event OnUpdateGameTime()
	if IcerunnerReturnEnabled.GetValueInt()
		if !SavedIcerunnerEnableMarker.GetReference().IsNearPlayer()
			; Bring back the Icerunner
			;Debug.Trace("STI - Player was far enough from Icerunner to return")
			SetStage(400)
			return
		endif
	endif

	; Try again tomorrow
	;Debug.Trace("STI - Player was not far enough from Icerunner to return")
	RegisterForSingleUpdateGameTime(24)
EndEvent
