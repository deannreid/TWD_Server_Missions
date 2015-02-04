if (LOG_INPROGRESS) then {
[STR_LOG_INPROGRESS,COLOR_ERROR] call SAM_SAYS;
} else{
LOG_INPROGRESS = true;
	private ["_tug","_object"];
	_object = _this select 0;
	_tug = _object getVariable "LOG_moves_by";
	if ({_tug isKindOf _x} count LOG_CFG_CANTOW > 0) then{
		_tug setVariable ["LOG_trailer", objNull, true];
		_object setVariable ["LOG_moves_by", objNull, true];			
		[_object] call LOG_FNCT_DETACH_AND_SAVE;
		sleep 3;
		[format [STR_LOG_UNTOWED, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")],COLOR_SUCCESS] call SAM_SAYS;		
	}else{[STR_LOG_IMPOSSIBLE_VEHICLE,COLOR_ERROR] call SAM_SAYS;};
LOG_INPROGRESS = false;
};
