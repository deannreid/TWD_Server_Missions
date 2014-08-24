_infiSZ =
[
	[[2261.85, 14396.8],500,true]
];
waitUntil { !isNil 'dayz_animalCheck' };
if (isNil 'inSafezone') then {inSafezone = false;};
[_infiSZ] spawn {
	_infiSZ = _this select 0;
	_startSafeZone =
	{
		if (isNil 'outNow') then
		{
			_msg = 'You entered a PVP Area!';
			hint _msg;
			taskHint [_msg, [0,1,0,1], 'taskFailed'];
			inNow = nil;
			outNow = true;
		};
	};
	_endSafeZone =
	{
		if (isNil 'inNow') then
		{
			if (str fnc_usec_damageHandler == '{}') then
			{
				_msg = 'You left the PVP Area!';
				hint _msg;
				taskHint [_msg, [1,0,0.1,1], 'taskDone'];
			};
			inNow = true;
			outNow = nil;
		};
	};
};