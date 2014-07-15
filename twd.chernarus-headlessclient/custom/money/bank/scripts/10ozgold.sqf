private["_newMoney","_itemsPlayer","_mags","_has","_player"];
_itemsPlayer = items player;
_mags = magazines player;
_has = "ItemGoldBar10oz" in _mags;
_player = getPlayerUID player;
_money = player getVariable["money","0"];
if (!(_has)) then {
    cutText [format["You don't have enough money for this transaction."], "PLAIN DOWN"];
	} else {
	player removeMagazine "ItemGoldBar10oz";
	_newMoney = _money + 10000;
	player setVariable["money",_newMoney,true];
	PVDZE_plr_Money = [_player,"update",_newMoney];
    publicVariableServer "PVDZE_plr_Money";
    cutText [format["10000$ was withdrawn from your bank and is now in your wallet."], "PLAIN DOWN"];
	};
	