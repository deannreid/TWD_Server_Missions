if (("M4A1_HWS_GL_SD_Camo" in weapons player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("M4A1_HWS_GL_SD_Camo" in weapons player)) then {
		player removeWeapon "M4A1_HWS_GL_SD_Camo";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "M4A1_HWS_GL_camo";
	} else {
	};
titleText ["You have detatched a suppressor.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};