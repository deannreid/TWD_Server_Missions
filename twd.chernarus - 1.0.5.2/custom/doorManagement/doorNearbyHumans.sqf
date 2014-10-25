private ["_close"];
lbClear 7101;
_closePeople =  player nearEntities ["CAManBase", 20];
Humans = [];
_counter =  0;
{
 _counter = _counter + 1;
	if (_x isKindOf "Man" and !(_x isKindOf "zZombie_base")) then {
		_friendUID = getPlayerUID _x;
		_friendName = name  _x;
		Humans  =  Humans + [[_friendUID,_friendName]] ;	
		lbAdd [7101, _friendName];
	};
} forEach _closePeople;


