if (("M4A1_Aim_SD_camo" in weapons player) && ("ItemToolbox" in items player)) then {
   	player playActionNow "Medic";
	sleep 2;
	if (("M4A1_Aim_SD_camo" in weapons player)) then {
		player removeWeapon "M4A1_Aim_SD_camo";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "M4A1_Aim_camo";
	} else {
	};
titleText ["You have detatched a suppressor.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};