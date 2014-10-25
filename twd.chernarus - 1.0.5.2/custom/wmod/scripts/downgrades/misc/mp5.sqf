if (("MP5SD" in weapons player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("MP5SD" in weapons player)) then {
		player removeWeapon "MP5SD";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "MP5A5";
	} else {
	};
titleText ["You have detatched the suppressor.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};