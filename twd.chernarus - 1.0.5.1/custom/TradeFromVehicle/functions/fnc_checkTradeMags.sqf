
private ["_vStartPos","_sMagCounts","_vehicle","_pStartPos","_return","_numberCheck"];
_return = false;
_vStartPos = _this select 0;
_sMagCounts = _this select 1;
_vehicle = _this select 2;
_pStartPos = _this select 3;
_numberCheck = _vehicle call tfv_fnc_mCount;
if (((getPos _vehicle) distance _vStartPos > 0.5) && (!_return)) then {
    _return = true;
};
if (((count(crew _vehicle)) != 0) && (!_return)) then {
    _return = true;
};
if ((_numberCheck != _sMagCounts) && (!_return)) then {
    _return = true;
};
if (((getPos player) distance _pStartPos > 0.5) && (!_return)) then {
    _return = true;
};

_return