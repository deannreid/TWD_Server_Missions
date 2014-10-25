disableSerialization;
				
private ["_center","_dialog","_playerListBox","_plist","_namestr","_index"];
	
_dialog = findDisplay 55510;
_playerListBox = _dialog displayCtrl 55511;
lbClear _playerListBox;
_center = getMarkerPos "center";
_plist = _center nearEntities ["AllVehicles",10000];
{
	if ((!isNull _x) && (getPlayerUID _x != "")) then {
		_namestr = name _x;
		_index = _playerListBox lbAdd _namestr;
		_playerListBox lbSetData [_index,str(_x)];
	};	    
} count _plist;