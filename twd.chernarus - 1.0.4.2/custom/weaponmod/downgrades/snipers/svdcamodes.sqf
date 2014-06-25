if (("SVD_des_EP1" in weapons player) && ("ItemToolbox" in items player)) then {
    player playActionNow "Medic";
	sleep 2;
	if (("SVD_des_EP1" in weapons player)) then {
		player removeWeapon "SVD_des_EP1";
		sleep 2;
		player addMagazine "ItemCanvas";
		player addWeapon "SVD";
	} else {
	};
titleText ["You have removed camo!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};