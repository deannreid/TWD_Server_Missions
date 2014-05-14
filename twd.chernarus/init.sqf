startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

									//REALLY IMPORTANT VALUES
dayZ_instance =	11;		
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;
player setVariable ["BIS_noCoreConversations", true];
enableRadio true;
enableSentences false;


									// Arma Config
	spawnShoremode = 1;
	spawnArea= 2500;
	MaxVehicleLimit = 1000;
	MaxDynamicDebris = 100;
	DynamicVehicleDamageLow = 50;
	DynamicVehicleDamageHigh = 100;

									// DayZ Config
	dayz_MapArea = 22000;
	dayz_minpos = -1; 
	dayz_maxpos = 26000;
	dayz_paraSpawn = false;
	dayz_sellDistance_vehicle = 10;
	dayz_sellDistance_boat = 30;
	dayz_sellDistance_air = 70;
	dayz_maxAnimals = 5;
	dayz_tameDogs = true;	
	dayz_fullMoonNights = true;
	dayz_zedsAttackVehicles = false;
	dayz_maxLocalZombies = 15;
	dayz_maxGlobalZombiesInit = 8;
	dayz_maxGlobalZombiesIncrease = 3;
	dayz_maxZeds = 400;
		
									// DayZ Epoch Config
	DZE_BuildOnRoads = false;
	DZE_PlayerZed   = false;
	DZE_GodModeBase = true;
	DZE_DiagFpsSlow = true;
	DZE_DiagVerbose = false;
	DZE_DiagFpsFast = false;
	DZE_DeathMsgTitleText = true;
	DZE_DeathMsgGlobal = true;
	DZE_LootSpawnTimer = 5;
	DZE_BuildingLimit = 1500;
	DZE_ForceNameTags = true;
	DZE_AllowCargoCheck = false;
	DZE_R3F_WEIGHT = false;
	DZE_vehicleAmmo	= 1;
	execVM "custom\loading\loadout.sqf";
	execVM "ids.sqf";

if ( !((getPlayerUID player) in adminAll) && !((getPlayerUID player) in userDALL)) then
{	DZE_requireplot = 0;
	DZE_StaticConstructionCount = 0;
	DZE_teleport = [99999,99999,99999,99999,99999];} 
else{
	DZE_requireplot = 0;
	DZE_StaticConstructionCount = 1;
 [] execVM "\z\addons\dayz_code\system\antihack.sqf";}; 	

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
		
if (isServer) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\dynamic_vehicle.sqf";
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\mission.sqf";
	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};

if (!isDedicated) then 
{
	0 fadeSound 0;
		waitUntil {!isNil "dayz_loadScreenMsg"};
			dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
				_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
					_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";
						["custom\elevator"] execVM "custom\elevator\elevator_init.sqf";		
							_nil = [] execVM "custom\JAEM\EvacChopper_init.sqf";						
							_nul = [] execVM "custom\loading\loginCamera.sqf";
							_nil = [] execVM "custom\death\deathmessages.sqf";
							_nil = [] execVM "custom\VehicleKeyChanger\VehicleKeyChanger_init.sqf";
									  execVM "custom\service_point\service_point.sqf";
									  execVM "custom\markers\init.sqf";
									  
};

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////// ADDONS //////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////// REsecurity/Bis ////////////////////////////////
#include "\z\addons\dayz_code\system\REsec.sqf"
#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"
/////////////////////// REsecurity/Bis ////////////////////////////////

///////////////////// Admins Tool & Donator Perk ////////////////////// 
[] execVM "custom\toolmenu\superadmin\Activate.sqf";
[] execVM "custom\toolmenu\admin\Activate.sqf";
[] execVM "custom\toolmenu\moderator\Activate.sqf";
[] execVM "custom\toolmenu\donator\Activate.sqf";
[] execVM "custom\toolmenu\moddonator\Activate.sqf";
[] execVM "custom\toolmenu\deanmenu\Activate.sqf";
[] execVM "custom\toolmenu\player\Activate.sqf";
///////////////////// Admins Tool & Donator Perk //////////////////////

/////////////////////// Lights /////////////////////////////////////
[0,0,true,true,true,58,280,600,[0.698, 0.556, 0.419],"Generator_DZ",0.1] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
////////////////////// Lights /////////////////////////////////////

///////////////////// Towing and Lifting ///////////////////// 
[] execVM "custom\R3F_ARTY_AND_LOG\init.sqf";
///////////////////// Towing and Lifting /////////////////////

///////////////////// Safe Zone /////////////////////
if (!isDedicated) then {
    [] execVM "custom\vlsafezone\safe_zone.sqf";
	[] execVM "custom\vlsafezone\init.sqf";};
///////////////////// Safe Zone /////////////////////

///////////////////// Service Points /////////////////////
if (!isDedicated) then {
    execVM "custom\service_point\service_point.sqf";};
///////////////////// Service Points /////////////////////

///////////////////// Heli/Plane, Seat Change /////////////////////
[] execVM "custom\heliswitch\seat_action.sqf";
///////////////////// Heli/Plane Seat Change /////////////////////

///////////////////// Vehicle Stow /////////////////////
execVM "custom\VehicleStow\Start.sqf";
///////////////////// Vehicle Stow /////////////////////

///////////////////// Dead Walking /////////////////////
call compile preprocessFileLineNumbers "custom\walkamongstthedead\walkamongstthedead.sqf";
///////////////////// Dead Walking /////////////////////
