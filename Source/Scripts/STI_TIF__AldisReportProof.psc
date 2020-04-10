;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname STI_TIF__AldisReportProof Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
PlayerRef.RemoveItem(MS07HargarsJournal.GetRef(), 1, false, akSpeakerRef)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
akSpeakerRef.RemoveItem(MS07HargarsJournal.GetRef(), 1, false, PlayerRef)
MS07Guard.ForceRefTo(akSpeaker)
GetOwningQuest().SetStage(90)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias Property MS07Guard  Auto  

ReferenceAlias Property MS07HargarsJournal  Auto  

Actor Property PlayerRef  Auto  

Scene Property ArrestScene  Auto  
