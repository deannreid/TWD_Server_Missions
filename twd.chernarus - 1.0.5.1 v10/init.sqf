	//Disable when finished testing..
	twdDebug = true;
	
diag_log "==============================================";
	diag_log "Starting Mission Init";

		startLoadingScreen ["","RscDisplayLoadCustom"];
		cutText ["","BLACK OUT"];
		enableSaving [false, false];

		dayzHiveRequest = [];
		initialized = false;
		dayz_previousID = 0;
		player setVariable ["BIS_noCoreConversations", true];
		enableRadio true;
		enableSentences false;
		execVM "custom\code\server\config.sqf"; //Instance Select
diag_log "==============================================";
		
	diag_log "Loading Default Epoch Files";
		call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";
	progressLoadingScreen 0.1;
		call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";
	progressLoadingScreen 0.2;
		call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";
	progressLoadingScreen 0.4;
		call compile preprocessFileLineNumbers "custom\code\defaultcompiles.sqf";
	progressLoadingScreen 0.5;
diag_log "Loading Custom TWD Files";
diag_log "==============================================";
	diag_log "Loading Compiles";
	call compile preprocessFileLineNumbers "custom\code\traders\11.sqf";
		call compile preprocessFileLineNumbers "custom\code\compiles.sqf";
	diag_log "Custom Compiles Loaded";
		call compile preprocessFileLineNumbers "custom\code\variables.sqf"; 
	diag_log "Custom Variables Loaded";
		call compile preprocessFileLineNumbers "custom\code\publicEH.sqf";
	diag_log "Custom Event Handlers Loaded";
diag_log "Finished Loading TWD Compiled Functions";
diag_log "==============================================";
	progressLoadingScreen 1.0;
		"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

	diag_log "Loading Server Monitor & Server Executions!";
	if (isServer) then  
		{
			_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
			execVM "custom\code\server\server.sqf";
		};
	diag_log "Finished Loading Server Monitor & Server Executions!";
diag_log "==============================================";
	diag_log "Loading Dedicated Executions!";
	if (!isDedicated) then 
		{
			0 fadeSound 0;
			waitUntil {!isNil "dayz_loadScreenMsg"};
			dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
			_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
			_playerMonitor =	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";
			execVM "custom\code\server\dedicated.sqf";
		};
	diag_log "Dedicated Executions Loaded";
diag_log "==============================================";

	diag_log "Finalizing Server Startup, Loading BIS_Effects";
		#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf";
		execVM "custom\code\server\nsd.sqf";
	diag_log "Finished Loading BIS_Effects!";

diag_log "==============================================";
	diag_log "Mission Loaded Successfully";
diag_log "==============================================";
