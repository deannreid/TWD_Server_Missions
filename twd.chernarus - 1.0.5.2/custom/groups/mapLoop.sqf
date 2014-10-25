private ["_center","_mrkr","_name","_plist","_pos"];

while {true} do {
	if (visibleMap) then {
		_center = getMarkerPos "center";
		_plist = _center nearEntities ["AllVehicles",10000];
		{
			if ((!isNull _x) && (getPlayerUID _x != "")) then {
				_name = name _x;
				if (group _x == group player) then {
					_pos = getPosATL _x;
					if (surfaceIsWater _pos) then {_pos = getPosASL _x;};
					if (_name == name player) then {_name = "I am here";};
					deleteMarkerLocal _name;
					_mrkr = createMarkerLocal [_name,_pos];
					_mrkr setMarkerTypeLocal "DestroyedVehicle";
					_mrkr setMarkerTextLocal format ["%1",_name];
				} else {
					deleteMarkerLocal _name;
				};
			};
		} count _plist;
	};
	uiSleep 1;
};