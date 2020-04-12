Scriptname STI_PlayerUpdateScript extends ReferenceAlias

int Property Version = 1000  AutoReadOnly
int myVersion

Quest Property MS07  Auto
Quest Property MS07_dunIcerunnerQST  Auto

Event OnInit()
	if MS07.IsRunning() && (MS07.GetAlias(36) as ReferenceAlias).GetRef() == None
		InstallOnExistingSave()
	endif

	myVersion = Version
EndEvent

Function InstallOnExistingSave()
{Skyrim doesn't like it when you make changes to an existing quest.}

	Debug.Trace("STI - User installed on an existing save.")

	(MS07.GetAlias(36) as ReferenceAlias).ForceRefTo(\
			Game.GetFormFromFile(0x0BABB5, "Skyrim.esm") as ObjectReference)
	(MS07.GetAlias(37) as ReferenceAlias).ForceRefTo(\
			Game.GetFormFromFile(0x041FB9, "Skyrim.esm") as ObjectReference)
	(MS07.GetAlias(39) as ReferenceAlias).ForceRefTo(\
			Game.GetFormFromFile(0x077DE3, "Skyrim.esm") as ObjectReference)
	(MS07.GetAlias(40) as ReferenceAlias).ForceRefTo(\
			Game.GetFormFromFile(0x07AA95, "Skyrim.esm") as ObjectReference)
	(MS07.GetAlias(41) as ReferenceAlias).ForceRefTo(\
			Game.GetFormFromFile(0x08FCA3, "Skyrim.esm") as ObjectReference)
	(MS07.GetAlias(42) as ReferenceAlias).ForceRefTo(\
			Game.GetFormFromFile(0x08FCA4, "Skyrim.esm") as ObjectReference)
	(MS07.GetAlias(43) as ReferenceAlias).ForceRefTo(\
			Game.GetFormFromFile(0x08FCD5, "Skyrim.esm") as ObjectReference)
	(MS07.GetAlias(44) as ReferenceAlias).ForceRefTo(\
			Game.GetFormFromFile(0x09057B, "Skyrim.esm") as ObjectReference)
	(MS07.GetAlias(45) as ReferenceAlias).ForceRefTo(\
			Game.GetFormFromFile(0x07AA91, "Skyrim.esm") as ObjectReference)

	if MS07_dunIcerunnerQST.IsRunning()
		(MS07_dunIcerunnerQST.GetAlias(24) as ReferenceAlias).ForceRefTo(\
				Game.GetFormFromFile(0x00E4C7, "SaveTheIcerunner.esp") as ObjectReference)
	endif

EndFunction
