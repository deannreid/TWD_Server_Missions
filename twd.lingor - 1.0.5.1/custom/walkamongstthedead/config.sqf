/* Amount of time it takes (in seconds) until the zombie camo wears off. (Default: 30min. Set to 0 to always have zombie camo ON when applied, until you wash it off) */
DZ_ZCAMO_USE_TIME = 1800;

/* Set this to true to NOT have humanity or blood loss under the zombie camo effect. */
/* Setting it to true will ignore all humanity/blood values bellow no matter what you put there. */
DZ_ZCAMO_DEFAULT = false;
	/* Set to false if you want to lose blood instead of humanity when zombie camo is active */
	/* Dont forget, if you want blood loss you have to overwrite player_spawn_2.sqf (Read forum for info) */
	/* Setting it to true will ignore blood loss values bellow no matter what you put there */
	DZ_ZCAMO_HUMANITY = true;
	/* Amount of humanity to lose or gain if DZ_ZCAMO_HUMANITY is true.(Negative values you lose, positive you earn humanity points every DZ_ZCAMO_SLEEP_HUMANITY seconds) */
	DZ_ZCAMO_LOSE_HUMANITY = -1;
	/* Amount of seconds to pass before losing humanity again. (Default: 10) */
	DZ_ZCAMO_SLEEP_HUMANITY = 10;
	/* Amount of blood to lose if DZ_ZCAMO_HUMANITY is false every DZ_ZCAMO_SLEEP_BLOOD seconds. */
	DZ_ZCAMO_BLOOD_AMOUNT = 1;
	/* Amount of seconds to pass before losing blood. */
	DZ_ZCAMO_SLEEP_BLOOD = 2;
	
// Rain Values
DZ_ZCAMO_HeavyRainLoseCamo 	= 12; // Time in seconds to lose camo in a very heavy rain; default is 12
DZ_ZCAMO_MediumRainLoseCamo = 18; // Time in seconds to lose camo in a medium/moderate rain; default is 18
DZ_ZCAMO_LightRainLoseCamo 	= 26; // Time in seconds to lose camo in a light rain; default is 26

// Set this to true if you want Z camo to stay on when in combat, and not temporarily get disabled
DZ_IGNORESHOTSFIRED = false;

// Zombie parts needed to make zombie camo
DZ_zombiePartsNeeded = 1;

// Array that holds water sources you can use to clean yourself
DZ_waterSources = ["Land_pumpa","Land_water_tank","Land_Reservoir_EP1"];

/* Script setup. Leave this value as it is...Its used to disable blood regeneration for admins that want to use blood loss instead of humanity loss */
DZE_hasZombieCamo = false; // Off initialising purposes, so you dont need to tweak your variables.sqf or init.sqf
call compile preprocessFileLineNumbers "custom\walkamongstthedead\walkamongstthedead.sqf";