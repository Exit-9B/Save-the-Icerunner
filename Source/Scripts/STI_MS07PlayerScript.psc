Scriptname STI_MS07PlayerScript extends ReferenceAlias

Location Property IcerunnerLocation  Auto

State endAtIcerunner

	Event OnLocationChange(Location akOldLoc, Location akNewLoc)
		if akNewLoc == IcerunnerLocation
			GetOwningQuest().SetStage(250)
			GotoState("end")
		endif
	EndEvent

EndState

State end
EndState
