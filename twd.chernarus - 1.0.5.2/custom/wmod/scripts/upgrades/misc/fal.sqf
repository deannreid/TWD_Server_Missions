if (("FN_FAL" in weapons player) && ("PartGeneric" in magazines player) && ("ItemToolbox" in items player)) then {
     player playActionNow "Medic";
	sleep 2;
	if (("FN_FAL" in weapons player) && ("PartGeneric" in magazines player)) then {
		player removeWeapon "FN_FAL";
		player removeMagazine "PartGeneric";
		sleep 2;
		player addWeapon "FN_FAL_ANPVS4";
	} else {
	};
titleText ["You have attatched the NV Scope.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};