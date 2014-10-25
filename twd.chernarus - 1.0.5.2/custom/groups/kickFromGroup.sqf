disableSerialization;

private ["_plist","_dialog","_target","_index","_playerData","_check","_targetName"];

_dialog = findDisplay 55510;
_groupListBox = _dialog displayCtrl 55512;
_index = lbCurSel _groupListBox;
_playerData = _groupListBox lbData _index;
_check = 0;

_plist = units group player;
{
	if ((!isNull _x) && (alive _x)) then {
		if (str(_x) == _playerData) then {_target = _x;_check = 1;};
	};
} count _plist;

if (_target == player) exitWith {systemChat "You can't kick yourself";};
if (_check == 0) exitWith {systemChat "You must select someone to kick first";};
[_target] join grpNull;
_targetName = name _target;
deleteMarkerLocal _targetName;

systemChat format["You have kicked %1 from the group",name _target];

_callerID = player getVariable "CharacterID";
_targetID = _target getVariable "CharacterID";

_friendlies = player getVariable ["friendlies", []];
_friendlies =  _friendlies - [_targetID];
player setVariable ["friendlies", _friendlies, true];

_rfriendlies = _target getVariable ["friendlies", []];
_rfriendlies =  _rfriendlies - [_callerID];
_target setVariable ["friendlies", _rfriendlies, true];

systemChat format["%1 has been removed from your friendly list",name _target];