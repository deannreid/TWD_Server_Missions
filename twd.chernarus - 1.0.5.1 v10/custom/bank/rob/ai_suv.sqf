///Spawn a SUV with a driver & gunner near the bank.///

if (isNil _suv_random_percent) then {
_suv_random_percent = 0;
};

_randomChanger=floor(random 100);
_random1337 = (_randomChanger - _suv_random_percent);

if (_random1337 <= 10) then {

_suvUnit = objNull;
_suvGroup = createGroup EAST;
_suvSpawnPos = [0,0,0];
_suvUnitPos = [0,0,0];
_suvDriver = objNull;
_suvWPradius = 2;
_suvWPIndex = 2;
_suvWPz = 0;
EAST setFriend [WEST, 0];

_dir = -78;
_suvFirstWP = [0,0,_suvWPz];
_suvWP = _suvGroup addWaypoint [_suvFirstWP, _suvWPradius,_suvWPIndex];
_suvWP setWaypointType "MOVE";
_suv = "ArmoredSUV_PMC_DZE" createVehicle _suvSpawnPos;
_suv setDir _dir;
_suv setPos getPos _suv;
_suv setVariable ["ObjectID", [_dir,getPos _suv] call dayz_objectUID2, true];
_suv setFuel 0.2;
_suv allowDammage true;
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_suv];
[_suv,"ArmoredSUV_PMC_DZE"] spawn server_updateObject;
_suv addEventHandler ["HandleDamage", {true}];

_loadout = ["M4A1_AIM_SD_camo","30Rnd_556x45_StanagSD"];
"BAF_Soldier_L_DDPM" createUnit [_unitpos, _suvGroup, "_suvUnit=this;",0.6,"Private"];
_suvUnit enableAI "TARGET";
_suvUnit enableAI "AUTOTARGET";
_suvUnit enableAI "MOVE";
_suvUnit enableAI "ANIM";
_suvUnit enableAI "FSM";
_suvUnit allowDammage true;
_suvUnit setCombatMode "RED";
_suvUnit setBehaviour "COMBAT";
removeAllWeapons _suvUnit
_aiwep = _loadout select 0;
_aiammo = _loadout select 1;
_suvUnit addWeapon _aiwep;
_suvUnit addMagazine _aiammo;
_suvUnit addMagazine _aiammo;
_suvUnit setSkill ["aimingAccuracy",1];
_suvUnit setSkill ["aimingShake",1];
_suvUnit setSkill ["aimingSpeed",1];
_suvUnit setSkill ["endurance",1];
_suvUnit setSkill ["spotDistance",0.6];
_suvUnit setSkill ["spotTime",1];
_suvUnit setSkill ["courage",1];
_suvUnit setSkill ["reloadSpeed",1];
_suvUnit setSkill ["commanding",1];
_suvUnit setSkill ["general",1];

if (x==1) then {
	_suvUnit assignAsGunner _suv;
	_suvUnit moveInGunner _suv;
} else {
_suvGroup selectLeader _suvUnit;
_suvDriver = _suvUnit;
sleep 15;
_suvUnit assignAsDriver _suv;
_suvUnit moveInDriver _suv;
};
};