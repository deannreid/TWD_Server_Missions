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


private ["_chopper","_name_cargo","_cargo_pos","_rel_pos","_height","_text_action","_cargo"];
_cargo = (_this select 3) select 0;

if ((count (crew _cargo)) == 0) then {
	BTC_lifted = 1;

	_chopper = vehicle player;
	_chopper removeAction BTC_liftActionId;

	_name_cargo  = (_this select 3) select 1;

	_cargo_pos    = getPosATL _cargo;
	_rel_pos      = _chopper worldToModel _cargo_pos;
	_height       = (_rel_pos select 2) + 2.5;

	_cargo attachTo [_chopper, [0, 0, _height]];
	_chopper  setVariable ["BTC Lift Object", _cargo, true];
	vehicle player vehicleChat format ["%1 lifted", _name_cargo];
	_text_action = ("<t color=""#ED2744"">" + "Drop " + (_name_cargo) + "</t>");
	BTC_SganciaActionId = _chopper addAction [_text_action, "custom\=BTC=_Logistic\=BTC=_Lift\=BTC=_detachCargo.sqf", "", 7, false, false]; 
};