private ["_started","_finished","_animState","_isMedic","_num_removed","_lastUsed","_infectionChance","_disallowinVehicle","_bloodAmount","_useTime","_giveHumanity","_humanityAmount","_hospitalDistance","_ambulanceDistance","_hospitalEnable","_ambulanceEnable","_anywhereEnable"];
disableserialization;

//------------------------------------------------------------------------------------------------------------------------------------------------------------------\\
// CONFIG START																																						\\
//------------------------------------------------------------------------------------------------------------------------------------------------------------------\\
_useTime = 60; //Time in seconds before being able to use again.
_bloodAmount = 4000; //Amount of blood the bloodbag gives to player (gets multiplied in hosp/ambulance, so 4000 = 8000 in hospital and 6000 near ambulance)
_infectionChance = 30; //Chance of getting infected while using the bloodbag (0 = disabled, 40 = 40%, 100 = 100% etc)
_disallowinVehicle = true; //Do not allow usage in a vehicle. true = cannot use, false = can use in vehicle

_giveHumanity = false; //Give players humanity for self bloodbag. true = give humanity, false = do not give
_humanityAmount = 50; //Amount of humanity to give, if _giveHumanity = true

_hospitalDistance = 99999999999999; //Max distance within Hospital
_ambulanceDistance = 99999999999999; // Max. distance from ambulance (medical hmmwv, medical vodnik or medic van)
_hospitalEnable = 1; // 1 enables SelfBloodbag in hospitals (leave as 1 if you have _anywhereEnable = 1; and want to get bonuses near hospital)
_ambulanceEnable = 1; // 1 enables SelfBloodbag near ambulances (leave as 1 if you have _anywhereEnable = 1; and want to get bonuses near med vehicles)
_anywhereEnable = 1; // 1 enables SelfBloodBag anywhere (turns automatically on if _hospitalEnable = 0 and _ambulanceEnable = 0;)
//------------------------------------------------------------------------------------------------------------------------------------------------------------------\\
// CONFIG END																																						\\
// Do not change below unless you know what you are doing!!!																										\\
//------------------------------------------------------------------------------------------------------------------------------------------------------------------\\

if (dayz_combat == 1) exitwith { cutText [format["You are in combat and cannot perform that action!"], "PLAIN DOWN"]};
if (_disallowinVehicle && vehicle player != player) exitWith {cutText [format["You cannot use the bloodbag in a vehicle!"], "PLAIN DOWN"]};
if (r_player_blood == r_player_bloodTotal) exitwith {cutText ["You are not injured!","PLAIN DOWN"]};

private ["_nearHospital","_bloodMultiplier","_infectionMultiplier","_decke","_hospitalFound","_ambulanceFound","_display"];
_nearHospital = false;
_bloodMultiplier = 1; // Blood amount multiplier (Anywhere 1, Hospital 2, Ambulance 1.5, The Multiplier for Ambulance and Hospital get set later)
_infectionMultiplier = 1; // Multiplier for infectionchance. Anywhere 1, Hospital 0.5, Ambulance 0.75 (the formula is _infenctionChance * _infectionMultiplier so lower multiplier = lower chance)
if (_hospitalEnable == 0 && _ambulanceEnable == 0) then { // Check if _hospitalEnable & _ambulanceEnable disabled
    _anywhereEnable = 1;
};
if (_anywhereEnable == 1) then {
    _nearHospital = true;
}; 
if (_hospitalEnable == 1)  then { // if Hospital enabled
    _playerASL1 = getPosASL player;
    _playerASLx = _playerASL1  select 0;
    _playerASLy = _playerASL1  select 1;
    _playerASLz = _playerASL1  select 2;
    _playerASLz2 = _playerASLz + 40;
    _playerASL2 = [_playerASLx,_playerASLy,_playerASLz2];
    _decke = lineIntersects[_playerASL1,_playerASL2];
    _hospitalFound = count nearestObjects[player,["Land_A_Hospital"],_hospitalDistance]; //can add desired buildings here
    if (_hospitalFound > 0 && _decke) then {
        _nearHospital = true;
        _bloodMultiplier = 2; // multiplier to Bloodamount
        _infectionMultiplier = 0.5; //multiplier to Infectionchance
    };
}; 
if (_ambulanceEnable == 1)  then {
    _ambulanceFound = count nearestObjects[player,["GAZ_Vodnik_MedEvac","HMMWV_Ambulance","S1203_ambulance_EP1"],_ambulanceDistance]; //can add desired vehicles here
    if (_ambulanceFound > 0 ) then {
        _nearHospital = true;
        _bloodMultiplier = 1.5; // multiplier to Bloodamount
		_infectionMultiplier = 0.75; //multiplier to Infectionchance
    }; 
};
_bloodAmount = _bloodAmount * _bloodMultiplier; // Calculate bloodamount & Infectionchance with the multiplier
_infectionChance = _infectionChance * _infectionMultiplier;
 
if(!_nearHospital) exitWith { // Abort messegas if Conditions not met
    if (_hospitalEnable == 1 && _ambulanceEnable == 0) then {
        cutText [format["You need to be inside a hospital to do this!"], "PLAIN DOWN"];
    };
    if (_hospitalEnable == 0 && _ambulanceEnable == 1) then {
        cutText [format["You need to be near a medical vehicle to do this!"], "PLAIN DOWN"];
    };
    if (_hospitalEnable == 1 && _ambulanceEnable == 1) then {
        cutText [format["You need to be inside a hospital or near a medical vehicle to do this!"], "PLAIN DOWN"];
    };
};

if (isNil 'lastUsed') then {lastUsed = time};
if (time - lastUsed < _useTime && time - lastUsed != 0) exitwith {cutText [format["Not so fast! You can use bloodbag again in %1 seconds",(ceil(_useTime - (time - lastUsed)))],"PLAIN DOWN"]};

call fnc_usec_medic_removeActions;
r_action = false;
[1,1] call dayz_HungerThirst;
if (vehicle player == player) then {
	//not in a vehicle
	player playActionNow "Medic";
};
r_interrupt = false;
_animState = animationState player;
r_doLoop = true;
_started = false;
_finished = false;
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
		r_doLoop = false;
	};
	if (vehicle player != player) then {
		sleep 3;
		r_doLoop = false;
		_finished = true;
	};
	sleep 0.1;
};
r_doLoop = false;

if (_finished) then {
	_num_removed = ([player,"ItemBloodbag"] call BIS_fnc_invRemove);
	if(_num_removed == 1) then {
		lastUsed = time;
		if (vehicle player != player) then {
			_display = findDisplay 106;
			_display closeDisplay 0;
		};
		r_player_lowblood = false;
		r_player_blood = r_player_blood + _bloodAmount; //set players LOCAL blood to a certain ammount
		
		if(r_player_blood > r_player_bloodTotal) then {
			r_player_blood = r_player_bloodTotal; // If players blood is greater then max amount allowed set it to max allowed (this check keeps an error at bay)
		};
		player setVariable["USEC_BloodQty",r_player_blood,true]; //save this blood ammount to the database
		//Restore player sound + vision
		10 fadeSound 1;
		"dynamicBlur" ppEffectAdjust [0]; "dynamicBlur" ppEffectCommit 5;
		"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 1]];"colorCorrections" ppEffectCommit 5;
	
		if (floor(random(100)+1) <= _infectionChance) then { //Infection chance
			r_player_infected = true; //set client to show infection
			player setVariable["USEC_infected",true,true]; //tell server that player is infected
			cutText [format["You gave yourself blood, but got infected in the process!"], "PLAIN DOWN"]; //display text at bottom center of screen if infected
		} else {
			cutText [format["You successfully gave yourself some blood!"], "PLAIN DOWN"];
		}; 
		if(_giveHumanity) then { //humanity check
			[player,_humanityAmount] call player_humanityChange;
		};
	};
} else {
	r_interrupt = false;
	player switchMove "";
	player playActionNow "stop";
	cutText [format["Giving yourself blood was interrupted!"], "PLAIN DOWN"];
};