if (("AK_74" in weapons player) && ("PartGeneric" in magazines player) && ("ItemToolbox" in items player)) then {
	player playActionNow "Medic";
	sleep 2;
	if (("AK_74" in weapons player) && ("PartGeneric" in magazines player)) then {
		player removeWeapon "AK_74";
		player removeMagazine "PartGeneric";
		sleep 2;
		player addWeapon "AKS_74";
	} else {
	};
titleText ["You have replaced the stock!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};