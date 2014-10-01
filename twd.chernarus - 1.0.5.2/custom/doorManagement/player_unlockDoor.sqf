/* Zupa Door Management */
private ["_display","_obj","_objectCharacterID"];

if(!isNil "DZE_DYN_UnlockDoorInprogress") exitWith { cutText [(localize "str_epoch_player_21") , "PLAIN DOWN"]; };

DZE_DYN_UnlockDoorInprogress = true;

if(!isNull dayz_selectedDoor) then {
	_display = findDisplay 41144;
	_display closeDisplay 1;
	// our target
	_notNearestPlayer = false;
	if (_notNearestPlayer) then {
		// close display since another player is closer		
		cutText [(localize "STR_EPOCH_ACTIONS_16"), "PLAIN DOWN"];
	} else {
		_allowedComplex 	=  dayz_selectedDoor getVariable ["doorfriends",[]];	
		_ownerID = dayz_selectedDoor getVariable ["ownerPUID","-1"];	
		if(isNil "_ownerID")then{
		 _ownerID = -1;
		};		
		_allowed = [];
		{
		  _friendUID = _x select 0;
		  _allowed  =  _allowed  + [_friendUID];
		} forEach _allowedComplex;	
		_allowed = _allowed + [_ownerID];	
		// Check allowed
		if ( (getPlayerUID player) in _allowed ) then {
		
		     DZE_Lock_Door = dayz_selectedDoor getVariable['CharacterID','0'];
			
			cutText ["Scanning", "PLAIN DOWN"];
			
			sleep 2; // to make it realistic, not instantly opening door.
			// unlock if locked
			
			cutText ["Eye Scan SUCCESS.", "PLAIN DOWN"];
			
			if(dayz_selectedDoor animationPhase "Open_hinge" == 0) then {
				dayz_selectedDoor animate ["Open_hinge", 1];
			};

			if(dayz_selectedDoor animationPhase "Open_latch" == 0) then {
				dayz_selectedDoor animate ["Open_latch", 1];
			};
			
		
			
		} else {
			cutText ["Eye Scan FAILED.", "PLAIN DOWN"];
		};
	};
};

DZE_DYN_UnlockDoorInprogress = nil;
