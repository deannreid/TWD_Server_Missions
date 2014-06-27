if (("AK_107_kobra" in weapons player) && ("PartGeneric" in magazines player) && ("ItemToolbox" in items player)) then {
	player playActionNow "Medic";
	sleep 2;
	if (("AK_107_kobra" in weapons player) && ("PartGeneric" in magazines player)) then {
		player removeWeapon "AK_107_kobra";
		player removeMagazine "PartGeneric";
		sleep 2;
		player addWeapon "AK_107_pso";
	} else {
	};
titleText ["You have attatched the PSO Scope!","PLAIN DOWN"]; titleFadeOut 5;
} else {
titleText ["You don't have the required Tools/Items!","PLAIN DOWN"]; titleFadeOut 5;
};