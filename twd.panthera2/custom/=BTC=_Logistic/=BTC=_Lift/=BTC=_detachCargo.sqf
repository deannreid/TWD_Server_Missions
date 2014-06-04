/*
Modified by Torndeco for DayZ Epoch
All credits & rights go to =BTC= Giallustio
Please don't bug original author about bugs that i have introduced.
*/


/*
Created by =BTC= Giallustio
Version: 0.52
Date: 05/02/2012
Visit us at: http://www.blacktemplars.altervista.org/
You are not allowed to modify this file and redistribute it without permission given by me (Giallustio).
*/

private ["_vel","_name_cargo","_chopper","_cargo","_cantsee"];
_chopper   = vehicle player;
_cargo = _chopper getVariable "BTC Lift Object";


_cantsee = lineIntersects [getposASL(_chopper), getposASL(_cargo), _chopper, _cargo];

if (!_cantsee) then {
	BTC_lifted = 0;
	_chopper removeAction BTC_SganciaActionId;
	detach _cargo;
	_vel =  velocity _chopper;
	_cargo setVelocity _vel;

	_name_cargo  = getText (configFile >> "cfgVehicles" >> typeof _cargo >> "displayName");
	vehicle player vehicleChat format ["%1 dropped", _name_cargo];
	[_chopper, _cargo, "ParachuteWest"] spawn BTC_paradrop;
};