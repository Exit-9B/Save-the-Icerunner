;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname STI_TIF__JRWantIn Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
DialogueFavorGeneric.Persuade(akSpeaker)

MS07Script MS07 = GetOwningQuest() as MS07Script
MS07.SetObjectiveCompleted(55)                 ; Confront Jaree-Ra
MS07.WorkingTogether = 1

; STI: Set up Ebony Blade for top 10 anime betrayals
akSpeaker.SetRelationshipRank(PlayerRef, 1)
DeejaRef.SetRelationshipRank(PlayerRef, 1)

MS07.SetStage(50)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

FavorDialogueScript Property DialogueFavorGeneric  Auto  

Actor Property PlayerRef  Auto  

Actor Property DeejaRef  Auto  

