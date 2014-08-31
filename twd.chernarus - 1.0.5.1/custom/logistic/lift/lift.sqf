if (LOG_INPROGRESS) then{
[STR_LOG_INPROGRESS,COLOR_ERROR] call SAM_SAYS;
} else {
LOG_INPROGRESS = true;
	private ["_heliporteur", "_object"];
	_heliporteur = _this select 0;
	_object = nearestObjects [_heliporteur, LOG_CFG_ISLIFTABLE, 20];
	_object = _object - [_heliporteur];	
	if (count _object > 0) then{
		_object = _object select 0;	
		if !(_object getVariable "LOG_disabled") then {
			if (isNull (_object getVariable "LOG_moves_by")) then {
				if (count crew _object == 0) then{	
					if (isNull (_object getVariable "LOG_moves_by") || (!alive (_object getVariable "LOG_moves_by"))) then{
						private ["_no_trailer", "_trailer"];
						_no_trailer = true;
						_trailer = _object getVariable "LOG_trailer";
						if !(isNil "_trailer") then{
							if !(isNull _trailer) then{ _no_trailer = false;};
						};
						if (_no_trailer) then{
							_heliporteur setVariable ["LOG_heliporte", _object, true];
							_object setVariable ["LOG_moves_by", _heliporteur, true];
							_object attachTo [_heliporteur, [0,0,(boundingBox _heliporteur select 0 select 2) - (boundingBox _object select 0 select 2) - (getPos _heliporteur select 2) + 0.5]];		
							[ format [STR_LOG_ATTACHED,getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")], COLOR_SUCCESS] call SAM_SAYS;
						}else{ [ format [STR_LOG_CANT_LIFT_TOWING,getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")],COLOR_ERROR] call SAM_SAYS;};
					}else{[ format [STR_LOG_CANT_LIFT_MOVING,getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")],COLOR_ERROR] call SAM_SAYS;};	
				}else{[ format [STR_LOG_CANT_LIFT_PLAYER,getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")],COLOR_ERROR] call SAM_SAYS;};
			}else{[ format [STR_LOG_ALREADY, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")],COLOR_ERROR] call SAM_SAYS;};
		};
	};
LOG_INPROGRESS = false;
};