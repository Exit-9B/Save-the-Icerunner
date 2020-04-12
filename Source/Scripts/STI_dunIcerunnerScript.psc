Scriptname STI_dunIcerunnerScript extends Quest

ReferenceAlias Property SavedIcerunnerEnableMarker  Auto

Event OnUpdateGameTime()
	if !SavedIcerunnerEnableMarker.GetRef().IsNearPlayer()
		; Bring back the Icerunner
		;Debug.Trace("STI - Player was far enough from Icerunner to return")
		SetStage(400)
	else
		; Try again tomorrow
		;Debug.Trace("STI - Player was not far enough from Icerunner to return")
		RegisterForSingleUpdateGameTime(24)
	endif
EndEvent
