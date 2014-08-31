/*------------------------------------*/
/* JAEM                               */
/* Just another Chopper-Evac Mod v1.4 */
/* OtterNas3                          */
/* 01/14/2014                         */
/* Last update: 06/14/2014            */
/*------------------------------------*/

private ["_evacCallerID","_evacCallerUID","_evacFields","_evacFieldID"];

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
evac_minDistance = 5000;
/////////////////////////////////////////////////
///  Allowed Choppers to use as Evac-Chopper  ///
evac_AllowedChoppers = [
	"AH1Z","AH64D_EP1","AH64D","AH64D_Sidewinders","AH6X_DZ",
	"AH6X_EP1","AH6J_EP1","AW159_Lynx_BAF","BAF_Apache_AH1_D","BAF_Merlin_HC3_D",
	"CH_47F_BAF","CH_47F_EP1","CH_47F_EP1_DZ","CH_47F_EP1_DZE","CSJ_GyroC",
	"CSJ_GyroCover","CSJ_GyroP","Ka137_MG_PMC","Ka137_PMC","Ka52",
	"Ka52Black","Ka60_GL_PMC","Ka60_PMC","Mi17_CDF","Mi17_Civilian",
	"Mi17_Civilian_DZ","Mi17_DZ","Mi17_Ins","Mi17_medevac_CDF","Mi17_medevac_INS",
	"Mi17_medevac_RU","Mi17_rockets_RU","Mi17_TK_EP1","Mi17_UN_CDF_EP1","Mi171Sh_CZ_EP1",
	"Mi171Sh_rockets_CZ_EP1","Mi24_D","Mi24_D_TK_EP1","Mi24_P","Mi24_V",
	"MH60S","MH6J_DZ","MH6J_EP1","MV22","MV22_DZ",
	"pook_H13_medevac","pook_H13_medevac_CDF","pook_H13_medevac_TAK","pook_H13_medevac_INS","pook_H13_medevac_UNO",
	"pook_H13_medevac_PMC","pook_H13_medevac_GUE","pook_H13_medevac_CIV","pook_H13_medevac_CIV_RU","pook_H13_gunship",
	"pook_H13_gunship_CDF","pook_H13_gunship_UNO","pook_H13_gunship_PMC","pook_H13_gunship_GUE","pook_H13_gunship_TAK",
	"pook_H13_gunship_INS","pook_H13_transport","pook_H13_transport_CDF","pook_H13_transport_UNO","pook_H13_transport_PMC",
	"pook_H13_transport_GUE","pook_H13_transport_TAK","pook_H13_transport_INS","pook_H13_civ","pook_H13_civ_white",
	"pook_H13_civ_slate","pook_H13_civ_black","pook_H13_civ_yellow","pook_H13_civ_ru","pook_H13_civ_ru_white",
	"pook_H13_civ_ru_slate","pook_H13_civ_ru_black","pook_H13_civ_ru_yellow","UH1H_DZ","UH1H_DZE",
	"UH1H_TK_EP1","UH1H_TK_GUE_EP1","UH1Y_DZ","UH1Y_DZE","UH60M_EP1",
	"UH60M_EP1_DZ","UH60M_EP1_DZE","UH60M_MEV_EP1"
];
/////////////////////////////////////////////////
/////////////// DONT EDIT BELOW ! ///////////////
/////////////////////////////////////////////////

/* Needed functions in Evac-Chopper scripts */

/*Get position depending on Surface is Water or Land */
ON_fnc_GetPos = {
	private ["_pos","_obj"];
	
	if (isNil {_this select 0}) exitWith {[0,0,0]};

	_obj = _this select 0;
	_pos = getPosASL _obj;

	if !(surfaceIsWater _pos) then {
		_pos =  ASLToATL _pos;
	};
	_pos
};

/* This checks PlayerUID for having characters in it (Arma anniversary edition) */
/* As i took this from RimBlock his scripts i gave Credits to him here */
/* dont know who wrote it first */
ON_fnc_convertUID = {
	private["_number_string","_string_array","_result","_num", "_playertemp"];   // Setup the local variables 

	_playertemp = _this select 0;  // Grab the first parameter sent to the function.
	_number_string = getPlayerUID _playertemp ; 
	_string_array = toArray _number_string;  // Convert the PlayerUID string to a numberic unicode array.
	_result = ""; 

	for "_i" from 0 to ((count _string_array) - 1) step 1 do { // Step backwards through the array.
		_num = ((_string_array select _i) - 48); // Subtract 48 (HEX 30) from the unicode value in the element.

		if (_num > 9) then { // If the result is greater than 9 then change it to 9
			_num = 9;
		};

		_result = _result + str(_num); // convert the number to a string and concatenate it to the result.
	};
	_result // Return the result.
};
  

/* Wait for the player full ingame so we can do checks an add the action-menu entry */
waitUntil {!isNil "dayz_animalCheck"};

/* Wait until the player recieves the publicVarible from the Server! */
waitUntil {!isNil "PVDZE_EvacChopperFields"};

/* Store the current Evac-Fields into a local variable for checks */
_evacFields = PVDZE_EvacChopperFields;

/* Checking if player has a Evac-Chopper to decide if we show the Call-Evac action menu */
_evacCallerID = (player getVariable ["CharacterID","0"]);
_evacCallerUID = ([player] call ON_fnc_convertUID);
playerHasEvacField = false;
playersEvacField = objNull;
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
evac_callfunctions = false;
evacfunctions = false;


/* Starting the check loop */
while{true} do {
	sleep 3;

	if ((vehicle player) == player) then {
		
		if (!isNull cursorTarget) then {

			if (evac_callFunctions) then {
				player removeAction s_player_evacCall;
				s_player_evacCall = -1;
				evac_callFunctions = false;
			};

			if ((typeOf cursorTarget) in evac_AllowedChoppers) then {

				if (player distance cursorTarget <= 10) then {

					if (!isEngineOn cursorTarget) then {
						evac_cTarget = cursorTarget;
						evac_vehicleKey = evac_cTarget getVariable ["CharacterID","0"];
					
						if (evac_vehicleKey != "0") then {
							evac_key_colors = ["ItemKeyYellow","ItemKeyBlue","ItemKeyRed","ItemKeyGreen","ItemKeyBlack"];
							evac_temp_keys = [];
							evac_itemsPlayer = items player;
						
							{
								
								if (configName(inheritsFrom(configFile >> "CfgWeapons" >> _x)) in evac_key_colors) then {
									evac_ownerKeyId = getNumber(configFile >> "CfgWeapons" >> _x >> "keyid");
									evac_keyName = getText(configFile >> "CfgWeapons" >> _x >> "displayName");
									evac_temp_keys set [count evac_temp_keys,str(evac_ownerKeyId)];
								};
							} forEach evac_itemsPlayer;
						
							evac_hasKey = evac_vehicleKey in evac_temp_keys;
						
							if (evac_hasKey) then {
								evacFunctions = true;
							
								if (s_player_makeEvacChopper < 0) then {
									s_player_makeEvacChopper = player addAction [("<t color=""#0000FF"">" + ("Set Evac-Chopper") + "</t>"),"custom\JAEM\SetEvacChopper.sqf",evac_cTarget,-1000,false,false,"",""];
								};
					
								if (playerHasEvacField) then {
									
									if ((evac_cTarget distance playersEvacField) <= 10) then {
							
										if (s_player_clearEvacChopper < 0) then {
											s_player_clearEvacChopper = player addAction [("<t color=""#0000FF"">" + ("Clear Evac-Chopper") + "</t>"),"custom\JAEM\ClearEvacChopper.sqf",evac_cTarget,-1001,false,false,"",""];
										};
								
									} else {
										player removeAction s_player_clearEvacChopper;
										s_player_clearEvacChopper = -1;
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
								evacFunctions = false;
							};
					
						} else {
							
							if (evacFunctions) then {
								player removeAction s_player_makeEvacChopper;
								s_player_makeEvacChopper = -1;
								player removeAction s_player_clearEvacChopper;
								s_player_clearEvacChopper = -1;
								evacFunctions = false;
							};
						};
					
					} else {
						
						if (evacFunctions) then {
							player removeAction s_player_makeEvacChopper;
							s_player_makeEvacChopper = -1;
							player removeAction s_player_clearEvacChopper;
							s_player_clearEvacChopper = -1;
							evacFunctions = false;
						};
					};
				
				} else {
					
					if (evacFunctions) then {
						player removeAction s_player_makeEvacChopper;
						s_player_makeEvacChopper = -1;
						player removeAction s_player_clearEvacChopper;
						s_player_clearEvacChopper = -1;
						evacFunctions = false;
					};
				};
			} else {
				
				if (evacFunctions) then {
					player removeAction s_player_makeEvacChopper;
					s_player_makeEvacChopper = -1;
					player removeAction s_player_clearEvacChopper;
					s_player_clearEvacChopper = -1;
					evacFunctions = false;
				};
			};
		};
	
	
		if (playerHasEvacField) then {
	
			if (isNull cursorTarget) then {
				
				if (evacFunctions) then {
					player removeAction s_player_makeEvacChopper;
					s_player_makeEvacChopper = -1;
					player removeAction s_player_clearEvacChopper;
					s_player_clearEvacChopper = -1;
					evacFunctions = false;
				};
				
				if (speed player < 1) then {
					
					if (vehicle player == player) then {
						
						if ((player distance playersEvacField) >= evac_MinDistance) then {
							
							if (evac_needRadio == 1) then {
								evac_call_itemsPlayer = items player;
								evac_call_hasRadio = "ItemRadio" in evac_call_itemsPlayer;
								
								if (evac_call_hasRadio) then {
									evac_callFunctions = true;
									
									if (s_player_evacCall < 0) then {
										s_player_evacCall = player addAction [("<t color=""#0000FF"">" + ("Call Evac-Chopper") + "</t>"),"custom\JAEM\CallEvacChopper.sqf",[],-1000,false,false,"",""];
									};
								
								} else {
									evac_callFunctions = false;
									player removeAction s_player_evacCall;
									s_player_evacCall = -1;
								};
							
							} else {
								evac_callFunctions = true;
								
								if (s_player_evacCall < 0) then {
									s_player_evacCall = player addAction [("<t color=""#0000FF"">" + ("Call Evac-Chopper") + "</t>"),"custom\JAEM\CallEvacChopper.sqf",[],-1000,false,false,"",""];
								};
							};
						
						} else {
							
							if (evac_callFunctions) then {
								player removeAction s_player_evacCall;
								s_player_evacCall = -1;
								evac_callFunctions = false;
							};
						};
					
					} else {
						
						if (evac_callFunctions) then {
							player removeAction s_player_evacCall;
							s_player_evacCall = -1;
							evac_callFunctions = false;
						};
					};
				
				} else {
					
					if (evac_callFunctions) then {
						player removeAction s_player_evacCall;
						s_player_evacCall = -1;
						evac_callFunctions = false;
					};
				};
			
			} else {
				
				if (evac_callFunctions) then {
					player removeAction s_player_evacCall;
					s_player_evacCall = -1;
					evac_callFunctions = false;
				};
			};
		
		} else {
			
			if (evac_callFunctions) then {
				player removeAction s_player_evacCall;
				s_player_evacCall = -1;
				evac_callFunctions = false;
			};
		};
	} else {
		
		if (evac_callFunctions) then {
			player removeAction s_player_evacCall;
			s_player_evacCall = -1;
			evac_callFunctions = false;
		};
		
		if (evacFunctions) then {
			player removeAction s_player_makeEvacChopper;
			s_player_makeEvacChopper = -1;
			player removeAction s_player_clearEvacChopper;
			s_player_clearEvacChopper = -1;
			evacFunctions = false;
		};
	};
};
