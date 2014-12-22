if (("AK_107_GL_pso" in weapons player) && ("ItemToolbox" in items player)) then {
	player playActionNow "Medic";
	sleep 2;
	if (("AK_107_GL_pso" in weapons player)) then {
		player removeWeapon "AK_107_GL_pso";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "AK_107_pso";
	} else {
	};
titleText ["You have detatched the grenade launcher!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};