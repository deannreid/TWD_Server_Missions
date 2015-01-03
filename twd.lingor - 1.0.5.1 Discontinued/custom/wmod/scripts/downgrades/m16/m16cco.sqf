if (("M16A4" in weapons player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("M16A4" in weapons player)) then {
		player removeWeapon "M16A4";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "M16A2";
	} else {
	};
titleText ["You have detatched the Aimpoint Sight.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};