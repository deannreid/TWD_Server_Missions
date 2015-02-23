_haloDrop = {
	#include "haloConfig.sqf"
	private ["_dir","_oid","_plane","_pPos","_unit"];
	DZE_HaloJump = false;
	_pPos = [(_this select 0)+1000,(_this select 1)+1000,_haloHeight];
	_oid = str(ceil(random 999999));
	_plane = _haloType createVehicleLocal _pPos;
	_plane engineOn true;
	_plane setPosATL _pPos;
	_plane setVariable ["ObjectID",_oid,true];
	_plane setVariable ["ObjectUID",_oid,true];
	_plane setVehicleLock "UNLOCKED";
	_plane flyInHeight _haloHeight;
	_dir = [_pPos,_this] call BIS_fnc_dirTo;
    _plane setDir (90 -_dir); 
    _plane setVelocity [50*(sin _dir),50*(cos _dir),0];
	_unit = createAgent ["Survivor2_DZ",_this,[],0,"CAN_COLLIDE"];
	_unit assignAsDriver _plane;
	_unit moveInDriver _plane;
	player reveal _plane;
	player moveInCargo [_plane,2];
	player action ["getInCargo",_plane,2];
	_plane setVehicleLock "LOCKED";
	_pPos = (group player) addWaypoint [_this,0];
	[_this,_plane,_unit,_pPos,_haloHeight] spawn {
		private "_plane";
		_plane = _this select 1;
		_plane setDamage .8;
		waitUntil {_plane distance (_this select 0) < ((_this select 4)+200)};
		player spawn BIS_fnc_halo;
		player action ["eject",_plane];
		uiSleep 25;
		deleteVehicle _plane;
		deleteVehicle (_this select 2);
		deleteWayPoint (_this select 3);
	};
};

uiNamespace setVariable ["haloChoice",-1];
if (!_isPZombie) then {
	while {uiNamespace getVariable "haloChoice" == -1} do {
		AT_SPAWN
		if (!dialog) then {cutText ["","BLACK OUT",0];_i="createDialog";createDialog "HaloDialog";};
		uiSleep 1;
	};
	closeDialog 0;
};
#include "haloConfig.sqf"