
if (tfv_DEBUGGING) then { diag_log "tfv - monitor.sqf - starting"; };
private ["_vehicle","_crew","_driver","_ownsCar","_trader","_trader_obj","_traderIdx","_humanity","_canTrade"];
_ownsCar = false;
_vehicle = objNull;
while {true} do {

if ((tfv_ACTION == 1) && (canBuild)) then {    //Remove the action if player is not in the trader and the action exists.
    diag_log "Player not in trade zone, removing action from player";
	player removeAction tfv_ACTION_INDEX;
	tfv_ACTION_INDEX = -1;
    tfv_ACTION = 0;
};

if ((tfv_ACTION_MAGS == 1) && (canBuild)) then {    //Remove the action if player is not in the trader and the action exists.
    diag_log "Player not in trade zone, removing action from player";
	player removeAction tfv_ACTION_INDEX_MAGS;
	tfv_ACTION_INDEX_MAGS = -1;
    tfv_ACTION_MAGS = 0;
};

waitUntil {!canBuild};
_humanity = player getVariable ["humanity",0];
_canTrade = false;

    if (vehicle player != player) then {    //Check if the player was in the driver seat.
		_vehicle = vehicle player;
	    _crew = crew _vehicle;
		_driver = _crew select 0;
		if (player == _driver) then {
		    _ownsCar = true;
		} else {
		    _ownsCar = false;
		};
	};
	
	if ((vehicle player == player) && !(isNull _vehicle)) then {    //Check to see if the owned vehicle is empty
	    if ((count (crew _vehicle)) != 0) then {
		    _ownsCar = false;
		};
	};
	
	if ((vehicle player == player) && (_ownsCar)) then {    //Check if what the player is looking at is a trader, that they were the driver and that the action hasn't already been added.
		if (typeOf cursorTarget in tfv_TRADERS) then {
		    {
			    if (typeOf cursorTarget == _x select 0) then {
				    if (_x select 3 > 0) then {					
						if (_humanity >= _x select 3) exitWith {
					        _canTrade = true;
					    };
					};
					if (_x select 3 < 0) then {
						if (_humanity <= _x select 3) exitWith {
					        _canTrade = true;
					    };					
					};
					if (_x select 3 == 0) then {
					    _canTrade = true;
					};
				};
			} forEach tfv_TRADERS_ITEMS;
		    if (_canTrade) then {        
					_traderIdx = tfv_TRADERS find (typeOf cursorTarget);
		            _trader = typeOf cursorTarget;
			        _trader_obj = cursorTarget;
			        if ((player distance _trader_obj < 5) && (tfv_ACTION == 0) && (_vehicle distance _trader_obj < 30)) then {
				    if (!tfv_IS_TRADING) then {    
					    if ("weapons" in (tfv_TRADERS_TYPES select _traderIdx)) then {    
						    if (tfv_ACTION != 1) then {    
							    tfv_ACTION_INDEX = player addAction ["<t color='#7CFC00'>Trade Weapons From Vehicle</t>","custom\TradeFromVehicle\trade.sqf",[_trader,_vehicle],400,true,true];
				                tfv_ACTION = 1;
						    };
					    };
					    if ("magazines" in (tfv_TRADERS_TYPES select _traderIdx)) then {
					        if (tfv_ACTION_MAGS != 1) then {    
							    tfv_ACTION_INDEX_MAGS = player addAction ["<t color='#7CFC00'>Trade Items From Vehicle</t>","custom\TradeFromVehicle\trade_magazines.sqf",[_trader,_vehicle],399,true,true];
				                tfv_ACTION_MAGS = 1;
						    };
					    };
				    };
			    };
		    };
		};
	};
	
    if !(typeOf cursorTarget in tfv_TRADERS) then {    //Check to see what the player is looking at and if it is a supported trader.
		if (tfv_ACTION == 1) then {
		    player removeAction tfv_ACTION_INDEX;
			tfv_ACTION_INDEX = -1;
            tfv_ACTION = 0;
		};
		if (tfv_ACTION_MAGS == 1) then {
		    player removeAction tfv_ACTION_INDEX_MAGS;
			tfv_ACTION_INDEX_MAGS = -1;
            tfv_ACTION_MAGS = 0;
		};
		
	};	
sleep 1;
};