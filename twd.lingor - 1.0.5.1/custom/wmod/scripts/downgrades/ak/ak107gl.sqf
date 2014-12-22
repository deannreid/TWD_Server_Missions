if (("AK_107_GL_kobra" in weapons player) && ("ItemToolbox" in items player)) then {
	player playActionNow "Medic";
	sleep 2;
	if (("AK_107_GL_kobra" in weapons player)) then {
		player removeWeapon "AK_107_GL_kobra";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "AK_107_kobra";
	} else {
	};
titleText ["You have detatched the grenade launcher!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};