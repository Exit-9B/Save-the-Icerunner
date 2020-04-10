;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 6
Scriptname STI_QF_STIJareeRaJailQuest Extends Quest Hidden

;BEGIN ALIAS PROPERTY Guard
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Guard Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY JareeRa
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_JareeRa Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Debug.Trace("Sending Jaree-Ra to jail")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;Debug.Trace("Jaree-Ra is in jail now")
if !Alias_JareeRa.GetActorReference().IsDead()
	Alias_JareeRa.GetActorReference().MoveTo(JailMarker)
	Alias_JareeRa.GetActorReference().SetOutfit(PrisonerOutfit)
	;Alias_JareeRa.GetActorReference().EvaluatePackage()
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Debug.Trace("Jaree-Ra died in jail")
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property JailMarker  Auto  

Outfit Property PrisonerOutfit  Auto  
