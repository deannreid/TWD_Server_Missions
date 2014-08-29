
private ["_weapons","_traderWeapons","_return","_total_sale","_price","_idx","_rejects"];
_weapons = _this select 0;
_traderWeapons = _this select 1;
_total_sale = 0;
_rejects = [];
{
    if (_x in _traderWeapons) then {
	    for "_i" from 0 to count tfv_TRADERS_PRICES - 1 do {
	        if (_x in (tfv_TRADERS_PRICES select _i)) then {
		        _idx = _i;
		    };
	    };
	    _price = tfv_TRADERS_PRICES select _idx select 1;
	    _total_sale = _total_sale + _price;
    } else {
        if !(_x in _traderWeapons) then {
	        _rejects set [(count _rejects),_x];
	    };
    };
} forEach _weapons;
_return = [_total_sale,_rejects];
	
_return
