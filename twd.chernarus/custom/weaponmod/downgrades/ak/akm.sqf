if (("AK_47_S" in weapons player) && ("ItemToolbox" in items player)) then {
	player playActionNow "Medic";
	sleep 2;
	if (("AK_47_S" in weapons player)) then {
		player removeWeapon "AK_47_S";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "AK_47_M";
	} else {
	};
titleText ["You have replaced the stock.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};