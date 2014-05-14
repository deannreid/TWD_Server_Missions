private["_playerPos","_canDrink","_isPond","_isWell","_pondPos","_objectsWell","_objectsPond","_display","_stagnant_water_rates"];

// --------------------------
// Configuration
// --------------------------

_stagnant_water_rates = 35; // percent chance of having infected water (default = 25)

// --------------------------
// End of Configuration
// --------------------------

call gear_ui_init;
_playerPos = getPosATL player;
_canDrink = count nearestObjects [_playerPos, ["Land_pumpa","Land_water_tank"], 4] > 0;
_isPond = false;
_isWell = false;
_pondPos = [];
_objectsWell = [];

if (!_canDrink) then {
	_objectsWell = nearestObjects [_playerPos, [], 4];
	{
		//Check for Well
		_isWell = ["_well",str(_x),false] call fnc_inString;
		if (_isWell) then {_canDrink = true};
	} forEach _objectsWell;
};

if (!_canDrink) then {
	_objectsPond = nearestObjects [_playerPos, [], 50];
	{
		//Check for pond
		_isPond = ["pond",str(_x),false] call fnc_inString;
		if (_isPond) then {
			_pondPos = (_x worldToModel _playerPos) select 2;
			if (_pondPos < 0) then {
				_canDrink = true;
			};
		};
	} forEach _objectsPond;
};

if (_canDrink) then {
	if ((floor (random 100) < _stagnant_water_rates)) then {
	
		player playActionNow "PutDown";
		_nul = [objNull, player, rSAY, "drink_water"] call RE;
		r_player_infected = true;
		player setVariable["USEC_infected",true,true];
		player setVariable ["messing",[dayz_hunger,dayz_thirst],true];

		dayz_lastDrink = time;
		dayz_thirst = 0;

		//Ensure Control is visible
		_display = uiNamespace getVariable 'DAYZ_GUI_display';
		(_display displayCtrl 1302) ctrlShow true;
		cutText [(localize "STR_drink_stagnant_water"), "PLAIN DOWN"];
		
	} else {
		
		player playActionNow "PutDown";
		_nul = [objNull, player, rSAY, "drink_water"] call RE;
		dayz_lastDrink = time;
		dayz_thirst = 0;

		//Ensure Control is visible
		_display = uiNamespace getVariable 'DAYZ_GUI_display';
		(_display displayCtrl 1302) ctrlShow true;
		cutText [(localize "STR_drink_fresh_water"), "PLAIN DOWN"];
	};
};