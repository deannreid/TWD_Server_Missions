if (("AKS_74_kobra" in weapons player) && ("ItemToolbox" in items player)) then {
	player playActionNow "Medic";
	sleep 2;
	if (("AKS_74_kobra" in weapons player)) then {
		player removeWeapon "AKS_74_kobra";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "AKS_74";
	} else {
	};
titleText ["You have detatched a Kobra Sight!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};