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

//Lift

BTC_lift_pilot   = [];
BTC_lift         = 1;
BTC_lifted       = 0;
BTC_lift_min_h   = 0;
BTC_lift_max_h   = 40;
BTC_lift_radius  = 5;
BTC_Liftable     = ["Motorcycle","Car","Truck","Wheeled_APC","Tracked_APC","Air"];
BTC_Hud_Cond     = false;
BTC_HUD_x        = (SafeZoneW+2*SafeZoneX) + 0.045;
BTC_HUD_y        = (SafeZoneH+2*SafeZoneY) + 0.045;
[] execVM "custom\=BTC=_Logistic\=BTC=_Lift\=BTC=_LiftInit.sqf";


//Functions
BTC_get_liftable_array =
{
    private ["_array","_chopper"];
    _chopper = _this select 0;
	_array   = [];
	switch (typeOf _chopper) do
	{
		case "AH6X_DZ"        : {_array = ["Motorcycle"];};
		case "MH6J_DZ"         : {_array = ["Motorcycle"];};
		case "UH1H_DZE"        : {_array = ["Motorcycle","Car"];};
		case "UH1H_DZ"        : {_array = ["Motorcycle","Car"];};
		case "UH1Y_DZE"        : {_array = ["Motorcycle","Car"];};
		case "UH1Y_DZ"        : {_array = ["Motorcycle","Car"];};
		case "UH60M_EP1_DZE"   : {_array = ["Motorcycle","Car","Truck","Wheeled_APC","Tracked_APC"];};
		case "UH60M_EP1_DZ"   : {_array = ["Motorcycle","Car","Truck","Wheeled_APC","Tracked_APC"];};
		case "BAF_Merlin_HC3_D": {_array = ["Motorcycle","Car","Truck","Wheeled_APC","Tracked_APC"];};
		case "MH60S"           : {_array = ["Motorcycle","Car","Truck","Wheeled_APC","Tracked_APC"];};
		case "CH_47F_EP1_DZ"  :  {_array = ["LandVehicle"];};
		case "CH_47F_EP1_DZE"  : {_array = ["LandVehicle"];};
		case "Mi17_Civilian_DZ": {_array = ["LandVehicle"];};
		case "Mi17_DZ"         : {_array = ["LandVehicle"];};
		case "Mi17_DZE"        : {_array = ["LandVehicle"];};
	};
	_array
};

BTC_paradrop =
{
	private ["_chopper","_cargo","_chute_type","_height","_smoke","_chute"];

	_chopper          = _this select 0;
	_cargo      = _this select 1;
	_chute_type   = _this select 2;
	_chute = 0;
	
	_height = [_chopper, _cargo] call BTC_getHeight;
	
	diag_log format ["DEBUG BTC LIFT: Paradrop height: %1", _height];
	
	if (_height > 50) then {
		if (typeOf _chopper == "MH6J_DZ") then {
			_chute = createVehicle [_chute_type, [((position _chopper) select 0) - 5,((position _chopper) select 1) - 10,((position _chopper) select 2)- 4], [], 0, "NONE"];
		} else {
			_chute = createVehicle [_chute_type, [((position _chopper) select 0) - 5,((position _chopper) select 1) - 3,((position _chopper) select 2)- 4], [], 0, "NONE"];
		};
		_smoke        = "SmokeshellGreen" createVehicle position _chopper;
		_smoke attachto [_cargo, [0,0,0]]; 
		_cargo attachTo [_chute, [0,0,0]];
		while {_height > 20} do {
			sleep 0.1;
			_height = [_chopper, _cargo] call BTC_getHeight;
		};
		detach _cargo;
		
	};
};

BTC_getHeight = {
    private ["_height","_chopper","_cargo","_cargo_position","_cargo_position_asl","_objects"];
    _chopper = _this select 0;
	_cargo = _this select 1;
	
	_cargo_position = getpos(_cargo);
	_cargo_position_asl = getposASL(_cargo);
	//diag_log format ["DEBUG BTC LIFT: Get Cargo Pos: %1", _cargo_position];
	//diag_log format ["DEBUG BTC LIFT: Get Cargo Pos ASL: %1", _cargo_position_asl];
	_height = 0;

	//diag_log ("DEBUG BTC LIFT: Getting Objects");
	_objects = lineIntersectsWith [_cargo_position_asl, [(_cargo_position_asl select 0), (_cargo_position_asl select 1), -2000], _chopper, _cargo, true];
	//diag_log format ["DEBUG BTC LIFT: Objects: %1", _objects];
	if ((count _objects) > 0) then {
		//diag_log ("DEBUG BTC LIFT: Object count check true");
		_height = _cargo distance (_objects select 0);
	} else {
		//diag_log ("DEBUG BTC LIFT: Object count check false");
		_height = _cargo_position select 2;
	};
	//diag_log format ["DEBUG BTC LIFT: Pre _height: %1", _height];
	_height
};