Scriptname STI_MS07TreasureScript extends ReferenceAlias  

ReferenceAlias Property MS07Deeja  Auto  

ReferenceAlias Property MS07IcerunnerChest  Auto  

Auto State waitingForLoad
	Event OnLoad()
		;Debug.Trace("STI - OnLoad called for " + GetRef())
		Quest MS07 = GetOwningQuest()
		if MS07.GetStageDone(100) && (MS07 as MS07Script).WorkingTogether == 0
			if !MS07Deeja.GetActorReference().IsDead()
				GetReference().RemoveAllItems(MS07IcerunnerChest.GetReference())
			endif
		endif
		GotoState("loaded")
	EndEvent
EndState

State loaded
EndState
