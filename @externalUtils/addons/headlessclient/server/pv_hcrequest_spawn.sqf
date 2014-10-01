/*
	Params
	0 type
	1 inVehicle
	2 onTheMove
	3 dateNow
	4 maxWildZombies
	5 age
	6 radius
	7 position

*/
if (isNil "PV_HCDo_spawn") then {PV_HCDo_spawn = [];}; // message sent to selected client for building loot and zed spawn

"PV_HCRequest_spawn" addPublicVariableEventHandler
{
	private ["_temp","_HClist","_numHC","_client"];
	
	_temp = + (_this select 1); // copy in case value changes suddenly
	_HClist = + PV_HCList; // value changes asynchronously so copy it
	_numHC = count _HClist;
	
	if ((_numHC) != 0) then
	{ // pick random headless client to spawn zeds etc...
		_client = ((_HClist select floor random(_numHC - 1)) select 0);
	}
	else
	{ // no headless clients
		_client = owner (_temp select 8); // bounce it back to same player client.
	};
	PV_HCDo_spawn =
	[
		_temp select 0
		, _temp select 1
		, _temp select 2
		, _temp select 3
		, _temp select 4
		, _temp select 5
		, _temp select 6
		, _temp select 7
	];
	_client publicVariableClient "PV_HCDo_spawn"; // target specific machine
// worst case is that selected HC has gone offline in the last few moments, so no spawn
};
