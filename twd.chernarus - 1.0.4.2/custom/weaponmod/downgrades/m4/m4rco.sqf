if (("M4A1_RCO_GL" in weapons player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("M4A1_RCO_GL" in weapons player)) then {
		player removeWeapon "M4A1_RCO_GL";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "M4A1";
	} else {
	};
titleText ["You have detatched RCO + M203.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};