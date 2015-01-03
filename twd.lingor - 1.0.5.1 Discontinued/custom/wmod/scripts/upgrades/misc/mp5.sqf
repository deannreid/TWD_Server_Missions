if (("MP5A5" in weapons player) && ("PartGeneric" in magazines player) && ("ItemToolbox" in items player)) then {
     player playActionNow "Medic";
	sleep 2;
	if (("MP5A5" in weapons player) && ("PartGeneric" in magazines player)) then {
		player removeWeapon "MP5A5";
		player removeMagazine "PartGeneric";
		sleep 2;
		player addWeapon "MP5SD";
	} else {
	};
titleText ["You have attatched the suppressor.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};