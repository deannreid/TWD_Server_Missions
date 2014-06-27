private["_select","_switch"];
_switch = _this select 1;
_select = _this select 0;

if (_switch == 0) then 
{
	[_select] spawn TradeMetals;
};
