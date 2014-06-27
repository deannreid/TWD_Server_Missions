private ["_txt","_dis","_sfx"];

player removeAction s_player_cleanguts;
s_player_cleanguts = -1;

if (dayz_combat == 1) exitWith {
	_txt = "You need to hide and get out of combat first.";
	cutText [_txt, "PLAIN DOWN"];
};

	// If we're not swimming, let's start the animation to have the player squat
	if (!dayz_isSwimming) then {
		player playActionNow "PutDown";
	};
	sleep 1;
	_dis = 5;
	_sfx = "fillwater";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
	sand_washed = true;
	hasGutsOnHim = false;
	cutText ["You have successfully washed away the zombie parts from your body.","PLAIN DOWN"];