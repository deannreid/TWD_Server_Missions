private["_newMoney","_itemsPlayer","_mags","_has"];

_money = player getVariable["CharacterMoney","0"];
_moneyBank = player getVariable["PlayerBank","0"];
if (50000 >= _moneyBank) then {
    cutText [format["You don't have enough money for this transaction."], "PLAIN DOWN"];
	} else {
	_newMoney = _moneyBank - 50000;
	player setVariable["PlayerBank",_newMoney,true];
	_newMoney = _money + 50000;
	player setVariable["CharacterMoney",_newMoney,true];
    cutText [format["The money has been put into your wallet."], "PLAIN DOWN"];
	};