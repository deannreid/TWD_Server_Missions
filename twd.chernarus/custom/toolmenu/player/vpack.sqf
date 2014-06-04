/*
	Enhanced Vehicle Deployment by TheFarix
*/

call compile preprocessFileLineNumbers "custom\toolmenu\player\vcommon.sqf";

if (dayz_combat == 1) exitwith { cutText ["\n\nYou are in combat and cannot perform that action!", "PLAIN DOWN"] };

private ["_obj","_animState","_started","_finished"];

if(DZE_ActionInProgress) exitWith { cutText ["Vehicle packing already in progress." , "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

player removeAction s_player_packVehicle;
s_player_packVehicle = 1;

_obj = _this select 3;

cutText ["Packing vehicle started", "PLAIN DOWN"];

[1,1] call dayz_HungerThirst;
player playActionNow "Medic";

[player,"repair",0,false] call dayz_zombieSpeak;
[player,50,true,(getPosATL player)] spawn player_alertZombies;

r_interrupt = false;
_animState = animationState player;
r_doLoop = true;
_started = false;
_finished = false;

while {r_doLoop} do {
	_animState = animationState player;
	_isMedic = ["medic",_animState] call fnc_inString;
	if (_isMedic) then {
		_started = true;
	};
	if (_started and !_isMedic) then {
		r_doLoop = false;
		_finished = true;
	};
	if (r_interrupt) then {
		r_doLoop = false;
	};
	sleep 0.1;
};
r_doLoop = false;
		
if (_finished) then {
	// Double check that object is not null
	if(!isNull(_obj)) then {
		_ipos = getPosATL _obj;
		_type = typeOf _obj;

		_materials = [_type] call EVDGetMaterials;

		//Delete from hive
		_objectID  = _obj getVariable ["ObjectID","0"];
		_objectUID = _obj getVariable ["ObjectUID","0"];
		_activatingPlayer = player;
		PVDZE_obj_Delete = [_objectID,_objectUID,_activatingPlayer];
		publicVariableServer "PVDZE_obj_Delete";

		deleteVehicle _obj;

		if (_ipos select 2 < 0) then {
			_ipos set [2,0];
		};

		_radius = 1;

		// give refund items
		if((count _materials) > 0) then {
			_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
			{
				_itemOut = _x select 0;
				_countOut = _x select 1;
				if (typeName _countOut == "ARRAY") then {
					_countOut = round((random (_countOut select 1)) + (_countOut select 0));
				};
				_item addMagazineCargoGlobal [_itemOut,_countOut];
			} forEach _materials;

			_item setposATL _iPos;

			player reveal _item;

			player action ["Gear", _item];
		};
	} else {
		cutText [(localize "str_epoch_player_91"), "PLAIN DOWN"];
	};
} else {
	r_interrupt = false;
	player switchMove "";
	player playActionNow "stop";
	cutText ["Canceled packing vehicle", "PLAIN DOWN"];
};

DZE_ActionInProgress = false;
s_player_packVehicle = -1;
