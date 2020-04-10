Scriptname STI_StopQuestOnDeathScript extends ReferenceAlias

Event OnDeath(Actor akKiller)
	GetOwningQuest().Stop()
EndEvent
