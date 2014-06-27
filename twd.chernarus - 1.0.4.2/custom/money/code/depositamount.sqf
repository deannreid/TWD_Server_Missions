if (isServer) exitWith {};
private ["_amount","_bank","_wealth","_result1","_result2"];
_amount = parseNumber (_this select 0);
_bank = player getVariable ["bankmoney", 0];
_wealth = player getVariable["money",0];
_player= getPlayerUID player;
if (_amount < 1 or _amount > _wealth) exitWith {
	cutText ["You can not deposit more than you have.", "PLAIN DOWN"];
};
if ((_bank + _amount) > BankMaxDeposit) exitWith {
	cutText [format["The maximum deposit amount is %1", [BankMaxDeposit] call BIS_fnc_numberText], "PLAIN DOWN"];
};

_result1 =_wealth-_amount;
_result2 =_bank+_amount;

player setVariable["money",(_wealth - _amount),true];
player setVariable["bankmoney",(_bank + _amount),true];

PVDZE_plr_Money = [_player,"update",_result1];
publicVariableServer "PVDZE_plr_Money";
PVDZE_plr_BankMoney= [_player,"update",_result2];
publicVariableServer "PVDZE_plr_BankMoney";

cutText [format["You have deposited %1 Dollars.", _amount, "PLAIN DOWN"]];	