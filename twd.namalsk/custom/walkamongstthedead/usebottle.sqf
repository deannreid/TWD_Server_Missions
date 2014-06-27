private ["_txt","_dis","_sfx","_Qty"];

if (dayz_combat == 1) exitWith {
	_txt = "You need to hide and get out of combat first.";
	cutText [_txt, "PLAIN DOWN"];
};

if (isNil "hasGutsOnHim") then {hasGutsOnHim = false;};
if (!hasGutsOnHim) exitWith {
	_txt = "You are not covered in zombie guts.";
	cutText [_txt, "PLAIN DOWN"];
};

	_Qty = {_x == "ItemWaterbottle"} count magazines player;

	// If we're not swimming, let's start the animation to have the player squat
	if (!dayz_isSwimming) then {
		player playActionNow "PutDown";
	};

	if ("ItemWaterbottle" in magazines player) then {
		player removeMagazines "ItemWaterbottle";
		for "_x" from 1 to _Qty do {
		sleep 1;
		_dis = 5;
		_sfx = "fillwater";
		[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
		[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
		player addMagazine "ItemWaterbottleUnfilled";
		};
		sand_washed = true;
		hasGutsOnHim = false;
		// Success on cleaning - Inform the player
		if (_Qty > 1) then {
		  cutText [format["You used %1 water bottles to clean yourself from the zombie parts.",_Qty], "PLAIN DOWN"];
		} else {
		  cutText [format["You used your water bottle to clean yourself from the zombie parts."], "PLAIN DOWN"];
		};
	} else {
		cutText [format["You have no full water bottles to clean yourself from the zombie parts."], "PLAIN DOWN"];
	};
