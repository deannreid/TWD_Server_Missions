/*
	This function concatenates 2 arrays into 1, the item and the amount. 
	e.g, [["M16A2","M9","M9SD"],[1,2,3]] would become ["M16A2","M9","M9","M9SD","M9SD","M9SD"]
	Return value is an array.
*/
    
private ["_return","_vehicle","_count","_cargo","_ii","_sCargo"];
_vehicle = _this;
_sCargo = getMagazineCargo _vehicle;
_count = _sCargo select 1;
_cargo = _sCargo select 0;
_return = [];
{
    _ii = _cargo find _x;
    for "_i" from 1 to (_count select _ii) do {
	    _return set [(count _return),_x];
    };
} forEach _cargo;
	
_return