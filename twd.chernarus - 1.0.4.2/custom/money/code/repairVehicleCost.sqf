private ["_prices", "_vehicle", "_hitpoints", "_parts_needed", "_vehicle_cfg", "_armor", "_parts_cost", "_cost"];
_prices = [
	"PartGeneric", 1200,
	"PartEngine", 3000,
	"PartVRotor", 3000,
	"PartFueltank", 2400,
	"PartWheel", 1200,
	"PartGlass", 300
];
_vehicle = _this;
if (damage _vehicle == 0) exitWith {
	0
};
_hitpoints = _vehicle call vehicle_getHitpoints;
_parts_cost = 0;
_parts_needed = [];
{
	private ["_damage", "_part"];
	_damage = [_vehicle,_x] call object_getHit;
	_part = "PartGeneric";
	if(["Engine",_x,false] call fnc_inString) then {
		_part = "PartEngine";
	};
	if(["HRotor",_x,false] call fnc_inString) then {
		_part = "PartVRotor"; //yes you need PartVRotor to fix HRotor LOL
	};
	if(["Fuel",_x,false] call fnc_inString) then {
		_part = "PartFueltank";
	};
	if(["Wheel",_x,false] call fnc_inString) then {
		_part = "PartWheel";
	};
	if(["Glass",_x,false] call fnc_inString) then {
		_part = "PartGlass";
	};
	if (_damage > 0) then {
		_parts_needed set [count _parts_needed, _part];
		_parts_cost = _parts_cost + (_prices select ((_prices find _part) + 1));
		_parts_needed set [count _parts_needed, (_prices select ((_prices find _part) + 1))];
	};
} forEach _hitpoints;
_vehicle_cfg = (configFile >> "cfgVehicles" >> (typeOf _vehicle));
_armor = getNumber(_vehicle_cfg >> "armor");
if (_vehicle isKindOf "Air") then {
	_cost = _parts_cost + (damage _vehicle * (_armor * 100));
} else {
	_cost = _parts_cost + (damage _vehicle * (_armor * 10));
};
_cost