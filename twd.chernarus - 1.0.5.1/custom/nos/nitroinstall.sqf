private ["_Vehicle","_msg","_hasnosinstalled","_Jerrycan","_Redbull"];
_Vehicle = _this select 3;
player removeAction s_player_nitroInstall;
s_player_nitroInstall = -1;

if (dayz_combat == 1) exitWith {
	_msg = "You cant install the nitro boost while in combat.";
	cutText [_msg, "PLAIN DOWN"];
};

_hasnosinstalled = _Vehicle getVariable["nitroinstalled",0];
if(_hasnosinstalled == 1)exitwith{cutText ["This vehicle has already nitro installed", "PLAIN DOWN"];};

_Jerrycan = {_x == "ItemJerrycan"} count magazines player;
_Redbull = {_x == "ItemSodaRbull"} count magazines player;

if ((_Jerrycan >= 1)&&(_Redbull >= 1)) then {
	player removeMagazine "ItemJerrycan";
	player removeMagazine "ItemSodaRbull";
	player addMagazine "ItemJerrycanEmpty";
	_Vehicle setVariable ["nitroinstalled", 1, true];
	cutText ["tuning vehicle...", "PLAIN DOWN"];
	_Vehicle setfuel 0;
	r_interrupt = false;
	player playActionNow "Medic";

	[player,"repair",0,false,10] call dayz_zombieSpeak;
	[player,10,true,(getPosATL player)] spawn player_alertZombies;
	sleep 6;
	_Vehicle setfuel 1;
	_Vehicle setVariable ["isnitroOn", 0, true];
	systemChat("NOS boost installed! Activate it while driving vehicle.");
	sleep 2;
	r_interrupt = false;
	sleep 5;
	cutText ["WARNING: "+name player+"! Nitro boost is only available until server restart!", "PLAIN DOWN"];
} else {
	_msg = "You need: "+str(1 - _Jerrycan)+"x(Full Jerry Can) and "+str(1 - _Redbull)+"x(RedBull Soda) to install nitro boost.";
	cutText [_msg, "PLAIN DOWN"];
};