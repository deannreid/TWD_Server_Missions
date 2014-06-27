/*
DayZ Base Building
Made for DayZ Epoch please ask permission to use/edit/distrubute email vbawol@veteranbastards.com.
 
 
Note: Edit the _classname variable below to be the correct classname of the item you want to build, and I suggest you name the file appropiately!
 
Recommended to use alongside Maca's excellent 'right clicks' system: http://epochmod.com/...tions-to-items/
 
Edits by Mike of http://www.petuniaserver.com/ - Original file & all kudos to the EPOCH devs! http://www.dayzepoch.com
*/
 
private ["_plotReq","_proceed","_location","_dir","_classname","_item","_hasrequireditem","_missing","_hastoolweapon","_cancel","_reason","_started","_finished","_animState","_isMedic","_dis","_sfx","_hasbuilditem","_tmpbuilt","_onLadder","_isWater","_require","_text","_offset","_IsNearPlot","_isOk","_location1","_location2","_counter","_limit","_proceed","_num_removed","_position","_object","_canBuildOnPlot","_friendlies","_nearestPole","_ownerID","_findNearestPoles","_findNearestPole","_distance","_classnametmp","_ghost","_isPole","_needText","_lockable","_zheightchanged","_rotate","_combination_1","_combination_2","_combination_3","_combination_4","_combination","_combination_1_Display","_combinationDisplay","_zheightdirection","_abort","_isNear","_need","_needNear","_vehicle","_inVehicle","_requireplot","_objHDiff","_isLandFireDZ","_isTankTrap"];

_plotReq = false; //Plotpole requirement to build enabled

 fnc_Pos_fired1 = {
disableSerialization;
_indexPic = lbCurSel 2667; // index of selection
_returnTextPic = lbText [2667, _indexPic]; // name of selection
hint format["BAR : [%1] \n [%2]",_indexPic,_returnTextPic];// display the value
classnameChange = _returnTextPic;
 };
 
  fnc_Pos_fired2 = {
disableSerialization;
_indexChair = lbCurSel 2668; // index of selection
_returnTextChair = lbText [2668, _indexChair]; // name of selection
 hint format["BAR : [%1] \n [%2]",_indexChair,_returnTextChair];// display the value
 classnameChange = _returnTextChair;
 };
 
   fnc_Pos_fired3 = {
disableSerialization;
_indexBed = lbCurSel 2669; // index of selection
_returnTextBed = lbText [2669, _indexBed]; // name of selection
 hint format["BAR : [%1] \n [%2]",_indexBed,_returnTextBed];// display the value
 classnameChange = _returnTextBed;
 };
 
   fnc_Pos_fired4 = {
disableSerialization;
_indexBath = lbCurSel 2670; // index of selection
_returnTextBath = lbText [2670, _indexBath]; // name of selection
 hint format["BAR : [%1] \n [%2]",_indexBath,_returnTextBath];// display the value
 classnameChange = _returnTextBath;
 };
 
   fnc_Pos_fired5 = {
disableSerialization;
_indexShelf = lbCurSel 2671; // index of selection
_returnTextShelf = lbText [2671, _indexShelf]; // name of selection
 hint format["BAR : [%1] \n [%2]",_indexShelf,_returnTextShelf];// display the value
 classnameChange = _returnTextShelf;
 };
 
   fnc_Pos_fired6 = {
disableSerialization;
_indexMisc = lbCurSel 2672; // index of selection
_returnTextMisc = lbText [2672, _indexMisc]; // name of selection
 hint format["BAR : [%1] \n [%2]",_indexMisc,_returnTextMisc];// display the value
 classnameChange = _returnTextMisc;
 };
 
   fnc_Pos_fired7 = {
disableSerialization;
_indexTable = lbCurSel 2673; // index of selection
_returnTextTable = lbText [2673, _indexTable]; // name of selection
 hint format["BAR : [%1] \n [%2]",_indexTable,_returnTextTable];// display the value
 classnameChange = _returnTextTable;
 };
 
    fnc_Pos_fired8 = {
disableSerialization;
_indexExt = lbCurSel 2674; // index of selection
_returnTextExt = lbText [2674, _indexExt]; // name of selection
 hint format["BAR : [%1] \n [%2]",_indexExt,_returnTextExt];// display the value
 classnameChange = _returnTextExt;
 };
 
_classname = classnameChange;
 
if(DZE_ActionInProgress) exitWith { cutText [(localize "str_epoch_player_40") , "PLAIN DOWN"]; };
DZE_ActionInProgress = true;
 
_onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
_isWater =  dayz_isSwimming;
_cancel = false;
_reason = "";
_canBuildOnPlot = false;
 
_vehicle = vehicle player;
_inVehicle = (_vehicle != player);
 
DZE_Q = false;
DZE_Z = false;
 
DZE_Q_alt = false;
DZE_Z_alt = false;
 
DZE_Q_ctrl = false;
DZE_Z_ctrl = false;
 
DZE_5 = false;
DZE_4 = false;
DZE_6 = false;
 
DZE_cancelBuilding = false;
 
call gear_ui_init;
closeDialog 1;
 
if (_isWater) exitWith {DZE_ActionInProgress = false; cutText [localize "str_player_26", "PLAIN DOWN"];};
if (_inVehicle) exitWith {DZE_ActionInProgress = false; cutText [(localize "str_epoch_player_42"), "PLAIN DOWN"];};
if (_onLadder) exitWith {DZE_ActionInProgress = false; cutText [localize "str_player_21", "PLAIN DOWN"];};
if (player getVariable["combattimeout", 0] >= time) exitWith {DZE_ActionInProgress = false; cutText [(localize "str_epoch_player_43"), "PLAIN DOWN"];};
 
_item = _this;
 
// Need Near Requirements
_abort = false;
_distance = 3;
_reason = "";
 
 
if(_abort) exitWith {
cutText [format[(localize "str_epoch_player_135"),_reason,_distance], "PLAIN DOWN"];
DZE_ActionInProgress = false;
};
 
 
_classnametmp = _classname;
//_require =  getArray (configFile >> "cfgMagazines" >> _this >> "ItemActions" >> "Build" >> "require");
_text =  getText (configFile >> "CfgVehicles" >> _classname >> "displayName");
_ghost = getText (configFile >> "CfgVehicles" >> _classname >> "ghostpreview");
 
_lockable = 0;
 
_requireplot = DZE_requireplot;
if(isNumber (configFile >> "CfgVehicles" >> _classname >> "requireplot")) then {
_requireplot = getNumber(configFile >> "CfgVehicles" >> _classname >> "requireplot");
};
 
_isAllowedUnderGround = 1;
if(isNumber (configFile >> "CfgVehicles" >> _classname >> "nounderground")) then {
_isAllowedUnderGround = getNumber(configFile >> "CfgVehicles" >> _classname >> "nounderground");
};
 
_offset =  getArray (configFile >> "CfgVehicles" >> _classname >> "offset");
if((count _offset) <= 0) then {
_offset = [0,3.5,0]; //This is distance of object from player XYZ.. increase Y if you want an object to spawn further away from player
};
 
_isPole = (_classname == "Plastic_Pole_EP1_DZ");
_isLandFireDZ = (_classname == "Land_Fire_DZ");
 
_distance = DZE_PlotPole select 0;
_needText = localize "str_epoch_player_246";
 
if(_isPole) then {
_distance = DZE_PlotPole select 1;
};


_proceed = true;
// check for near plot
_findNearestPoles = nearestObjects[player, ["Plastic_Pole_EP1_DZ"], 30];
_findNearestPole = [];
{if (alive _x) then {_findNearestPole set [(count _findNearestPole),_x];};} foreach _findNearestPoles;

_IsNearPlot = count (_findNearestPole);

if(_IsNearPlot >= 1) then {
	_proceed = false;
	_plotReq = false;
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
_missing = "";
 
_location = [0,0,0];
_isOk = true;
 
// get inital players position
_location1 = getPosATL player;
_dir = getDir player;
 
_object = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];
 
_object attachTo [player,_offset];
 
_position = getPosATL _object;
 
cutText [(localize "str_epoch_player_45"), "PLAIN DOWN"];
 
_objHDiff = 0;

 
while {_isOk} do {
	 
	_zheightchanged = false;
	_zheightdirection = "";
	_rotate = false;
	 
	if (DZE_Q) then {
	DZE_Q = false;
	_zheightdirection = "up";
	_zheightchanged = true;
	};
	if (DZE_Z) then {
	DZE_Z = false;
	_zheightdirection = "down";
	_zheightchanged = true;
	};
	if (DZE_Q_alt) then {
	DZE_Q_alt = false;
	_zheightdirection = "up_alt";
	_zheightchanged = true;
	};
	if (DZE_Z_alt) then {
	DZE_Z_alt = false;
	_zheightdirection = "down_alt";
	_zheightchanged = true;
	};
	if (DZE_Q_ctrl) then {
	DZE_Q_ctrl = false;
	_zheightdirection = "up_ctrl";
	_zheightchanged = true;
	};
	if (DZE_Z_ctrl) then {
	DZE_Z_ctrl = false;
	_zheightdirection = "down_ctrl";
	_zheightchanged = true;
	};
	if (DZE_4) then {
	_rotate = true;
	DZE_4 = false;
	_dir = 180;
	};
	if (DZE_6) then {
	_rotate = true;
	DZE_6 = false;
	_dir = 0;
	};
	 
	if(_rotate) then {
	_object setDir _dir;
	_object setPosATL _position;
	//diag_log format["DEBUG Rotate BUILDING POS: %1", _position];
	};
	 
	if(_zheightchanged) then {
	detach _object;
	 
	_position = getPosATL _object;
	 
	if(_zheightdirection == "up") then {
	_position set [2,((_position select 2)+0.1)];
	_objHDiff = _objHDiff + 0.1;
	};
	if(_zheightdirection == "down") then {
	_position set [2,((_position select 2)-0.1)];
	_objHDiff = _objHDiff - 0.1;
	};
	 
	if(_zheightdirection == "up_alt") then {
	_position set [2,((_position select 2)+1)];
	_objHDiff = _objHDiff + 1;
	};
	if(_zheightdirection == "down_alt") then {
	_position set [2,((_position select 2)-1)];
	_objHDiff = _objHDiff - 1;
	};
	 
	if(_zheightdirection == "up_ctrl") then {
	_position set [2,((_position select 2)+0.01)];
	_objHDiff = _objHDiff + 0.01;
	};
	if(_zheightdirection == "down_ctrl") then {
	_position set [2,((_position select 2)-0.01)];
	_objHDiff = _objHDiff - 0.01;
	};
	 
	_object setDir (getDir _object);
	 
	if((_isAllowedUnderGround == 0) and ((_position select 2) < 0)) then {
	_position set [2,0];
	};
	 
	_object setPosATL _position;
	 
	//diag_log format["DEBUG Change BUILDING POS: %1", _position];
	 
	_object attachTo [player];
	 
	};
	 
	sleep 0.5;
	 
	_location2 = getPosATL player;
	 
	if(DZE_5) exitWith {
	_isOk = false;
	detach _object;
	_dir = getDir _object;
	_position = getPosATL _object;
	//diag_log format["DEBUG BUILDING POS: %1", _position];
	deleteVehicle _object;
	};
	 
	if(_location1 distance _location2 > 5) exitWith {
	_isOk = false;
	_cancel = true;
	_reason = "You've moved to far away from where you started building (within 5 meters)";
	detach _object;
	deleteVehicle _object;
	};
	 
	if(abs(_objHDiff) > 5) exitWith {
	_isOk = false;
	_cancel = true;
	_reason = "Cannot move up or down more than 5 meters";
	detach _object;
	deleteVehicle _object;
	};
	 
	if (player getVariable["combattimeout", 0] >= time) exitWith {
	_isOk = false;
	_cancel = true;
	_reason = (localize "str_epoch_player_43");
	detach _object;
	deleteVehicle _object;
	};
	 
	if (DZE_cancelBuilding) exitWith {
	_isOk = false;
	_cancel = true;
	_reason = "Cancelled building.";
	detach _object;
	deleteVehicle _object;
	};
};
 
//No building on roads unless toggled
if (!DZE_BuildOnRoads) then {
if (isOnRoad _position) then { _cancel = true; _reason = "Cannot build on a road."; };
};
 
// No building in trader zones
if(!canbuild) then { _cancel = true; _reason = "Cannot build in a city."; };
 
if (!_proceed) then {_cancel = true; _reason = "Someone's plotpole nearby";};
if (_plotReq) then {_cancel = true; _reason = "Plotpole required to build here";};

if(!_cancel) then {
 
_classname = _classnametmp;
 
// Start Build
_tmpbuilt = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];
 
_tmpbuilt setdir _dir;
 
// Get position based on object
_location = _position;
 
if((_isAllowedUnderGround == 0) and ((_location select 2) < 0)) then {
_location set [2,0];
};
 
_tmpbuilt setPosATL _location;
 
 
cutText [format[(localize "str_epoch_player_138"),_text], "PLAIN DOWN"];
 
_limit = 1;
 
if (DZE_StaticConstructionCount > 0) then {
_limit = DZE_StaticConstructionCount;
}
else {
if (isNumber (configFile >> "CfgVehicles" >> _classname >> "constructioncount")) then {
_limit = getNumber(configFile >> "CfgVehicles" >> _classname >> "constructioncount");
};
};
 
player playActionNow "Medic";
[player,"repair",0,false,10] call dayz_zombieSpeak;
[player,10,true,(getPosATL player)] spawn player_alertZombies;
sleep 3;
 
cutText [format[localize "str_build_01",_text], "PLAIN DOWN"];
 
if (_isPole) then {
[] spawn player_plotPreview;
};
 
_tmpbuilt setVariable ["OEMPos",_location,true];
 
_tmpbuilt setVariable ["CharacterID",dayz_characterID,true];
 
_charID = dayz_characterID;
_activatingPlayer = player;
 
PVDZE_obj_Publish = [dayz_characterID,_tmpbuilt,[_dir,_location],_classname];
publicVariableServer "PVDZE_obj_Publish";
player removeMagazine "ItemEmerald";
cutText [format["%1 saved to database!",_classname], "PLAIN DOWN",3];
player reveal _tmpbuilt;
DZE_ActionInProgress = false;
 
} else {
cutText [format[(localize "str_epoch_player_47"),_text,_reason], "PLAIN DOWN"];
DZE_ActionInProgress = false;
};
 
DZE_ActionInProgress = false;