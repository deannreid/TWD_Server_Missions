
private ["_bars","_rejects","_vehicle"];
_bars = _this select 0;
_rejects = _this select 1;
_vehicle = _this select 2;
clearWeaponCargoGlobal _vehicle;
{ _vehicle addWeaponCargoGlobal [_x,1]; } forEach _rejects;
{ player addMagazine [_x,1]; } forEach _bars;
	
true