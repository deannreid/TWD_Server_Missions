if (("AKS_74_UN_kobra" in weapons player) && ("ItemToolbox" in items player)) then {
	player playActionNow "Medic";
	sleep 2;
	if (("AKS_74_UN_kobra" in weapons player)) then {
		player removeWeapon "AKS_74_UN_kobra";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "AKS_74_U";
	} else {
	};
titleText ["You have detatched a Suppressor and Kobra sight","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};