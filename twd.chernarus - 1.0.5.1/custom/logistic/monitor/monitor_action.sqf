private ["_target"];
while {true} do{

	LOG_OBJECT_ADDACTION = objNull;
	_target = cursorTarget;
	
	if ( !(isNull _target) && ( player distance _target < 13 ) ) then{		
		LOG_OBJECT_ADDACTION = _target;
			
			if ({_target isKindOf _x} count LOG_CFG_ISTOWABLE > 0) then {
				LOG_OBJECT_TRAILER_VALID = (vehicle player == player && (alive _target) && (count crew _target == 0) &&
						isNull LOG_OBJECT_MOVES && isNull (_target getVariable "LOG_moves_by") &&
						(isNull (_target getVariable "LOG_moves_by") || (!alive (_target getVariable "LOG_moves_by"))) &&
						!(_target getVariable "LOG_disabled") && ( [_target] call LOG_FNCT_LOCKED ) && ( [_target,2] call LOG_FNCT_CHAINING ) );	
						
				LOG_DETACH_VALID = ( vehicle player == player && (isNull LOG_OBJECT_MOVES) && !isNull (_target getVariable "LOG_moves_by") && !(_target getVariable "LOG_disabled") );
			};
			
		
			if ({_target isKindOf _x} count LOG_CFG_CANTOW > 0) then {

				LOG_TRAILER_MOVE_VALID = (vehicle player == player && (alive _target) && (!isNull LOG_OBJECT_MOVES) &&
						(alive LOG_OBJECT_MOVES) && !(LOG_OBJECT_MOVES getVariable "LOG_disabled") &&
						({LOG_OBJECT_MOVES isKindOf _x} count LOG_CFG_ISTOWABLE > 0) &&
						isNull (_target getVariable "LOG_trailer") && ([0,0,0] distance velocity _target < 6) &&
						(getPos _target select 2 < 2) && !(_target getVariable "LOG_disabled"));
					
				LOG_TRAILER_SELECT_VALID = ( vehicle player == player && (alive _target) && (isNull LOG_OBJECT_MOVES) &&
						(!isNull LOG_OBJECT_SELECTION) && (LOG_OBJECT_SELECTION != _target) &&
						!(LOG_OBJECT_SELECTION getVariable "LOG_disabled") &&
						({LOG_OBJECT_SELECTION isKindOf _x} count LOG_CFG_ISTOWABLE > 0) &&
						isNull (_target getVariable "LOG_trailer") && ([0,0,0] distance velocity _target < 6) &&
						(getPos _target select 2 < 2) && !(_target getVariable "LOG_disabled")  && ( [_target] call LOG_FNCT_LOCKED ) && ( [ _target,1] call LOG_FNCT_CHAINING ) );
			};
	};
	
			if ({(vehicle player) isKindOf _x} count LOG_CFG_CANLIFT > 0) then{
				LOG_OBJECT_ADDACTION = vehicle player;
				LOG_TRAILER_MOVE_VALID = false;
				LOG_TRAILER_SELECT_VALID = false;
			
				LOG_HELI_LIFT_VALID = (driver LOG_OBJECT_ADDACTION == player &&
					({_x != LOG_OBJECT_ADDACTION && !(_x getVariable "LOG_disabled") &&  [_x] call LOG_FNCT_LOCKED  } count (nearestObjects [LOG_OBJECT_ADDACTION, LOG_CFG_ISLIFTABLE, 10]) > 0) &&
					isNull (LOG_OBJECT_ADDACTION getVariable "LOG_heliporte") && ([0,0,0] distance velocity LOG_OBJECT_ADDACTION < 8 ) && (getPos LOG_OBJECT_ADDACTION select 2 > 1) &&
					!(LOG_OBJECT_ADDACTION getVariable "LOG_disabled"));
				
				LOG_HELI_DROP_VALID = (driver LOG_OBJECT_ADDACTION == player && !isNull (LOG_OBJECT_ADDACTION getVariable "LOG_heliporte") &&
					([0,0,0] distance velocity LOG_OBJECT_ADDACTION <= 10 ) && (getPos LOG_OBJECT_ADDACTION select 2 <= 40) && !(LOG_OBJECT_ADDACTION getVariable "LOG_disabled"));
			};
	
sleep 0.2;
};