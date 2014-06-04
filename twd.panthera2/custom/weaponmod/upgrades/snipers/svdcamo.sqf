if (("SVD" in weapons player) && ("ItemCanvas" in magazines player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("SVD" in weapons player) && ("ItemCanvas" in magazines player)) then {
		player removeWeapon "SVD";
		player removeMagazine "ItemCanvas";
		sleep 2;
		player addWeapon "SVD_CAMO";
	} else {
	};
titleText ["You have added camo!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};