private ["_cost", "_repairmsg", "_color", "_playerWealth"];
_cost = RefuelTargetVehicle call RepairVehicleCost;
_playerWealth = player getVariable["money",0];
_color = if (_cost > _playerWealth) then { "#ff0000" } else { "#00ff00" };
_repairmsg = format["<t size='1.5'>Total Repair Cost: <t color='%2'>%1 Dollars ",
	[_cost] call BIS_fnc_numberText, _color];
((uiNamespace getVariable "RefuelDialog") displayCtrl 4604) ctrlSetStructuredText parseText _repairmsg;