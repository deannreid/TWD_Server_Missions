if (("SVD_CAMO" in weapons player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("SVD_CAMO" in weapons player)) then {
		player removeWeapon "SVD_CAMO";
		sleep 2;
		player addMagazine "ItemCanvas";
		player addWeapon "SVD";
	} else {
	};
titleText ["You have removed camo!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};