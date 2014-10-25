// Code based on BTK Cargo script.

//// Wait until player ready, exit if server
waitUntil {!isNull player};
if (!local player) exitWith {};


///// Launch the init once
execVM "custom\VehicleStow\Init.sqf";