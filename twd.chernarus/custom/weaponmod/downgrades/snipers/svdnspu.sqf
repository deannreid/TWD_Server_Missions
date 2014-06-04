if (("SVD_NSPU_EP1" in weapons player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("SVD_NSPU_EP1" in weapons player)) then {
		player removeWeapon "SVD_NSPU_EP1";
		sleep 2;
		player addMagazine "PartGeneric";
		player addWeapon "SVD";
	} else {
	};
titleText ["You have detatched the NSPU Scope.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};