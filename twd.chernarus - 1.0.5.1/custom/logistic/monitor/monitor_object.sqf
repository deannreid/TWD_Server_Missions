sleep 0.1;
private ["_transportable","_known","_list","_count","_i","_object"];
_transportable = LOG_CFG_ISTOWABLE + LOG_CFG_ISLIFTABLE;
_known = [];
while {true} do{
	if !(isNull player) then{
		_list = (vehicles + nearestObjects [player, ["Static"], 80]) - _known;
		_count = count _list;		
		if (_count > 0) then{
			for [{_i = 0}, {_i < _count}, {_i = _i + 1}] do{
				_object = _list select _i;			
				if ({_object isKindOf _x} count _transportable > 0) then{[_object] spawn LOG_OBJ_INIT;};			
				if ({_object isKindOf _x} count LOG_CFG_CANLIFT > 0) then{[_object] spawn LOG_LIFT_INIT;};	
				if ({_object isKindOf _x} count LOG_CFG_CANTOW > 0) then{[_object] spawn LOG_TOW_INIT;};
			sleep (18/_count);
			};
			_known = _known + _list;
		}else{sleep 18;};
	}else{sleep 2;};
};