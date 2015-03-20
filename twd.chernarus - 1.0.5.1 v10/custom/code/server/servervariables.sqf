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
	dayz_maxAnimals = 10;
	dayz_tameDogs = true;	
	dayz_fullMoonNights = true;
	dayz_zedsAttackVehicles = false;
	dayz_maxLocalZombies = 60;
	dayz_maxGlobalZombiesInit = 10;
	dayz_maxGlobalZombiesIncrease = 10;
	dayz_maxZeds = 3000;
	dayz_dawn = 6; //am
	dayz_dusk = 18; //pm

	DayZ_UseSteamID = true;	
	// DayZ Epoch Config										
	DZE_DiagFpsSlow = false; //-|
	DZE_DiagVerbose = false; // | These Don't even work its so effing useful.
	DZE_DiagFpsFast = false; //-|
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
	DZE_AntiWallLimit = 3;
	DZE_AsReMix_PLAYER_HUD = false;	
	DZE_MissionLootTable = true;
	DZE_Debug_Damage = true;
	DZE_FriendlySaving = true; //Enable Saving of Friends etc.
	
	twdGUIMoney = true;
	twdGUIBTFH = true;
	twdGUIHardcore = false;
	timezoneswitch = 0;


	EpochEvents = [
	["any","any","any","any",5,"pantypooper"],
		["any","any","any","any",15,"pantypooper"],
			["any","any","any","any",30,"pantypooper"],
				["any","any","any","any",45,"pantypooper"],
	["any","any","any","any",0,"booty"],
		["any","any","any","any",20,"booty"],
			["any","any","any","any",40,"booty"],
	["any","any","any","any",10,"Construction"],
		["any","any","any","any",35,"Construction"],
			["any","any","any","any",50,"Construction"]
	];
	
//SERVER ONLY VARIABLES
// Chernarus
if (dayZ_instance == 11) then
{
	spawnShoremode = 1;
	spawnArea= 2500;

	dayz_MapArea = 22000;
	dayz_minpos = -1; 
	dayz_maxpos = 17000;	
	dayz_spawnselection = 0; //Broken Fix later.
	DZE_LootSpawnTimer = 10;	
	
	DZE_ForceNameTags = true;
	DZE_PlayerZed   = false;
	DZE_requireplot = 0;
	DZE_GodModeBase = true;
	DZE_PlotPole = [100,0];
	DZE_R3F_WEIGHT = false;
	DZE_StaticConstructionCount = 1;
	DZE_ConfigTrader = true;
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
	DZE_R3F_WEIGHT = false;	
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
	DZE_requireplot = 1;
	DZE_PlotPole = [90,0];
	DZE_StaticConstructionCount = 1;
	DZE_GodModeBase = false;
	DZE_R3F_WEIGHT = true;	
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
	
	ns_blowout = true;
	ns_blowout_dayz = true;
	ns_blow_delaymod = 0.74;
	ns_blow_itemapsi = "NVGoggles"; //ItemAPSI replacement
	ns_blow_playerdamage = 4000;
	ns_blow_emp = false;
	dzn_ns_bloodsucker = true;
	dzn_ns_bloodsucker_den = 400;
};
