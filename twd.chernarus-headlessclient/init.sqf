startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;
player setVariable ["BIS_noCoreConversations", true];
enableRadio true;
enableSentences false;

execVM "custom\code\server\config.sqf";
execVM "ids.sqf";

call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "custom\code\server_traders.sqf";
call compile preprocessFileLineNumbers "custom\code\compiles.sqf";
call compile preprocessFileLineNumbers "custom\code\variables.sqf";
call compile preprocessFileLineNumbers "custom\code\publicEH.sqf";
progressLoadingScreen 1.0;

if (isServer) then  { execVM "custom\code\server\server.sqf"; };
if (!isDedicated) then { execVM "custom\code\server\dedicated.sqf"; };
#include "\z\addons\dayz_code\system\REsec.sqf";
#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf";

[] execVM "custom\code\server\rnd.sqf";
