/*===============================
  == This file defines the different variables per-server
  == It will make map change easier
  == To change the server Go to the config file and comment out the old one and uncomment server you are moving too :)
  == Love Dean,
  ===============================*/

// GLOBAL VARIABLES
	// Arma Config			
	MaxVehicleLimit = 1000;
	MaxDynamicDebris = 100;
	DynamicVehicleDamageLow = 50;
	DynamicVehicleDamageHigh = 100;										

	// DayZ Config											
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
	DZE_DiagFpsSlow = true;
	DZE_DiagVerbose = false;
	DZE_DiagFpsFast = false;
	DZE_DeathMsgTitleText = true;
	DZE_DeathMsgGlobal = true;									
	DZE_BuildingLimit = 1500;									
	DZE_AllowCargoCheck = false;										
	DZE_BuildOnRoads = false;									

	
//SERVER ONLY VARIABLES

// Chernarus
if (dayZ_instance == 11) then
{
	spawnShoremode = 1;
	spawnArea= 2500;

	dayz_MapArea = 22000;
	dayz_minpos = -1; 
	dayz_maxpos = 26000;	

	DZE_LootSpawnTimer = 5;									
	DZE_ForceNameTags = true;
	DZE_PlayerZed   = false;
	DZE_vehicleAmmo	= 1;
	DZE_requireplot = 0;
	DZE_GodModeBase = true;
	DZE_R3F_WEIGHT = false;

	if (isServer) then 
		{
			call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\dynamic_vehicle.sqf";
			_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\mission.sqf";
		};

};

//Panthera
if (dayZ_instance == 16) then
{
	spawnShoremode = 1;
	spawnArea= 1500;
	
	dayz_MapArea = 22000;
	dayz_minpos = -1; 
	dayz_maxpos = 14000;	

	DZE_LootSpawnTimer = 10;									
	DZE_ForceNameTags = true;
	DZE_PlayerZed   = true;
	DZE_vehicleAmmo	= 2;
	DZE_requireplot = 1;
	DZE_GodModeBase = false;
	DZE_R3F_WEIGHT = true;	

	if (isServer) then 
		{
			call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_16.Panthera2\dynamic_vehicle.sqf";
			_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_16.Panthera2\mission.sqf";
		};
};

//Lingor
if (dayZ_instance == 7) then
{
	spawnShoremode = 1;
	spawnArea= 1500;
	
	dayz_MapArea = 12000;
	dayz_minpos = -1; 
	dayz_maxpos = 14000;	

	DZE_LootSpawnTimer = 10;									
	DZE_ForceNameTags = true;
	DZE_PlayerZed   = false;
	DZE_vehicleAmmo	= 1;
	DZE_requireplot = 0;
	DZE_GodModeBase = true;
	DZE_R3F_WEIGHT = false;	

	if (isServer) then 
		{
			call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_7.Lingor\dynamic_vehicle.sqf";
			_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_7.Lingor\mission.sqf";
		};
};

//Namalsk
if (dayZ_instance == 15) then
{
	spawnShoremode = 1;
	spawnArea= 1500;
	
	dayz_MapArea = 8000;
	dayz_minpos = -1; 
	dayz_maxpos = 14000;	

	DZE_LootSpawnTimer = 10;									
	DZE_ForceNameTags = true;
	DZE_PlayerZed   = false;
	DZE_vehicleAmmo	= 1;
	DZE_requireplot = 0;
	DZE_GodModeBase = true;
	DZE_R3F_WEIGHT = false;	

	if (isServer) then 
		{
			call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_15.namalsk\dynamic_vehicle.sqf";
			_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_15.namalsk\mission.sqf";
		};
};

if ( !((getPlayerUID player) in adminAll) && !((getPlayerUID player) in userDALL)) then
		{	
			DZE_StaticConstructionCount = 1;
			[] execVM "\z\addons\dayz_code\system\antihack.sqf";
		}
	else	
		{
			DZE_StaticConstructionCount = 0;
			DZE_teleport = [99999,99999,99999,99999,99999];
		}; 	

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////// ADDONS //////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


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

///////////////////// Heli/Plane, Seat Change /////////////////////
[] execVM "custom\heliswitch\seat_action.sqf";
///////////////////// Heli/Plane Seat Change /////////////////////

///////////////////// Vehicle Stow /////////////////////
execVM "custom\VehicleStow\Start.sqf";
///////////////////// Vehicle Stow /////////////////////

///////////////////// Dead Walking /////////////////////
call compile preprocessFileLineNumbers "custom\walkamongstthedead\walkamongstthedead.sqf";
///////////////////// Dead Walking /////////////////////	