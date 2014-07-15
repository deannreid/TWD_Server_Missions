private ["_amount","_bank","_wealth","_player","_result1","_result2"];
_amount = parseNumber (_this select 0);
_bank = player getVariable ["bankmoney", 0];
_wealth = player getVariable["money",0];
_player = getPlayerUID player;
if (_amount < 1 or _amount > _bank) exitWith {
	cutText ["You can not withdraw more than is in your bank.", "PLAIN DOWN"];
};
player setVariable["money",(_wealth + _amount),true];
player setVariable["bankmoney",(_bank - _amount),true];

_result1 =_wealth+_amount;
_result2 =_bank-_amount;


PVDZE_plr_Money = [_player,"update",_result1];
publicVariableServer "PVDZE_plr_Money";

PVDZE_plr_BankMoney = [_player,"update",_result2];
publicVariableServer "PVDZE_plr_BankMoney";



cutText [format["You have withdrawn %1 Dollars", [_amount] call BIS_fnc_numberText], "PLAIN DOWN"];