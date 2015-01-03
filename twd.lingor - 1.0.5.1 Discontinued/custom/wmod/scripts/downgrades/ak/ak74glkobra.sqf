if (("AK_74_GL_kobra" in weapons player) && ("ItemToolbox" in items player)) then {
	player playActionNow "Medic";
	sleep 2;
	if (("AK_74_GL_kobra" in weapons player)) then {
		player removeWeapon "AK_74_GL_kobra";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "AK_74_GL";
	} else {
	};
titleText ["You have detatched the Kobra sight.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};