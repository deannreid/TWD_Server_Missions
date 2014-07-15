private["_switch"];
_switch = _this select 0;
if (_switch == 0) then 
{
	[] spawn withdraw;
};
if (_switch == 1) then 
{
	[] spawn deposit;
};