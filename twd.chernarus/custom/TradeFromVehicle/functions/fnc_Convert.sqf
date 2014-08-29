/*
    This function converts an integer value into an in game value of currency. e.g, a value of 100 would become 1 gold bar.
*/

private ["_exchange_complete","_from_sale","_return","_price","_deducted","_one_step"];
_exchange_complete = false;
_from_sale = _this;
_return = [];

while {!_exchange_complete} do {
    _one_step = false;
    {
    _price = _x select 1;
    _deducted = _from_sale - _price;
        if (!_one_step) then {
	        if (_deducted >= 0) then {
		        _from_sale = _from_sale - _price;
	            _return set [(count _return),(_x select 0)];
	            _one_step = true; 
		    };
        };
    } forEach tfv_EXCHANGE;

    if (_from_sale == 0) then {
        _exchange_complete = true;
    };
};

_return