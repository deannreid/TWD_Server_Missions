if (isServer) exitWith {};
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// walkamongstthedead.sqf by Sandbird (Apr 20 2014)
// Camouflage your player with zombie guts to avoid detection, for DayZ Epoch 1.0.4.2 (should work for other dayz games)
// 
// Credits: Enhanced Water Bottle Filling - by BDC - Aug 11 2013, for DayZ 1.7.7.1
//
// This script allows the player to cover himself with zombie parts to avoid detection by zombies.
// While the 'mod' is active hummanity level will drop continuously, until the player washes himself
// with a water bottle, or swim, or stand next to a well/pond. 
// Rain can wash away your camo as well. If it starts to rain, depending on the intensity of the rain
// you'll see a timer on how long it will take for the rain to wash away your camo. Get inside a building
// if you want to keep it.
//
//  :: Configurable Variables ::
//   _type : array that holds the idle sounds the player will make (female sounds have to be copied in the mission file, and add the sound in the description.ext)
//   _chance : chance in making random zombie sounds (default: 10, 1 out of 10 chance to make a sound. Notification message will be shown only once to the player.)
//   _canClean : array that holds water sourece you can use to clean yourself
//   [player,-1,10] call player_humanityChange; : amount of hummanity player loses under the effect (-1 every 10 sec)
//   _HeavyRainLoseCamo = 12; : Time in seconds to lose camo in a very heavy rain; default is 12
//   _MediumRainLoseCamo = 18; : Time in seconds to lose camo in a medium/moderate rain; default is 18
//   _LightRainLoseCamo = 26; : Time in seconds to lose camo in a light rain; default is 26
//   _zombiePartsNeeded = 2; : Number of zombie parts in order to apply the camo. (change that in smear_guts.sqf)
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
[] spawn {
	private ["_txt","_EH_Fired"];
	waitUntil {(!isNil "sand_USEDGUTS")};
	if (isNil "hasGutsOnHim") then {hasGutsOnHim = false;};
	if (isNil "sand_washed") then {sand_washed = false;};
	if (isNil "s_player_cleanguts") then {s_player_cleanguts = -1;};
	
	while {true} do {
		waitUntil {sleep 0.5;(hasGutsOnHim)};
		sand_SkinType = typeOf player;
		[] spawn sand_shieldON;
		[] spawn sand_makeSounds;
		[] spawn sand_zIcon;
		[] spawn sand_cleanCheck;
		_EH_Fired = player addEventHandler ["Fired", {
			cutText [format["You fired your weapon. Zombies are aware of you now."], "PLAIN DOWN"];
			_txt = "Get out of combat for the effect to return.";
			systemChat ("Zed Ninja: "+str _txt+"");
			hasGutsOnHim = false;
		}];
		
		waitUntil {sleep 0.5;((!hasGutsOnHim)||(typeOf player != sand_SkinType))};
		// Lose camo if player changes clothes
		if (typeOf player != sand_SkinType) then {
			[] spawn {
				sand_washed = true;
				hasGutsOnHim = false;
				_txt = "Skin change detected! You just lost your camo...";
				systemChat ("Zombie ninja: "+str _txt+"");
				waitUntil {!sand_washed};
				hasGutsOnHim = true;
			};
		};
		[] spawn sand_shieldOFF;
		player removeEventHandler ["Fired", _EH_Fired];
	};
};

sand_zIcon = {
	private ["_control","_combatVal","_displayZ"];
	disableSerialization;
	
	 5 cutRsc ["zCamoStatusGUI","PLAIN"];
	_displayZ = uiNamespace getVariable 'zCamo_GUI_display';
	_control = 	_displayZ displayCtrl 1;
	_control ctrlShow true;

	while {true} do {
		_combatVal =	1 - dayz_combat;
		if (_combatVal == 0) then {
			_control call player_guiControlFlash;
		};
		sleep 0.5;
		if(sand_washed) exitWith {
			_control ctrlShow false;
		};
	};
};

sand_shieldOFF = {
	private ["_txt"];
	_txt = "Zombies are aware of you now.";
	systemChat ("Zombie ninja: "+str _txt+"");
	//cutText [_txt,"PLAIN DOWN"];
	player_zombieCheck = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\player_zombieCheck.sqf';
	player_zombieAttack = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\player_zombieAttack.sqf';
};

sand_shieldON = {
	private ["_txt"];
	_txt = "Zombies think you are one of them.";
	systemChat ("Zombie ninja: "+str _txt+"");
	//cutText [_txt,"PLAIN DOWN"];
	player_zombieCheck = {};
	player_zombieAttack = {};
};

sand_makeSounds = {
	private ["_type","_chance","_sound","_isWoman","_plsound"];
	
	_isWoman = getText(configFile >> "cfgVehicles" >> (typeOf player) >> "TextPlural") == "Women";	
	if (isNil 'make_sounds_loop') then {
		while {true} do {
			if (!hasGutsOnHim) exitWith {make_sounds_loop = nil;};
			make_sounds_loop = true;
			
			if (_isWoman) then {
				_type = ["wzombie1","wzombie2"];
			} else {
				_type = ["idle_0","idle_18","idle_20","idle_24","idle_26","idle_29","idle_32","idle_35","attack_9"];
			};
			
			_plsound  = _type call BIS_fnc_selectRandom;
			_chance = ceil (random 10);
			
			if ((round(random _chance) == _chance) or (_chance == 0)) then {
				_sound = "z_" + _plsound;
				[nil,player,rSAY,[_sound, 10]] call RE;
				if (isNil "showNotificationOnce") then {systemChat ("Zombie ninja: You will be making random zombie sounds like this one."); showNotificationOnce = false;};
			};
			[player,-1,10] call player_humanityChange;
			sleep 1;
		};
	};
};

sand_cleanCheck = {
private ["_isRain","_RefillTime","_countdown","_RainAmt","_startRefillTime","_onLadder","_canDo","_playerPos","_isWater","_canClean","_HeavyRainLoseCamo","_MediumRainLoseCamo","_LightRainLoseCamo"];

while {true} do {
	if(hasGutsOnHim and (!sand_washed)) then {
		  _onLadder 	= (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
		  _canDo    	= (!r_drag_sqf and !r_player_unconscious and !_onLadder);
			_playerPos 	= getPosATL player;
			_isWater		= (surfaceIsWater _playerPos) or dayz_isSwimming;
			_canClean		= count nearestObjects [_playerPos, ["Land_pumpa","Land_water_tank","Land_Reservoir_EP1","Land_Misc_Well_C_EP1","Land_Misc_Well_L_EP1"], 4] > 0;
			_isRain = false;
			// Configurable variables
			_HeavyRainLoseCamo 	= 12; // Time in seconds to lose camo in a very heavy rain; default is 12
			_MediumRainLoseCamo = 18; // Time in seconds to lose camo in a medium/moderate rain; default is 18
			_LightRainLoseCamo 	= 26; // Time in seconds to lose camo in a light rain; default is 26
			
			if (_isWater) exitwith { cutText [format["You have successfully washed away the zombie parts from your body."], "PLAIN DOWN"]; hasGutsOnHim = false; sand_washed = true;};

			// Gather global weather (rain) variable; ranges from 0 to 1 (none to very, very hard rain)
			_RainAmt = drn_var_DynamicWeather_Rain; // referenced from \z\addons\dayz_code\system\DynamicWeatherEffects.sqf
			
			// If global rain amount is higher than 0, then set flag isRain to true
			if (_RainAmt > 0) then { _isRain = true; };
			
			if(!isNull player) then {
			  if((speed player <= 1) && _canClean && _canDo) then {
			      if (s_player_cleanguts < 0) then {
			          s_player_cleanguts = player addaction["<t color=""#ff4444"">" + "Clean Guts" + "</t>","custom\walkamongstthedead\usewatersupply.sqf","",5,false,true,"",""];
			      };
			  } else {
			      player removeAction s_player_cleanguts;
			      s_player_cleanguts = -1;
			  };
			};

			// It's raining! Remove the zombie parts
			if (!dayz_inside and _isRain) then {
			  
			  // Set initial loop variables
			  _startRefillTime = time;
			  r_interrupt = false;
			  r_doLoop = true;
			   
			  // Set refill time depending upon degree of rain (heavy, medium, or light)
			  _RefillTime = _LightRainLoseCamo; // set as default
			  if (_RainAmt > 0.53) then { // heavy rain
				_RefillTime = _HeavyRainLoseCamo; };
			  if (_RainAmt > 0.25) then { // medium rain
			    _RefillTime = _MediumRainLoseCamo; }; 
			  if (_RainAmt < 0.25) then { // light rain
			    _RefillTime = _LightRainLoseCamo; }; 
			  
			  _countdown = _RefillTime;
			  // Loop thru required time to fill and check for interruptions
				while {r_doLoop} do { 
					if (!dayz_inside and hasGutsOnHim) then {
						_countdown = (_countdown - 1);
						// Inform the player how long it will take till camo wears off
						if ((time - _startRefillTime) <= _RefillTime) then {
								 cutText [format["Its raining. Your zombie camo is getting washed away in %1 seconds.\nQuickly! Get inside a building.",str(_countdown)], "PLAIN DOWN"];
						} else {              
								 cutText [format["Your zombie camo got washed away by the rain."], "PLAIN DOWN"];
								 r_doLoop = false;
								 hasGutsOnHim = false;
								 sand_washed = true;
						};
						_RainAmt = drn_var_DynamicWeather_Rain; // Check for rain stopping
						
						if (_RainAmt < 0.025) exitWith {
							cutText [format["The rain has stopped. Your zombie camo didnt wash off."], "PLAIN DOWN"];
							r_doLoop = false;
							r_action = false;
						};
					};
		      if (dayz_inside and hasGutsOnHim) exitWith {
						cutText [format["Good, your zombie camo is safe now."], "PLAIN DOWN"];
						r_doLoop = false;
						r_action = false;
		      };
			  sleep 1;          
				}; // end (timed) while loop
			};
	}else{
		if (dayz_combat != 1) then {hasGutsOnHim = true;  player removeAction s_player_cleanguts; s_player_cleanguts = -1;};
		if (sand_washed) then  {hasGutsOnHim = false; player removeAction s_player_cleanguts; s_player_cleanguts = -1;};		
	};
	sleep 1;
};


};
