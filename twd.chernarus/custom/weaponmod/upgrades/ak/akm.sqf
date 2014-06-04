if (("AK_47_M" in weapons player) && ("PartGeneric" in magazines player) && ("ItemToolbox" in items player)) then {
	player playActionNow "Medic";
	sleep 2;
	if (("AK_47_M" in weapons player) && ("PartGeneric" in magazines player)) then {
		player removeWeapon "AK_47_M";
		player removeMagazine "PartGeneric";
		sleep 2;
		player addWeapon "AK_47_S";
	} else {
	};
titleText ["You have replaced the stock!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};