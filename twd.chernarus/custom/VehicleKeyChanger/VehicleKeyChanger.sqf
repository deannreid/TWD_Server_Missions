/***********************************/ 	
/* Vehicle Key Changer v1.3        */
/* Written by OtterNas3            */
/* January, 11, 2014               */
/* Last update: 02/20/2014         */
/***********************************/


/* Setup the private variables */
private ["_magazinesPlayer","_max","_j","_actionArray","_targetVehicle","_targetVehicleID","_targetVehicleUID","_playerKeys","_playerKeysDisplayName","_targetVehicleKeyName","_itemKeyName","_targetVehicleClassname","_targetVehiclePos","_targetVehicleDir","_Price","_claimingPrice"];

/* Remove the Action Menu entry */
player removeAction s_player_copyToKey;
s_player_copyToKey = 0;

/* Get the array and setup the variables */
_actionArray = _this select 3;
_targetVehicle = _actionArray select 0;
_targetVehicleID = _targetVehicle getVariable ["ObjectID","0"];
_targetVehicleUID = _targetVehicle getVariable ["ObjectUID","0"];

/* Check if the Vehicle is in the Database, if false exit */
if (_targetVehicleID == "0" && _targetVehicleUID == "0") exitWith {s_player_copyToKey = -1;};

/* Setup more variables */
_playerKeys = _actionArray select 1;
_playerKeysDisplayName = _actionArray select 3;
_targetVehicleKeyName = _actionArray select 4;
_itemKeyName = _actionArray select 5;
_Price = _actionArray select 6;
_claimingPrice = _actionArray select 7;
_targetVehicleClassname = typeOf _targetVehicle;
_targetVehiclePos = getPosATL _targetVehicle;
_targetVehicleDir = getDir _targetVehicle;

/* Setup the Key Names list to select from */
keyNameList = [];
for "_i" from 0 to (count _playerKeysDisplayName) -1 do {
	keyNameList set [(count keyNameList), _playerKeysDisplayName select _i];
};

/* Setup the Key Numbers list to select from */
keyNumberList = [];
for "_i" from 0 to (count _playerKeys) -1 do {
	keyNumberList set [(count keyNumberList), _playerKeys select _i];
};

/* Resetting menu variables*/
keyNameSelect = "";
exitscript = true;
snext = false;

/* Creating the menu */
copyMenu =
{
	private ["_keyMenu","_keyArray"];
	_keyMenu = [["",true], ["Change Vehicle to Key:", [-1], "", -5, [["expression", ""]], "1", "0"]];
	for "_i" from (_this select 0) to (_this select 1) do
	{
		_keyArray = [format['%1', keyNameList select (_i)], [_i - (_this select 0) + 2], "", -5, [["expression", format ["keyNameSelect = keyNameList select %1; keyNumberSelect = keyNumberList select %1", _i]]], "1", "1"];
		_keyMenu set [_i + 2, _keyArray];
	};
	_keyMenu set [(_this select 1) + 2, ["", [-1], "", -5, [["expression", ""]], "1", "0"]];
	if (count keyNameList > (_this select 1)) then
	{
		_keyMenu set [(_this select 1) + 3, ["Next", [12], "", -5, [["expression", "snext = true;"]], "1", "1"]];
	} else {
		_keyMenu set [(_this select 1) + 3, ["", [-1], "", -5, [["expression", ""]], "1", "0"]];
	};
	_keyMenu set [(_this select 1) + 4, ["Exit", [13], "", -5, [["expression", "keyNameSelect = 'exitscript';"]], "1", "1"]];
	showCommandingMenu "#USER:_keyMenu";
};

/* Wait for the player to select a Key from the list */
_j = 0;
_max = 10;
if (_max > 9) then {_max = 10;};
while {keyNameSelect == ""} do {
	[_j, (_j + _max) min (count keyNameList)] call copyMenu;
	_j = _j + _max;
	waitUntil {keyNameSelect != "" || snext};
	snext = false;
};

/* Player selected a Key, lets make the Vehicle update call */
if (keyNameSelect != "exitscript") then {
	
	/* Check again for the needed TinBar or claiming price and remove em from the players inventory */
	_magazinesPlayer = magazines player;
	if (_Price != "0") then {
		if (_Price in _magazinesPlayer) then {
			[player, _Price, 1] call BIS_fnc_invRemove;
			systemChat (format["Keychange costs 1 %1, thanks for your Payment!", _Price]);
		} else {
			systemChat (format["Keychange costs 1 %1, you had it and tried to trick the system - Keychange for this Vehicle disabled!", Price]);
			_targetVehicle setVariable ["VKC_disabled", 1, true];
			s_player_copyToKey = -1;
			breakOut "exit";
		};
	};
	if (_claimingPrice != "0") then {
		if (_claimingPrice in _magazinesPlayer) then {
			[player, _claimingPrice, 1] call BIS_fnc_invRemove;
			systemChat (format["Claiming Vehicle costs 1 %1, thanks for your Payment!", _claimingPrice]);
		} else {
			systemChat (format["Claiming Vehicle costs 1 %1, you had it and tried to trick the system - Claiming for this Vehicle disabled!", Price]);
			_targetVehicle setVariable ["VKC_claiming_disabled", 1, true];
			s_player_copyToKey = -1;
			breakOut "exit";
		};
	};
	
	/* We got the Money lets do our Job */
	/* Lock the vehicle */
	_targetVehicle setVehicleLock "LOCKED";
	
	/* The super duper OneForAllAnimation... */
	player playActionNow "Medic";
	
	/* Remove the Key from the Toolbelt of the player and put it in the Backpack - No Backpack and the Key gets lost */
	if (_itemKeyName != "0") then {
		if (!isNull (unitBackpack player)) then {
			[player, _itemKeyName, 1] call BIS_fnc_invRemove;
			(unitBackpack (vehicle player)) addWeaponCargoGlobal [_itemKeyName, 1];
			systemChat (format["%1 has been moved to your Backpack", _targetVehicleKeyName]);
		};
	};
	
	/* This calls the custom update function which we put it in server_updateObject.sqf */
	PVDZE_veh_Update = [_targetVehicle, "vehiclekey", player, _targetVehicleClassname, keyNumberSelect, keyNameSelect, _targetVehicleID, _targetVehicleUID]; 
	publicVariableServer "PVDZE_veh_Update"; 

	/* Inform the player about the success and tell him to check the Key */
	systemChat (format["Changed Vehicle Key to %1", keyNameSelect]);
	if (_targetVehicleKeyName != "0") then {
		systemChat (format["Please check Vehicle function with %1 before you throw away %2!", keyNameSelect, _targetVehicleKeyName]);
	};
};

/* Reset the action menu variable for a new run */
s_player_copyToKey = -1;

/**************************************/
/* That's it, hope you enjoy this Mod */
/*                                    */
/* Yours sincerly,                    */
/* Otter                              */
/**************************************/