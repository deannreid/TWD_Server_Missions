disableSerialization;

private ["_center","_dialog","_playerListBox","_plist","_groupInvite","_target","_index","_playerData","_check","_unitCount"];

_dialog = findDisplay 55510;
_playerListBox = _dialog displayCtrl 55511;
_groupInvite = _dialog displayCtrl 55514;
_index = lbCurSel _playerListBox;
_playerData = _playerListBox lbData _index;
_check = 0;

_center = getMarkerPos "center";
_plist = _center nearEntities ["AllVehicles",10000];
{
	if ((!isNull _x) && (getPlayerUID _x != "")) then {
		if (str(_x) == _playerData) then {_target = _x;_check = 1;};
	};
} count _plist;
if (_check == 0) exitWith {};

_unitCount = count units group _target;

if (_unitCount == 1) then {
    if (player == leader group player) then {
		_groupInvite ctrlShow true;
	} else {
		_groupInvite ctrlShow false;
		titleText ["\n\nYou must be the group leader to invite people","PLAIN DOWN"];titleFadeOut 4;
	};	    
} else {
	_groupInvite ctrlShow false;
	titleText ["\n\nThe selected player is already in a group","PLAIN DOWN"];titleFadeOut 4;
};