//Custom Compiles

	diag_log "Initialising VL Compiles";
		fnc_usec_selfActions =			compile preprocessFileLineNumbers "custom\code\fn_selfActions.sqf";
		dayz_spaceInterrupt =			compile preprocessFileLineNumbers "custom\code\dayz_spaceInterrupt.sqf";
		player_selectSlot =			compile preprocessFileLineNumbers "custom\code\ui_selectSlot.sqf";
		local_lockUnlock =			compile preprocessFileLineNumbers "custom\code\local_lockUnlock.sqf";
		fn_gearMenuChecks =			compile preprocessFileLineNumbers "custom\code\fn_gearMenuChecks.sqf";	
if (!isDedicated) then 
{	
//Build Snap
		player_build		= compile preprocessFileLineNumbers "custom\snap\player_build.sqf";
		player_buildControls	= compile preprocessFileLineNumbers "custom\snap\player_buildControls.sqf";
		snap_object		= compile preprocessFileLineNumbers "custom\snap\snap_object.sqf";
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
	
//GUI
	diag_log "Injecting GUI";
	//player_updateGui =			compile preprocessFileLineNumbers "custom\GUI\player_updateGui.sqf";
	diag_log "GUI successfully Injected";
	
	diag_log "Finished Initialising VL Compiles";
