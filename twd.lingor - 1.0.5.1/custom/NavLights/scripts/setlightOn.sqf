_action = _this select 2;
_unit = _this select 0;

_unit setVariable ["lightOn", true, true];
_unit removeAction _action;

_unit addAction [ "Strobes off", "custom\NavLights\scripts\setlightOff.sqf", [], 11, false, true, "", "driver _target == player"];