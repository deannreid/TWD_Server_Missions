_loader = _this select 0;
_radi = _this select 1;

#include "f2f_inc_macros.sqf"
#include "f2f_inc_rmvActns.sqf"

waitUntil {sleep 0.1; vehicle player isKindOf "Air" && vehicle player distance _loader <= _radi && ((assignedVehicleRole player) select 0) == "Driver"};

if (vehicle player isKindOf "Air") then
{
	if (vehicle player isKindOf "Plane") then
	{
		private ["_vec", "_acClass"];
		_vec = vehicle player;
		_acClass = typeOf vehicle player;
		#include "f2f_inc_cfg_p.sqf"
	}
	else
	{
		if (vehicle player isKindOf "Helicopter") then
		{
			private ["_vec", "_acClass"];
			_vec = vehicle player;
			_acClass = typeOf vehicle player;
			#include "f2f_inc_cfg_h.sqf"
		}
		else
		{
			waitUntil {sleep 0.1; vehicle player distance _loader > _radi};
			if (true) exitWith {null = [_loader, _radi] execVM "custom\vehicleloadoutselector\f2f_alss_init.sqf"};
		};
	};
}
else
{
	waitUntil {sleep 0.1; vehicle player distance _loader > _radi};
	if (true) exitWith {null = [_loader, _radi] execVM "custom\vehicleloadoutselector\f2f_alss_init.sqf"};
};