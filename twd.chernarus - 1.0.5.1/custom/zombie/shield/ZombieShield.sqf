//This script is used to toggle the zombie shield on/off

private ["_id","_shieldGen","_doZombieShield","_generator","_shieldRadius","_doShield","_zombieFreaks","_zombieFreak","_count","_shieldGenStatus"];
_id = _this select 2;
_shieldGen = _this select 3 select 0;
_doZombieShield = _this select 3 select 1;
_shieldGen removeAction _id;
//_shieldGen = "CDF_WarfareBUAVterminal";
_shieldRadius = ZShieldRadius;


_func_zombie_shield = {
//diag_log ["Stage 3 here"];
	if (_doShield) then {
		//diag_log ["Stage 4 here"];
		_shieldGen = _this select 0;
		_shieldGen setVariable ["ZombieShield", "true", true];
		[nil,_shieldGen,rSAY,["engine_12s", _shieldRadius]] call RE;
		while {(_shieldGen getVariable ["ZombieShield","false"]) == "true"} do {
			//diag_log ["Stage 5 here"];
			//_staticSounds = ["PMC_ElectricBlast1","PMC_ElectricBlast2"] call BIS_fnc_selectRandom;
			//[nil,_shieldGen,rSAY,[_staticSounds,_shieldRadius]] call RE;
			_zombieFreaks = (position _shieldGen) nearEntities ["zZombie_Base", _shieldRadius];
			_count = count _zombieFreaks;
			for "_i" from 0 to (_count -1) do {
				_zombieFreak = _zombieFreaks select _i;
				if (ZShieldClean == 1) then {
					deleteVehicle _zombieFreak;
				} else {
					_zombieFreak setDamage 1;
				};
				sleep 1;
			};
		};
	} else {
		//diag_log ["Stage 4.5 here"];
		_shieldGen = _this select 0;
		_shieldGen setVariable ["ZombieShield", "false", true];
	};
};


if (_doZombieShield) then {
	//diag_log ["Stage 1 here"];
	_shieldGenStatus = _shieldGen getVariable ["ZombieShield", "false"];
		
	if (_shieldGenStatus == "false") then {
		//diag_log ["Stage 2 here"];
		_doShield = true;
		cutText ["Activating Zombie Shield", "PLAIN DOWN"];
		[_shieldGen] call _func_zombie_shield;
	};
} else {
	_shieldGenStatus = _shieldGen getVariable ["ZombieShield", "false"];
	if (_shieldGenStatus == "true") then {
		//diag_log ["Stage 1.1 here"];
		_doShield = false;
		cutText ["De-Activating Zombie Shield", "PLAIN DOWN"];
		[_shieldGen] call _func_zombie_shield;
	};
};