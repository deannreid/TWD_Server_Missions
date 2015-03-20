private ["_obj","_type","_config","_canLoot","_unitTypes","_min","_max","_num","_zombieChance","_rnd","_position","_positions","_iPos","_nearBy","_noOneNear"];
//_t1 = diag_tickTime;

if (dayz_maxCurrentZeds > dayz_maxZeds) exitwith {};
if (dayz_CurrentZombies > dayz_maxGlobalZombies) exitwith {}; 
if (dayz_spawnZombies > dayz_maxLocalZombies) exitwith {}; 

_obj = _this select 0;
_type = 		typeOf _obj;
_config = 		configFile >> "CfgBuildingLoot" >> _type;
if (DZE_MissionLootTable) then {
	_config = missionConfigFile >> "CfgBuildingLoot" >> _type;
};
_canLoot = 		isClass (_config);

if (_canLoot) then {
	
	//Get zombie class
	_zombieChance =	getNumber (_config >> "zombieChance");
	_rnd = random 1;

	//Get zombie class
	_unitTypes = 	getArray (_config >> "zombieClass");
	_min = 			getNumber (_config >> "minRoaming");
	_max = 			getNumber (_config >> "maxRoaming");
	
	//Walking Zombies
	_num = (round(random _max)) max _min;
	
	_position = getPosATL _obj;		
		
	_noOneNear = (count (_position nearEntities ["CAManBase",30])) == 0;
	
	if (_noOneNear) then {
	
		_positions =	getArray (_config >> "lootPosZombie");
		
		if (count _positions > 0) then {
			
			{
				if (random 1 < _zombieChance) then {
					_iPos = _obj modelToWorld _x;
					_nearBy =  count (_iPos nearEntities ["zZombie_Base",1]) > 0;
					if (!_nearBy) then {
						[_iPos,true,_unitTypes] call zombie_generate;
					};
				};
			} count _positions;
			
		} else {

			for "_i" from 1 to _num do
			{
				if (random 1 < _zombieChance) then {
					[_position,true,_unitTypes] call zombie_generate;
				};
			};
		};
	};

	if ((_type == "Land_bspawn" || _type == "Land_a_Stationhouse" || _type == "Land_Church_02a" || _type == "Land_Church_02" || _type == "Land_Church_03" || _type == "Land_Church_01" || _type == "Land_Hlidac_budka" || _type == "Land_kulna" || _type == "Land_Mil_Barracks_i") && dzn_ns_bloodsucker && ((random 400) < dzn_ns_bloodsucker_den)) then {
	private["_content", "_originalPos"];
	_rnd = random 1;
	if (_rnd < 0.18562) then {
		_content = "this addweapon 'mut_heart'";
	} else {
		_content = "";
	};
		_originalPos = getPos _obj;
		"ns_bloodsucker" createUnit [[(_originalPos select 0) + (random 60), (_originalPos select 1) - (random 60), 0], group sefik, _content, 1, "CORPORAL"];
	};                                     
 
	dayz_buildingMonitor set [count dayz_buildingMonitor,_obj];
};