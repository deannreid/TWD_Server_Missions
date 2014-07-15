private ["_cost", "_repairmsg", "_color", "_playerWealth","_result"];
_cost = RefuelTargetVehicle call RepairVehicleCost;
_playerWealth = player getVariable["money",0];
_player = getPlayerUID player;
if (_cost > _playerWealth) exitWith {
	cutText ["Not enough money...", "PLAIN DOWN"];
};
_result = (_playerWealth - _cost);
player setVariable["money",(_playerWealth - _cost),true];
PVDZE_plr_Save = [player,(magazines player),true,true];
publicVariableServer "PVDZE_plr_Save";
PVDZE_plr_Money = [_player,"update",_result];
publicVariableServer "PVDZE_plr_Money";

{
	private ["_damage", "_selection"];
	_damage = [RefuelTargetVehicle,_x] call object_getHit;
	if (_damage > 0) then {
		_selection = getText(configFile >> "cfgVehicles" >> (typeOf RefuelTargetVehicle) >> "HitPoints" >> _x >> "name");
		PVDZE_veh_SFix = [RefuelTargetVehicle,_selection,0];
		publicVariable "PVDZE_veh_SFix";
		if (local RefuelTargetVehicle) then {
			PVDZE_veh_SFix call object_setFixServer;
		};		
	};
} forEach (RefuelTargetVehicle call vehicle_getHitpoints);
cutText ["Vehicle has been repaired!", "PLAIN DOWN"];
RefuelTargetVehicle setDamage 0;