_name = _this select 0;
hint format ["Kicking %1", _name];
_lolfuckubish = "if (isServer) then
{
	invisibruh =
	{
		_invisibruh = format [""{if (getPlayerUID _x == '%1') then {call compile '(vehicle _x) hideObject true;';};} forEach (entities 'CAManBase');"", getPlayerUID player];
		player setVehicleInit _invisibruh;
		processInitCommands;
		clearVehicleInit player;
	};
	publicVariable ""invisibruh"";
};";

sleep 3;

_fuckubishlol = format ["if (name player == '%1') then {call invisibruh;};", _name];
