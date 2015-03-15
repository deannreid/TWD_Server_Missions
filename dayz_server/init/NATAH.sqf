NoxAH = false;
_fnc_VarGenerator = {
        _array = ["a","A","c","D","d","e","F","3","1","6","G","h","f","5","7","I","j","9","8","L","l","m","M","o","P","Q","R","s","T","u","V","w","W","x","y","Y","z"];
        _generator = "S";
        for "_i" from 1 to 9 do {_generator = _generator + (_array select (random  ((count _array)-1)));};
        _number = str(round(random 482689));
        _generator = _generator + ':' + _number;
       
        if(isNil'numofgenerated') then {numofgenerated=1;} else {numofgenerated = numofgenerated + 1;};
        diag_log format['NATS:  _random%1: %2',numofgenerated,_generator];
       
        _generator
};

	_random1 = call _fnc_VarGenerator;
		diag_log format['NATS:  _random1: %1',_random1];
	_random2 = call _fnc_VarGenerator;
		diag_log format['NATS:  _random2: %1',_random2];
	_random3 = call _fnc_VarGenerator;
		diag_log format['NATS:  _random3: %1',_random3];
	_random4 = call _fnc_VarGenerator;
		diag_log format['NATS:  _random4: %1',_random4];
	_random5 = call _fnc_VarGenerator;
		diag_log format['NATS:  _random5: %1',_random5];
	_random6 = call _fnc_VarGenerator;
		diag_log format['NATS:  _random6: %1',_random6];
	_random8 = call _fnc_VarGenerator;
		diag_log format['NATS:  _random8: %1',_random8];
	_random11 = call _fnc_VarGenerator;
		diag_log format['NATS:  _random11: %1',_random11];
	_random12 = call _fnc_VarGenerator;
		diag_log format['NATS:  _random12: %1',_random12];
	_random13 = call _fnc_VarGenerator;
		diag_log format['NATS:  _random13: %1',_random13];	
	_random19 = call _fnc_VarGenerator;
		diag_log format['NATS:  _random19: %1',_random19];
	_random20 = call _fnc_VarGenerator;
		diag_log format['NATS:  _random20: %1',_random20];
	_random21 = call _fnc_VarGenerator;
		diag_log format['NATS:  _random21: %1',_random21];
	_random27 = call _fnc_VarGenerator;
		diag_log format['NATS:  _random27: %1',_random27];	
	_AHL = call _fnc_VarGenerator;
		diag_log format['NATS:  _AHL: %1',_AHL];
		
call compile ("
	[] spawn {
		waitUntil {uiSleep 0.5; !isNil 'sm_done'};
		uiSleep 30;

		if(_antiTeleport) then {
			'"+_random1+"' addPublicVariableEventHandler {player setVariable['"+_random1+"',PVNT_adminCheck,true];};
		};
	
		if(_unauthorisedUse) then {
			'"+_random2+"' addPublicVariableEventHandler {player setVariable['"+_random2+"',PVNT_adminCheck,true];};
		
		
		};
		
		if (_majorLog) then {
			'"+_random3+"' addPublicVariableEventHandler {player setVariable['"+_random3+"',PVNT_adminCheck,true];};
		
		};
		
		if (_minorLog) then {
			'"+_random4+"' addPublicVariableEventHandler {player setVariable['"+_random4+"',PVNT_adminCheck,true];};
		};

		if (_broadcastToolUse) then{
			'"+_random4+"' addPublicVariableEventHandler {player setVariable['"+_random4+"',PVNT_adminCheck,true];};
		};
	};
	
		if(_puid in "+str _noxAllAdmins+") then
		{	
			'"+_random5+"' addPublicVariableEventHandler {player setVariable['"+_random5+"',PVNT_adminCheck,true];};
			admindefaultKeybinds =
			{
				private ['_key','_shift','_ctrl','_alt'];
				_key = _this select 1;
				_shift = _this select 2;
				_ctrl = _this select 3;
				if(_key == "+str _OpenMenuKey+") then {call adminInit;};
			};	
			
		};
			publicVariable """+_random1+""";
			publicVariable """+_random2+""";
			publicVariable """+_random3+""";
			publicVariable """+_random4+""";
			publicVariable """+_random5+""";
");
publicVariable ""+_AHL+"";NoxAH = true;