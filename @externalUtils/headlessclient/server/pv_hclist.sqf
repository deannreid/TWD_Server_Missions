/*
	Epoch Headless Client
	
	This file is responsible for maintaining the integrity of the list of connected
	headless clients and synchronize the list across all clients.
*/

if (isNil "PV_HCList") then {PV_HCList =[];}; // list of available HCs for server dispatch to use

// broadcast list
[] spawn {
	private ["_cursor","_holder","_time","_arrsize"];
	while {true} do {
		_cursor = 0; // location in array we are iterating
		_holder = + PV_HCList; // copy array... PV_HCList may change while looping
		_time = floor time; // time snapshot
		_arrsize = count _holder; // number of elements in PV_HCList
		while { _cursor < _arrsize } do // while there are still elements to process
		{
			if ((((_holder select _cursor) select 1) + 20) < _time) then { // eject
				diag_log "lost HC:" + str ((_holder select _cursor) select 1);
				_holder set [_cursor, _holder select (_arrsize - 1)];
				_holder resize (_arrsize - 1);
				_arrsize = _arrsize - 1;
			} else {
				_cursor = _cursor + 1;  // otherwise go on to next element
			};
		};
		diag_log "EHC: Transmitting list";
		PV_HCList = + _holder;
		publicVariable "PV_HCList";  // make the entries known
		sleep 7;
	};
};
