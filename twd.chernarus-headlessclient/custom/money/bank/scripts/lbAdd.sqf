private["_index","_name","_playerUID"];
_switch = _this select 0;
lbClear 13001;

if (_switch == 0) then 
{
	_index = lbAdd [13001, "Sell one briefcase for 100000$"];
	_index = lbAdd [13001, "Sell one 10oz Gold for 10000$"];
	_index = lbAdd [13001, "Sell one 1 Gold for 1000$"];
};
