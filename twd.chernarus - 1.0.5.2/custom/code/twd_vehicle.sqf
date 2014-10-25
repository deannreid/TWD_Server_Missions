private ["_inv","_searchString","_ID","_found","_targetColor","_finalID","_targetPosition","_targetVehicle","_count","_key","_keyName"];
_inv = [player] call BIS_fnc_invString;

if (!("ItemMap" in _inv))  exitWith { systemChat "You need a map to locate your vehicles!";};
_keyColor = [];
_keyID = [];
_removedID = [];
_count = 0;

closedialog 0;
{
    for "_i" from 1 to 2500 do {
        _searchString = format ["ItemKey%1%2",_x,str(_i)];
        if ((_searchString in _inv)) then {
			_count = _count + 1;
            _targetColor = _x;
			_keyColor = _keyColor + [_targetColor];
            _ID = str(_i);
			_ID = parseNumber _ID;
			if (_targetColor == "Green") then { _finalID = _ID; };
			if (_targetColor == "Red") then { _finalID = _ID + 2500; };
			if (_targetColor == "Blue") then { _finalID = _ID + 5000; };
			if (_targetColor == "Yellow") then { _finalID = _ID + 7500; };
			if (_targetColor == "Black") then { _finalID = _ID + 10000; };
			_keyID = _keyID + [_finalID];
			_removedID = _removedID + [_ID];
        };
    };
} forEach ["Black","Yellow","Blue","Green","Red"];

_i = 0;
for "_i" from 0 to 10 do {deleteMarkerLocal ("vehicleMarker"+ (str _i));};

if (_count == 0) exitWith { systemChat "No key found!";};

if (_count == 1) then { systemChat format ["Found: %1 vehicle key",_count];}
else {systemChat format ["Found: %1 vehicle keys",_count];};

_count = _count - 1;
_i = 0;
for "_i" from 0 to _count do {
	_finalID = _keyID select _i;
	_ID = _removedID select _i;
	_targetColor = _keyColor select _i;
	_key = format["ItemKey%1%2",_targetColor,_ID];
	_keyName = getText (configFile >> "CfgWeapons" >> _key >> "displayName");
	_found = 0;
	{
		private ["_tID"];
		_tID = parseNumber (_x getVariable ["CharacterID","0"]);
		if ((_tID == _finalID)) then {
			_targetPosition = getPosATL _x;
			_targetVehicle = _x;
			_found = 1;
		};
	} forEach vehicles;

	if (_found != 0) then {
		_vehicleName = gettext (configFile >> "CfgVehicles" >> (typeof _targetVehicle) >> "displayName");
		_Marker = "vehicleMarker" + (str _i);
		_vehicleMarker = createMarkerLocal [_Marker,[(_targetPosition select 0),(_targetPosition select 1)]];
		_vehicleMarker setMarkerShapeLocal "ICON";
		_vehicleMarker setMarkerTypeLocal "DOT";
		_vehicleMarker setMarkerColorLocal "ColorOrange";
		_vehicleMarker setMarkerSizeLocal [1.0, 1.0];
		_vehicleMarker setMarkerTextLocal format ["Here is your: %1",_vehicleName];
		systemChat format ["%1 belongs to %2 - %3",_keyName,_vehicleName,_finalID];}
	else { systemChat format ["%1 - Vehicle ID: %2 - (This vehicle no longer exists in the database)",_keyName,_finalID];
	};	
};

if (_count == 0) then { systemChat format ["Check the map to locate your vehicle!"];}
else {systemChat format ["Check the map to locate your vehicles!"];};