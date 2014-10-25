if (("M16A4_ACG_GL" in weapons player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("M16A4_ACG_GL" in weapons player)) then {
		player removeWeapon "M16A4_ACG_GL";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "M16A4_ACG";
	} else {
	};
titleText ["You have attatched the Grenade Launcher.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};