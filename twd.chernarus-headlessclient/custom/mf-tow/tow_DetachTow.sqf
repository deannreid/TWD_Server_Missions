/**
 * mf-tow/tow_DetachTow.sqf
 * The action for detaching the tow from another vehicle. 
 *
 * Created by Matt Fairbrass (matt_d_rat)
 * Version: 1.1.2
 * MIT Licence
 **/
 
private ["_vehicle","_started","_finished","_animState","_isMedic","_vehicleNameText","_towTruckNameText","_towTruck","_isTowing","_hasToolbox"];

if(DZE_ActionInProgress) exitWith { cutText [(localize "str_epoch_player_96") , "PLAIN DOWN"] };
DZE_ActionInProgress = true;

player removeAction s_player_towing;
s_player_towing = 1;

// Tow Truck
_towTruck = _this select 3;
_towTruckNameText = [_towTruck] call MF_Tow_Get_Vehicle_Name;

// exit if no vehicle is in tow.
_isTowing = _towTruck getVariable ["MFTowIsTowing", false];

if(_isTowing) then {

	// Select the vehicle currently in tow
	_vehicle = _towTruck getVariable ["MFTowVehicleInTow", objNull];

	if(!(isNull _vehicle)) then {
		_vehicleNameText = [_vehicle] call MF_Tow_Get_Vehicle_Name;
		_finished = false;		
		_hasToolbox = "ItemToolbox" in (items player);
		
		// Check the player has a toolbox
		if(!_hasToolbox) exitWith {
			cutText ["Cannot dettach tow without a toolbox.", "PLAIN DOWN"];
		};
		
		[_towTruck] call MF_Tow_Animate_Player_Tow_Action;

		r_interrupt = false;
		_animState = animationState player;
		r_doLoop = true;
		_started = false;

		while {r_doLoop} do {
			_animState = animationState player;
			_isMedic = ["medic",_animState] call fnc_inString;
			if (_isMedic) then {
				_started = true;
			};
			if (_started and !_isMedic) then {
				r_doLoop = false;
				_finished = true;
			};
			if (r_interrupt) then {
				detach player;
				r_doLoop = false;
			};
			sleep 0.1;
		};
		r_doLoop = false;

		if(!_finished) then {
			r_interrupt = false;
			
			if (vehicle player == player) then {
				[objNull, player, rSwitchMove,""] call RE;
				player playActionNow "stop";
			};
		};

		if (_finished) then {
			detach _vehicle;
			detach player;
			_vehicle lock false; // Enable players to re-enter the vehicle now it has been detached.
						
			_vehicle setVariable ["MFTowInTow", false, true];
			_towTruck setVariable ["MFTowIsTowing", false, true];
			_towTruck setVariable ["MFTowVehicleInTow", objNull, true];
			cutText [format["%1 has been detached from %2.", _vehicleNameText, _towTruckNameText], "PLAIN DOWN"];
			
			_vehicle setvelocity [0,0,1];
		};
	} else {
		_towTruck setVariable ["MFTowIsTowing", false, true];
		_towTruck setVariable ["MFTowVehicleInTow", objNull, true];	
	};
} else {
	cutText ["No vehicles in tow.", "PLAIN DOWN"];
};
DZE_ActionInProgress = false;
s_player_towing = -1;