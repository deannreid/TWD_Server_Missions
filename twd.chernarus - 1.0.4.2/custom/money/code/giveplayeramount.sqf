private ["_amount","_target","_wealth","targetID","_player","_result1","_result2"];
_amount = parseNumber (_this select 0);
_target = GivePlayerTarget;
_targetID= getPlayerUID _target;
_player = getplayerUID player;
_wealth = player getVariable['money',0];
_twealth = _target getVariable['money',0];
if (_amount < 1 or _amount > _wealth) exitWith {
	cutText ["You can not give more than you have.", "PLAIN DOWN"];
};

_result1 =_wealth-_amount;
_result2 =_wealth+_amount;

PVDZE_plr_Money = [_player,"update",_result1];
publicVariableServer "PVDZE_plr_Money";
PVDZE_plr_Money = [_targetID,"update",_result2] ;
publicVariableServer "PVDZE_plr_Money";

player setVariable['money',_wealth - _amount, true];
_target setVariable['money',_twealth + _amount, true];



cutText [format["You have transferred %1 Dollars.", _amount], "PLAIN DOWN"];