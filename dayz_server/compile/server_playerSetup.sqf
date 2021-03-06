private ["_characterID","_playerObj","_playerID","_dummy","_worldspace","_state","_doLoop","_key","_primary","_medical","_stats","_humanity","_lastinstance","_friendlies","_randomSpot","_position","_debug","_distance","_hit","_fractures","_score","_findSpot","_pos","_isIsland","_w","_clientID","_spawnMC","_namespace"];

//diag_log ("SETUP: attempted with " + str(_this));

_characterID = _this select 0;
_playerObj = _this select 1;
_playerID = getPlayerUID _playerObj;
_playerName = name _playerObj;

if (isNull _playerObj) exitWith {
	diag_log ("SETUP INIT FAILED: Exiting, player object null: " + str(_playerObj));
};

//Add MPHit event handler
// diag_log("Adding MPHit EH for " + str(_playerObj));
_playerObj addMPEventHandler ["MPHit", {_this spawn fnc_plyrHit;}];

if (_playerID == "") then {
	_playerID = getPlayerUID _playerObj;
};

if (_playerID == "") exitWith {
	diag_log ("SETUP INIT FAILED: Exiting, no player ID: " + str(_playerObj));
};

private["_dummy"];
_dummy = getPlayerUID _playerObj;
if ( _playerID != _dummy ) then { 
	diag_log format["DEBUG: _playerID miscompare with UID! _playerID:%1",_playerID]; 
	_playerID = _dummy;
};

//Variables
_worldspace = 	[];

_state = 		[];
//Soul start: SC Edit >>> initialize variables in main scope (helps avoiding scope issues within the file and avoids undeclared variable errors in rpt, aswell they server as default values if anything goes wrong)
_cashMoney = 0;
_bankMoney = 0;
//Soul end: SC Edit

//Do Connection Attempt
_doLoop = 0;
while {_doLoop < 5} do {

	_key = format["CHILD:102:%1:",_characterID];
	diag_log (_key);
    _key = format["\cache\players\%1\%2-char.sqf", MyPlayerCounter, toLower(_playerID)];
    diag_log ("LOAD CHARACTER: "+_key);
    _res = preprocessFile _key;
    diag_log ("CHARACTER CACHE: "+_res);

    if ((_res == "") or (isNil "_res")) then {
        _key = format["\cache\players\%1\%2-char.sqf", (MyPlayerCounter - 1), toLower(_playerID)];
        diag_log ("BACKLOAD CHARACTER: "+_key);
        _res = preprocessFile _key;
        diag_log ("CHARACTER CACHE: "+_res);
    };

    if ((_res == "") or (isNil "_res")) then {
        _res = preprocessFile "\cache\players\default-char.sqf";
        diag_log ("CHARACTER DEFAULT CACHE: "+_res);
        if ((_res == "") or (isNil "_res")) then {
            _primary = ["PASS",[],[0,0,0,0],[],[],2500,1,0];
        } else {
            _primary = call compile _res;
        };
    } else {
        _primary = call compile _res;
    };
    _res = nil;

    if (count _primary > 0) then {
        if ((_primary select 0) != "ERROR") then {
             _doLoop = 9;
        };
    };
    _doLoop = _doLoop + 1;
};

if (isNull _playerObj || !isPlayer _playerObj) exitWith {
	diag_log ("SETUP RESULT: Exiting, player object null: " + str(_playerObj));
};

//Wait for HIVE to be free
//diag_log ("SETUP: RESULT: Successful with " + str(_primary));

_medical =		_primary select 1;
_stats =		_primary select 2;
_state =		_primary select 3;
_worldspace = 	_primary select 4;
_humanity =		_primary select 5;
_lastinstance =	_primary select 6;
//Soul start: SC Edit >>> loading player cash into variable / overwriting default 0 value with returned value.
_cashMoney = 	_primary select 7;
//Soul end: SC Edit

//Set position
_randomSpot = false;
_lastinstance = dayZ_instance;

diag_log format["_characterID: %1", _characterID];
diag_log format["_cashMoney:%1:", _cashMoney]; // Shows that cashMoney is pulled from database

//Set position
_randomSpot = false;

diag_log ("WORLDSPACE: " + str(_worldspace));

if (count _worldspace > 0) then {

	_position = _worldspace select 1;
	if (count _position < 3) then {
		//prevent debug world!
		_randomSpot = true;
	};
	_debug = getMarkerpos "respawn_west";
	_distance = _debug distance _position;
	if (_distance < 2000) then {
		_randomSpot = true;
	};
	
	_distance = [0,0,0] distance _position;
	if (_distance < 500) then {
		_randomSpot = true;
	};
	
	// Came from another server force random spawn
	if (_lastinstance != dayZ_instance) then {
		_randomSpot = true;
	};

	//_playerObj setPosATL _position;
} else {
	_randomSpot = true;
};

diag_log ("LOGIN: Location: " + str(_worldspace) + " doRnd?: " + str(_randomSpot));

//set medical values
if (count _medical > 0) then {
	_playerObj setVariable["USEC_isDead",(_medical select 0),true];
	_playerObj setVariable["NORRN_unconscious", (_medical select 1), true];
	_playerObj setVariable["USEC_infected",(_medical select 2),true];
	_playerObj setVariable["USEC_injured",(_medical select 3),true];
	_playerObj setVariable["USEC_inPain",(_medical select 4),true];
	_playerObj setVariable["USEC_isCardiac",(_medical select 5),true];
	_playerObj setVariable["USEC_lowBlood",(_medical select 6),true];
	_playerObj setVariable["USEC_BloodQty",(_medical select 7),true];
	_playerObj setVariable["unconsciousTime",(_medical select 10),true];
		
	//Add Wounds
	{
		_playerObj setVariable[_x,true,true];
		//["usecBleed",[_playerObj,_x,_hit]] call broadcastRpcCallAll;
		usecBleed = [_playerObj,_x,_hit];
		publicVariable "usecBleed";
	} count (_medical select 8);
	
	//Add fractures
	_fractures = (_medical select 9);
	_playerObj setVariable ["hit_legs",(_fractures select 0),true];
	_playerObj setVariable ["hit_hands",(_fractures select 1),true];
	
	if (count _medical > 11) then {
		//Additional medical stats
		_playerObj setVariable ["messing",(_medical select 11),true];
	};
	
} else {
	//Reset Fractures
	_playerObj setVariable["hit_legs",0,true];
	_playerObj setVariable["hit_hands",0,true];
	_playerObj setVariable["USEC_injured",false,true];
	_playerObj setVariable["USEC_inPain",false,true];
	_playerObj setVariable["messing",[0,0],true];
};
	
if (count _stats > 0) then {	
	//register stats
	_playerObj setVariable["zombieKills",(_stats select 0),true];
	_playerObj setVariable["headShots",(_stats select 1),true];
	_playerObj setVariable["humanKills",(_stats select 2),true];
	_playerObj setVariable["banditKills",(_stats select 3),true];
	_playerObj addScore (_stats select 1);
	_playerObj setVariable["moneychanged",0,true];	
	_playerObj setVariable["bankchanged",0,true];	
	_playerObj setVariable["AsReMixhud", true,true];
	
	//Save Score
	_score = score _playerObj;
	_playerObj addScore ((_stats select 0) - _score);
	
	//record for Server JIP checks
	_playerObj setVariable["zombieKills_CHK",(_stats select 0)];
	_playerObj setVariable["headShots_CHK",(_stats select 1)];
	_playerObj setVariable["humanKills_CHK",(_stats select 2)];
	_playerObj setVariable["banditKills_CHK",(_stats select 3)];
	if (count _stats > 4) then {
		if (!(_stats select 3)) then {
			_playerObj setVariable["selectSex",true,true];
		};
	} else {
		_playerObj setVariable["selectSex",true,true];
	};
} else {
	//Save initial loadout
	//register stats
	_playerObj setVariable["zombieKills",0,true];
	_playerObj setVariable["humanKills",0,true];
	_playerObj setVariable["banditKills",0,true];
	_playerObj setVariable["headShots",0,true];
	_playerObj setVariable["friendlies",[],true];
	_playerObj setVariable["AsReMixhud", true,true];
	
	//record for Server JIP checks
	_playerObj setVariable["zombieKills_CHK",0];
	_playerObj setVariable["humanKills_CHK",0,true];
	_playerObj setVariable["banditKills_CHK",0,true];
	_playerObj setVariable["headShots_CHK",0];
};

if (_randomSpot) then {
	private["_counter","_position","_isNear","_isZero","_mkr"];
	if (!isDedicated) then {
		endLoadingScreen;
	};
	
	//Spawn modify via mission init.sqf
	if(isnil "spawnArea") then {
		spawnArea = 1500;
	};
	if(isnil "spawnShoremode") then {
		spawnShoremode = 1;
	};
	
	// 
	_spawnMC = actualSpawnMarkerCount;

	//spawn into random
	_findSpot = true;
	_mkr = "";
	while {_findSpot} do {
		_counter = 0;
		while {_counter < 20 && _findSpot} do {
			// switched to floor
			_mkr = "spawn" + str(floor(random _spawnMC));
			_position = ([(getMarkerPos _mkr),0,spawnArea,10,0,2000,spawnShoremode] call BIS_fnc_findSafePos);
			_isNear = count (_position nearEntities ["Man",100]) == 0;
			_isZero = ((_position select 0) == 0) && ((_position select 1) == 0);
			//Island Check		//TeeChange
			_pos 		= _position;
			_isIsland	= false;		//Can be set to true during the Check
			for [{_w=0},{_w<=150},{_w=_w+2}] do {
				_pos = [(_pos select 0),((_pos select 1) + _w),(_pos select 2)];
				if(surfaceisWater _pos) exitWith {
					_isIsland = true;
				};
			};
			
			if ((_isNear && !_isZero) || _isIsland) then {_findSpot = false};
			_counter = _counter + 1;
		};
	};
	_isZero = ((_position select 0) == 0) && ((_position select 1) == 0);
	_position = [_position select 0,_position select 1,0];
	if (!_isZero) then {
		//_playerObj setPosATL _position;
		_worldspace = [0,_position];
	};
};

diag_log ("SETUP WORLDSPACE: " + str(_worldspace));

//Record player for management
dayz_players set [count dayz_players,_playerObj];

//record player pos locally for server checking
_playerObj setVariable["CharacterID",_characterID,true];
_playerObj setVariable["humanity",_humanity,true];
_playerObj setVariable["humanity_CHK",_humanity];
_playerObj setVariable["lastPos",getPosATL _playerObj];
//Soul start: SC Edit >>> assigning player new variable for cashmoney and bankMoney
_playerObj setVariable ["cashMoney",_cashMoney,true];
_playerObj setVariable ["cashMoney_CHK",_cashMoney];
//Soul end: SC Edit
dayzPlayerLogin2 = [_worldspace,_state];

// PVDZE_obj_Debris = DZE_LocalRoadBlocks;
_clientID = owner _playerObj;

if (!isNull _playerObj) then {

	_clientID publicVariableClient "dayzPlayerLogin2";
	
	if (isNil "PVDZE_plr_SetDate") then {
	    //call server_timeSync;
            diag_log ("TIME SYNC ERROR!");
            PVDZE_plr_SetDate = date;
            publicVariable "PVDZE_plr_SetDate";
	};
	_clientID publicVariableClient "PVDZE_plr_SetDate";
};
//record time started
_playerObj setVariable ["lastTime",time];
//_playerObj setVariable ["model_CHK",typeOf _playerObj];

//Do Connection Attempt
_doLoop = 0;
while {_doLoop < 5} do {

	_key = format["CHILD:298:%1:", _playerID];
	diag_log (_key);
    _key = format["\cache\players\%1\%2-bank.sqf", MyPlayerCounter, toLower(_playerID)];
    diag_log ("LOAD BANK: "+_key);
	
	// This is an artificial sleep function since Arma won't actually allow sleep here.
	// This loop is necessary in order to give the writer.pl enough time to update the bank cache before this function "preprocessFile" loads it...
	// Increase the number if your players BankSaldo does not update correctly after logging in.
	// Don't ask...
	_sleep_loop = 0;
	while {_sleep_loop < 300} do {
		_sleep_loop = _sleep_loop + 1;
	};
	
    _res = preprocessFile _key;
    diag_log ("BANK CACHE: "+_res);

    if ((_res == "") or (isNil "_res")) then {
        _key = format["\cache\players\%1\%2-bank.sqf", (MyPlayerCounter - 1), toLower(_playerID)];
        diag_log ("BACKLOAD BANK: "+_key);
        _res = preprocessFile _key;
        diag_log ("BANK CACHE: "+_res);
    };

    if ((_res == "") or (isNil "_res")) then {
        _res = preprocessFile "\cache\players\default-bank.sqf";
        diag_log ("BANK DEFAULT CACHE: "+_res);
        if ((_res == "") or (isNil "_res")) then {
            _primary = ["PASS",0];
        } else {
            _primary = call compile _res;
        };
    } else {
        _primary = call compile _res;
    };
    _res = nil;

	if(count _primary > 0) then {
		if((_primary select 0) != "ERROR") then {
			_bankMoney = _primary select 1;
			_playerObj setVariable["bankMoney",_bankMoney,true];
			_playerObj setVariable["bankMoney_CHK",_bankMoney];
			_doLoop = 9;
		} else {
			_playerObj setVariable["bankMoney",0,true];
			_playerObj setVariable["bankMoney_CHK",0];
		};
	} else {
		_playerObj setVariable["bankMoney",0,true];
		_playerObj setVariable["bankMoney_CHK",0];
	};
    _doLoop = _doLoop + 1;
};

//diag_log ("LOGIN PUBLISHING: " + str(_playerObj) + " Type: " + (typeOf _playerObj));

PVDZE_plr_Login = nil;
PVDZE_plr_Login2 = nil;
