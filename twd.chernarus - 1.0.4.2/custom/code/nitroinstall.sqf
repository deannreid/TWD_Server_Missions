private ["_6ANW9We","_3zs","_PfXdSYsSAmPbXPjx","_eKwXQ","_N4h2y"];
_6ANW9We = _this select 3;
player removeAction s_player_nitroInstall;
s_player_nitroInstall = -1;

if (dayz_combat == 1) exitWith {
	_3zs = "You cant install the nitro boost while in combat.";
	cutText [_3zs, "PLAIN DOWN"];
};

_PfXdSYsSAmPbXPjx = _6ANW9We getVariable["nitroinstalled",0];
if(_PfXdSYsSAmPbXPjx == 1)exitwith{cutText ["This vehicle has already nitro installed", "PLAIN DOWN"];};

_eKwXQ = {_x == "ItemJerrycan"} count magazines player;
_N4h2y = {_x == "ItemSodaRbull"} count magazines player;

if ((_eKwXQ >= 1)&&(_N4h2y >= 1)) then {
	player removeMagazine "ItemJerrycan";
	player removeMagazine "ItemSodaRbull";
	player addMagazine "ItemJerrycanEmpty";
	_6ANW9We setVariable ["nitroinstalled", 1, true];
	cutText ["tuning vehicle...", "PLAIN DOWN"];
	_6ANW9We setfuel 0;
	r_interrupt = false;
	player playActionNow "Medic";

	[player,"repair",0,false,10] call dayz_zombieSpeak;
	[player,10,true,(getPosATL player)] spawn player_alertZombies;
	sleep 6;
	_6ANW9We setfuel 1;
	_6ANW9We setVariable ["isnitroOn", 0, true];
	systemChat("NOS boost installed! Activate it while driving vehicle.");
	sleep 2;
	r_interrupt = false;
	sleep 5;
	cutText ["WARNING: "+name player+"! Nitro boost is only available until server restart!", "PLAIN DOWN"];
} else {
	_3zs = "You need: "+str(1 - _eKwXQ)+"x(Full Jerry Can) and "+str(1 - _N4h2y)+"x(RedBull Soda) to install nitro boost.";
	cutText [_3zs, "PLAIN DOWN"];
};