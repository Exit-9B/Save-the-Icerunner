Scriptname STI_MS07BrokenOarEntranceScript extends ReferenceAlias

Actor Property PlayerRef  Auto
ReferenceAlias Property MS07JareeRa  Auto

Auto State waitingForPlayer

	Event OnActivate(ObjectReference akActionRef)
		if akActionRef == PlayerRef
			Quest MS07 = GetOwningQuest()

			if MS07.GetStageDone(200)
				GotoState("hasBeenTriggered")

				if MS07JareeRa.GetActorReference().IsDead()
					MS07.SetStage(250)
				else
					MS07.SetStage(225)
				endif
			endif
		endif
	EndEvent

EndState

State hasBeenTriggered
EndState
