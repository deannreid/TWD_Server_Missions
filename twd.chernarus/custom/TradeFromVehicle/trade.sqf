player removeAction tfv_ACTION_INDEX;
player removeAction tfv_ACTION_INDEX_MAGS;
tfv_IS_TRADING = true;
if (tfv_DEBUGGING) then { diag_log "tfv - trade.sqf - starting"; };
private ["_goStart","_tPassed","_sTime","_display","_tradeCancel","_pStartPos","_sWepCounts",
         "_trader","_traderWeapons","_weaponsActual","_price_rejetcs","_sale","_rejects","_bars",
		 "_steps_complete","_steps","_cur_step","_badTrade","_firstStep","_preTestCargoCounts"];

_goStart = false;
_tPassed = 0;
_sTime = time;
_vehicle = _this select 3 select 1;
_vehicle setVehicleLock "LOCKED";
_vStartPos = getPos _vehicle;
_tradeCancel = false;
_pStartPos = getPos player;
_sWepCounts = _vehicle call tfv_fnc_wCount;
_preTestCargoCounts = getWeaponCargo _vehicle;
if (count(_preTestCargoCounts select 0) == 0) exitWith { tfv_IS_TRADING = false; systemChat format [tfv_NO_WEAPONS,typeOf _vehicle]; _vehicle setVehicleLock "UNLOCKED"; };
systemChat format [tfv_VEHICLE_CONFIRM,typeOf _vehicle];
while {!_goStart} do {
    if ((time -_sTime) >= _tPassed) then {    //Show a countdown timer, 5 seconds. Give the player chance to cancel, and give us time to check some things.
	    _display = format [tfv_PREP_FOR_TRADE,5 - _tPassed];
		titleText [_display,"PLAIN DOWN"];
		_tPassed = _tPassed + 1;
	};
	if (_tPassed >= 6) then {    //If 5 seconds has passed, tell the player we are about to begin trading.
	    titleText [tfv_STARTING_TRADE,"PLAIN DOWN"];
		_goStart = true;
	};
	if (([_vStartPos,_sWepCounts,_vehicle,_pStartPos] call tfv_fnc_checkTrade)) exitWith {    //Check to be sure that the player is not swindling us!
	    _tradeCancel = true;
		titleText [tfv_CANCELLED_TRADE,"PLAIN DOWN"];
	};
};
if (_tradeCancel) exitWith { tfv_IS_TRADING = false; _vehicle setVehicleLock "UNLOCKED"; };

sleep 0.5;
_trader = _this select 3 select 0;
_traderWeapons = _trader call tfv_fnc_findTrWeapons;
_weaponsActual = _vehicle call tfv_fnc_aConcat;
_price_rejects = [_weaponsActual,_traderWeapons] call tfv_fnc_findPrices;
_sale = _price_rejects select 0;
_rejects = _price_rejects select 1;
_steps = [_weaponsActual,_rejects] call tfv_fnc_getSteps;
_bars = _sale call tfv_fnc_convert;
_steps_complete = false;
_cur_step = 0;
_badTrade = false;
_firstStep = true;

while {!_steps_complete} do {
    _display = format [tfv_TRADE_STEPS,_cur_step + 1,_steps];
	titleText [_display,"PLAIN DOWN"];
	player playActionNow "medic";
	if (_firstStep) then { sleep 3; _firstStep = false; };
	sleep 1;
	waitUntil {(((animationState player) != "ainvpknlmstpslaywrfldnon_medic") && ((animationState player) != "ainvpknlmstpsnonwnondnon_medic_2") && ((animationState player) != "ainvpknlmstpslaywrfldnon_amovpknlmstpsnonwnondnon"))};
	_cur_step = _cur_step + 1;
	if (([_vStartPos,_sWepCounts,_vehicle,_pStartPos] call tfv_fnc_checkTrade)) exitWith {
	    _badTrade = true;
		titleText [tfv_TRADE_CANCELLED_END,"PLAIN DOWN"];
	};
	if (_cur_step >= _steps) then {
	    _steps_complete = true;
	};
};
if (_badTrade) exitWith { _vehicle setVehicleLock "UNLOCKED"; tfv_IS_TRADING = false; };

_nul = [_bars,_rejects,_vehicle] call tfv_fnc_payTrade;
{ systemChat format [tfv_SIDENOTE,_x]; } forEach _bars;

_display = format [tfv_SALE_SUCCESS_STRING,(count _weaponsActual) - (count _rejects)];
titleText [_display,"PLAIN DOWN"];
_vehicle setVehicleLock "UNLOCKED";
tfv_IS_TRADING = false;