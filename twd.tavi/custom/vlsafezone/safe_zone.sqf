Private ["_EH_Fired"];

if (isNil "inSafezone") then {
	inSafezone = false;
};

while {true} do {
	waitUntil { inSafeZone };
	waitUntil { player == vehicle player };
	_veh = vehicle player;
	player_fired = {
		titleText ["Wepons are disabled","PLAIN DOWN"]; titleFadeOut 4;
		deleteVehicle (nearestObject [_this select 0,_this select 4]);
	};
	if (_veh != player) then {
		_EH_Fired = _veh addEventHandler ["Fired", {_this call player_fired;}];
	};
	player_zombieCheck = {};
	fnc_usec_damageHandler = {};
	fnc_usec_unconscious  = {};
	fnc_veh_handleDam ={};
	fnc_veh_handleKilled ={};
	_veh removeAllEventHandlers "handleDamage";
	_veh addEventHandler ["handleDamage", {false}];
	_veh allowDamage false;

	waitUntil { !inSafeZone };
	
	player_fired = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_fired.sqf";
	_veh removeEventHandler ["Fired", _EH_Fired];
	
	player_zombieCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";
	fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";
	fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
	fnc_veh_handleDam = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\vehicle_handleDamage.sqf";
	fnc_veh_handleKilled = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\vehicle_handleKilled.sqf";
	_veh addEventHandler ["handleDamage", {true}];
	_veh removeAllEventHandlers "handleDamage";
	_veh allowDamage true;
};