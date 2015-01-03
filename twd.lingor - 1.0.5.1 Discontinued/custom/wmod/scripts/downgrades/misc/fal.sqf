if (("FN_FAL_ANPVS4" in weapons player) && ("ItemToolbox" in items player)) then {
     player playActionNow "Medic";
	sleep 2;
	if (("FN_FAL_ANPVS4" in weapons player)) then {
		player removeWeapon "FN_FAL_ANPVS4";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "FN_FAL";
	} else {
	};
titleText ["You have detatched the NV Scope.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};