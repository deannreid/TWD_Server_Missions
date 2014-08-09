//Custom Compiles

	diag_log "Initialising VL Compiles";
		player_selectSlot =			compile preprocessFileLineNumbers "custom\code\ui_selectSlot.sqf";
		local_lockUnlock =			compile preprocessFileLineNumbers "custom\code\local_lockUnlock.sqf";
		fn_gearMenuChecks =			compile preprocessFileLineNumbers "custom\code\fn_gearMenuChecks.sqf";	
		convertPlayerUID  = 		compile preprocessFileLineNumbers "custom\code\convertPUID.sqf";
		fnc_usec_damageActions  = compile preprocessFileLineNumbers "custom\code\fn_damageActions.sqf";

if (!isDedicated) then {
	DZE_SNAP_PRO_USE_COMMAND_MENU = false;
	DZE_SNAP_BUILD_NUMKEYS = [0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B];
	player_build = compile preprocessFileLineNumbers "custom\snap_pro\player_build.sqf";
	snap_build = compile preprocessFileLineNumbers "custom\snap_pro\snap_build.sqf";
	dayz_spaceInterrupt = compile preprocessFileLineNumbers "custom\snap_pro\dayz_spaceInterrupt.sqf";
};

//Custom Zeds
	diag_log "Initialising Custom Zeds";
		building_spawnZombies =			compile preprocessFileLineNumbers "custom\custom_loot\compile\building_spawnZombies.sqf";
		zombie_generate = 			compile preprocessFileLineNumbers "custom\custom_loot\compile\zombie_generate.sqf";			//Server compile, used for loiter behaviour
		wild_spawnZombies = 			compile preprocessFileLineNumbers "custom\custom_loot\compile\wild_spawnZombies.sqf";			//Server compile, used for loiter behaviour
	diag_log "Finished initialising Custom Zeds";	

//Custom Loot	
	diag_log "Initialising Custom Loot";
		building_spawnLoot =			compile preprocessFileLineNumbers "custom\custom_loot\compile\building_spawnLoot.sqf";	
		spawn_loot =                compile preprocessFileLineNumbers "custom\custom_loot\compile\spawn_loot.sqf";
		spawn_loot_small =              compile preprocessFileLineNumbers "custom\custom_loot\compile\spawn_loot_small.sqf";
		player_spawnCheck = 			compile preprocessFileLineNumbers "custom\custom_loot\compile\player_spawnCheck.sqf";	
	diag_log "Finished initialising Custom Loot";
	
	
	if (dayZ_instance == 13) then
	{
		diag_log "Origins Mod Found, Loading Origins Compiles!";
		player_buildStronghold = 		compile preprocessFileLineNumbers "custom\code\tavi\build\stronghold\s.sqf";
		player_removeObject =			compile preprocessFileLineNumbers "custom\code\tavi\remove.sqf";
		player_selectSlot = 			compile preprocessFileLineNumbers"custom\code\tavi\ui_selectSlot.sqf";
		fnc_usec_selfActions = 			compile preprocessFileLineNumbers "custom\code\tavi\fn_selfActions.sqf";
		diag_log "Origins Compiles Loaded";
	};
	
//Custom Trader
	/*diag_log "Initialising Custom Traders";
	if (DZE_ConfigTrader) then {
		call compile preprocessFileLineNumbers "custom\code\player_traderMenuConfig.sqf";
	}else{
		call compile preprocessFileLineNumbers "custom\code\player_traderMenuHive.sqf";
	};
	diag_log "Finished initialising Custom Traders";*/
//GUI
	diag_log "Injecting GUI";
	player_updateGui =			compile preprocessFileLineNumbers "custom\GUI\player_updateGui.sqf";
	diag_log "GUI successfully Injected";
	
	diag_log "Finished Initialising VL Compiles";
