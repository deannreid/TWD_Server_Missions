/*------------------------------------*/
/* JAEM                               */
/* Just another Chopper-Evac Mod v1.3 */
/* OtterNas3                          */
/* 01/14/2014                         */
/* Last update: 02/20/2014            */
/*------------------------------------*/

/* Wait for the player got his login Data to make sure he has a valid PlayerUID */
waitUntil {count PVDZE_plr_Login2 > 0};

private ["_evacCallerID","_evacCallerUID","_evacFields","_evacFieldID","_ownerKeyId","_itemsPlayer","_temp_keys","_key_colors","_hasKey","_cTarget","_vehicleKey","_evacChopperConfigArray","_hasRadio"];

/////////////////////////////////////////////////
/////////////////////////////////////////////////
// Edit these settings to fit your needs/likes //
/////////////////////////////////////////////////
/////////////////////////////////////////////////
/// Amount of Briefcases a Evac-Chopper costs ///
/////////// Any amount between 1-12 /////////////
evac_chopperPrice = 1;
/////////////////////////////////////////////////
////// Need a Radio to call Evac-Chopper? ///////
////// 1 = Need Radio | 0 = No need Radio ///////
evac_needRadio = 1;
/////////////////////////////////////////////////
// Evac-Zone marker type Smoke or Landingpad? ///
////////// 0 = Landingpad | 1 = Smoke ///////////
evac_zoneMarker = 0;
/////////////////////////////////////////////////
/// Minimum Distance to call for Evac-Chopper ///
///////// Dont set this lower then 500! /////////
evac_minDistance = 500;
/////////////////////////////////////////////////
/////////////// DONT EDIT BELOW ! ///////////////
/////////////////////////////////////////////////


/* Checking if player has a Evac-Chopper to decide if we show the Call-Evac action menu */
_evacCallerID = (player getVariable ["CharacterID","0"]);
_evacCallerUID = (getPlayerUID player);
playerHasEvacField = false;
_evacFields = nearestObjects [player, ["HeliHRescue"], 40000];
if ((count _evacFields) > 0) then
{
	{
		_evacFieldID = _x getVariable ["CharacterID", "0"];
		if (_evacCallerID == _evacFieldID || _evacCallerUID == _evacFieldID) then {
			playerHasEvacField = true;
			playersEvacField = _x;
		};
	} forEach _evacFields;
};

/* Reset Action-Menu cvars */
s_player_evacCall = -1;
s_player_makeEvacChopper = -1;
s_player_clearEvacChopper = -1;

/* Wait for the player full ingame so we can add the action-menu entry */
waitUntil {!isNil "dayz_animalCheck"};

/* Starting the check loop */
while{true} do {
	sleep 3;
	if (isNull cursorTarget && speed player < 1 && vehicle player == player && playerHasEvacField && (player distance playersEvacField) >= evac_MinDistance) then {
		if (evac_needRadio == 1) then {
			_itemsPlayer = items player;
			_hasRadio = "ItemRadio" in _itemsPlayer;
			if (_hasRadio) then {
				if (s_player_evacCall < 0) then {
					s_player_evacCall = player addAction [("<t color=""#0000FF"">" + ("Call Evac-Chopper") + "</t>"),"custom\JAEM\CallEvacChopper.sqf",[],-1,false,false,"",""];
				};
			} else {
				player removeAction s_player_evacCall;
				s_player_evacCall = -1;
			};
		} else {
			if (s_player_evacCall < 0) then {
				s_player_evacCall = player addAction [("<t color=""#0000FF"">" + ("Call Evac-Chopper") + "</t>"),"custom\JAEM\CallEvacChopper.sqf",[],-1,false,false,"",""];
			};
		};
	} else {
		player removeAction s_player_evacCall;
		s_player_evacCall = -1;
	};
	if (!isNull cursorTarget && vehicle player == player && cursorTarget isKindOf "Helicopter" && player distance cursorTarget <= 10 && !isEngineOn cursorTarget) then {
		_cTarget = cursorTarget;
		_vehicleKey = _cTarget getVariable ["CharacterID","0"];
		if (_vehicleKey != "0") then {
			_itemsPlayer = items player;
			_temp_keys = [];
			_key_colors = ["ItemKeyYellow","ItemKeyBlue","ItemKeyRed","ItemKeyGreen","ItemKeyBlack"];
			{
				if (configName(inheritsFrom(configFile >> "CfgWeapons" >> _x)) in _key_colors) then {
					_ownerKeyId = getNumber(configFile >> "CfgWeapons" >> _x >> "keyid");
					_keyName = getText(configFile >> "CfgWeapons" >> _x >> "displayName");
					_temp_keys set [count _temp_keys,str(_ownerKeyId)];
				};
			} forEach _itemsPlayer;
			_hasKey = _vehicleKey in _temp_keys;
			if (_hasKey) then {
				if (s_player_makeEvacChopper < 0) then {
					s_player_makeEvacChopper = player addAction [("<t color=""#0000FF"">" + ("Set Evac-Chopper") + "</t>"),"custom\JAEM\SetEvacChopper.sqf",_cTarget,-1,false,false,"",""];
				};
				if (playerHasEvacField && (_cTarget distance playersEvacField) <= 10) then {
					if (s_player_clearEvacChopper < 0) then {
						s_player_clearEvacChopper = player addAction [("<t color=""#0000FF"">" + ("Clear Evac-Chopper") + "</t>"),"custom\JAEM\ClearEvacChopper.sqf",_cTarget,-1,false,false,"",""];
					};
				} else {
					player removeAction s_player_clearEvacChopper;
					s_player_clearEvacChopper = -1;
				};
			} else {
				player removeAction s_player_makeEvacChopper;
				s_player_makeEvacChopper = -1;
				player removeAction s_player_clearEvacChopper;
				s_player_clearEvacChopper = -1;
			};
		} else {
			player removeAction s_player_makeEvacChopper;
			s_player_makeEvacChopper = -1;
			player removeAction s_player_clearEvacChopper;
			s_player_clearEvacChopper = -1;
		};
	} else {
		player removeAction s_player_makeEvacChopper;
		s_player_makeEvacChopper = -1;
		player removeAction s_player_clearEvacChopper;
		s_player_clearEvacChopper = -1;
	};
};