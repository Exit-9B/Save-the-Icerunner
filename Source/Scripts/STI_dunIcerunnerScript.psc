Scriptname STI_dunIcerunnerScript extends Quest

;ReferenceAlias Property SavedIcerunnerEnableMarker  Auto

Event OnUpdateGameTime()
	;Parapets hasn't fixed the Icerunner yet
	;if !SavedIcerunnerEnableMarker.GetRef().IsNearPlayer()
	if false
		; Bring back the Icerunner
		SetStage(400)
	else
		; Try again tomorrow
		RegisterForSingleUpdateGameTime(24)
	endif
EndEvent
