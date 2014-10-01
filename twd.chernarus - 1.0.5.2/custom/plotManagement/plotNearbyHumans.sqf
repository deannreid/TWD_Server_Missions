private ["_close"];
lbClear 7001;
_allUnits = player nearEntities ["CAManBase", 12000];
Humans = [];
{
	if (_x isKindOf "Man" and !(_x isKindOf "zZombie_base") and (isPlayer _x)) then {
		_friendUID = getPlayerUID _x;
		_friendName = name  _x;
		Humans  =  Humans + [[_friendUID,_friendName]] ;	
		lbAdd [7001, _friendName];
	};
} forEach _allUnits;

