_name = _this select 0;

if (isNil "initarr") then {initarr = true; gnamearr = [];};
if !(_name in gnamearr) then
{
	hint format ["God Mode on %1 Activated", _name]; gnamearr = gnamearr + [_name];
} else {hint format ["God Mode on %1 Deactivated", _name]; gnamearr = gnamearr - [_name];};

_tgod = format ["if (name player == '%1') then
{
	if (isNil 'gmdlol') then
	{
		gmdlol = true;
		player removeAllEventHandlers 'handleDamage';
		player addEventHandler ['handleDamage', {false}];
		player allowDamage false;
	}

	else
	{
		player addEventHandler ['handleDamage', {true}];
		player removeAllEventHandlers 'handleDamage';
		player allowDamage true;
		gmdlol = nil;
	};
};", _name];
