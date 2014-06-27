if (("M4A1_Aim" in weapons player) && ("ItemCanvas" in magazines player) && ("ItemToolbox" in items player)) then {
	player playActionNow "Medic";
	sleep 2;
	if (("M4A1_Aim" in weapons player) && ("ItemCanvas" in magazines player)) then {
		player removeWeapon "M4A1_Aim";
		player removeMagazine "ItemCanvas";
		sleep 2;
		player addWeapon "M4A1_Aim_camo";
	} else {
	};
titleText ["You have attatched a Aimpoint Sight.","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};