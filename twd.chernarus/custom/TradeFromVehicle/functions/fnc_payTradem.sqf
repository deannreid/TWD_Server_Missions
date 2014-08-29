
private ["_bars","_rejects","_vehicle"];
_bars = _this select 0;
_rejects = _this select 1;
_vehicle = _this select 2;
clearMagazineCargoGlobal _vehicle;
{ _vehicle addMagazineCargoGlobal [_x,1]; } forEach _rejects;
{ player addMagazine [_x,1]; } forEach _bars;
	
true