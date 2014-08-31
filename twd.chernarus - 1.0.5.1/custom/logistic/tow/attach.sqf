if (LOG_INPROGRESS) then{
[STR_LOG_INPROGRESS,COLOR_ERROR] call SAM_SAYS;
} else {
LOG_INPROGRESS = true;
	private ["_object","_tug"];
	_object = LOG_OBJECT_SELECTION;
	_tug = _this select 0;
	
	if (!(isNull _object) && (alive _object) && !(_object getVariable "LOG_disabled")) then{	
		if (isNull (_object getVariable "LOG_moves_by") && (isNull (_object getVariable "LOG_moves_by") || (!alive (_object getVariable "LOG_moves_by")))) then{
			if ( _object distance _tug <= 20 ) then{
			
					_tug setVariable ["LOG_trailer", _object, true];
					
					_object setVariable ["LOG_moves_by", _tug, true];
									
					player setDir 180;		
					player setPos ( [player] call LOG_FNCT_GETPOS );
					
					if (!isNil "dayz_zombieSpeak" && !isNil "dayz_HungerThirst" && !isNil "player_alertZombies" ) then {	
						[10,10] call dayz_HungerThirst;
						player playActionNow "Medic";
						[player,"repair",0,false,20] call dayz_zombieSpeak;
						[player,20,true,(getPosATL player)] spawn player_alertZombies;
					} else {
							player playActionNow "Medic";
					};
					
					sleep 0.2;
					player attachTo [_tug, [ (boundingBox _tug select 1 select 0),(boundingBox _tug select 0 select 1) + 2, (boundingBox _tug select 0 select 2) - (boundingBox player select 0 select 2)]];
					sleep 0.2;
				
				_object setVelocity [0,0,0];
				_object attachTo [ _tug, [0,(boundingBox _tug select 0 select 1) + (boundingBox _object select 0 select 1) + 1.3, (boundingBox _tug select 0 select 2) - (boundingBox _object select 0 select 2)] ];
			
				
				LOG_OBJECT_SELECTION = objNull;
				detach player;
					
				sleep 3;
				[format [STR_LOG_ATTACHED, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")],COLOR_SUCCESS] call SAM_SAYS;				
			}else{[format [STR_LOG_TOO_FAR, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")],COLOR_ERROR] call SAM_SAYS;};
		}else{[format [STR_LOG_IN_TRANSIT, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")],COLOR_ERROR] call SAM_SAYS;};
	};
LOG_INPROGRESS = false;
};