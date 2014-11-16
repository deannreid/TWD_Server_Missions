private ["_silver","_silver10oz","_gold","_gold10oz","_briefcase","_loot","_robbing"];

// Checks if script is active, thanks Halvhjearne <3
if(isNil "script_in_progress")then{
        script_in_progress = false;
};
 
if(script_in_progress)exitwith{
        systemChat "This script is only useable once (untill restart)!";
};
script_in_progress = true;
// End Checks if Script is active

	execVM "custom\bank\rob\zone_check.sqf";
	if(_debugBank == 1) then {
		systemChat "[DEBUG] Bank ZoneCheck Executed.";
	};
	cutText [format["You are robbing the bank! Police has been alerted."], "PLAIN DOWN"];
	systemChat "The Bank is getting robbed!";
	sleep 30;
	execVM "custom\bank\rob\ai.sqf";
	if(_debugBank == 1) then {
		systemChat "[DEBUG] Executed AI.";
	};
	sleep 30;
	cutText [format["4 minutes left..."], "PLAIN DOWN"];
	sleep 60;
	cutText [format["3 minutes left..."], "PLAIN DOWN"];
	sleep 60;
	cutText [format["2 minutes left..."], "PLAIN DOWN"];
	sleep 60;
	cutText [format["1 minute left..."], "PLAIN DOWN"];
	sleep 60;
	player playActionNow "Medic";
	sleep 8;
	if (_failRob == 1)exitWith{
		if(_debugBank == 1) then {
			systemChat "[DEBUG] Bank Rob Failed.";
		};
	} else {
	_robComplete = 1;
	};

if (_robComplete == 1) then {
	if(_debugBank == 1) then {
		systemChat "[DEBUG] Bank Rob Completed.";
	};
_silver = "ItemSilverBar";
_silver10oz = "ItemSilverBar10oz";
_gold = "ItemGoldBar";
_gold10oz = "ItemGoldBar10oz";
_briefcase = "ItemBriefcase100oz";

	_loot=floor(random 6);
		if (_loot == 0) then {
			cutText [format["The vault was emptied recently, no big loot, except some silver."], "PLAIN DOWN"];
			player addMagazine _silver10oz;
			player addMagazine _silver10oz;
			player addMagazine _silver;
			systemChat "The robber got: 2x Silver10oz and 1x Silver";
		};
		if (_loot == 1) then {
			cutText [format["Some gold, not much."], "PLAIN DOWN"];
			player addMagazine _gold;
			player addMagazine _gold;
			systemChat "The robber got: 2x gold";
		};	
		if (_loot == 2) then {
			cutText [format["Nice job!"], "PLAIN DOWN"];
			player addMagazine _gold10oz;
			player addMagazine _gold10oz;
			player addMagazine _gold10oz;
			player addMagazine _gold10oz;
			player addMagazine _gold10oz;
			systemChat "The robber got: 5x gold10oz";
		};
		if (_loot == 3) then {
			cutText [format["Some gold, not much."], "PLAIN DOWN"];
			player addMagazine _gold;
			player addMagazine _gold;
			player addMagazine _gold10oz;
			systemChat "The robber got: 2x gold and 1x Gold10oz";
		};		
		if (_loot == 4) then {
			cutText [format["The vault was emptied recently, no big loot, except some silver."], "PLAIN DOWN"];
			player addMagazine _silver10oz;
			player addMagazine _silver10oz;
			player addMagazine _silver;
			systemChat "The robber got: 2x Silver10oz and 1x Silver";
		};
		if (_loot == 5) then {
			cutText [format["Jack.. Jack.. Pot!!"], "PLAIN DOWN"];
			player addMagazine _briefcase;
			player addMagazine _briefcase;
			systemChat "Ting ting ting... The jackpot has been stolen! Bye bye 2 briefcases";
		};
	};
	
	if(_debugBank == 1) then {
		systemChat "[DEBUG] Robbery Completed, exiting.";
	};