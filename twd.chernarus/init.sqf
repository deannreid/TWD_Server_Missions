startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

									//REALLY IMPORTANT VALUES
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;
player setVariable ["BIS_noCoreConversations", true];
enableRadio true;
enableSentences false;

execVM "custom\code\server\config.sqf";
execVM "ids.sqf";

//Load in compiled functions
call compile preprocessFileLineNumbers "custom\code\variables.sqf";
call compile preprocessFileLineNumbers "custom\JAEM\variables.sqf";
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";
progressLoadingScreen 0.4;
//call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";
call compile preprocessFileLineNumbers "custom\code\compiles.sqf";	
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "custom\code\server_traders.sqf";
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";
		
if (isServer) then 
	{
		_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
							   execVM "custom\code\server\server.sqf";
	};

if (!isDedicated) then 
	{
		0 fadeSound 0;
			waitUntil {!isNil "dayz_loadScreenMsg"};
				dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
					_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
						_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";
											   execVM "custom\code\server\dedicated.sqf";
	};

#include "\z\addons\dayz_code\system\REsec.sqf"
#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"