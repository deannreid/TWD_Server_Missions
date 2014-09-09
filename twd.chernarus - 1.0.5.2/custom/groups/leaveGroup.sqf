private ["_callerID","_friendlies","_name","_plist","_rfriendlies","_targetID"];

_plist = units group player;

_callerID = player getVariable "CharacterID";
{
	_name = name _x;
	deleteMarkerLocal _name;
	_targetID = _x getVariable "CharacterID";
	
	_friendlies = player getVariable ["friendlies", []];
	_friendlies =  _friendlies - [_targetID];
	player setVariable ["friendlies", _friendlies, true];
	
	_rfriendlies = _x getVariable ["friendlies", []];
	_rfriendlies =  _rfriendlies - [_callerID];
	_x setVariable ["friendlies", _rfriendlies, true];
} count _plist;

[player] join grpNull;
systemChat "You have left the group";