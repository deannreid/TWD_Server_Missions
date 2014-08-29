/*
	DayZ Unlock Door
	Usage: [_obj] call player_unlockDoor;
	Made for DayZ Epoch please ask permission to use/edit/distrubute email vbawol@veteranbastards.com.
*/
private ["_display","_obj","_objectCharacterID"];

if(!isNil "DZE_DYN_UnlockDoorInprogress") exitWith { cutText [(localize "str_epoch_player_21") , "PLAIN DOWN"]; };

DZE_DYN_UnlockDoorInprogress = true;

if(!isNull dayz_selectedDoor) then {

	// our target
	_obj = dayz_selectedDoor;

	_notNearestPlayer = _obj call dze_isnearest_player;

	if (_notNearestPlayer) then {
		// close display since another player is closer		
		cutText [(localize "STR_EPOCH_ACTIONS_16"), "PLAIN DOWN"];
	} else {
	
		// get object combination
		_allowedComplex 	= _obj getVariable ["doorfriends","0"];
		
		_allowed = [];
		{
		  _friendUID = _x select 0;
		  _allowed  =  _allowed  + [_friendUID];
		} forEach _allowedComplex;
		
		// Check allowed
		if ( (getPlayerUID player) in _allowed) then {
			
			sleep 3; // to make it realistic, not instantly opening door.
			// unlock if locked
			if(_obj animationPhase "Open_hinge" == 0) then {
				_obj animate ["Open_hinge", 1];
			};

			if(_obj animationPhase "Open_latch" == 0) then {
				_obj animate ["Open_latch", 1];
			};

		} else {

			[10,10] call dayz_HungerThirst;
			
			[player,"combo_locked",0,false] call dayz_zombieSpeak;
			[player,20,true,(getPosATL player)] spawn player_alertZombies;

			cutText ["You are not allowed to open this door.", "PLAIN DOWN"];
		};
	};
};
DZE_DYN_UnlockDoorInprogress = nil;
