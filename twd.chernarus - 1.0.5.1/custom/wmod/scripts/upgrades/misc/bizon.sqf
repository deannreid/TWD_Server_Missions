if (("Bizon" in weapons player) && ("PartGeneric" in magazines player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("Bizon" in weapons player) && ("PartGeneric" in magazines player)) then {
		player removeWeapon "Bizon";
		player removeMagazine "PartGeneric";
		sleep 2;
		player addWeapon "bizon_silenced";
	} else {
	};
titleText ["You have attatched a suppressor!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};