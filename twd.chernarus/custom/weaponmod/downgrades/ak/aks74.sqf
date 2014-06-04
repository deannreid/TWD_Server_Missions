if (("AKS_74" in weapons player) && ("ItemToolbox" in items player)) then {
	player playActionNow "Medic";
	sleep 2;
	if (("AKS_74" in weapons player)) then {
		player removeWeapon "AKS_74";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "AK_74";
	} else {
	};
titleText ["You have replaced the stock!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};