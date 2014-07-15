private["_newMoney","_itemsPlayer","_mags","_has","_player"];
_itemsPlayer = items player;
_mags = magazines player;
_has = "ItemBriefcase100oz" in _mags;
_money = player getVariable["money","0"];
_player= getPlayerUID player;
if (!(_has)) then {
    cutText [format["You don't have enough money for this transaction."], "PLAIN DOWN"];
	} else {
	player removeMagazine "ItemBriefcase100oz";
	_newMoney = _money + 100000;
	player setVariable["money",_newMoney,true];
	PVDZE_plr_Money = [_player,"update",_newMoney];
    publicVariableServer "PVDZE_plr_Money";
    cutText [format["100000$ was withdrawn from your bank and added to your wallet."], "PLAIN DOWN"];
	};