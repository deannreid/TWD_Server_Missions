private ["_list","_plots","_thePlot","_friends"];
systemChat "Removing";
_pos = _this select 0;
if (_pos < 0) exitWith {};
_friends = TheDoor getVariable ["doorfriends", []];
_toRemove = (_friends select _pos);
_newList = [];
{
	if(_x select 0  != _toRemove select 0)then{
	_newList = _newList + [_x];
	};
} forEach _friends;
TheDoor setVariable ["doorfriends", _newList, true];
PVDZE_veh_Update = [TheDoor,"gear"];
publicVariableServer "PVDZE_veh_Update";
if (isServer) then {
			PVDZE_veh_Update call server_updateObject;
};

call DoorGetFriends;
call DoorNearbyHumans;