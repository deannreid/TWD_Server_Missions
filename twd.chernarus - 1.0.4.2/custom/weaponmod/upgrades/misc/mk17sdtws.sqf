if (("SCAR_H_CQC_CCO_SD" in weapons player) && ("PartGeneric" in magazines player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("SCAR_H_CQC_CCO_SD" in weapons player) && ("PartGeneric" in magazines player)) then {
		player removeWeapon "SCAR_H_CQC_CCO_SD";
		player removeMagazine "PartGeneric";
		sleep 2;
		player addWeapon "SCAR_H_STD_TWS_SD";
	} else {
	};
titleText ["You have attatched the TWS Scope.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};