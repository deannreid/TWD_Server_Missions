private ["_list","_plots","_thePlot","_friends"];

_pos = _this select 0;
if (_pos < 0) exitWith {};
_plots = nearestObjects [player, ["Plastic_Pole_EP1_DZ"],15];	
_thePlot = _plots select 0;
_friends = _thePlot getVariable ["plotfriends", []];
_toRemove = (_friends select _pos);
_newList = [];
{
	if(_x select 0  != _toRemove select 0)then{
	_newList = _newList + [_x];
	};
} forEach _friends;
_thePlot setVariable ["plotfriends", _newList, true];
PVDZE_veh_Update = [_thePlot,"gear"];
publicVariableServer "PVDZE_veh_Update";
if (isServer) then {
			PVDZE_veh_Update call server_updateObject;
};

call PlotGetFriends;
call PlotNearbyHumans;