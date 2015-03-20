if (isMultiplayer) then { 
	if (isServer) then {
		_bul = [] execVM "custom\namalsk\blowout\module\blowout_server.sqf";
	};
	if (!isDedicated) then {
		_bul = [] execVM "custom\namalsk\blowout\module\blowout_client.sqf";
	};
} else {
	_bul = [] execVM "custom\namalsk\blowout\module\blowout_server.sqf";
	_bul = [] execVM "custom\namalsk\blowout\module\blowout_client.sqf";
};