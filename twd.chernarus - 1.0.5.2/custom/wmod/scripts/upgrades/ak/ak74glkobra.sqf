if (("AK_74_GL" in weapons player) && ("PartGeneric" in magazines player) && ("ItemToolbox" in items player)) then {
	player playActionNow "Medic";
	sleep 2;
	if (("AK_74_GL" in weapons player) && ("PartGeneric" in magazines player)) then {
		player removeWeapon "AK_74_GL";
		player removeMagazine "PartGeneric";
		sleep 2;
		player addWeapon "AK_74_GL_kobra";
	} else {
	};
titleText ["You have attatched the Kobra Sight!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};