/*
	This function counts the total amount of magazines in a vehicle. Return value is an integer.
*/
    
private ["_counts","_return","_cargo","_vehicle"];
_return = 0;
_vehicle = _this;
_cargo = getMagazineCargo _vehicle;
_counts = _cargo select 1;
{
    _return = _return + _x;
} forEach _counts;

_return