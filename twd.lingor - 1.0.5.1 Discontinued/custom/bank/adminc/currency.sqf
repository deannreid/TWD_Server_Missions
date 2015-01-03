/*
	Zupa's Single Currency manipulation addon by Rocu
	Add/remove currency to player's inventory/bank
*/
private ["_dialog"];
_sc_lmax = 10; 
sc_snext = false; 
sc_plist = [];
sc_pselect = "";
{
	if ((getPlayerUID _x != "")) then {
		sc_plist set [count sc_plist, name _x];
	};
} forEach entities "CAManBase";

{
	if ((count crew _x) > 0) then {
		{
			if (getPlayerUID _x != "") then {
				sc_plist set [count sc_plist, name _x];
			};
		} forEach crew _x;
	};
} forEach (entities "LandVehicle" + entities "Air" + entities "Ship");

currencyTarget = "";
//currencyTarget = player; // For debug purposes, applies only to self

sc_menu =
{
	_pmenu = [["",true]];
	for "_i" from (_this select 0) to (_this select 1) do
	{
		_arr = [format['%1', sc_plist select (_i)], [12],  "", -5, [["expression", format ["sc_pselect = sc_plist select %1;", _i]]], "1", "1"]; 
		_pmenu set [_i + 2, _arr];
	};
	if (count sc_plist > (_this select 1)) then 
	{
		_pmenu set [(_this select 1) + 2, ["Next", [13], "", -5, [["expression", "sc_snext = true;"]], "1", "1"]];
	}
	else 
	{
		_pmenu set [(_this select 1) + 2, ["", [-1], "", -5, [["expression", ""]], "1", "0"]];
	};
	
	_pmenu set [(_this select 1) + 3, ["Exit", [13], "", -5, [["expression", "sc_pselect = 'exit';"]], "1", "1"]];
	
	showCommandingMenu "#USER:_pmenu";
};

_j = 0; _sc_lmax = 10; if (_sc_lmax>9) then {_sc_lmax = 10;};

while {sc_pselect == ""} do
{
	[_j, (_j + _sc_lmax) min (count sc_plist)] call sc_menu; _j = _j + _sc_lmax;
	WaitUntil {sc_pselect != "" or sc_snext};	
	sc_snext = false;
};

if (sc_pselect != "exit") then
{
	{
		if(name _x == sc_pselect) then
		{
			currencyTarget = _x;
		};
	} forEach entities "CAManBase";
	
	//if (currencyTarget == "") then {
		{
			if ((count crew _x) > 0) then {
				{
					if (getPlayerUID _x != "" && name _x == sc_pselect) then {
						currencyTarget = _x;
					};
				} forEach crew _x;
			};
		} forEach (entities "LandVehicle" + entities "Air" + entities "Ship");
	//};
	
	//Uncomment for debugging purposes
	//titleText[format["Fetching data for player: %1", currencyTarget],"PLAIN DOWN"];titleFadeOut 2;
	
	Sleep 0.2;
	_dialog = createdialog "CurrencyPlayerDialog";
	call CurrencyDialogFetchData;
	waitUntil { !dialog };
};