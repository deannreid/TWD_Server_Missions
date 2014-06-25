if (("SVD" in weapons player) && ("PartGeneric" in magazines player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("SVD" in weapons player) && ("PartGeneric" in magazines player)) then {
		player removeWeapon "SVD";
		player removeMagazine "PartGeneric";
		sleep 2;
		player addWeapon "SVD_NSPU_EP1";
	} else {
	};
titleText ["You have attatched the NSPU Scope.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};