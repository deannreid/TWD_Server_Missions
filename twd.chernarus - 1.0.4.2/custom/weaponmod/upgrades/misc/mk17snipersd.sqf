if (("SCAR_H_LNG_Sniper" in weapons player) && ("PartGeneric" in magazines player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("SCAR_H_LNG_Sniper" in weapons player) && ("PartGeneric" in magazines player)) then {
		player removeWeapon "SCAR_H_LNG_Sniper";
		player removeMagazine "PartGeneric";
		sleep 2;
		player addWeapon "SCAR_H_LNG_Sniper_SD";
	} else {
	};
titleText ["You have attatched the suppressor.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};