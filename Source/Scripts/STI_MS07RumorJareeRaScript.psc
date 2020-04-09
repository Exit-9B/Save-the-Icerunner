Scriptname STI_MS07RumorJareeRaScript extends ReferenceAlias  

Event OnDeath(Actor akKiller)
	Quest MS07Rumor = GetOwningQuest()
	if !MS07Rumor.IsObjectiveCompleted(10)
		MS07Rumor.SetObjectiveFailed(10)
	endif
	MS07Rumor.Stop()
EndEvent
