	diag_log "Initialising VL Compiles";
diag_log "==============================================";
		fnc_usec_selfActions =			compile preprocessFileLineNumbers "custom\code\fn_selfActions.sqf";
		player_switchModel   =			compile preprocessFileLineNumbers "custom\code\player_switchModel.sqf";
		player_death =				compile preprocessFileLineNumbers "custom\dean\skinrecover\player_death.sqf";
		RB_refuelmenu = compile preprocessFileLineNumbers "custom\better_fuelling\refuel_vehicle_menu.sqf";
		RB_refuelSubMenuCancel = compile preprocessFileLineNumbers "custom\better_fuelling\refuel_cancel.sqf";
		player_updateGui =			compile preprocessFileLineNumbers "custom\GUI\player_updateGui.sqf";
diag_log "==============================================";
		
diag_log "==============================================";
	diag_log "Loading Build Snapping and A Plot for Life";
	dayz_spaceInterrupt =		compile preprocessFileLineNumbers "custom\snap_pro\dayz_spaceInterrupt.sqf";
	DZE_snap_build_file = 		"custom\snap_pro\snap_build.sqf"; // Set as a global variable as it is also referenced in snapbuild.sqf
	snap_build = 				compile preprocessFileLineNumbers DZE_snap_build_file;
	
	fnc_usec_damageActions =	compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Compile\fn_damageActions.sqf";
	player_packTent =			compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Compile\player_packTent.sqf";
	player_packVault =			compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Compile\player_packVault.sqf";
	player_unlockVault =		compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Compile\player_unlockVault.sqf";
	player_lockVault =			compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Compile\player_lockVault.sqf";
	player_updateGui =			compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Compile\player_updateGui.sqf";
	player_tentPitch =			compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Action\tent_pitch.sqf";
	player_vaultPitch =			compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Action\vault_pitch.sqf";
	player_build =				compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Action\modular_build.sqf";
	player_build_countNearby =	compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Action\player_build_countNearby.sqf";
	player_build_states =		compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Action\player_build_states.sqf";
	player_build_needNearby =	compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Action\player_build_needNearby.sqf";
	player_build_getConfig =	compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Action\player_build_getConfig.sqf";
	player_build_plotCheck =	compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Action\player_build_plotCheck.sqf";
	player_build_buildReq =		compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Action\player_build_buildReq.sqf";
	player_build_create =		compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Action\player_build_create.sqf";
	player_build_controls =		compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Action\player_build_controls.sqf";
	player_build_publish =		compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Action\player_build_publish.sqf";
	FNC_check_owner =			compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Compile\fn_check_owner.sqf";
	FNC_find_plots =			compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Compile\fn_find_plots.sqf";
	player_plotPreview = 		compile preprocessFileLineNumbers "custom\A_Plot_for_Life\Action\object_showPlotRadius.sqf";
	diag_log "Finished loading Build Snapping and A Plot for Life";
diag_log "==============================================";

	diag_log "PlotManagement & Door Management";
	PlotGetFriends      = compile preprocessFileLineNumbers "custom\plotManagement\plotGetFriends.sqf";
	PlotNearbyHumans    = compile preprocessFileLineNumbers "custom\plotManagement\plotNearbyHumans.sqf";
	PlotAddFriend       = compile preprocessFileLineNumbers "custom\plotManagement\plotAddFriend.sqf";
	PlotRemoveFriend    = compile preprocessFileLineNumbers "custom\plotManagement\plotRemoveFriend.sqf";
	diag_log "PlotManagement & Door Management";
diag_log "==============================================";















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
	diag_log "Finished Initialising VL Compiles";
diag_log "==============================================";