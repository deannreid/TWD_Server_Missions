/*
	DZAI Configuration File
	
	Description: Contains all configurable settings of DZAI. Contains settings for debugging, customization of AI units, spawning, and loot.
	

*/

diag_log "[DZAI] Reading DZAI configuration file.";

/*	DZAI Settings
--------------------------------------------------------------------------------------------------------------------*/	

//Enable or disable event logging to arma2oaserver.rpt. Debug level setting. 0: No debug output, 1: Basic Debug output, 2: Extended Debug output. (Default: 0)
//Debug output may help finding additional information about DZAI's background behavior. This output is helpful when asking for help regarding bugs or unexpected behaviors.
DZAI_debugLevel = 0;

//Frequency of server monitor update to RPT log in seconds. The monitor periodically reports number of max/current AI units and dynamically spawned triggers into RPT log. (Default: 300, 0 = Disable reporting)										
DZAI_monitorRate = 300;

//Enable or disable verification and error-correction of classname tables used by DZAI. If invalid entries are found, they are removed and logged into the RPT log.
//If disabled, any invalid classnames will not be removed and clients may crash if AI bodies with invalid items are looted. Only disable if a previous scan shows no invalid classnames (Default: true).										
DZAI_verifyTables = true;

//(Feature in development) Enables additional checking and error-correction of certain classname tables. (Default: false)
DZAI_extendedVerify = false;

//Enable to have server spawn in objects/buildings normally spawned clientside by DayZ's CfgTownGenerator. Prevents AI from walking/shooting through clutter and other objects. (Default: true)	
//If running DayZ Mod ("vanilla DayZ") or DayZ Overwatch, it is highly recommended to enable this option, as many added buildings are handled by the CfgTownGenerator. Not used with Epoch.							
DZAI_objPatch = true;

//Minimum seconds to pass until each dead AI body or destroyed vehicle can be cleaned up by DZAI's task scheduler. DZAI will not clean up a body/vehicle if there is a player close by (Default: 900).	
//Note: Other cleanup scripts might interfere by cleaning up dead AI bodies/vehicles!									
DZAI_cleanupDelay = 900;									

//Enable auto detection of DayZ mod type ran by server. If additional support exists for the mod type, DZAI will load additional classnames (example: weapons, skins, or other items)
//Additional support exists for the following DayZ mods: Epoch, Overwatch, Unleashed, Hunting Grounds, 2017. (Default: true)
DZAI_modAutoDetect = true;


/*	AI Unit Settings
--------------------------------------------------------------------------------------------------------------------*/		

//Enhanced AI health system setting. 
//If enabled, AI units will use DayZ's 12,000 blood system, can be knocked unconscious and Tasered, and can self-bloodbag/morphine. If disabled, AI units will use default Arma 2 damage handling. (Default: true)
DZAI_useHealthSystem = true;

//Minimum and maximum AI blood level to spawn each unit with. Each individual unit will have a randomized blood level within this range. Upper limit: 12000 blood (Default: [10000,12000])
//Note: No effect if DZAI_useHealthSystem is false
DZAI_unitBloodLevel = [10000,12000];

//Amount of blood restored from a full self-heal. One-third of the total amount is restored 3 times every 3 seconds. Note: Applies to infantry-type AI units. (Default: 6000)
//Note: No effect if DZAI_useHealthSystem is false
DZAI_unitHealAmount = 6000;

//Below this blood level, AI may decide to heal themselves for amount specified by DZAI_unitHealAmount. Healing requires 9 seconds to fully complete and can be interrupted by knocking the unit unconscious. (Default: 5000)
//Note: No effect if DZAI_useHealthSystem is false
DZAI_lowBloodLevel = 5000;

//Enable or disable zombie attraction to AI weapon sounds. No effect if DZAI_zombieEnemy is set to false. Enabling this option may impact server performance as a script is run for each AI bullet fired.
//Note: AI cannot be attacked or damaged by zombies.(Default: false)		
DZAI_weaponNoise = true;

//If enabled, AI group will attempt to track down player responsible for killing a group member. Players with radios will be given text warnings if they are being pursued (Default: true)
DZAI_findKiller = true;	

//If normal probability check for spawning NVGs fails, then give AI temporary NVGs only if they are spawned with weapongrade 1 or higher (applies only during nighttime hours). Temporary NVGs are unlootable and will be removed at death (Default: false).									
DZAI_tempNVGs = true;	

//Amount of humanity to reward player for killing an AI unit (Default: 0)									
DZAI_humanityGain = 50;										

//If enabled, players with radios will be given text warnings if they are being pursued by AI groups. (Default: true)
DZAI_radioMsgs = true;

//If enabled, last surviving unit of a group will be granted slightly boosted skills. No effect if unit is spawned alone (Default: false)
DZAI_lastManStanding = true;


/*DZAI client-side addon settings. 
**NOTE**: These settings require the DZAI client-side addon to be installed to your mission pbo file in order to work.
--------------------------------------------------------------------------------------------------------------------*/	

//Enable to use client-side radio addon for radio messages instead of remote execution method. (Default: false)
DZAI_clientRadio = false;

//Enable or disable AI hostility to zombies. If enabled, AI units spawned by DZAI will attack nearby zombies. (Default: false)
DZAI_zombieEnemy = false;	

//Maximum distance (in meters) for AI group leader to detect zombies. Increasing range beyond default may negatively impact server performance. (Default: 150)							
DZAI_zDetectRange = 150;

//Enable or disable AI death messages. Messages will be sent only to player responsible for killing the unit. Messages will be sent in System chat in the format "(Unit name) was killed." (Default: false)
DZAI_deathMessages = false;									


/*	Static AI Spawning Settings
--------------------------------------------------------------------------------------------------------------------*/	

//Enable or disable static AI spawns. If enabled, AI spawn points will be generated in cities, towns, and other predefined areas. Does not affect custom-defined spawns (Default: true).
DZAI_staticAI = true;

//Set minimum and maximum wait time in seconds to respawn an AI group after all units have been killed. Applies to both static AI and custom spawned AI (Default: Min 300, Max 600).									
DZAI_respawnTimeMin = 300;
DZAI_respawnTimeMax = 600;

//Time to allow spawned AI units to exist in seconds before being despawned when no players are present in a trigger area. Applies to both static AI and custom spawned AI (Default: 120)										
DZAI_despawnWait = 120;										

//Respawn limits. Set to -1 for unlimited respawns. (Default: -1 for each).
DZAI_respawnLimit0 = -1; 	//Respawn limit for low level AI found in low-value areas (Default: -1)
DZAI_respawnLimit1 = -1; 	//Respawn limit for mid level AI found in cities and other mid-value areas (Default: -1)
DZAI_respawnLimit2 = -1; 	//Respawn limit for high level AI found in places with military loot (Default: -1)
DZAI_respawnLimit3 = -1; 	//Respawn limit for very high level AI in places with high-grade military loot (Default: -1)

//Spawn probabilities
DZAI_spawnChance0 = 0.40;	//Spawn chance for low-skill AI typically found in small towns (Default: 0.40)
DZAI_spawnChance1 = 0.60;	//Spawn chance for mid-level AI typically found in cities and large towns (Default: 0.60)
DZAI_spawnChance2 = 0.80;	//Spawn chance for high-level AI typically found in places with military-grade loot (Default: 0.80)
DZAI_spawnChance3 = 0.90;	//Spawn chance for expert-level AI found in areas with high-grade military loot (Default: 0.90)


/*	Dynamic AI Spawning Settings
--------------------------------------------------------------------------------------------------------------------*/		

//Enable or disable dynamic AI spawns. If enabled, AI spawn locations will be generated for randomly selected players at randomized intervals (Default: true)									
DZAI_dynAISpawns = true;

//Time (seconds) required to reach maximum spawn probability per player, after which the probability is reset to 0%. Lower number = More frequent spawns, Higher Number = Less frequent. (Recommended range: 1200-2700, Default: 1200)
DZAI_maxSpawnTime = 1200;

//Time (seconds) to allow each player to retain maximum spawn probability. (Default: 1200).
DZAI_keepMaxSpawnTime = 1200;

//Probability for dynamic AI to actively hunt a targeted player. If probability check fails, dynamic AI will patrol the area instead of hunting (Default: 0.50)
DZAI_huntingChance = 0.50;

//Probability to send first available AI helicopter to reinforce dynamic AI group. No effect if DZAI_maxHeliPatrols is set to zero. (Default: 0.50)
DZAI_heliReinforceChance = 0.50;

//Array of area blacklist markers. Players within marker areas will not be targeted for dynamic AI spawns (Example: ["BlacklistArea1","BlacklistArea2","BlacklistArea3"])
//Epoch: DZAI will automatically set up 200m-radius blacklist areas around each trader area.
DZAI_dynAreaBlacklist = [];

//Time to wait before despawning all AI units in dynamic spawn area when no players are present. (Default: 120)
DZAI_dynDespawnWait = 120;

//Enable or disable dynamic spawn-free zones of 600m radius around player spawn areas. (Default: false)
DZAI_freshSpawnSafeArea = false;


/*	Random AI Spawning Settings (Feature in development)
--------------------------------------------------------------------------------------------------------------------*/		

//Maximum number of placed random spawns on map
DZAI_maxRandomSpawns = 5;

//Time to wait before despawning all AI units in random spawn area when no players are present. (Default: 120)
DZAI_randDespawnWait = 120;

//Array of area blacklist markers. Players within marker areas will not be targeted for random AI spawns (Example: ["BlacklistArea1","BlacklistArea2","BlacklistArea3"])
//Epoch: DZAI will automatically set up 200m-radius blacklist areas around each trader area.
//Tip: To use dynamic-spawn blacklist areas for random-spawn blacklist areas, simply set DZAI_randAreaBlacklist = DZAI_dynAreaBlacklist;
DZAI_randAreaBlacklist = [];


/*	AI Air vehicle patrol settings. These AI vehicles will randomly travel between different cities and towns.
--------------------------------------------------------------------------------------------------------------------*/		

//Global maximum number of active AI air vehicle patrols. Set at 0 to disable (Default: 0).							
DZAI_maxHeliPatrols = 2;

//Set minimum and maximum wait time in seconds to respawn an AI vehicle patrol after vehicle is destroyed or disabled. (Default: Min 600, Max 900).
DZAI_respawnTMinA = 600;
DZAI_respawnTMaxA = 900;

//Classnames of air vehicle types to use, with the maximum amount of each type to spawn.
DZAI_heliList = [
	["UH1H_DZ",5],
	["Mi17_DZ",5]
];

//Difficulty level of air vehicle patrol units. Difficulty level also affects unit loadout and loot. Possible values: 0 to 3 (Default: 3)
DZAI_heliUnitLevel = 3;

//Maximum number of gunner units per air vehicle. Limited by actual number of available gunner positions. (Default: 2)
DZAI_heliGunnerUnits = 3;

//Specify vehicle weapon for air vehicles that are unarmed by default. DZAI will arm these air vehicles with the specified weapons upon spawning each vehicle.
//Weapon classnames are verified. If the classname is invalid (banned or nonexistent), it will not be added to the vehicle.
//Format: Each row containing a vehicle classname will be equipped with the weapon from the corresponding row in weapon classnames section. DZAI will automatically select ammo type.
DZAI_airWeapons = [
	//Air vehicle classnames (Remember: no comma for last entry! Otherwise, separate each string with commas)
	["Helicopter1_Example_Classname","Helicopter2_Example_Classname"]
	,
	//Corresponding weapon classnames (Remember: no comma for last entry! Otherwise, separate each string with commas)
	["Helicopter1_Example_Weapon","Helicopter2_Example_Weapon"]
];


/*AI Land vehicle patrol settings. These AI vehicles will randomly travel between different cities and towns.
--------------------------------------------------------------------------------------------------------------------*/	

//Global maximum number of active AI land vehicle patrols. Set at 0 to disable (Default: 0).	
DZAI_maxLandPatrols = 2;

//Set minimum and maximum wait time in seconds to respawn an AI vehicle patrol after vehicle is destroyed or disabled. (Default: Min 600, Max 900).
DZAI_respawnTMinL = 600;
DZAI_respawnTMaxL = 900;

//Classnames of land vehicle types to use, with the maximum amount of each type to spawn.
DZAI_vehList = [
	["UAZ_Unarmed_TK_EP1",5],
	["SUV_TK_CIV_EP1",5]
];

//Difficulty level of land vehicle patrol units. Difficulty level also affects unit loadout and loot. Possible values: 0 to 3 (Default: 3)
DZAI_vehUnitLevel = 3;

//Maximum number of gunner units per land vehicle. Limited by actual number of available gunner positions. (Default: 1)
DZAI_vehGunnerUnits = 2;

//Maximum number of cargo units per land vehicle. Limited by actual number of available cargo positions. (Default: 3)
DZAI_vehCargoUnits = 3;


/*	AI Vehicle (Air & Land) Settings
--------------------------------------------------------------------------------------------------------------------*/

//Array of area blacklist markers. Areas covered by marker will not be used as waypoints for vehicle patrols. (Example: ["BlacklistArea1","BlacklistArea2","BlacklistArea3"])
//Note: Vehicles may still pass through these areas but will not make stops unless enemies are encountered.
DZAI_waypointBlacklist = [];


/*	AI weapon selection settings
--------------------------------------------------------------------------------------------------------------------*/

//True: Dynamically generate AI weapon list from CfgBuildingLoot (DayZ loot tables). False: Use preset weapon tables located near the end of this file. (Default: true).
//Highly recommended to enable DZAI_verifyTables if this option is set to false. 
DZAI_dynamicWeaponList = true;

//Determines whether DZAI reads from default DayZ loot tables for dynamic AI weapon generation or from user-installed custom loot tables. (Default: false)
//No effect if DZAI_dynamicWeaponList is 'false'. If DZAI is unable to find custom loot tables installed, default loot tables will be used instead. If no loot tables are found, DZAI will use prebuilt weapon tables.
DZAI_customLootTables = true;

//List of classnames of weapons that AI should never use. By default, AI may carry any lootable weapon. (Only if DZAI_dynamicWeaponList = true)  
//Example: DZAI_banAIWeapons = ["M107_DZ","BAF_AS50_scoped"] will remove the M107 and AS50 from AI weapon tables if dynamic weapon list is enabled.								
//Note: It is recommended to add all melee weapon classnames into this list as AI have issues using melee weapons. 
//Pre-banned weapons by DZAI: "Crossbow_DZ","Crossbow","MeleeHatchet","MeleeCrowbar","MeleeMachete","MeleeBaseball","MeleeBaseBallBat","MeleeBaseBallBatBarbed","MeleeBaseBallBatNails"
DZAI_banAIWeapons = [];										

//List of launcher-type weapons for mid/high-level AI to use (by default, weapongrade 1/2/3), example: ["M136"]. If left empty, AI will not use launcher weapons. (Default: [])
//If AI encounter an armored player vehicle, they will switch to a randomly-selected launcher-type weapon to engage.
//Weapon classnames added here are verified if DZAI_verifyTables is set to true. Note: Launcher weapons are removed from the AI unit upon death.
DZAI_launcherTypes = [];	

//List of AI weapongrades that are permitted to use launcher-type weapons. Individual custom weapongrade levels may be added to allow launcher use (Default: [1,2,3])
DZAI_launcherLevels = [1,2,3];								

//Limit of number of launcher-type weapons to add to each AI group. Groups cannot have more launcher weapons than their weapongrade value (Default: 1).
DZAI_launchersPerGroup = 1;


/*	AI loot quantity settings
--------------------------------------------------------------------------------------------------------------------*/

//Number of selections of medical items (Inventory)
DZAI_invmedicals = 1;

//Number of selections of edible items (Inventory) 										
DZAI_invedibles = 1;	

//Number of selections of medical items (Backpack)									
DZAI_bpmedicals = 1; 	

//Number of selections of edible items (Backpack)									
DZAI_bpedibles = 1;	

//Maximum number of items to select from DZAI_MiscItemS table.										
DZAI_numMiscItemS = 3;						

//Maximum number of items to select from DZAI_MiscItemL table.				
DZAI_numMiscItemL = 1;										


/*	AI loot probability settings
--------------------------------------------------------------------------------------------------------------------*/

//Chance to add each medical item.
DZAI_chanceMedicals = 0.70;	

//Chance to add each edible item.								
DZAI_chanceEdibles = 0.70;

//Chance to add each random item from DZAI_MiscItemS table.									
DZAI_chanceMiscItemS = 0.60;

//Chance to add each random item from DZAI_MiscItemL table.								
DZAI_chanceMiscItemL = 0.15;								


/*AI weapon/skill probabilities (gradeChances should add up to 1.00) - [Civilian, Military, MilitarySpecial, HeliCrash] - Note: AI with higher grade weaponry will also have higher skill settings.
--------------------------------------------------------------------------------------------------------------------*/

//equipType level 0 - most AI will have basic pistols or rifles, and occasionally common military weapons.
DZAI_gradeChances0 = [0.90,0.10,0.00,0.00];	

//equipType level 1 - most AI will have common rifles, many will have common military weapons. Very rarely, AI will spawn with high-grade military or helicrash weapons.				
DZAI_gradeChances1 = [0.65,0.30,0.04,0.01];	

//equipType level 2 - most AI carry military weapons, and occasionally high-grade military weapons.				
DZAI_gradeChances2 = [0.15,0.65,0.15,0.05];

//equipType level 3 - All AI will carry at least a military-grade weapon. Many will be carrying high-grade military weapons. Note: Air and land vehicle patrols use equipType level 3.					
DZAI_gradeChances3 = [0.00,0.50,0.35,0.15];	

//equipType level "dynamic" - Weapongrade chances for dynamic-spawned AI. Majority of dynamic AI will be carrying low-grade military weapons, some will carry high-grade military.			
DZAI_gradeChancesDyn = [0.00,0.88,0.09,0.03];				


/*
	AI skill settings
	Skill Level: Description
	0-1: Low to medium-skilled AI. Most common type of AI encountered. Intended to challenge players.
	2-3: High-skilled AI. Uncommon/rare type of AI found in places with military loot. Intended to kill players.
	Hint: The best way to quickly adjust AI difficulty is by modifying aimingAccuracy value. For all skill types, higher number = better skill.
*/

//AI skill settings level 0 (Skill, Minimum skill, Maximum skill). Baseline skill level: 0.50
DZAI_skill0 = [	
	["aimingAccuracy",0.10,0.125],
	["aimingShake",0.50,0.59],
	["aimingSpeed",0.50,0.59],
	["endurance",0.50,0.59],
	["spotDistance",0.50,0.59],
	["spotTime",0.50,0.59],
	["courage",0.50,0.59],
	["reloadSpeed",0.50,0.59],
	["commanding",0.60,0.69],
	["general",0.60,0.69]
];

//AI skill settings level 1 (Skill, Minimum skill, Maximum skill). Baseline skill level: 0.60
DZAI_skill1 = [	
	["aimingAccuracy",0.125,0.15],
	["aimingShake",0.60,0.69],
	["aimingSpeed",0.60,0.69],
	["endurance",0.60,0.69],
	["spotDistance",0.60,0.69],
	["spotTime",0.60,0.69],
	["courage",0.60,0.69],
	["reloadSpeed",0.60,0.69],
	["commanding",0.70,0.79],
	["general",0.70,0.79]
];

//AI skill settings level 2 (Skill, Minimum skill, Maximum skill). Baseline skill level: 0.70
DZAI_skill2 = [	
	["aimingAccuracy",0.175,0.225],
	["aimingShake",0.70,0.79],
	["aimingSpeed",0.70,0.79],
	["endurance",0.70,0.79],
	["spotDistance",0.70,0.79],
	["spotTime",0.70,0.79],
	["courage",0.70,0.79],
	["reloadSpeed",0.70,0.79],
	["commanding",0.80,0.89],
	["general",0.80,0.89]
];

//AI skill settings level 3 (Skill, Minimum skill, Maximum skill). Baseline skill level: 0.80
DZAI_skill3 = [	
	["aimingAccuracy",0.225,0.250],
	["aimingShake",0.80,0.89],
	["aimingSpeed",0.80,0.89],
	["endurance",0.80,0.89],
	["spotDistance",0.80,0.89],
	["spotTime",0.80,0.89],
	["courage",0.80,0.89],
	["reloadSpeed",0.80,0.89],
	["commanding",0.90,0.99],
	["general",0.90,0.99]
];


/*
	Additional AI skill settings can be defined (DZAI_skill4 - DZAI_skill9) for the corresponding custom weapongrade level using the same format above.
	Note: If a custom weapongrade is used without defining the corresponding custom skill settings, DZAI_skill3 settings will be used instead.
	Instructions: replace "nil" with the skill array. Refer to the above preset skill arrays for examples.
	Custom AI skill settings can only be used with custom-defined spawns (spawns created using the DZAI_spawn function).
*/

//weapongrade 4 skills
DZAI_skill4 = nil; 

//weapongrade 5 skills
DZAI_skill5 = nil; 

//weapongrade 6 skills
DZAI_skill6 = nil; 

//weapongrade 7 skills
DZAI_skill7 = nil; 

//weapongrade 8 skills
DZAI_skill8 = nil;

//weapongrade 9 skills
DZAI_skill9 = nil; 


/*
	AI weapon, loot, and equipment settings
	
	DZAI will first load the classname tables defined below, the modify the settings according to the DayZ map/mod being run.
	
	Example: DZAI will always first load the classname tables defined below, then if DayZ Epoch is detected, DZAI will add or overwrite settings specified by \world_classname_configs\epoch\dayz_epoch.sqf. 
	
*/

//Default weapon classname tables - DZAI will ONLY use these tables if the dynamic weapon list (DZAI_dynamicWeaponList) is disabled, otherwise they are ignored and overwritten if it is enabled.
//Note: Low-level AI (weapongrade 0) may use pistols listed in DZAI_Pistols0 or DZAI_Pistols1. Mid/high level AI (weapongrade 1+) will carry pistol weapons but not use them - they will use rifle weapons instead.
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DZAI_Pistols0 = ["Makarov","Colt1911","revolver_EP1"]; 				//Weapongrade 0 pistols
DZAI_Pistols1 = ["M9","M9SD","MakarovSD","UZI_EP1","glock17_EP1"]; 	//Weapongrade 1 pistols
DZAI_Pistols2 = ["M9SD","MakarovSD","UZI_EP1","glock17_EP1"]; 		//Weapongrade 2 pistols
DZAI_Pistols3 = ["Makarov","Colt1911","revolver_EP1","revolver_gold_EP1","M9","M9SD","MakarovSD","UZI_EP1","UZI_SD_EP1","glock17_EP1","Sa61_EP1","RH_anac","RH_anacg","RH_bull","RH_g17","RH_g17sd","RH_g18","RH_g19","RH_g19t","RH_deagle","RH_Deagleg","RH_Deagles","RH_Deaglem","RH_Deaglemz","RH_Deaglemzb","RH_m1911","RH_m1911sd","RH_m1911old","RH_m9","RH_m9sd","RH_m9c","RH_m9csd","RH_mk22","RH_mk22sd","RH_mk22v","RH_mk22vsd","RH_mk2","RH_muzi","RH_python","RH_browninghp","RH_p226","RH_p226s","RH_p38","RH_ppk","RH_usp","RH_usp","RH_uspsd","RH_uspm","RH_tt33","RH_vz61","RH_tec9","vil_USP","vil_USPSD","vil_USP45","vil_USP45SD","vil_APS","vil_apssd","Vil_PYA"];

DZAI_Rifles0 = ["gms_k98","gms_k98_rg","gms_k98_knife","gms_k98zf39","Remington870","RH_m93r","RH_hk416","RH_hk416s","RH_hk416saim","RH_hk416seotech","RH_hk416sacog","RH_hk416sd","RH_hk416sdaim","RH_hk416sdeotech", "RH_hk416aim","RH_hk416eotech","RH_hk416acog","RH_hk416gl","RH_hk416glaim","RH_hk416gleotech","RH_hk416glacog","RH_hk416sgl","RH_hk416sglaim","RH_hk416sgleotech","RH_hk416sglacog","RH_hk416sdgl", "RH_hk416sdglaim","RH_hk416sdgleotech","RH_hk417","RH_hk417aim","RH_hk417eotech","RH_hk417acog","RH_hk417sp","RH_hk417s","RH_hk417saim","RH_hk417seotech","RH_hk417sacog","RH_hk417sd","RH_hk417sdaim", "RH_hk417sdeotech","RH_hk417sdacog","RH_hk417sdsp","RH_hk417sgl","RH_hk417sglaim","RH_hk417sgleotech","RH_hk417sglacog","RH_ctar21","RH_ctar21glacog","RH_ctar21m","RH_ctar21mgl","RH_star21","RH_mas","RH_masaim", "RH_maseotech","RH_masacog","RH_massd","RH_massdaim","RH_massdeotech","RH_massdacog","RH_masb","RH_masbaim","RH_masbeotech","RH_masbacog","RH_masbsd","RH_masbsdaim","RH_masbsdeotech","RH_masbsdacog","RH_acr", "RH_acraim","RH_acreotech","RH_acracog","RH_acrgl","RH_acrglaim","RH_acrgleotech","RH_acrglacog","RH_acrb","RH_acrbaim","RH_acrbeotech","RH_acrbacog","RH_acrbgl","RH_acrbglaim","RH_acrbgleotech","RH_acrbglacog","RH_m14", "RH_m14acog","RH_m14aim","RH_m14eot","RH_m21","RH_sc2","RH_sc2acog","RH_sc2aim","RH_sc2eot","RH_sc2shd","RH_sc2sp","RH_m1s","RH_m1sacog","RH_m1saim","RH_m1seot","RH_m1sshd","RH_m1ssp","RH_m1st","RH_m1stacog","RH_m1staim", "RH_m1steot","RH_m1stshd","RH_m1stsp","FHQ_ACR_WDL_IRN","FHQ_ACR_WDL_IRN_F","FHQ_ACR_WDL_IRN_SD","FHQ_ACR_WDL_IRN_SD_F","FHQ_ACR_WDL_IRN_GL","FHQ_ACR_WDL_IRN_GL_F","FHQ_ACR_WDL_IRN_GL_SD","FHQ_ACR_WDL_IRN_GL_SD_F", "FHQ_ACR_WDL_CCO","FHQ_ACR_WDL_CCO_F","FHQ_ACR_WDL_CCO_SD","FHQ_ACR_WDL_CCO_SD_F","FHQ_ACR_WDL_CCO_GL","FHQ_ACR_WDL_CCO_GL_F","FHQ_ACR_WDL_CCO_GL_SD","FHQ_ACR_WDL_CCO_GL_SD_F","FHQ_ACR_WDL_RCO","FHQ_ACR_WDL_RCO_F", "FHQ_ACR_WDL_RCO_SD","FHQ_ACR_WDL_RCO_SD_F","FHQ_ACR_WDL_RCO_GL","FHQ_ACR_WDL_RCO_GL_F","FHQ_ACR_WDL_RCO_GL_SD","FHQ_ACR_WDL_RCO_GL_SD_F","FHQ_ACR_WDL_HWS","FHQ_ACR_WDL_HWS_F","FHQ_ACR_WDL_HWS_GL","FHQ_ACR_WDL_HWS_GL_F", "FHQ_ACR_WDL_HWS_SD","FHQ_ACR_WDL_HWS_SD_F","FHQ_ACR_WDL_HWS_GL_SD","FHQ_ACR_WDL_HWS_GL_SD_F","FHQ_ACR_WDL_G33","FHQ_ACR_WDL_G33_F","FHQ_ACR_WDL_G33_SD","FHQ_ACR_WDL_G33_SD_F","FHQ_ACR_WDL_G33_GL","FHQ_ACR_WDL_G33_GL_F","FHQ_ACR_WDL_G33_GL_SD","FHQ_ACR_WDL_G33_GL_SD_F","FHQ_ACR_WDL_HAMR","FHQ_ACR_WDL_HAMR_F","FHQ_ACR_WDL_HAMR_SD","FHQ_ACR_WDL_HAMR_SD_F","FHQ_ACR_WDL_HAMR_GL","FHQ_ACR_WDL_HAMR_GL_F","FHQ_ACR_WDL_HAMR_GL_SD","FHQ_ACR_WDL_HAMR_GL_SD_F","FHQ_ACR_WDL_TWS","FHQ_ACR_WDL_TWS_F","FHQ_ACR_WDL_TWS_SD","FHQ_ACR_WDL_TWS_SD_F","FHQ_ACR_WDL_TWS_GL","FHQ_ACR_WDL_TWS_GL_F","FHQ_ACR_WDL_TWS_GL_SD","FHQ_ACR_WDL_TWS_GL_SD_F","FHQ_ACR_BLK_IRN","FHQ_ACR_BLK_IRN_F","FHQ_ACR_BLK_IRN_SD","FHQ_ACR_BLK_IRN_SD_F","FHQ_ACR_BLK_IRN_GL","FHQ_ACR_BLK_IRN_GL_F","FHQ_ACR_BLK_IRN_GL_SD","FHQ_ACR_BLK_IRN_GL_SD_F","FHQ_ACR_BLK_CCO","FHQ_ACR_BLK_CCO_F","FHQ_ACR_BLK_CCO_SD","FHQ_ACR_BLK_CCO_SD_F","FHQ_ACR_BLK_CCO_GL","FHQ_ACR_BLK_CCO_GL_F","FHQ_ACR_BLK_CCO_GL_SD","FHQ_ACR_BLK_CCO_GL_SD_F","FHQ_ACR_BLK_RCO","FHQ_ACR_BLK_RCO_F","FHQ_ACR_BLK_RCO_SD","FHQ_ACR_BLK_RCO_SD_F","FHQ_ACR_BLK_RCO_GL","FHQ_ACR_BLK_RCO_GL_F","FHQ_ACR_BLK_RCO_GL_SD","FHQ_ACR_BLK_RCO_GL_SD_F","FHQ_ACR_BLK_HWS","FHQ_ACR_BLK_HWS_F","FHQ_ACR_BLK_HWS_GL","FHQ_ACR_BLK_HWS_GL_F","FHQ_ACR_BLK_HWS_SD","FHQ_ACR_BLK_HWS_SD_F","FHQ_ACR_BLK_HWS_GL_SD","FHQ_ACR_BLK_HWS_GL_SD_F","FHQ_ACR_BLK_G33","FHQ_ACR_BLK_G33_F","FHQ_ACR_BLK_G33_SD","FHQ_ACR_BLK_G33_SD_F","FHQ_ACR_BLK_G33_GL","FHQ_ACR_BLK_G33_GL_F","FHQ_ACR_BLK_G33_GL_SD","FHQ_ACR_BLK_G33_GL_SD_F","FHQ_ACR_BLK_HAMR","FHQ_ACR_BLK_HAMR_F","FHQ_ACR_BLK_HAMR_SD","FHQ_ACR_BLK_HAMR_SD_F","FHQ_ACR_BLK_HAMR_GL","FHQ_ACR_BLK_HAMR_GL_F","FHQ_ACR_BLK_HAMR_GL_SD","FHQ_ACR_BLK_HAMR_GL_SD_F","FHQ_ACR_BLK_TWS","FHQ_ACR_BLK_TWS_F","FHQ_ACR_BLK_TWS_SD","FHQ_ACR_BLK_TWS_SD_F","FHQ_ACR_BLK_TWS_GL","FHQ_ACR_BLK_TWS_GL_F","FHQ_ACR_BLK_TWS_GL_SD","FHQ_ACR_BLK_TWS_GL_SD_F","FHQ_ACR_TAN_IRN","FHQ_ACR_TAN_IRN_F","FHQ_ACR_TAN_IRN_SD","FHQ_ACR_TAN_IRN_SD_F","FHQ_ACR_TAN_IRN_GL","FHQ_ACR_TAN_IRN_GL_F","FHQ_ACR_TAN_IRN_GL_SD","FHQ_ACR_TAN_IRN_GL_SD_F","FHQ_ACR_TAN_CCO","FHQ_ACR_TAN_CCO_F","FHQ_ACR_TAN_CCO_SD","FHQ_ACR_TAN_CCO_SD_F","FHQ_ACR_TAN_CCO_GL","FHQ_ACR_TAN_CCO_GL_F","FHQ_ACR_TAN_CCO_GL_SD","FHQ_ACR_TAN_CCO_GL_SD_F","FHQ_ACR_TAN_RCO","FHQ_ACR_TAN_RCO_F","FHQ_ACR_TAN_RCO_SD","FHQ_ACR_TAN_RCO_SD_F","FHQ_ACR_TAN_RCO_GL","FHQ_ACR_TAN_RCO_GL_F","FHQ_ACR_TAN_RCO_GL_SD","FHQ_ACR_TAN_RCO_GL_SD_F","FHQ_ACR_TAN_HWS","FHQ_ACR_TAN_HWS_F","FHQ_ACR_TAN_HWS_GL","FHQ_ACR_TAN_HWS_GL_F","FHQ_ACR_TAN_HWS_SD","FHQ_ACR_TAN_HWS_SD_F","FHQ_ACR_TAN_HWS_GL_SD","FHQ_ACR_TAN_HWS_GL_SD_F","FHQ_ACR_TAN_G33","FHQ_ACR_TAN_G33_F","FHQ_ACR_TAN_G33_SD","FHQ_ACR_TAN_G33_SD_F","FHQ_ACR_TAN_G33_GL","FHQ_ACR_TAN_G33_GL_F","FHQ_ACR_TAN_G33_GL_SD","FHQ_ACR_TAN_G33_GL_SD_F","FHQ_ACR_TAN_HAMR","FHQ_ACR_TAN_HAMR_F","FHQ_ACR_TAN_HAMR_SD","FHQ_ACR_TAN_HAMR_SD_F","FHQ_ACR_TAN_HAMR_GL","FHQ_ACR_TAN_HAMR_GL_F","FHQ_ACR_TAN_HAMR_GL_SD","FHQ_ACR_TAN_HAMR_GL_SD_F","FHQ_ACR_TAN_TWS","FHQ_ACR_TAN_TWS_F","FHQ_ACR_TAN_TWS_SD","FHQ_ACR_TAN_TWS_SD_F","FHQ_ACR_TAN_TWS_GL","FHQ_ACR_TAN_TWS_GL_F","FHQ_ACR_TAN_TWS_GL_SD","FHQ_ACR_TAN_TWS_GL_SD_F","FHQ_ACR_SNW_IRN","FHQ_ACR_SNW_IRN_F","FHQ_ACR_SNW_IRN_SD","FHQ_ACR_SNW_IRN_SD_F","FHQ_ACR_SNW_IRN_GL","FHQ_ACR_SNW_IRN_GL_F","FHQ_ACR_SNW_IRN_GL_SD","FHQ_ACR_SNW_IRN_GL_SD_F","FHQ_ACR_SNW_CCO","FHQ_ACR_SNW_CCO_F","FHQ_ACR_SNW_CCO_SD","FHQ_ACR_SNW_CCO_SD_F","FHQ_ACR_SNW_CCO_GL","FHQ_ACR_SNW_CCO_GL_F","FHQ_ACR_SNW_CCO_GL_SD","FHQ_ACR_SNW_CCO_GL_SD_F","FHQ_ACR_SNW_RCO","FHQ_ACR_SNW_RCO_F","FHQ_ACR_SNW_RCO_SD","FHQ_ACR_SNW_RCO_SD_F","FHQ_ACR_SNW_RCO_GL","FHQ_ACR_SNW_RCO_GL_F","FHQ_ACR_SNW_RCO_GL_SD","FHQ_ACR_SNW_RCO_GL_SD_F","FHQ_ACR_SNW_HWS","FHQ_ACR_SNW_HWS_F","FHQ_ACR_SNW_HWS_GL","FHQ_ACR_SNW_HWS_GL_F","FHQ_ACR_SNW_HWS_SD","FHQ_ACR_SNW_HWS_SD_F","FHQ_ACR_SNW_HWS_GL_SD","FHQ_ACR_SNW_HWS_GL_SD_F","FHQ_ACR_SNW_G33","FHQ_ACR_SNW_G33_F","FHQ_ACR_SNW_G33_SD","FHQ_ACR_SNW_G33_SD_F","FHQ_ACR_SNW_G33_GL","FHQ_ACR_SNW_G33_GL_F","FHQ_ACR_SNW_G33_GL_SD","FHQ_ACR_SNW_G33_GL_SD_F","FHQ_ACR_SNW_HAMR","FHQ_ACR_SNW_HAMR_F","FHQ_ACR_SNW_HAMR_SD","FHQ_ACR_SNW_HAMR_SD_F","FHQ_ACR_SNW_HAMR_GL","FHQ_ACR_SNW_HAMR_GL_F","FHQ_ACR_SNW_HAMR_GL_SD","FHQ_ACR_SNW_HAMR_GL_SD_F","FHQ_ACR_SNW_TWS","FHQ_ACR_SNW_TWS_F","FHQ_ACR_SNW_TWS_SD","FHQ_ACR_SNW_TWS_SD_F","FHQ_ACR_SNW_TWS_GL","FHQ_ACR_SNW_TWS_GL_F","FHQ_ACR_SNW_TWS_GL_SD","FHQ_ACR_SNW_TWS_GL_SD_F","FHQ_MSR_DESERT","FHQ_rem_7Rnd_338Lapua_MSR_NT","FHQ_MSR_SD_DESERT","FHQ_MSR_NV_DESERT","FHQ_rem_7Rnd_338Lapua_MSR_NT","FHQ_MSR_NV_SD_DESERT","FHQ_MSR_TWS_DESERT","FHQ_rem_7Rnd_338Lapua_MSR_NT","FHQ_MSR_TWS_SD_DESERT","FHQ_RSASS_TAN","FHQ_RSASS_TWS_TAN","FHQ_RSASS_SD_TAN","FHQ_RSASS_TWS_SD_TAN","FHQ_XM2010_DESERT","FHQ_XM2010_SD_DESERT","FHQ_XM2010_NV_DESERT","FHQ_XM2010_NV_SD_DESERT","FHQ_XM2010_TWS_DESERT","FHQ_XM2010_TWS_SD_DESERT","FHQ_XM2010_WDL_CAMO", "vil_SKS","vil_Tt33","vil_PKP","vil_PKP_EOT","vil_PK","vil_zastava_m84","vil_PKM_N","vil_PKM","vil_RPK","vil_RPK75","vil_RPK75_Romania","vil_RPK75_M72","vil_RPD","vil_RPK74","vil_RPK74M_P29","vil_RPK74M","vil_RPK74M_N","vil_VSS_PSO","vil_VSS_N","vil_VAL","vil_VAL_C","vil_VAL_N","vil_Vikhr","vil_9a91","vil_9a91_c","vil_9a91_csd","vil_vsk94","vil_Groza_HG","vil_Groza_SC","vil_Groza_GL","vil_Groza_SD","vil_AKS_47","vil_AK_47_49","vil_AK_47","vil_AKMSB","vil_AKM","vil_AKM_GL","vil_AKMS","vil_AKMS_GP25","vil_AK_47_m1","vil_AK_nato_m1","vil_M70","vil_M70B","vil_M64","vil_ASH82","vil_AMD","vil_AMD63","vil_PMI","vil_PMIS","vil_MPi","vil_AK_nato_m80","vil_AKs_74_u","vil_AKs_74_u45","Vil_AKS_74_UN_kobra","Vil_AKS_74_UB","vil_AK_74","vil_AK_74_N","vil_AKS_74","vil_AKS_74_gp","vil_AKS_74p","vil_AKS_74p_45","vil_AK_74P","vil_AKS_74p_gp","vil_AK_74m","vil_AK_74M_N","vil_AK_74M_PSO","vil_AK_74m_k","vil_AK_74m_EOT","vil_AK_74m_EOT_Alfa","vil_AK_74m_EOT_FSB","vil_AK_74m_EOT_FSB_45","vil_AK_74m_EOT_FSB_60","vil_AK_74m_c","vil_AK_74m_p29","vil_AK_74m_gp_29","vil_AK_74m_gp","vil_type88_1","vil_PMI74S","vil_Rak74sgl","vil_AK_101","vil_AK_103","vil_AK_105","Vil_AK_105_c","vil_AK_107","Vil_AK_107_c","vil_SVU_A","vil_SVU","vil_PSL1","vil_M76","vil_M91","vil_SVD_63","vil_SVD_N","vil_SVD_S","vil_SVD_M","vil_SVD_P21","vil_SVDK","vil_10Rnd_SVDK","vil_SV_98","vil_SV_98_69","vil_SV_98_SD", "vil_Abakan","vil_Abakan_gp","vil_Abakan_P29","vil_ak12","vil_ak12_ap","vil_ak12_gp","vil_AEK1","vil_AEK2","vil_AEK_GL","vil_AeK_3","vil_AeK_23","vil_AeK_3_K","vil_B_HP","vil_MP5_EOTech","vil_MP5SD_EOTech", "vil_G3a3","vil_G3a2","vil_G3a4","vil_G3a4b","vil_G3an","vil_G3anb","vil_G3ZF","vil_G3zfb","vil_G3SG1","vil_G3sg1b","vil_G3TGS","vil_G3TGSb","vil_AG3","vil_AG3EOT","skavil_M60","skavil_M60e3","vil_Mg3", "vil_M249_Para","vil_Minimi","vil_M240_B","vil_MG4","vil_MG4E","vil_SR25","vil_M110","vil_HK417s","vil_SR25SD","vil_M110sd","vil_M21","vil_M21G","vil_m40a3","vil_M24b", "vil_M14","vil_M14G","vil_Fal","vil_Fal_Para","vil_sg540","vil_sg542","vil_sg542f","vil_Insas","vil_Insas_lmg","vil_M16A1","VIL_M4","vil_M4_EOT","VIL_M4_aim","vil_HK33","vil_Galil","vil_Galil_arm","vil_G36KVA4", "vil_G36KA4","vil_G36E","vil_G36a2","vil_AG36","vil_AG36A2","vil_AG36KV","vil_AG36KA4","vil_G36VA4","vil_G36VA4Eot","vil_G36KVZ","vil_G36KSK","vil_G36KSKdes","vil_G36KSKdesES","vil_G36CC","vil_G36KSKES","vil_G36KES", "vil_G36KV3","vil_G36KV3Des","vil_HK416_Aim","vil_HK416_IS","vil_HK416_EOT","vil_HK416_GL","VIL_HK416_EDR","AA12_PMC","AK_107_GL_Kobra","AK_107_GL_PSO","AK_107_Kobra","AK_107_PSO","AK_47_M","AK_47_S","AK_47_S","AK_74","AK_74","AK_74_GL","AK_74_GL_kobra","AKS_74","AKS_74_GOSHAWK","AKS_74_Kobra","AKS_74_NSPU","AKS_74_PSO","AKS_74_U","AKS_74_UN_Kobra","AKS_GOLD","BAF_AS50_scoped","BAF_AS50_TWS","BAF_L110A1_Aim","BAF_L7A2_GPMG","BAF_L85A2_RIS_ACOG","BAF_L85A2_RIS_CWS","BAF_L85A2_RIS_Holo","BAF_L85A2_RIS_SUSAT","BAF_L85A2_UGL_ACOG","BAF_L85A2_UGL_Holo","BAF_L85A2_UGL_SUSAT","BAF_L86A2_ACOG","BAF_LRR_scoped","BAF_LRR_scoped_W","bizon","Bizon_Silenced","DMR","FN_FAL","FN_FAL_ANPVS4","G36_C_SD_camo","G36_C_SD_Eotech","G36A","G36A_camo","G36C","G36C","G36C_camo","G36K","G36K_camo","Huntingrifle","ksvk","KSVK_DZE","LeeEnfield","M1014","m107","M107_DZ","m107_TWS_EP1","M110_NVG_EP1","M110_TWS_EP1","M14_EP1","M16A2","M16A2GL","m16a4","m16a4_acg","M16A4_ACG_GL","M16A4_GL","M24","M24_des_EP1","M240","M240_DZ","m240_scoped_EP1","m240_scoped_EP1_DZE","M249","M249_EP1","M249_EP1_DZ","M249_m145_EP1","M249_m145_EP1_DZE","M249_TWS_EP1","M40A3","M4A1","M4A1_AIM","M4A1_AIM_CAMO","M4A1_AIM_SD_CAMO","M4A1_HWS_GL","M4A1_HWS_GL_CAMO","M4A1_HWS_GL_SD_CAMO","M4A1_RCO_GL","M4A3_CCO_EP1","M4A3_RCO_GL_EP1","M4SPR","m8_Carbine","m8_CarbineGL","m8_Compact","m8_compact_pmc","m8_holo_sd","m8_SAW","m8_Sharpshooter","m8_tws","m8_tws_sd","MG36","MG36_camo","MK_48","Mk_48_DES_EP1","Mk_48_DZ","MP5A5","MP5SD","Pecheneg","Pecheneg_DZ","PK","PMC_AS50_scoped","PMC_AS50_TWS","Remington870_lamp","RPK_74","Sa58P_EP1","Sa58V_CCO_EP1","Sa58V_EP1","Sa58V_RCO_EP1","Saiga12K","SCAR_H_CQC_CCO","SCAR_H_CQC_CCO_SD","SCAR_H_LNG_Sniper","SCAR_H_LNG_Sniper_SD","SCAR_H_STD_EGLM_Spect","SCAR_H_STD_TWS_SD","SCAR_L_CQC","SCAR_L_CQC_CCO_SD","SCAR_L_CQC_EGLM_Holo","SCAR_L_CQC_Holo","SCAR_L_STD_EGLM_RCO","SCAR_L_STD_EGLM_TWS","SCAR_L_STD_HOLO","SCAR_L_STD_Mk4CQT","SVD","SVD","SVD_Camo","SVD_des_EP1","SVD_NSPU_EP1","VSS_Vintorez","Winchester1866"];
DZAI_Rifles1 = ["M16A2","M16A2GL","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","M1014","DMR_DZ","M4A1","M14_EP1","Remington870_lamp","MP5A5","MP5SD","M4A3_CCO_EP1"]; //Weapongrade 1 rifles
DZAI_Rifles2 = ["M16A2","M16A2GL","M249_DZ","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","SVD_CAMO","M1014","DMR_DZ","M4A1","M14_EP1","Remington870_lamp","M240_DZ","M4A1_AIM_SD_camo","M16A4_ACG","M4A1_HWS_GL_camo","Mk_48_DZ","M4A3_CCO_EP1","Sa58V_RCO_EP1","Sa58V_CCO_EP1","M40A3","Sa58P_EP1","Sa58V_EP1"]; //Weapongrade 2 rifles
DZAI_Rifles3 = ["FN_FAL","FN_FAL_ANPVS4","Mk_48_DZ","M249_DZ","BAF_L85A2_RIS_Holo","G36C","G36C_camo","G36A_camo","G36K_camo","AK_47_M","AKS_74_U","M14_EP1","bizon_silenced","DMR_DZ","RPK_74"]; //Weapongrade 3 rifles


	
/*
	Custom rifle tables can be defined below this line (DZAI_Rifles4 - DZAI_Rifles9) for the corresponding custom weapongrade level using the same format above. 
	Note: If a custom weapongrade is used without defining the corresponding custom rifle array, the DZAI_Rifles3 array will be used instead.
	Instructions: Replace "nil" with the wanted rifle array. Refer to the above rifle arrays for examples on how to define custom rifle tables.
	Custom rifle tables can only be used with custom-defined spawns (spawns created using the DZAI_spawn function). 
*/

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DZAI_Rifles4 = nil; //weapongrade 4 weapons
DZAI_Rifles5 = nil; //weapongrade 5 weapons
DZAI_Rifles6 = nil; //weapongrade 6 weapons
DZAI_Rifles7 = nil; //weapongrade 7 weapons
DZAI_Rifles8 = nil; //weapongrade 8 weapons
DZAI_Rifles9 = nil; //weapongrade 9 weapons


//AI skin classnames. DZAI will use any of these classnames for AI spawned. Note: Additional skins may be included on a per-map or per-mod basis - see folders in \world_classname_configs
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DZAI_BanditTypes = ["Survivor2_DZ", "SurvivorW2_DZ", "Bandit1_DZ", "BanditW1_DZ", "Camo1_DZ", "Sniper1_DZ"];


//AI Backpack types (for weapongrade levels 0-3)
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DZAI_Backpacks0 = ["DZ_Patrol_Pack_EP1","DZ_Czech_Vest_Puch","DZ_Assault_Pack_EP1"];
DZAI_Backpacks1 = ["DZ_Patrol_Pack_EP1","DZ_Czech_Vest_Puch","DZ_Assault_Pack_EP1","DZ_British_ACU","DZ_TK_Assault_Pack_EP1","DZ_CivilBackpack_EP1","DZ_ALICE_Pack_EP1"];
DZAI_Backpacks2 = ["DZ_CivilBackpack_EP1","DZ_British_ACU","DZ_Backpack_EP1"];
DZAI_Backpacks3 = ["DZ_CivilBackpack_EP1","DZ_Backpack_EP1"];


//AI Food/Medical item types. DZAI_Edibles: Drinkable and edible items. DZAI_Medicals1: List of common medical items to be added to AI inventory. DZAI_Medicals2: List of all medical items available only in hospitals to be added to AI backpack.
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DZAI_Edibles = ["ItemSodaCoke", "ItemSodaPepsi", "ItemWaterbottle", "FoodCanSardines", "FoodCanBakedBeans", "FoodCanFrankBeans", "FoodCanPasta", "ItemWaterbottleUnfilled","ItemWaterbottleBoiled","FoodmuttonCooked","FoodchickenCooked","FoodBaconCooked","FoodRabbitCooked","FoodbaconRaw","FoodchickenRaw","FoodmuttonRaw","foodrabbitRaw","FoodCanUnlabeled","FoodPistachio","FoodNutmix","FoodMRE"];
DZAI_Medicals1 = ["ItemBandage", "ItemPainkiller"];
DZAI_Medicals2 = ["ItemPainkiller", "ItemMorphine", "ItemBandage", "ItemBloodbag", "ItemAntibiotic","ItemEpinephrine"];


//AI Miscellaneous item types. DZAI_MiscItemS: List of random low-value items. DZAI_MiscItemL: List of random semi-valuable/useful items
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DZAI_MiscItemS = ["ItemHeatpack", "HandRoadFlare", "HandChemBlue", "HandChemRed", "HandChemGreen","SmokeShell","TrashTinCan","TrashJackDaniels","ItemSodaEmpty"];
DZAI_MiscItemL = ["ItemJerrycan", "PartWheel", "PartEngine", "PartFueltank", "PartGlass", "PartVRotor","PartWoodPile"];


//AI toolbelt item types. Toolbelt items are added to AI inventory upon death. Format: [item classname, item probability]
//Weapongrade level 0-1 AI will use DZAI_tools0 table, weapongrade level 2-3 AI will use DZAI_tools1 table. Custom-spawned AI will use DZAI_tools1 table.
//NOTE: Do not delete any elements from this list, set its chance to zero intead. Only add elements to the end of the array, not in the middle.
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DZAI_tools0 = [["ItemFlashlight",0.65],["ItemWatch",0.65],["ItemKnife",0.50],["ItemHatchet",0.40],["ItemCompass",0.40],["ItemMap",0.35],["ItemToolbox",0.15],["ItemMatchbox",0.15],["ItemFlashlightRed",0.05],["ItemGPS",0.005],["ItemRadio",0.005],["ItemCrowbar",0.15]];
DZAI_tools1 = [["ItemFlashlight",0.75],["ItemWatch",0.75],["ItemKnife",0.75],["ItemHatchet",0.70],["ItemCompass",0.75],["ItemMap",0.70],["ItemToolbox",0.35],["ItemMatchbox",0.40],["ItemFlashlightRed",0.10],["ItemGPS",0.10],["ItemRadio",0.075],["ItemCrowbar",0.35]];


//AI-useable toolbelt item types. These items are added to AI inventory at unit creation and may be used by AI. Format: [item classname, item probability]
//Weapongrade level 0-1 AI will use DZAI_gadgets0 table, weapongrade level 2-3 AI will use DZAI_gadgets1 table. Custom-spawned AI will use DZAI_gadgets1 table.
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DZAI_gadgets0 = [["binocular",0.40],["NVGoggles",0.00]];
DZAI_gadgets1 = [["binocular",0.60],["NVGoggles",0.05]];


//NOTHING TO EDIT BEYOND THIS POINT
diag_log "[DZAI] DZAI configuration file loaded.";
