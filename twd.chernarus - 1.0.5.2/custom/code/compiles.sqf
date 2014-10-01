//Custom Compiles
	diag_log "Initialising VL Compiles";
		fnc_usec_selfActions	 	=			compile preprocessFileLineNumbers "custom\code\fn_selfActions.sqf";
		player_selectSlot		    =			compile preprocessFileLineNumbers "custom\code\ui_selectSlot.sqf";
		local_lockUnlock 			=			compile preprocessFileLineNumbers "custom\code\local_lockUnlock.sqf";
		dayz_spaceInterrupt		    = 			compile preprocessFileLineNumbers "custom\code\dayz_spaceInterrupt.sqf";
		player_upgrade		    = 			compile preprocessFileLineNumbers "custom\code\player_upgrade.sqf";


//Custom Zeds
	diag_log "Initialising Custom Zeds";
		building_spawnZombies =			compile preprocessFileLineNumbers "custom\custom_loot\compile\building_spawnZombies.sqf";
		zombie_generate = 			compile preprocessFileLineNumbers "custom\custom_loot\compile\zombie_generate.sqf";
		wild_spawnZombies = 			compile preprocessFileLineNumbers "custom\custom_loot\compile\wild_spawnZombies.sqf";
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
	player_updateGui =			compile preprocessFileLineNumbers "custom\GUI\player_updateGui.sqf";
	diag_log "GUI successfully Injected";
	
	
	
	
//Anims
diag_log "Loading Animations";	
if (!isDedicated) then {
   mv22_pack = compile preprocessFileLineNumbers "\ca\air2\mv22\scripts\pack.sqf";
};
diag_log "Finished Loading Animations";




//Temp Fixes
diag_log "Loading Temp Fixes to Epoch";
//		player_craftItem =			compile preprocessFileLineNumbers "temp\player_craftItem.sqf";
diag_log "No Fixes Defined";	




diag_log "Loading Group Management, Plot Management and Door Management";
if (!isDedicated) then {
    player_switchModel = compile preprocessFileLineNumbers "custom\code\player_switchModel.sqf";
   
    PlotGetFriends      = compile preprocessFileLineNumbers "custom\plotManagement\plotGetFriends.sqf";
	PlotNearbyHumans    = compile preprocessFileLineNumbers "custom\plotManagement\plotNearbyHumans.sqf";
    PlotAddFriend       = compile preprocessFileLineNumbers "custom\plotManagement\plotAddFriend.sqf";
	PlotRemoveFriend    = compile preprocessFileLineNumbers "custom\plotManagement\plotRemoveFriend.sqf"; 

	player_unlockDoor =			compile preprocessFileLineNumbers "";
	DoorGetFriends 		= compile preprocessFileLineNumbers "custom\doorManagement\doorGetFriends.sqf";
	DoorNearbyHumans 	= compile preprocessFileLineNumbers "custom\doorManagement\doorNearbyHumans.sqf";
	DoorAddFriend 		= compile preprocessFileLineNumbers "custom\doorManagement\doorAddFriend.sqf";
	DoorRemoveFriend 	= compile preprocessFileLineNumbers "custom\doorManagement\doorRemoveFriend.sqf";
	player_unlockDoor       = compile preprocessFileLineNumbers "custom\doorManagement\player_unlockDoor.sqf";
	player_manageDoor       = compile preprocessFileLineNumbers "custom\doorManagement\initDoorManagement.sqf";
		player_unlockDoorCode = compile preprocessFileLineNumbers "custom\doorManagement\player_unlockDoorCode.sqf";
	player_enterCode       = compile preprocessFileLineNumbers "custom\doorManagement\player_enterCode.sqf";
	player_changeCombo = compile preprocessFileLineNumbers "custom\doorManagement\player_changeCombo.sqf"; 

	};
diag_log "Finished loading Group Management, Plot Management and Door Management";

diag_log "Loading Microsoft Paint";

VehicleColourPaint =			compile preprocessFileLineNumbers "Paint\vehicleColourPaint.sqf";
VehicleColourUpdate =			compile preprocessFileLineNumbers "Paint\VehicleColourUpdate.sqf";
VehicleColourUpdate2 =			compile preprocessFileLineNumbers "Paint\VehicleColourUpdate2.sqf";
player_paint =				compile preprocessFileLineNumbers "Paint\player_paint.sqf";
diag_log "Finished Loading Microsoft Paint";


	diag_log "Finished Initialising VL Compiles";
