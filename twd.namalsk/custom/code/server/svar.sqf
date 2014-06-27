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
	server_name = "V3Cherno"; 
	dayz_MapArea = 22000;
	dayz_minpos = -1; 
	dayz_maxpos = 26000;	
	dayz_spawnselection = 1;
	DZE_LootSpawnTimer = 5;									
	DZE_ForceNameTags = true;
	DZE_PlayerZed   = false;
	DZE_vehicleAmmo	= 1;
	DZE_requireplot = 0;
	DZE_GodModeBase = true;
	DZE_R3F_WEIGHT = false;
	DZE_StaticConstructionCount = 1;
	[] execVM "custom\markers\init.sqf";
	[] execVM "custom\vlsafezone\init.sqf";
};

//Panthera
if (dayZ_instance == 16) then
{
	spawnShoremode = 1;
	spawnArea= 1500;
	server_name = "V3Panthera"; 
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
	server_name = "V3Lingor"; 
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
	server_name = "V3Namalsk"; 
	DZE_LootSpawnTimer = 10;									
	DZE_ForceNameTags = true;
	DZE_PlayerZed   = false;
	DZE_vehicleAmmo	= 1;
	DZE_requireplot = 0;
	DZE_GodModeBase = true;
	DZE_R3F_WEIGHT = false;	
	
	dzn_ns_bloodsucker = true;
	dzn_ns_bloodsucker_den = 300;
	ns_blowout = true; // true / false
	ns_blowout_dayz = true;// true / false
	ns_blow_delaymod = 0.74; //blowout delay
	ns_blow_itemapsi = "APSI"; //ItemAPSI replacement
	ns_blow_playerdamage = 3000; // damage players without ns_blow_itemapsi can get per blowout
	ns_blow_emp = false; //Namalsk Only				
	ns_aii_l_status = 1;
	ns_aiii_l_intensity = 0.05;
};

if (!isNil "server_name") then {
  [] spawn {
      waitUntil {(!isNull Player) and (alive Player) and (player == player)};
      waituntil {!(isNull (findDisplay 46))};
      5 cutRsc ["wm_disp","PLAIN"];
      ((uiNamespace getVariable "wm_disp") displayCtrl 1) ctrlSetText server_name;
  };
};