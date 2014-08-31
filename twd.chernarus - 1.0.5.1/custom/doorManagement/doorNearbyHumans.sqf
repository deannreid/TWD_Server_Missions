private ["_close"];
lbClear 7101;
_closePeople = TheDoor nearEntities ["CAManBase", 10];
Humans = [];
{
	if (_x isKindOf "Man" and !(_x isKindOf "zZombie_base")) then {
		_friendUID = getPlayerUID _x;
		_friendName = name  _x;
		Humans  =  Humans + [[_friendUID,_friendName]] ;	
		lbAdd [7101, _friendName];
	};
} forEach _closePeople;

