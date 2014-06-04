if (("G36_C_SD_camo" in weapons player) && ("ItemToolbox" in items player)) then {
     player playActionNow "Medic";
	sleep 2;
	if (("G36_C_SD_camo" in weapons player)) then {
		player removeWeapon "G36_C_SD_camo";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "G36C_camo";
	} else {
	};
titleText ["You have detatched the suppressor.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};