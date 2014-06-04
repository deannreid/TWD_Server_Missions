if (("M4A1_Aim_camo" in weapons player) && ("PartGeneric" in magazines player) && ("ItemToolbox" in items player)) then {
  	player playActionNow "Medic";
	sleep 2;
	if (("M4A1_Aim_camo" in weapons player) && ("PartGeneric" in magazines player)) then {
		player removeWeapon "M4A1_Aim_camo";
		player removeMagazine "PartGeneric";
		sleep 2;
		player addWeapon "M4A1_HWS_GL_camo";
	} else {
	};
titleText ["You have attatched Holo + M203.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};