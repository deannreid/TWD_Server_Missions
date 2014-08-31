//Custom Compiles
if (twd_debug) then {	diag_log "Initialising VL Compiles";};
		fnc_usec_selfActions =			compile preprocessFileLineNumbers "custom\code\fn_selfActions.sqf";
		player_selectSlot =			compile preprocessFileLineNumbers "custom\code\ui_selectSlot.sqf";
		local_lockUnlock =			compile preprocessFileLineNumbers "custom\code\local_lockUnlock.sqf";
		vehicle_handleDamage    = 		compile preprocessFileLineNumbers "custom\code\vehicle_handleDamage.sqf";

//Custom Zeds
if (twd_debug) then {	diag_log "Initialising Custom Zeds";};
		building_spawnZombies =			compile preprocessFileLineNumbers "custom\custom_loot\compile\building_spawnZombies.sqf";
		zombie_generate = 			compile preprocessFileLineNumbers "custom\custom_loot\compile\zombie_generate.sqf";
		wild_spawnZombies = 			compile preprocessFileLineNumbers "custom\custom_loot\compile\wild_spawnZombies.sqf";
if (twd_debug) then {	diag_log "Finished initialising Custom Zeds";};

//Custom Loot	
if (twd_debug) then {	diag_log "Initialising Custom Loot";};
		building_spawnLoot =			compile preprocessFileLineNumbers "custom\custom_loot\compile\building_spawnLoot.sqf";	
		spawn_loot =                compile preprocessFileLineNumbers "custom\custom_loot\compile\spawn_loot.sqf";
		spawn_loot_small =              compile preprocessFileLineNumbers "custom\custom_loot\compile\spawn_loot_small.sqf";
		player_spawnCheck = 			compile preprocessFileLineNumbers "custom\custom_loot\compile\player_spawnCheck.sqf";	
if (twd_debug) then {	diag_log "Finished initialising Custom Loot";};
	
if (!isDedicated) then {
	player_build = compile preprocessFileLineNumbers "custom\snap_pro\player_build.sqf";
	snap_build = compile preprocessFileLineNumbers "custom\snap_pro\snap_build.sqf";
	dayz_spaceInterrupt = compile preprocessFileLineNumbers "custom\snap_pro\dayz_spaceInterrupt.sqf";
};
	
//GUI
if (twd_debug) then {	diag_log "Injecting GUI";};
	player_updateGui =			compile preprocessFileLineNumbers "custom\GUI\player_updateGui.sqf";
if (twd_debug) then {	diag_log "GUI successfully Injected";};
	
	
//Anims
if (twd_debug) then {diag_log "Loading Animations";};	
if (!isDedicated) then {
   mv22_pack = compile preprocessFileLineNumbers "\ca\air2\mv22\scripts\pack.sqf";
};
if (twd_debug) then {diag_log "Finished Loading Animations";};

//Temp Fixes
if (twd_debug) then {diag_log "Loading Temp Fixes to Epoch";
		player_craftItem =			compile preprocessFileLineNumbers "temp\player_craftItem.sqf";

if (twd_debug) then {diag_log "Finished Loading Temp Fixes to Epoch";};	

if (twd_debug) then {	diag_log "Finished Initialising VL Compiles";};
