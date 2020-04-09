Scriptname STI_MS07TreasureScript extends ReferenceAlias  

ReferenceAlias Property MS07Deeja  Auto  

ReferenceAlias Property MS07IcerunnerChest  Auto  

Auto State waitingForLoad
	Event OnLoad()
		;Debug.Trace("STI - OnLoad called for " + GetRef())
		if GetOwningQuest().GetStageDone(125) || GetOwningQuest().GetStageDone(130)
			if !MS07Deeja.GetActorReference().IsDead()
				GetReference().RemoveAllItems(MS07IcerunnerChest.GetReference())
			endif
		endif
		GotoState("loaded")
	EndEvent
EndState

State loaded
EndState
