private ["_plots","_friendlies","_thePlot"];
lbClear 7102;	
_counter = 0;
_friends = TheDoor getVariable ["doorfriends",[]];
{
_counter = _counter +  1;
	lbAdd [7102, (_x select 1)];
} forEach _friends;



