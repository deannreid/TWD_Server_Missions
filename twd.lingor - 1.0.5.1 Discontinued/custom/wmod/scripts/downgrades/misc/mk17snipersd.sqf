if (("SCAR_H_LNG_Sniper_SD" in weapons player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("SCAR_H_LNG_Sniper_SD" in weapons player)) then {
		player removeWeapon "SCAR_H_LNG_Sniper_SD";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "SCAR_H_LNG_Sniper";
	} else {
	};
titleText ["You have detatched the suppressor.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};