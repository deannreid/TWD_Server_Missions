	diag_log "Initialising VL Compiles";
diag_log "==============================================";
		fnc_usec_selfActions =			compile preprocessFileLineNumbers "custom\code\fn_selfActions.sqf";
		player_switchModel   =			compile preprocessFileLineNumbers "custom\code\player_switchModel.sqf";
		
diag_log "==============================================";
	diag_log "Loading the Bucks";
	SC_fnc_removeCoins=
	{
	private ["_player","_amount","_wealth","_newwealth", "_result"];
		_player = _this select 0;
		_amount = _this select 1;
		_result = false;
		_wealth = _player getVariable["cashMoney",0];  
		if(_amount > 0)then
		{
			if (_wealth < _amount) then 
			{
				_result = false;
			} else {                         
					_newwealth = _wealth - _amount;
					_player setVariable["cashMoney",_newwealth, true];
					_player setVariable ["moneychanged",1,true];    
					_result = true;
					PVDZE_plr_Save = [_player,(magazines _player),true,true] ;
					publicVariableServer "PVDZE_plr_Save";            
			};
		}else{
				_result = true;
		};
			_result
	};

	SC_fnc_addCoins = 
	{
	private ["_player","_amount","_wealth","_newwealth", "_result"];			
		_player =  _this select  0;
		_amount =  _this select  1;
		_result = false;	
		_wealth = _player getVariable["cashMoney",0];
		_player setVariable["cashMoney",_wealth + _amount, true];
		PVDZE_plr_Save = [_player,(magazines _player),true,true] ;
		publicVariableServer "PVDZE_plr_Save";
		_player setVariable ["moneychanged",1,true];					
		_newwealth = _player getVariable["cashMoney",0];		
		if (_newwealth >= _wealth) then 
		{ 
			_result = true; 
		};			
			_result
	};
		BIS_fnc_numberDigits = compile preprocessFileLineNumbers "custom\bank\Player_Hud\numberDigits.sqf";
diag_log "Finished Loading Bucks"