/*
	Epoch Headless Client
	
	This file manages heartbeat signals from headless clients, so that we can maintain
	a list of connected headless clients.
*/

if (isNil "PV_HCList") then {PV_HCList =[];}; // list of available HCs for server dispatch to use

"PV_HCHeartbeat" addPublicVariableEventHandler
{
	private ["_val", "_found", "_holder"];
	
	_val = owner (_this select 1); // owner of HC broadcast
	
	_found = false; // track whether owner is found in HClist
	_holder = + PV_HCList; // work on a copy in case of overlapping call
	{
		if ((_x select 0) == _val) exitwith { // does HC ID already exist in array?
			_x set [1,time]; // refresh the HC's ID
			_found = true; // no need to add it to the array again
		};
	} foreach _holder;
	
	if (!_found) then
	{ // if HC not found in the array, then add it
		_holder set [count _holder, [ _val, floor time ]]; // new ID added to PV_HCList
		diag_log "EHC: Added HC to list " + str _val;
	};
	PV_HCList = + _holder; // changed copy is presented
};
