// Code based on BTK Cargo script.

//// Variables
_Transporter = _this select 0;
_Unit = _this select 1;  // this is never referenced, is it?

//// Check for action
_stow_ActionAdded = _Transporter getVariable "stow_ActionAdded";
//player sideChat "Already on";  // debug. :)
if (_stow_ActionAdded) exitWith {};

//// If no action continue here
_Transporter setVariable ["stow_ActionAdded", true];

_CargoAction = _Transporter addAction [("<t color=""#00A0FA"">" + ("Stow Vehicle") + "</t>"), "custom\VehicleStow\Engine.sqf",["stow"],1,false,true,"","(!isEngineOn _target) && !(vehicle _this == _target)"]; 

//// remove Action
waitUntil {(_Unit distance _Transporter > 20) || !(alive _Unit) || !(alive _Transporter)};
_Transporter removeAction _CargoAction;
_Transporter setVariable ["stow_ActionAdded", false];
