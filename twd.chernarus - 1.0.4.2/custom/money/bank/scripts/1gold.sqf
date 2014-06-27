private["_newMoney","_itemsPlayer","_mags","_has"];
_itemsPlayer = items player;
_mags = magazines player;
_has = "ItemGoldBar" in _mags;
_money = player getVariable["money","0"];
if (!(_has)) then {
    cutText [format["You don't have enough money for this transaction."], "PLAIN DOWN"];
	} else {
	player removeMagazine "ItemGoldBar";
	_newMoney = _money + 1000;
	player setVariable["money",_newMoney,true];
    cutText [format["1000$ was withdrawn from your bank and is now in your wallet."], "PLAIN DOWN"];
	};