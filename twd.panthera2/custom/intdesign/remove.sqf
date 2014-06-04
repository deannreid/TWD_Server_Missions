private ["_isEmeraldItem","_emeraldTarget","_objectID","_objectUID","_objD","_findNearestPoles","_findNearestPole","_nearestPole","_ownerID","_friendlies"];
_emeraldTarget = cursorTarget;
_isEmeraldItem = (typeOf _emeraldTarget) in isEmerald;
_proceed = true;

_findNearestPoles = nearestObjects[player, ["Plastic_Pole_EP1_DZ"], 30];
_findNearestPole = [];
{if (alive _x) then {_findNearestPole set [(count _findNearestPole),_x];};} foreach _findNearestPoles;

_IsNearPlot = count (_findNearestPole);

if(_IsNearPlot >= 1) then {
	_proceed = false;
	_nearestPole = _findNearestPole select 0;

	// Find owner
	_ownerID = _nearestPole getVariable["CharacterID","0"];
	
	// check if friendly to owner
	if(dayz_characterID != _ownerID) then {

		_friendlies		= player getVariable ["friendlyTo",[]];
		// check if friendly to owner
		if(!(_ownerID in _friendlies)) then {
			_proceed = false;
			} else {
			_proceed = true;
		};
		} else {
		_proceed = true;
	};
};

if (!_proceed) then { 
// player is not an owner
    cutText [format["Plotpole nearby."], "PLAIN DOWN"];
} else {
	if (_isEmeraldItem) then {
	// player is looking at a object and the target has a object classname
	// delete it first to avoid player changing to another target
		_objD = typeOf cursorTarget;
		_objectID = cursorTarget getVariable["CharacterID","0"];
		_objectUID	= cursorTarget getVariable ["ObjectUID","0"];
		PVDZE_obj_Delete = [_objectID,_objectUID,player];
		publicVariableServer "PVDZE_obj_Delete";
		_emeraldTarget setDamage 1;
		deletevehicle cursorTarget; 
		player removeAction s_player_removeEmerald;
		player playActionNow "Medic";
		r_interrupt = false;
		_dis=10;
		_sfx = "repair";
		[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
		[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
		sleep 6;
		cutText [format["Deleted %1", _objD], "PLAIN DOWN"];
		r_interrupt = false;
		player switchMove "";
		player playActionNow "stop";
	} else {
		// player is not looking at object, or target does not have a object classname
		cutText [format["You have to be facing the object you are removing"], "PLAIN DOWN"];
	};
};