// GLOBAL VARIABLES
	// Arma Config			
	MaxVehicleLimit = 500;
	MaxDynamicDebris = 10;
	DynamicVehicleDamageLow = 0;
	DynamicVehicleDamageHigh = 40;										
	
	// DayZ Config											
	dayz_paraSpawn = false;
	dayz_sellDistance_vehicle = 20;
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
	DayZ_UseSteamID = true;	

	// DayZ Epoch Config										
	DZE_DiagFpsSlow = true;
	DZE_DiagVerbose = false;
	DZE_DiagFpsFast = false;
	DZE_DeathMsgTitleText = true;
	DZE_DeathMsgGlobal = true;									
	DZE_BuildingLimit = 700;									
	DZE_AllowCargoCheck = false;										
	DZE_BuildOnRoads = false;									
	DZE_HeliLift = true;
	DZE_selfTransfuse_Values =[12000, 0.5, 240];
	DZE_selfTransfuse = true;
	DZE_snapBuilding = true;
	DZE_teleport = [500000,0,0,500000,500000];
	
	//TWD Vars
	EnableZShield = 1;
	MaxZShields	= 1; 
	ZShieldRadius = 50;
	ZShieldClean = 0;
	TypeOfZShield = "CDF_WarfareBUAVterminal";
	AllZShieldTypes = ["CDF_WarfareBUAVterminal"]; 
	
//SERVER ONLY VARIABLES
// Chernarus
if (dayZ_instance == 11) then
{
	spawnShoremode = 1;
	spawnArea= 2500;

	dayz_MapArea = 22000;
	dayz_minpos = -1; 
	dayz_maxpos = 17000;	
	dayz_spawnselection = 1;
	DZE_LootSpawnTimer = 5;									
	DZE_ForceNameTags = true;
	DZE_PlayerZed   = false;
	DZE_vehicleAmmo	= 1;
	DZE_requireplot = 0;
	DZE_PlotPole = [150,0];
	DZE_R3F_WEIGHT = false;
	DZE_StaticConstructionCount = 1;
	execVM "custom\markers\init.sqf";
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
};