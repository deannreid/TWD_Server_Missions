if (("AKS_74_GOSHAWK" in weapons player) && ("ItemToolbox" in items player)) then {
	player playActionNow "Medic";
	sleep 2;
	if (("AKS_74_GOSHAWK" in weapons player)) then {
		player removeWeapon "AKS_74_GOSHAWK";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "AKS_74";
	} else {
	};
titleText ["You have detatched a Goshawk scope!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};