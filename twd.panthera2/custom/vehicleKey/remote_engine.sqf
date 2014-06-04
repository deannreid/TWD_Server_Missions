private ["_ownerID","_objects","_i","_ownerID2","_vehicle","_driver","_aigroup"];
_ownerID = _this select 0;

_objects = nearestObjects [getPos player, ["LandVehicle","Helicopter","Plane","Ship"], 50];
_i = 0;
{
	_vehicle = _x;
	if (alive _vehicle) then {
		_ownerID2 = _vehicle getVariable ["CharacterID", "0"];

		if(_ownerID == _ownerID2) then {
			if(!locked _vehicle) then {
				if(player distance _vehicle < 50) then {
					DZE_ActionInProgress = true;
					
					if (isEngineOn _vehicle) then {
						player action ["engineOff", _vehicle];
					} else {
						player action ["engineOn", _vehicle];
					};
					player action ["engineOn", _vehicle];
					
					DZE_ActionInProgress = false;
				};
			};
		};
		
		_i = _i + 1;
	};
} forEach _objects;