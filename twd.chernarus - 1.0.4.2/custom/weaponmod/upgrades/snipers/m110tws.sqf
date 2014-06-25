if (("M110_NVG_EP1" in weapons player) && ("PartGeneric" in magazines player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("M110_NVG_EP1" in weapons player) && ("PartGeneric" in magazines player)) then {
		player removeWeapon "M110_NVG_EP1";
		player removeMagazine "PartGeneric";
		sleep 2;
		player addWeapon "M110_TWS_EP1";
	} else {
	};
titleText ["You have attatched the TWS Scope.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};