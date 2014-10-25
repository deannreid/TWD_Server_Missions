if (("AK_74_GL" in weapons player) && ("ItemToolbox" in items player)) then {
	player playActionNow "Medic";
	sleep 2;
	if (("AK_74_GL" in weapons player)) then {
		player removeWeapon "AK_74_GL";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "AK_74";
	} else {
	};
titleText ["You have detatched a grenade launcher!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};