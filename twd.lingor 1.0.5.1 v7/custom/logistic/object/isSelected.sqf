if (LOG_INPROGRESS) then {
[STR_LOG_INPROGRESS,COLOR_ERROR] call SAM_SAYS;
} else{
LOG_OBJECT_SELECTION = _this select 0;
[format [STR_LOG_NOW_SELECT, getText (configFile >> "CfgVehicles" >> (typeOf LOG_OBJECT_SELECTION) >> "displayName")],COLOR_DEFAULT] call SAM_SAYS;
};