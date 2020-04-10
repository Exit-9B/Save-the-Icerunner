Scriptname STI_MS07DeejaScript extends ReferenceAlias

Actor Property PlayerRef  Auto

Event OnDeath(Actor akKiller)
	GotoState("hasBeenTriggered")

	if akKiller == PlayerRef || akKiller.IsPlayerTeammate()
		(GetOwningQuest() as MS07Script).KilledDeeja = 1
	endif

	Quest MS07 = GetOwningQuest()
	if MS07.GetStage() < 10
		MS07.Stop()
	elseif MS07.GetStage() >= 125 && MS07.GetStage() < 175
		if (MS07 as MS07Script).WorkingTogether == 0
			; Vanilla quest progression
			MS07.SetStage(175)
		else
			; Player betrayed Deeja; we still assume the player killed her
			; because there should be no natural causes on the ship
			MS07.SetStage(330)
		endif
	endif
EndEvent

Auto State waitingForPlayer

	Event OnHit(\
			ObjectReference akAggressor, \
			Form akSource, \
			Projectile akProjectile, \
			bool abPowerAttack, \
			bool abSneakAttack, \
			bool abBashAttack, \
			bool abHitBlocked)

		if akAggressor == PlayerRef
			Quest MS07 = GetOwningQuest()
			if MS07.GetStageDone(125)
				GotoState("hasBeenTriggered")
				if (MS07 as MS07Script).WorkingTogether == 0
					MS07.SetStage(150)
				endif
			endif
		endif
	EndEvent

EndState

State hasBeenTriggered
EndState

