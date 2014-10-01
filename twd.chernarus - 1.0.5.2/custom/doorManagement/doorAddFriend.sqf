private ["_pos","_plots","_inList"];
_pos = _this select 0;
if (_pos < 0) exitWith {};
_toAdd = (Humans select _pos);
_friends = TheDoor getVariable ["doorfriends",[]];
_inList = false;
{ if ((_x  select 0) == (_toAdd select 0)) exitWith { _inList = true; }; } forEach _friends;
if (_inList) exitWith { cutText ["Already on the list", "PLAIN DOWN"]; };
if (count _friends == 10) exitWith { cutText ["Only 10 allowed","PLAIN DOWN"]; };
_friends = _friends  + [_toAdd ];
TheDoor setVariable ["doorfriends", _friends, true];
PVDZE_veh_Update = [TheDoor,"gear"];
publicVariableServer "PVDZE_veh_Update";
if (isServer) then {
			PVDZE_veh_Update call server_updateObject;
};
call DoorGetFriends;
call DoorNearbyHumans;