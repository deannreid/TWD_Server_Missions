if (("M4A1" in weapons player) && ("PartGeneric" in magazines player) && ("ItemToolbox" in items player)) then {
 	player playActionNow "Medic";
	sleep 2;
	if (("M4A1" in weapons player) && ("PartGeneric" in magazines player)) then {
		player removeWeapon "M4A1";
		player removeMagazine "PartGeneric";
		sleep 2;
		player addWeapon "M4A1_HWS_GL";
	} else {
	};
titleText ["You have attatched Holo + M203.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};