if (("M110_TWS_EP1" in weapons player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("M110_TWS_EP1" in weapons player)) then {
		player removeWeapon "M110_TWS_EP1";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "M110_NVG_EP1";
	} else {
	};
titleText ["You have detatched the TWS Scope.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};