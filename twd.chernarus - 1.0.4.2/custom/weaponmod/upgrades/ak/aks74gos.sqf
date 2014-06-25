if (("AKS_74" in weapons player) && ("PartGeneric" in magazines player) && ("ItemToolbox" in items player)) then {
	player playActionNow "Medic";
	sleep 2;
	if (("AKS_74" in weapons player) && ("PartGeneric" in magazines player)) then {
		player removeWeapon "AKS_74";
		player removeMagazine "PartGeneric";
		sleep 2;
		player addWeapon "AKS_74_GOSHAWK";
	} else {
	};
titleText ["You have attatched a Goshawk scope!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};