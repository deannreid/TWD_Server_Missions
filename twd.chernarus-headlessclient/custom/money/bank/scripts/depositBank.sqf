private["_newMoney","_itemsPlayer","_mags","_has"];

_money = player getVariable["CharacterMoney","0"];
_moneyBank = player getVariable["PlayerBank","0"];
if (((50000 >= _money) or (50000 == _money))) then {
    cutText [format["You don't have enough money for this transaction."], "PLAIN DOWN"];
	} else {
	_newMoney = _moneyBank + 45000;
	player setVariable["PlayerBank",_newMoney,true];
	_newMoney = _money - 50000;
	player setVariable["CharacterMoney",_newMoney,true];
    cutText [format["50000 was placed in your bank."], "PLAIN DOWN"];
	};