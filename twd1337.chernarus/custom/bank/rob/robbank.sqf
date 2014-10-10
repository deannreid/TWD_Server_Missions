private ["_silver","_silver10oz","_gold","_gold10oz","_briefcase","_random","_random2"];

_AI = "custom\bank\rob\AI.sqf";
// Checks if script is active, thanks Halvhjearne <3
if(isNil "script_in_progress")then{
	script_in_progress = false;
};

if(script_in_progress)exitwith{
	systemChat "This script is only useable once (untill restart)!";
};
script_in_progress = true;
// End Checks if Script is active


cutText [format["You are about to rob the bank, your have 30 percent chance to get loot."], "PLAIN DOWN"];
sleep 5;

// Currency // 
_silver = "ItemSilverBar";
_silver10oz = "ItemSilverBar10oz";
_gold = "ItemGoldBar";
_gold10oz = "ItemGoldBar10oz";
_briefcase = "ItemBriefcase100oz";

// Makes sure that the game checks for the 30 percent.
_random = floor(random 11); //0-10
if (_random <= 3) then {
	cutText [format["You are robbing the bank, the police has been warned. It takes 5 minutes before the bank robbery is successful."], "PLAIN DOWN"];
	sleep 5;
	[nil,nil,rTitleText,"The bank is getting robbed!", "PLAIN",10] call RE;
	sleep 55; 
	cutText [format["4 minutes left.."], "PLAIN DOWN"];
	sleep 20;
	cutText [format["The police has arrived! Protect yourself!"], "PLAIN DOWN"];
	execVM _AI;
	sleep 40;
	cutText [format["3 minutes left.."], "PLAIN DOWN"];
	sleep 30;
	cutText [format["More police have arrived! Only 2 and a half minutes to go!"], "PLAIN DOWN"];
	execVM _AI;
	sleep 30;
	cutText [format["2 minutes left.."], "PLAIN DOWN"];
	sleep 60;
	cutText [format["1 minute left.."], "PLAIN DOWN"];
	sleep 60;
	player playActionNow "Medic";
	sleep 8;
	[nil,nil,rTitleText,"The bank has been robbed succesfully!", "PLAIN",10] call RE;
	_random2 = floor(random 6);
	// Makes an another random section, which chooses the loot randomly.
		if (_random2 == 0) then {
			cutText [format["The vault was emptied recently, no big loot, except some silver."], "PLAIN DOWN"];
			player addMagazine _silver10oz;
			player addMagazine _silver10oz;
			player addMagazine _silver;
			systemChat "The robber got: 2x Silver10oz and 1x Silver";
		};
		if (_random2 == 1) then {
			cutText [format["Some gold, not much."], "PLAIN DOWN"];
			player addMagazine _gold;
			player addMagazine _gold;
			systemChat "The robber got: 2x gold";
		};	
		if (_random2 == 2) then {
			cutText [format["Nice job!"], "PLAIN DOWN"];
			player addMagazine _gold10oz;
			player addMagazine _gold10oz;
			player addMagazine _gold10oz;
			player addMagazine _gold10oz;
			player addMagazine _gold10oz;
			systemChat "The robber got: 5x gold10oz";
		};
		if (_random2 == 3) then {
			cutText [format["Some gold, not much."], "PLAIN DOWN"];
			player addMagazine _gold;
			player addMagazine _gold;
			player addMagazine _gold10oz;
			systemChat "The robber got: 2x gold and 1x Gold10oz";
		};		
		if (_random2 == 4) then {
			cutText [format["The vault was emptied recently, no big loot, except some silver."], "PLAIN DOWN"];
			player addMagazine _silver10oz;
			player addMagazine _silver10oz;
			player addMagazine _silver;
			systemChat "The robber got: 2x Silver10oz and 1x Silver";
		};
		if (_random2 == 5) then {
			cutText [format["Jack.. Jack.. Pot!!"], "PLAIN DOWN"];
			player addMagazine _briefcase;
			player addMagazine _briefcase;
			systemChat "Ting ting ting... The jackpot has been stolen! Bye bye 2 briefcases";
		};	
		// Output if above is not activated.
			} else {
				cutText [format["Bank robbery failed.."], "PLAIN DOWN"];
				systemChat "Bank robbery failed!";
			};
// sleep seconds;
// script_in_progress = false; 
/* Remove the // to enable the script to able to be used again. 
By "sleep seconds:" i.e: sleep 60; (able to use script after 60 seconds again).
*/