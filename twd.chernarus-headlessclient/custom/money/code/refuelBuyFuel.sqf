private ["_fuel", "_slider", "_capacity", "_name", "_fuelDif", "_cost", "_fueltoadd", "_playerWealth","_player","_result"];
_fuel = fuel RefuelTargetVehicle;
_slider = (sliderPosition ((uiNamespace getVariable "RefuelDialog") displayCtrl 4602) / 10);
_capacity = getNumber(configFile >> "cfgVehicles" >> (typeOf RefuelTargetVehicle) >> "fuelCapacity");

_fuelDif = _capacity - (_fuel * _capacity);

_cost = ceil(((1 - _fuel) * _slider) * _capacity * PetrolPriceLitre);
_fueltoadd = (1 - _fuel) * _slider;
_name = getText(configFile >> "cfgVehicles" >> (typeOf RefuelTargetVehicle) >> "displayName");

_playerWealth = player getVariable["money",0];
_player = getPlayerUID player;
if (_cost > _playerWealth) exitWith {
	titleText ["You do not have enough money...","PLAIN DOWN"]; titleFadeOut 4;
};


_result =_playerWealth -_cost;

titleText ["Vehicle has been refueled!","PLAIN DOWN"]; titleFadeOut 4;
player setVariable["money",(_playerWealth - _cost),true];
PVDZE_plr_Save = [player,(magazines player),true,true];
publicVariableServer "PVDZE_plr_Save";

PVDZE_plr_Money = [_player,"update",_result];
publicVariableServer "PVDZE_plr_Money";


[RefuelTargetVehicle, ((fuel RefuelTargetVehicle) + _fueltoadd)] call RefuelUpdateFuel;