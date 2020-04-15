;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname STI_QF_STIJareeRaRevengeQuest Extends Quest Hidden

;BEGIN ALIAS PROPERTY JareeRa
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_JareeRa Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
; STI: Stage 20 - Start combat
JareeRaFaction.SetEnemy(PlayerFaction)
Alias_JareeRa.GetActorReference().StartCombat(Game.GetPlayer())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
; STI: Stage 100 - End
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Faction Property PlayerFaction  Auto  

Faction Property JareeRaFaction  Auto  
