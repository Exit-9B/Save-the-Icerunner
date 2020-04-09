Scriptname STI_MS07JareeRaScript extends ReferenceAlias  

Event OnDeath(Actor akKiller)
	Quest MS07 = GetOwningQuest()

	if MS07.GetStage() < 10
		; Player never heard the offer
		MS07.Stop()
	elseif !MS07.GetStageDone(100)
		; Player hasn't put out the fire
		MS07.SetStage(300)
	elseif MS07.GetStage() < 125
		; Player has put out the fire but not talked to Jaree-Ra
		MS07.SetStage(130)
	elseif MS07.GetStage() < 175
		; Player is heading to Icerunner already
		; Quest ends when player shows up to Broken Oar Grotto
	elseif MS07.GetStage() >= 175 && MS07.GetStage() < 250
		; Jaree-Ra has betrayed the player, go to standard ending
		MS07.SetStage(250)
	endif
EndEvent
