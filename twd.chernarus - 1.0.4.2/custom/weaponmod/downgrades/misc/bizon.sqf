if (("bizon_silenced" in weapons player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("bizon_silenced" in weapons player)) then {
		player removeWeapon "bizon_silenced";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "bizon";
	} else {
	};
titleText ["You have detatched a suppressor!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};