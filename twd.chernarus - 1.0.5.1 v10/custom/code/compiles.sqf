	diag_log "Initialising VL Compiles";
diag_log "==============================================";
	diag_log "Initialising DayZ_Code";
		fnc_usec_selfActions =						compile preprocessFileLineNumbers "custom\code\fn_selfActions.sqf";
		player_switchModel   =						compile preprocessFileLineNumbers "custom\code\player_switchModel.sqf";
		player_death =								compile preprocessFileLineNumbers "custom\dean\skinrecover\player_death.sqf";
		player_updateGui =							compile preprocessFileLineNumbers "custom\GUI\player_updateGui.sqf";
		player_selectSlot = 						compile preprocessFileLineNumbers "custom\code\ui_selectSlot.sqf";
diag_log "==============================================";
	diag_log "Initialising Snap Building";
		player_build = 								compile preprocessFileLineNumbers "custom\snap_pro\player_build.sqf";
		snap_build = 								compile preprocessFileLineNumbers "custom\snap_pro\snap_build.sqf";
		dayz_spaceInterrupt = 						compile preprocessFileLineNumbers "custom\snap_pro\dayz_spaceInterrupt.sqf";
//diag_log "==============================================";
//	diag_log "Initialising Custom Zeds";
	//	building_spawnZombies =						compile preprocessFileLineNumbers "custom\custom_loot\compile\building_spawnZombies.sqf";
	//	zombie_generate = 							compile preprocessFileLineNumbers "custom\custom_loot\compile\zombie_generate.sqf";
	//	wild_spawnZombies = 						compile preprocessFileLineNumbers "custom\custom_loot\compile\wild_spawnZombies.sqf";
//	diag_log "Finished initialising Custom Zeds";	
//diag_log "==============================================";
//	diag_log "Initialising Custom Loot";
		//building_spawnLoot =						compile preprocessFileLineNumbers "custom\custom_loot\compile\building_spawnLoot.sqf";	
		//spawn_loot =                				compile preprocessFileLineNumbers "custom\custom_loot\compile\spawn_loot.sqf";
		//spawn_loot_small =              			compile preprocessFileLineNumbers "custom\custom_loot\compile\spawn_loot_small.sqf";
		//player_spawnCheck = 						compile preprocessFileLineNumbers "custom\custom_loot\compile\player_spawnCheck.sqf";	
//	diag_log "Finished initialising Custom Loot";
diag_log "==============================================";
	diag_log "Loading Animations";	
		if (!isDedicated) then 
		{
			mv22_pack = compile preprocessFileLineNumbers "\ca\air2\mv22\scripts\pack.sqf";
		};
diag_log "Finished Loading Animations";
diag_log "==============================================";
	diag_log "Loading the Banks";
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
		BIS_fnc_numberText = compile preprocessFileLineNumbers "custom\bank\Player_Hud\numberText.sqf"; 
		call compile preprocessFileLineNumbers "custom\bank\Gold_Coin_system\Trading_Stuff\player_traderMenu.sqf";
	diag_log "Finished Loading Banks";
diag_log "==============================================";
	diag_log "Loading the fucking fixes that Epoch dev's should have fucking done.....";
			player_craftItem =			compile preprocessFileLineNumbers "fuckingfixes\player_craftItem.sqf";
	diag_log "Probably didn't load them all due to how badly coded epoch is.....";
diag_log "==============================================";
	diag_log "Finished Initialising VL Compiles";
diag_log "==============================================";