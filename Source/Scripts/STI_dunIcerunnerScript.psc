Scriptname STI_dunIcerunnerScript extends Quest

ReferenceAlias Property SavedIcerunnerEnableMarker  Auto

Event OnUpdateGameTime()
	if !SavedIcerunnerEnableMarker.GetRef().IsNearPlayer()
		; Bring back the Icerunner
		SetStage(400)
	else
		; Try again tomorrow
		RegisterForSingleUpdateGameTime(24)
	endif
EndEvent
