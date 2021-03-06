;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 63
Scriptname QF_MS07_00023A64 Extends Quest Hidden

;BEGIN ALIAS PROPERTY MS07LighthouseFireOff
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07LighthouseFireOff Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07JareeRa
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07JareeRa Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07DeejaIcerunnerMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07DeejaIcerunnerMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07SorexVinius
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07SorexVinius Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07IcerunnerLoot
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07IcerunnerLoot Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07LighthouseFire
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07LighthouseFire Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07SorexMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07SorexMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07JareeRaCampBrokenOarMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07JareeRaCampBrokenOarMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07IceRunnerMapMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07IceRunnerMapMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07JareeRaDocksMeetingMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07JareeRaDocksMeetingMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07OpeningSceneTrigger
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07OpeningSceneTrigger Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07Deeja
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07Deeja Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07BanditGreeter
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07BanditGreeter Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07IcerunnerLootEnabler
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07IcerunnerLootEnabler Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07IcerunnerChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07IcerunnerChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07DeejaNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07DeejaNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07BrokenOarGrottoMapMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07BrokenOarGrottoMapMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07BrokenOarEntranceStageSetter
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07BrokenOarEntranceStageSetter Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07LighthouseMapMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07LighthouseMapMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07HargarsJournal
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07HargarsJournal Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07Guard
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07Guard Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07GuardBackup
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07GuardBackup Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07IcerunnerTreas01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07IcerunnerTreas01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07IcerunnerTreas02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07IcerunnerTreas02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07IcerunnerTreas03
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07IcerunnerTreas03 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07IcerunnerTreas04
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07IcerunnerTreas04 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07IcerunnerTreas05
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07IcerunnerTreas05 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MS07IcerunnerTreas06
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MS07IcerunnerTreas06 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
; Stage 0
;TEMP FOR TESTING
;Game.GetPlayer().moveto(Alias_MS07JareeRa.GetRef())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_48
Function Fragment_48()
;BEGIN CODE
; Stage 3
;TEMP - Set when the opening scene of Solitude has played.
;Intention - Set after the player has entered and exited Solitude
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_47
Function Fragment_47()
;BEGIN CODE
; Stage 5 - Player walks into the trigger for Sorex/Jaree scene
MS07OpeningScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
; Stage 10 - Player heard Jaree-Ra's offer
; This stage wasn't used in vanilla, looks like it was intended for the rumor
; before that was moved out to MS07Rumor.
SetObjectiveDisplayed(10)              ; Accept Jaree-Ra's offer in Solitude
SetObjectiveDisplayed(12)              ; Report Jaree-Ra to the guard captain
MS07Rumor.SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_56
Function Fragment_56()
;BEGIN CODE
; Stage 15 - Player reported to Captain Aldis
; Completely optional stage where the player tries to report JR to Aldis
SetObjectiveDisplayed(12, false)               ; Report Jaree-Ra to the guard captain
SetObjectiveDisplayed(15)               ; Find evidence of Jaree-Ra's criminal activity
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_42
Function Fragment_42()
;BEGIN CODE
; Stage 50 - Player accepted Jaree-Ra's offer
; Beginning of the vanilla route, but doesn't close off alternate routes
SetObjectiveCompleted(10)               ; Accept Jaree-Ra's offer in Solitude
SetObjectiveDisplayed(50)                 ; Put out the Solitude Lighthouse fire
MS07Rumor.SetStage(20)
Alias_MS07LighthouseMapMarker.GetRef().AddToMap()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_55
Function Fragment_55()
;BEGIN CODE
; Stage 55 - Player read Hargar's journal
; This is where most of the alternate routes open up. You can't accept the job
; anymore if you haven't already.
SetObjectiveDisplayed(10, false)               ; Accept Jaree-Ra's offer in Solitude
SetObjectiveDisplayed(12, false)               ; Report Jaree-Ra to the guard captain
SetObjectiveCompleted(15)               ; Find evidence of Jaree-Ra's criminal activity
SetObjectiveDisplayed(55)               ; Confront Jaree-Ra
SetObjectiveDisplayed(60)               ; Report Jaree-Ra to the guard captain
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_63
Function Fragment_63()
;BEGIN CODE
; Stage 65 - Player persuaded Jaree-Ra to work together
; Now you can go and do the job like in vanilla, but they won't betray you.
SetObjectiveCompleted(55)                 ; Confront Jaree-Ra
SetObjectiveDisplayed(10)               ; Accept Jaree-Ra's offer in Solitude
SetStage(50)

; Set up Ebony Blade for top 10 anime betrayals
Actor Player = Alias_Player.GetActorReference()
Alias_MS07JareeRa.GetActorReference().SetRelationshipRank(Player, 1)
Alias_MS07Deeja.GetActorReference().SetRelationshipRank(Player, 1)

;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_59
Function Fragment_59()
;BEGIN CODE
; Stage 90 - Captain Aldis will arrest Jaree-Ra
; Play arrest scene, which in turn triggers quest completion.
SetObjectiveFailed(10)              ; Accept Jaree-Ra's offer in Solitude
SetObjectiveFailed(50)                 ; Put out the Solitude Lighthouse fire
SetObjectiveDisplayed(60)
SetObjectiveCompleted(60)                 ; Report Jaree-Ra to the guard captain
MS07ArrestScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
; Stage 100 - Player put out the fire
; Second major stage of the vanilla route. Also happens if you're working
; together.
Alias_MS07LighthouseFireOff.GetRef().Enable()
Alias_MS07LighthouseFire.GetRef().Disable()
if !IsObjectiveCompleted(15)
	SetObjectiveFailed(15)
endif
setObjectiveCompleted(50)               ; Put out the Solitude Lighthouse fire
setObjectiveDisplayed(100)               ; Meet with Jaree-Ra

;move Jaree-Ra to docks

Actor JareeRa = Alias_MS07JareeRa.GetActorReference()
Actor Deeja = Alias_MS07Deeja.GetActorReference()

if !GetStageDone(65) || Deeja.IsDead()
	JareeRa.SetCrimeFaction(None)
	JareeRa.RemoveFromFaction(CrimeFactionHaafingar)
endif
JareeRa.MoveTo(alias_MS07JareeRaDocksMeetingMarker.GetRef())

if !Deeja.IsDead()
	Deeja.Disable()
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_51
Function Fragment_51()
;BEGIN CODE
; Stage 110 - Player killed Deeja and Jaree-Ra turns on player
; If the player had already started the quest and then killed Deeja, Jaree will
; get angry and try to kill them. Doesn't matter if you were working together.
MS07BanditSiblings.SetEnemy(PlayerFaction)
Actor JareeRa = Alias_MS07JareeRa.GetActorReference()
JareeRa.StartCombat(Alias_Player.GetActorReference())
JareeRa.SetCrimeFaction(None)
JareeRa.RemoveFromFaction(CrimeFactionHaafingar)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_52
Function Fragment_52()
;BEGIN CODE
; Stage 120 - Deeja died and Jaree-Ra turns on player
; Same as the other stage, quest was started and Deeja died, but the player
; wasn't responsible for it. Jaree still gets angry.
MS07BanditSiblings.SetEnemy(PlayerFaction)
Actor JareeRa = Alias_MS07JareeRa.GetActorReference()
JareeRa.StartCombat(Alias_Player.GetActorReference())
JareeRa.SetCrimeFaction(None)
JareeRa.RemoveFromFaction(CrimeFactionHaafingar)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_43
Function Fragment_43()
;BEGIN CODE
; Stage 125 - Player met with Jaree-Ra and goes to meet Deeja
; Third major stage of the vanilla route. Also happens if you're working
; together.
setObjectiveCompleted(100)               ; Meet with Jaree-Ra

IcerunnerQST.Setstage(10)
Actor Deeja = Alias_MS07Deeja.GetActorReference()
Deeja.MoveTo(Alias_MS07DeejaIcerunnerMarker.GetRef())
Deeja.Enable()

if !GetStageDone(65)
	Deeja.SetCrimeFaction(None)
	Deeja.RemoveFromFaction(CrimeFactionHaafingar)
	Deeja.AddItem(Alias_MS07DeejaNote.GetRef())

	; Make sure Ebony Blade doesn't power up
	Actor Player = Alias_Player.GetActorReference()
	Actor JareeRa = Alias_MS07JareeRa.GetActorReference()
	Deeja.SetRelationshipRank(Player, -1)
	JareeRa.SetRelationshipRank(Player, -1)
else
	; Block player from taking Deeja's share
	Alias_MS07IcerunnerTreas05.GetReference().BlockActivation(true)
endif


Alias_MS07IceRunnerMapMarker.GetRef().AddToMap()
setObjectiveDisplayed(125)                 ; Find Deeja at the wreck of the Icerunner
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_50
Function Fragment_50()
;BEGIN CODE
; Stage 130 - Player killed Jaree-Ra at the docks
; Similar to the standard route but the quest log is less informative. This
; could happen either because Jaree turned on the player or the player decided
; to kill Jaree.
SetObjectiveCompleted(100)               ; Meet with Jaree-Ra

IcerunnerQST.SetStage(10)
IcerunnerQST.SetStage(20)
MS07BanditSiblings.SetEnemy(PlayerFaction)

Actor Deeja = Alias_MS07Deeja.GetActorReference()
if Deeja.IsDead()
	; Quest will end once the player gets close to the Icerunner
	(Alias_Player as STI_MS07PlayerScript).GotoState("endAtIcerunner")
else
	Deeja.MoveTo(Alias_MS07DeejaIcerunnerMarker.GetRef())
	Deeja.Enable()
	; Make sure Ebony Blade doesn't power up
	Deeja.SetRelationshipRank(Alias_Player.GetActorRef(), -1)
endif

Alias_MS07IceRunnerMapMarker.GetRef().AddToMap()
if !IsObjectiveDisplayed(125)
	SetObjectiveDisplayed(130)                    ; Travel to the wreck of the Icerunner
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
; Stage 150 - Deeja fights with player at the Icerunner
; Fourth major stage of the vanilla route.
SetObjectiveCompleted(125)                    ; Find Deeja at the wreck of the Icerunner
SetObjectiveDisplayed(150)                      ; Defeat Deeja

IcerunnerQST.SetStage(20)
MS07BanditSiblings.SetEnemy(PlayerFaction)

Actor Deeja = Alias_MS07Deeja.GetActorReference()
Actor JareeRa = Alias_MS07JareeRa.GetActorReference()
Deeja.StartCombat(Alias_Player.GetActorReference())
;Deeja.GetActorBase().SetEssential(false)
if !GetStageDone(65)
	JareeRa.MoveTo(alias_MS07JareeRaCampBrokenOarMarker.GetRef())
	;JareeRa.GetActorBase().SetEssential(false)
	JareeRa.SetCrimeFaction(None)
	JareeRa.RemoveFromFaction(CrimeFactionHaafingar)
	Deeja.AddItem(Alias_MS07DeejaNote.GetRef())
	Alias_MS07DeejaNote.GetRef().Enable()
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_44
Function Fragment_44()
;BEGIN CODE
; Stage 175 - Player defeated Deeja at the Icerunner
; Fifth major stage of the vanilla route.
setObjectiveCompleted(125)                    ; Find Deeja at the wreck of the Icerunner
setObjectiveCompleted(150)                    ; Defeat Deeja
setObjectiveDisplayed(175)                      ;Find out where Jaree-Ra's bandits took the loot
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN CODE
; Stage 200 - Player found Jaree-Ra's note to Deeja
; Sixth major stage of the vanilla route.
setObjectiveCompleted(175)                    ; Find out where Jaree-Ra's bandits took the loot
setObjectiveDisplayed(200)                      ; Travel to Camp Broken Oar

if !Alias_MS07Deeja.GetActorReference().IsDead()
	; Stage was advanced via console, leveled lists need to load to move loot
	Alias_MS07Deeja.GetActorRef().Kill(Alias_Player.GetActorRef())
	Alias_Player.GetActorRef().MoveTo(Alias_MS07DeejaIcerunnerMarker.GetRef())
endif

alias_MS07IcerunnerLootEnabler.GetRef().Enable()

alias_MS07BrokenOarGrottoMapMarker.GetRef().AddToMap()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_45
Function Fragment_45()
;BEGIN CODE
; Stage 225 - Player arrived at Broken Oar Grotto, Jaree-Ra still alive
; Seventh major stage of the vanilla route. Gets skipped if Jaree was killed at
; the docks earlier.
setObjectiveCompleted(200)                    ;Travel to Camp Broken Oar
setObjectiveDisplayed(225)                      ; Defeat Jaree-Ra

;Failsafe-- Clear the bandits off the Icerunner if we didn't do this earlier.
IcerunnerQST.Setstage(30)
IcerunnerQST.Setstage(255)

;if Stage 100 is done on dunCampBrokenOar.  If it is then simply enable dunBrokenOarRespawnEnableMarker(000BABC5) and dunBrokenOarLootEnableMarker(000BABBC) and send the player on his way.
;If Stage 100 isn't done then just enable dunBrokenOarLootEnableMarker(000BABBC).
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_46
Function Fragment_46()
;BEGIN CODE
; Stage 250 - Player defeated Jaree-Ra at Broken Oar Grotto
; Eighth and final stage of the vanilla route.
SetObjectiveCompleted(225)                    ; Defeat Jaree-Ra
; Let the player keep the note
;Alias_MS07DeejaNote.GetRef().Disable()
; Turn the Lighthouse fire back on
Alias_MS07LighthouseFireOff.GetReference().Disable()
Alias_MS07LighthouseFire.GetReference().Enable()
AchievementsQuest.IncSideQuests()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_49
Function Fragment_49()
;BEGIN CODE
; Stage 300 - Player killed Jaree-Ra without putting out the fire
FailAllObjectives()
IcerunnerQST.SetStage(300)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_53
Function Fragment_53()
;BEGIN CODE
; Stage 310 - Player convinces Jaree-Ra to give up
SetObjectiveFailed(10)              ; Accept Jaree-Ra's offer in Solitude
SetObjectiveFailed(50)                 ; Put out the Solitude Lighthouse fire
SetObjectiveCompleted(55)                 ; Confront Jaree-Ra
IcerunnerQST.SetStage(300)
AchievementsQuest.IncSideQuests()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_61
Function Fragment_61()
;BEGIN CODE
; Stage 320 - Player worked together with the bandits
SetObjectiveCompleted(125)                 ; Find Deeja at the wreck of the Icerunner

; Disappear Deeja's share into the void
Alias_MS07IcerunnerTreas05.GetReference().RemoveAllItems()
Alias_MS07IcerunnerTreas05.GetReference().BlockActivation(false)

Actor JareeRa = Alias_MS07JareeRa.GetActorReference()
Actor Deeja = Alias_MS07Deeja.GetActorReference()
JareeRa.AddToFaction(PotentialFollowerFaction)
JareeRa.AddToFaction(PotentialMarriageFaction)
Deeja.AddToFaction(PotentialFollowerFaction)
Deeja.AddToFaction(PotentialMarriageFaction)

Alias_MS07LighthouseFireOff.GetReference().Disable()
Alias_MS07LighthouseFire.GetReference().Enable()
AchievementsQuest.IncSideQuests()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_62
Function Fragment_62()
;BEGIN CODE
; Stage 330 - Player betrayed the bandits
if IsObjectiveDisplayed(125)
	SetObjectiveCompleted(125)                 ; Find Deeja at the wreck of the Icerunner
endif
if IsObjectiveDisplayed(130)
	SetObjectiveCompleted(130)                 ; Travel to the wreck of the Icerunner
endif
SetObjectiveCompleted(150)

IcerunnerQST.SetStage(20)

Alias_MS07IcerunnerTreas05.GetReference().BlockActivation(false)

Actor JareeRa = Alias_MS07JareeRa.GetActorReference()
if !JareeRa.IsDead()
	JareeRa.SetRelationshipRank(Alias_Player.GetActorReference(), -1)
	STIRevengeKeyword.SendStoryEvent()
endif

Alias_MS07LighthouseFireOff.GetReference().Disable()
Alias_MS07LighthouseFire.GetReference().Enable()
AchievementsQuest.IncSideQuests()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_54
Function Fragment_54()
;BEGIN CODE
; Stage 350 - Captain Aldis arrests Jaree-Ra
STIArrestKeyword.SendStoryEventAndWait()

Actor Player = Alias_Player.GetActorReference()
Alias_MS07Deeja.GetActorRef().SetRelationshipRank(Player, -1)
Alias_MS07JareeRa.GetActorRef().SetRelationshipRank(Player, -1)
IcerunnerQST.SetStage(300)
AchievementsQuest.IncSideQuests()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property SolitudeDocksDistrictMarker  Auto  

ObjectReference Property MS07BanditContact2WaitMarker  Auto  


ObjectReference Property MS07BanditLeaderMarker  Auto  

Faction Property MS07BanditSiblings  Auto  

Faction Property PlayerFaction  Auto  

Quest Property IcerunnerQST  Auto  

Scene Property MS07OpeningScene  Auto  

Faction Property CrimeFactionHaafingar  Auto  

Quest Property MS07Rumor  Auto  

AchievementsScript Property AchievementsQuest Auto

Scene Property MS07ArrestScene  Auto  

Keyword Property STIArrestKeyword  Auto  

Keyword Property STIRevengeKeyword  Auto  

Faction Property PotentialFollowerFaction  Auto  

Faction Property PotentialMarriageFaction  Auto  
