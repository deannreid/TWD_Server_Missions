private ["_txt","_smQTY","_c"];


if (dayz_combat == 1) exitWith {
	_txt = "You need to hide and get out of combat first.";
	cutText [_txt, "PLAIN DOWN"];
};

if (hasGutsOnHim) exitWith {
	_txt = "You are already covered in zombie guts.";
	cutText [_txt, "PLAIN DOWN"];
};

_smQTY = {_x == "ItemZombieParts"} count magazines player;

if (_smQTY >= DZ_zombiePartsNeeded) then {
	r_interrupt = false;
	player playActionNow "Medic";
	for [{_c=0}, {_c < 2}, {_c=_c+1}] do
	{
		player removeMagazine "ItemZombieParts";
		sleep 0.5;
	}; 
	
	[player,"gut",0,false,10] call dayz_zombieSpeak;
	sleep 10;
	
	sand_USEDGUTS = true; 
	sand_washed =  false;
	hasGutsOnHim = true;
	cutText ["You smeared the zombie parts on you.", "PLAIN DOWN"];
	
	r_interrupt = false;
	player switchMove "";
	player playActionNow "stop";
	sleep 2;
} else {
	_txt = "You need: "+str(DZ_zombiePartsNeeded - _smQTY)+" more Zombie parts to do a Zombie Camo.";
	cutText [_txt, "PLAIN DOWN"];
};