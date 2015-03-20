bl_detection = 
{
	playSound "bl_detect";
	sleep 0.2;
    playSound "bl_detect";
    sleep 0.5;
    cutRsc ["RscAPSI_h1","PLAIN"];
    playSound "bl_detect";
    sleep 0.1;
    playSound "bl_detect";    
    sleep 1;
    cutRsc ["RscAPSI_h2","PLAIN"];
    sleep 1;
    playSound "bl_detect";        
    cutRsc ["RscAPSI_h3","PLAIN"];
    playSound "apsi_on";
	"filmGrain" ppEffectEnable true; 
	"filmGrain" ppEffectAdjust [0.15, 1, 1, 0.1, 1, false];
	"filmGrain" ppEffectCommit 0;
    sleep 1;
    playSound "bl_detect";
    sleep 0.2;
    playSound "bl_detect";
    cutRsc ["RscAPSI_h4","PLAIN"];
    sleep 23.8;
    waitUntil{ns_blow_status};
    playSound "bl_detect";
    sleep 0.2;
    playSound "bl_detect";
    cutRsc ["RscAPSI_h5","PLAIN"];
};

bl_flash =
{
	titleText["","WHITE OUT",1];  
	titleText["","WHITE IN",1]; 
	sleep 0.25;
};

bl_local_check_time = 
{
	if ((daytime >= 17)||(daytime <= 7)) then 
	{
		if (daytime >= 17) then 
		{   
			_posun = 9 - daytime;
			skipTime _posun; // skiping time to daylight
			sleep 14;
			_posun = -_posun;
			skipTime _posun;  // skiping time to previous
		} else {
			if (daytime >= 0) then
			{
				_posun = 14 - daytime;
				skipTime _posun; // skiping time to daylight
				sleep 14;
				_posun = -_posun;
				skipTime _posun;  // skiping time to previous
			};
		};
	};
};

bl_local_anims = 
{
    _count_units = count AllUnits;
    for [{_c = 0}, {_c <= _count_units}, {_c = _c + 1}] do 
    {
		_jednotka = AllUnits select _c;
		if (!(_jednotka hasWeapon ns_blow_itemapsi) && (Alive _jednotka)) then
		{
			if ((vehicle _jednotka) == _jednotka) then 
			{
				_jednotka switchMove "AcinPercMrunSnonWnonDf_agony";
			};
		};
	};
};

bl_local_def_anim = 
{
    _count_units = count AllUnits;
    for [{_c = 0}, {_c <= _count_units}, {_c = _c + 1}] do 
    {
		_jednotka = AllUnits select _c;
		if (!(_jednotka hasWeapon ns_blow_itemapsi) && (Alive _jednotka)) then 
		{
			if ((vehicle _jednotka) == _jednotka) then 
			{
				_jednotka switchMove "";
			};
		};
	};
};

bl_preparations = {
	playSound "ns_fx_drone2";
	"chromAberration" ppEffectAdjust [0.25,0,true];
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectCommit 0.5;
	sleep 0.2; 
	"chromAberration" ppEffectAdjust [-0.15,0,true];
	"chromAberration" ppEffectCommit 0.35;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [-0.05,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [0,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.25; 
	"chromAberration" ppEffectEnable false;
	
	sleep 4;
	
	playSound "ns_fx_drone1";
	"chromAberration" ppEffectAdjust [0.25,0,true];
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectCommit 0.5;
	sleep 0.2; 
	"chromAberration" ppEffectAdjust [-0.15,0,true];
	"chromAberration" ppEffectCommit 0.35;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [-0.05,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [0,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.25; 
	"chromAberration" ppEffectEnable false;
	
	//-------------------------------------------------
	sleep 54.7;
	//-------------------------------------------------
	
	playSound "ns_fx_misc4";
	
	//-------------------------------------------------
	sleep 13.5;
	//-------------------------------------------------
	
	playSound "ns_fx_drone2";
	"chromAberration" ppEffectAdjust [0.25,0,true];
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectCommit 0.5;
	sleep 0.2; 
	"chromAberration" ppEffectAdjust [-0.15,0,true];
	"chromAberration" ppEffectCommit 0.35;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [-0.05,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [0,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.25; 
	"chromAberration" ppEffectEnable false;
	
	sleep 10;
	
	playSound "ns_fx_drone1";
	"chromAberration" ppEffectAdjust [0.25,0,true];
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectCommit 0.5;
	sleep 0.2; 
	"chromAberration" ppEffectAdjust [-0.15,0,true];
	"chromAberration" ppEffectCommit 0.35;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [-0.05,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [0,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.25; 
	"chromAberration" ppEffectEnable false;
	
	//-------------------------------------------------
	sleep 77;
	//-------------------------------------------------
	
	playSound "ns_fx_drone2";
	"chromAberration" ppEffectAdjust [0.25,0,true];
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectCommit 0.5;
	sleep 0.2; 
	"chromAberration" ppEffectAdjust [-0.15,0,true];
	"chromAberration" ppEffectCommit 0.35;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [-0.05,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [0,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.25; 
	"chromAberration" ppEffectEnable false;
	
	sleep 10;
	
	playSound "ns_fx_drone1";
	"chromAberration" ppEffectAdjust [0.25,0,true];
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectCommit 0.5;
	sleep 0.2; 
	"chromAberration" ppEffectAdjust [-0.15,0,true];
	"chromAberration" ppEffectCommit 0.35;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [-0.05,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [0,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.25; 
	"chromAberration" ppEffectEnable false;
	
	//-------------------------------------------------
	sleep 50;
	//-------------------------------------------------
	
	playSound "ns_fx_drone2";
	"chromAberration" ppEffectAdjust [0.25,0,true];
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectCommit 0.5;
	sleep 0.2; 
	"chromAberration" ppEffectAdjust [-0.15,0,true];
	"chromAberration" ppEffectCommit 0.35;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [-0.05,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [0,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.25; 
	"chromAberration" ppEffectEnable false;
	
	sleep 7;
	
	playSound "ns_fx_drone1";
	"chromAberration" ppEffectAdjust [0.25,0,true];
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectCommit 0.5;
	sleep 0.2; 
	"chromAberration" ppEffectAdjust [-0.15,0,true];
	"chromAberration" ppEffectCommit 0.35;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [-0.05,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [0,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.25; 
	"chromAberration" ppEffectEnable false;
	
	//-------------------------------------------------
	sleep 33;
	//-------------------------------------------------
	
	playSound "ns_fx_drone2";
	"chromAberration" ppEffectAdjust [0.25,0,true];
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectCommit 0.5;
	sleep 0.2; 
	"chromAberration" ppEffectAdjust [-0.15,0,true];
	"chromAberration" ppEffectCommit 0.35;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [-0.05,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [0,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.25; 
	"chromAberration" ppEffectEnable false;
	
	sleep 5;
	
	playSound "ns_fx_drone1";
	"chromAberration" ppEffectAdjust [0.25,0,true];
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectCommit 0.5;
	sleep 0.2; 
	"chromAberration" ppEffectAdjust [-0.15,0,true];
	"chromAberration" ppEffectCommit 0.35;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [-0.05,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [0,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.25; 
	"chromAberration" ppEffectEnable false;
	
	//-------------------------------------------------
	sleep 25;
	//-------------------------------------------------
	
	playSound "ns_fx_misc4";
	playSound "ns_fx_drone2";
	"chromAberration" ppEffectAdjust [0.25,0,true];
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectCommit 0.5;
	sleep 0.2; 
	"chromAberration" ppEffectAdjust [-0.15,0,true];
	"chromAberration" ppEffectCommit 0.35;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [-0.05,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [0,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.25; 
	"chromAberration" ppEffectEnable false;
	
	sleep 3;
	
	playSound "ns_fx_drone1";
	"chromAberration" ppEffectAdjust [0.25,0,true];
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectCommit 0.5;
	sleep 0.2; 
	"chromAberration" ppEffectAdjust [-0.15,0,true];
	"chromAberration" ppEffectCommit 0.35;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [-0.05,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.1;
	"chromAberration" ppEffectAdjust [0,0,true];
	"chromAberration" ppEffectCommit 0.20;
	sleep 0.25; 
	"chromAberration" ppEffectEnable false;
};

while {true} do {
	if (isNil("ns_blowout_dayz")) then { ns_blowout_dayz = false; };
	if (isNil("ns_blow_ambient_music")) then { ns_blow_ambient_music = false; };

	waitUntil{ns_blow_prep};

	diag_log format["[NAC BLOWOUT CLIENT] :: ns_blow_prep = %1 Blowout is preparing, take a cover!", ns_blow_prep];

	if (player hasWeapon ns_blow_itemapsi) then {
		_bul = [] spawn bl_detection;
	};

	_bul = [] spawn bl_preparations;

	waitUntil{ns_blow_status};

	diag_log format["[NAC BLOWOUT CLIENT] :: ns_blow_status = %1 Blowout confirmation received.", ns_blow_status];

	if (overcast <= 0.75 && !ns_blowout_dayz) then {
		_puvodni_pocasi = overcast;
		35 setOvercast 1;
	};

	if (ns_blowout_dayz) then {
		player setVariable["startcombattimer", 1, true];
	};
   
   waitUntil{ns_blow_action};
   
   diag_log format["[NAC BLOWOUT CLIENT] :: ns_blow_action = %1 Blowout action received.", ns_blow_status];  

   playSound "bl_begin";
   "dynamicBlur" ppEffectAdjust [8];
   "dynamicBlur" ppEffectEnable true;
   "dynamicBlur" ppEffectCommit 0;
   "dynamicBlur" ppEffectAdjust [0.1];
   "dynamicBlur" ppEffectCommit 0.75;
   "chromAberration" ppEffectAdjust [0.25,0,true];
   "chromAberration" ppEffectEnable true;
   "chromAberration" ppEffectCommit 0.5;
   sleep 0.5; 
   "chromAberration" ppEffectAdjust [-0.15,0,true];
   "chromAberration" ppEffectCommit 0.35;
   sleep 0.5;
   "chromAberration" ppEffectAdjust [-0.05,0,true];
   "chromAberration" ppEffectCommit 0.20;
   sleep 0.20;
   "chromAberration" ppEffectAdjust [0,0,true];
   "chromAberration" ppEffectCommit 0.20;
   sleep 1; 
   "chromAberration" ppEffectEnable false;
   "dynamicBlur" ppEffectAdjust [3];
   "dynamicBlur" ppEffectCommit 2.75;
   sleep 5;
   
	_bul = [] call bl_flash;
	_s = round (random 3); 
	switch (_s) do 
	{
		case 0: {playSound "bl_hit1";};
		case 1: {playSound "bl_hit2";};
		case 2: {playSound "bl_hit3";};
		case 3: {playSound "bl_hit1";};
	};
	"dynamicBlur" ppEffectAdjust [3];
	"dynamicBlur" ppEffectCommit 5;
	sleep 1;
	_bul = [] call bl_flash;
	_s = round (random 3); 
	switch (_s) do 
	{
		case 0: {playSound "bl_hit1";};
		case 1: {playSound "bl_hit2";};
		case 2: {playSound "bl_hit3";};
		case 3: {playSound "bl_hit1";};
	}; 
	"dynamicBlur" ppEffectAdjust [2.4];
	"dynamicBlur" ppEffectCommit 6;
	sleep 4;
	_s = round (random 3); 
	switch (_s) do 
	{
		case 0: {playSound "bl_wave1";};
		case 1: {playSound "bl_wave2";};
		case 2: {playSound "bl_wave3";};
		case 3: {playSound "bl_wave1";};
	};
	sleep 0.3;       
	_bul = [] call bl_flash; 
	_s = round (random 3); 
	switch (_s) do 
	{
		case 0: {playSound "bl_hit1";};
		case 1: {playSound "bl_hit2";};
		case 2: {playSound "bl_hit3";};
		case 3: {playSound "bl_hit1";};
	};
	sleep 1;    
	_s = round (random 3); 
	switch (_s) do 
	{
		case 0: {playSound "bl_wave1";};
		case 1: {playSound "bl_wave2";};
		case 2: {playSound "bl_wave3";};
		case 3: {playSound "bl_wave1";};
	};
	sleep 2;
	_bul = [] call bl_flash; 
	if (!ns_blowout_dayz) then { _bul = [] spawn bl_local_check_time; };
	_s = round (random 3); 
	switch (_s) do 
	{
		case 0: {playSound "bl_hit1";};
		case 1: {playSound "bl_hit2";};
		case 2: {playSound "bl_hit3";};
		case 3: {playSound "bl_hit1";};
	};
	_nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
	_nonapsi_ef ppEffectEnable true;
	_nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.1, [1.0, 0.2, 0.2, 0.0], [1.0, 0.4, 0.0, 0.1],[1.0,0.3,0.3, 0.5]];
	_nonapsi_ef ppEffectCommit 2;
	sleep 1;
	_bul = [] call bl_flash; 
	_s = round (random 3); 
	switch (_s) do 
	{
		case 0: {playSound "bl_wave1";};
		case 1: {playSound "bl_wave2";};
		case 2: {playSound "bl_wave3";};
		case 3: {playSound "bl_wave1";};
	};
	_bul = [] call bl_flash; 

	if (!(player hasWeapon ns_blow_itemapsi)) then {
		playSound "bl_psi";
	};

	sleep 4;
	_bul = [] call bl_flash; 
	_s = round (random 3); 
	switch (_s) do 
	{
		case 0: {playSound "bl_wave1";};
		case 1: {playSound "bl_wave2";};
		case 2: {playSound "bl_wave3";};
		case 3: {playSound "bl_wave1";};
	};
	_nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.1, [1.0, 0.1, 0.1, 0.0], [1.0, 0.1, 0.0, 0.1],[1.0,0.1,0.0, 0.5]];
	_nonapsi_ef ppEffectCommit 6;
	sleep 1;
	_s = round (random 3); 
	switch (_s) do 
	{
		case 0: {playSound "bl_hit1";};
		case 1: {playSound "bl_hit2";};
		case 2: {playSound "bl_hit3";};
		case 3: {playSound "bl_hit1";};
	};
	sleep 3;
	_bul = [] call bl_flash;
	_s = round (random 3); 
	switch (_s) do 
	{
		case 0: {playSound "bl_wave1";};
		case 1: {playSound "bl_wave2";};
		case 2: {playSound "bl_wave3";};
		case 3: {playSound "bl_wave1";};
	};

	_nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.1, [0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 5.0],[0.4,0.0,0.0, 0.7]];
	_nonapsi_ef ppEffectCommit 1;

	_bul = [] call bl_local_anims;
	sleep 0.1;
	playSound "bl_full";
	sleep 0.1;
	titleText["","BLACK OUT",1];
	disableUserInput true;

	if(ns_blowout_dayz) then {
		private["_isinbuilding"];
		_isinbuilding = false;
		if([player] call fnc_isInsideBuilding) then {
			_isinbuilding = true;
		};
		if (!(player hasWeapon ns_blow_itemapsi)) then {
			diag_log format["[NAC BLOWOUT CLIENT] :: [S] Player does not have APSI"];
			if (!_isinbuilding) then {
				diag_log format["[NAC BLOWOUT CLIENT] :: [S] and is not in a building, sorry."];

					r_player_inpain = true;
					player setVariable["USEC_inPain",true,true];
					// If players blood is greater then max amount allowed set it to max allowed (this check keeps an error at bay)
					if (r_player_blood > 12000) then {
						r_player_blood = 12000;
					};
					r_player_blood = r_player_blood - ns_blow_playerdamage; //damage player
					player setVariable["USEC_BloodQty",r_player_blood,true]; //save this blood ammount to the database

					diag_log format["[NAC BLOWOUT CLIENT] :: [S] player has been damaged by blowout by 0.15"];
			} else {
					// If players blood is greater then max amount allowed set it to max allowed (this check keeps an error at bay)
					if (r_player_blood > 12000) then {
						r_player_blood = 12000;
						player setVariable["USEC_BloodQty",r_player_blood,true]; //save this blood ammount to the database
					};
					r_player_inpain = true;
					player setVariable["USEC_inPain",true,true];
				diag_log format["[NAC BLOWOUT CLIENT] :: [S] but is in some building, good for him."];
			};
		} else {
			diag_log format["[NAC BLOWOUT CLIENT] :: [S] Player does have APSI, I do not have problem with him."];
		};
	};
	
	sleep 1;
	4 fadeSound 0;
	sleep 5;
	if (player hasWeapon ns_blow_itemapsi) then {disableUserInput false;};
	sleep 6;
	6 fadeSound 1;
	titleText["","BLACK IN",10]; 
	ppEffectDestroy _nonapsi_ef;
	waitUntil {!ns_blow_action};
	diag_log format["[NAC BLOWOUT CLIENT] :: ns_blow_action = %1 Blowout actions end received.", ns_blow_action];
	if(!ns_blowout_dayz) then { 120 setOverCast _puvodni_pocasi; };
if (worldName == "namalsk") then {
	if (dayTime > 18 || dayTime < 7) then {
		playMusic "nsmisc_namalsk_night";
		[] spawn {
			ns_blow_ambient_music = true;
			sleep (getnumber (configfile >> "cfgMusic" >> "nsmisc_namalsk_night" >> "duration"));
			ns_blow_ambient_music = false;
		};
	} else {
		playMusic "nsmisc_namalsk_day";
		[] spawn {
			ns_blow_ambient_music = true;
			sleep (getnumber (configfile >> "cfgMusic" >> "nsmisc_namalsk_day" >> "duration"));
			ns_blow_ambient_music = false;
		};
	};
};
	if (player hasWeapon ns_blow_itemapsi) then{
		cutRsc ["RscAPSI_h6","PLAIN"];
		playSound "apsi_off";
		"filmGrain" ppEffectEnable false;
	};

	"dynamicBlur" ppEffectAdjust [0];
	"dynamicBlur" ppEffectCommit 16; 

	waitUntil {!ns_blow_status};
	disableUserInput false;
	diag_log format["[NAC BLOWOUT CLIENT] :: ns_blow_status = %1 Blowout end received.", ns_blow_status];  
	_bul = [] call bl_local_def_anim;
};