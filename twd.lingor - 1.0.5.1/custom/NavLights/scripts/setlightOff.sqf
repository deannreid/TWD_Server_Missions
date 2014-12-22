_action = _this select 2;
_unit = _this select 0;

_unit setVariable ["lightOn", false, true];
_unit removeAction _action;
_unit addAction [ "Strobes on", "custom\NavLights\scripts\setlightOn.sqf", [], 11, false, true, "", "driver _target == player"];