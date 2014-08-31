private ["_plots","_friendlies","_thePlot"];
lbClear 7102;	
_friendlies =  TheDoor getVariable ["doorfriends", []];
{
	lbAdd [7102, (_x select 1)];
} forEach _friendlies;



