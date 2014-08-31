/*
    This function finds which weapons the target trader accepts. Return value is an array of weapons.
*/

private ["_return","_trader"];
_trader = _this;
{
    if (_x select 0 == _trader) then {
        _return = _x select 1;
    };
} forEach tfv_TRADERS_ITEMS;
	
_return
