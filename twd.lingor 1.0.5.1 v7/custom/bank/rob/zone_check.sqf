private [_bankLoc];

_meters = player distance [7014.4897, 7645.3999, 1.6962879];

if(_debugBank == 1) then {
	systemChat "[DEBUG] Bank Zonecheck successfully executed.";
};

waitUntil (_meters >= 50) then {
	if (_robComplete == 1) exitWith {};
	if !(_robComplete == 1) exitWith {
		_failRob = 1;
		systemChat "Bank robbery failed.";
	};
};
