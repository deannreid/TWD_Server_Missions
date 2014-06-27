if ((isServer) || (isDedicated)) exitWith {};

AE_administer = {
    private ["_tLim","_display"];
    _tLim = _this select 0;

    for "_i" from _tLim to 1 step -1 do {
        _display = format ["\nAuto-Injecting Epinephrine in %1 seconds",_i];
	    titleText [_display,"PLAIN DOWN"];
	    sleep 1;
    };
    
	titleText ["\nInjecting Epinephrine","PLAIN DOWN"];
    player removeMagazine "ItemEpinephrine";
    player setVariable ["NORRN_unconscious", false, true];
    player setVariable ["USEC_isCardiac",false,true];
    sleep 2;
    PVDZE_send = [player,"Epinephrine",[player,player,"ItemEpinephrine"]];
    publicVariableServer "PVDZE_send";

    true
};
sleep 5;

waitUntil {!isNil "dayz_animalCheck"};
waitUntil {alive player};
waitUntil {!(player getVariable ["NORRN_unconscious",false])};

private ["_isUnconscious","_isDead","_hasEpi","_nil","_time"];
_time = _this select 0;

while {true} do {
    _isUnconscious = player getVariable ["NORRN_unconscious",false];
    _isDead = player getVariable ["USEC_isDead",false];
    _hasEpi = "ItemEpinephrine" in ([player] call BIS_fnc_invString);

    if ((_isUnconscious) && (!_isDead) && (_hasEpi)) then {
        sleep 2;
		_nil = [_time] call AE_administer;
    };
};