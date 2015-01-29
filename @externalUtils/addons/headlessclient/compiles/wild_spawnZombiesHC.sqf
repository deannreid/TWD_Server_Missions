private ["_position","_doLoiter","_unitTypes","_loot","_array","_agent","_type","_radius","_method","_myDest","_newDest","_lootType","_player","_isAlive","_rnd","_id"];
_player = _this select 0;
_unitTypes = 	[]+ getArray (configFile >> "CfgBuildingLoot" >> "Default" >> "zombieClass");
_doLoiter = 	true;

_loot = 	"";
_array = 	[];
_agent = 	objNull;

_type = _unitTypes call BIS_fnc_selectRandom;

//Create the Group and populate it
//diag_log ("Spawned: " + _type);
_radius = 40;
_method = "NONE";

_position = [_player,120,200,10,0,0,0] call BIS_fnc_findSafePos;

_agent = createAgent [_type, _position, [], _radius, _method];
_agent removeAllEventHandlers "local"; // attach our own later
_id = _agent addEventHandler ["local", { diag_log "Locality Event"; if(_this select 1) then {[(position (_this select 0)),(_this select 0),true] execFSM "custom\headless\compiles\zombie_agentHC.fsm" };}];

if (_doLoiter) then {
	//_agent setPosATL _position;
	//_agent setVariable ["doLoiter",true,true];
	_agent setDir round(random 180);
};

if (random 1 > 0.7) then {
	_agent setUnitPos "Middle";
};

if (isNull _agent) exitWith {};

_isAlive = alive _agent;

_myDest = getPosATL _agent;
_newDest = getPosATL _agent;
_agent setVariable ["myDest",_myDest];
_agent setVariable ["newDest",_newDest];

//Add some loot
_loot = "";
_array = [];
_rnd = random 1;
if (_rnd < 0.2) then {
	_lootType = configFile >> "CfgVehicles" >> _type >> "zombieLoot";
	if (isText _lootType) then {
		_array = [];
		{
			_array set [count _array, _x select 0]
		} count getArray (configFile >> "cfgLoot" >> getText(_lootType));
		if (count _array > 0) then {
			_index = dayz_CLBase find getText(_lootType);
			_weights = dayz_CLChances select _index;
			_loot = _array select (_weights select (floor(random (count _weights))));
			if(!isNil "_array") then {
				_loot_count =   getNumber(configFile >> "CfgMagazines" >> _loot >> "count");
				if(_loot_count>1) then {
					_agent addMagazine [_loot, ceil(random _loot_count)];
				} else {
				_agent addMagazine _loot;
				};
			};
		};
	};
};
	
//Start behavior
_id = [_position,_agent] execFSM "custom\headless\compiles\zombie_agentHC.fsm";
hint "fsm id:" + str _id;