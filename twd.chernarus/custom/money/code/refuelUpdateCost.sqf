private ["_ctrl", "_val", "_cost", "_playerWealth", "_color", "_capacity", "_fuelToBuyL"];

_val = (_this select 1) / 10;
_capacity = getNumber(configFile >> "cfgVehicles" >> (typeOf RefuelTargetVehicle) >> "fuelCapacity");
_fuel = fuel RefuelTargetVehicle;

_fuelToBuyL = ((1 - _fuel) * _val) * _capacity;
_cost = ceil(_fuelToBuyL * PetrolPriceLitre);

_playerWealth = player getVariable["money",0];
_color = if (_cost > _playerWealth) then { "#ff0000" } else { "#00ff00" };
_info = format["Total: <t color='%2'>%1 Dollars for %3 litres", [_cost] call BIS_fnc_numberText, _color, ceil(_fuelToBuyL)];
((uiNamespace getVariable "RefuelDialog") displayCtrl 4603) ctrlSetStructuredText parseText _info;