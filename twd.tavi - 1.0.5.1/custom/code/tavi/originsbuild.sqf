/*
DayZ Base Building
Made for DayZ Epoch please ask permission to use/edit/distrubute email vbawol@veteranbastards.com.
 
 
Note: Edit the _classname variable below to be the correct classname of the item you want to build, and I suggest you name the file appropiately!
 
Recommended to use alongside Maca's excellent 'right clicks' system: http://epochmod.com/...tions-to-items/
 
Edits by Mike of http://www.petuniaserver.com/ - Original file & all kudos to the EPOCH devs! http://www.dayzepoch.com
*/
 
private ["_location","_dir","_classname","_item","_hasrequireditem","_missing","_hastoolweapon","_cancel","_reason","_started","_finished","_animState","_isMedic","_dis","_sfx","_hasbuilditem","_tmpbuilt","_onLadder","_isWater","_require","_text","_offset","_IsNearPlot","_isOk","_location1","_location2","_counter","_limit","_proceed","_num_removed","_position","_object","_canBuildOnPlot","_friendlies","_nearestPole","_ownerID","_findNearestPoles","_findNearestPole","_distance","_classnametmp","_ghost","_isPole","_needText","_lockable","_zheightchanged","_rotate","_combination_1","_combination_2","_combination_3","_combination_4","_combination","_combination_1_Display","_combinationDisplay","_zheightdirection","_abort","_isNear","_need","_objHupDiff","_needNear","_vehicle","_inVehicle","_requireplot","_objHDiff","_isLandFireDZ","_isTankTrap"];
// Edit the classname BELOW to change what is built
_type = _this select 0;
_charID = getplayerUID player;
_humanity = player getVariable["humanity",0];
_classname = "";
_price = 0;
_name = "";
_abort = false;
_message = "";
switch(_type) do {
	case 'B1' : {
		_classname = "Uroven1DrevenaBudka";
		_limit = -5000;
		_price = -1;
		_name = "Bandit Level 1 House";
		if(_charID in owner_B1 or _charID in owner_H1) exitwith {closeDialog 1; _abort = true; _message = format["You have already built a Level 1 House!", _name];};
		if(_humanity > _limit) exitwith {closeDialog 1; _abort = true; _message = format["You need at least %1 Humanity to Build the %2!",_limit,_name];};
	};
	case 'B2' : {
		_classname = "Uroven2KladaDomek";
		_limit = -10000;
		_price = -1;
		_name = "Bandit Level 2 House";
		if(_humanity > _limit) exitwith {closeDialog 1; _abort = true; _message = format["You need at least %1 Humanity to Build the %2!",_limit,_name];};
		if(!(_charID in owner_B1 or _charID in owner_H1)) exitwith {closeDialog 1; _abort = true; _message = "You need to Build a Level 1 House first!";};
		if(_charID in owner_B2 or _charID in owner_H2) exitwith {closeDialog 1; _abort = true; _message = format["You have already built a Level 2 House!", _name];};
	};
	case 'B3' : {
		_classname = "Uroven3DrevenyDomek";
		_limit = -15000;
		_price = -1;
		_name = "Bandit Level 3 House";
		if(_humanity > _limit) exitwith {closeDialog 1; _abort = true; _message = format["You need at least %1 Humanity to Build the %2!",_limit,_name];};
		if(!(_charID in owner_B2 or _charID in owner_H2)) exitwith {closeDialog 1; _abort = true; _message = "You need to Build a Level 2 House first!";};
		if(_charID in owner_B3 or _charID in owner_H3) exitwith {closeDialog 1; _abort = true; _message = format["You have already built a Level 3 House!", _name];};
	};
	case 'H1' : {
		_classname = "Uroven1VelkaBudka";
		_limit = 5000;
		_price = -1;
		_name = "Hero Level 1 House";
		if(_humanity < _limit) exitwith {closeDialog 1; _abort = true; _message = format["You need at least %1 Humanity to Build the %2!",_limit,_name];};
		if(_charID in owner_B1 or _charID in owner_H1) exitwith {closeDialog 1; _abort = true; _message = format["You have already built a Level 1 House!", _name];};
	};
	case 'H2' : {
		_classname = "Uroven2MalyDomek";
		_limit = 10000;
		_price = -1;
		_name = "Hero Level 2 House";
		if(_humanity < _limit) exitwith {closeDialog 1; _abort = true; _message = format["You need at least %1 Humanity to Build the %2!",_limit,_name];};
		if(!(_charID in owner_B1 or _charID in owner_H1)) exitwith {closeDialog 1; _abort = true; _message = "You need to Build a Level 1 House first!";};
		if(_charID in owner_B2 or _charID in owner_H2) exitwith {closeDialog 1; _abort = true; _message = format["You have already built a Level 2 House!", _name];};

	};
	case 'H3' : {
		_classname = "Uroven3VelkyDomek";
		_limit = 15000;
		_price = -1;
		_name = "Hero Level 3 House";
		if(_humanity < _limit) exitwith {closeDialog 1; _abort = true; _message = format["You need at least %1 Humanity to Build the %2!",_limit,_name];};
		if(!(_charID in owner_B2 or _charID in owner_H2)) exitwith {closeDialog 1; _abort = true; _message = "You need to Build a Level 2 House first!";};
		if(_charID in owner_B3 or _charID in owner_H3) exitwith {closeDialog 1; _abort = true; _message = format["You have already built a Level 3 House!", _name];};

	};
	case 'SG' : {
		_classname = "malaGaraz";
		_price = -1;
		_name = "Small Garage";
		if(!(_charID in owner_B1 or _charID in owner_H1)) exitwith {closeDialog 1; _abort = true; _message = format["You must build a level 1 house first!", _name];};
		if(_charID in owner_SG) exitwith {closeDialog 1; _abort = true; _message = format["You have already built your %1!", _name];};
	};
	case 'LG' : {
		_classname = "velkaGaraz";
		_price = -1;
		_name = "Large Garage";
		if(!(_charID in owner_B3 or _charID in owner_H3)) exitwith {closeDialog 1; _abort = true; _message = format["You must build a level 3 house first!", _name];};
		if(!(_charID in owner_SG)) exitwith {closeDialog 1; _abort = true; _message = format["You must build a small garage first!", _name];};
		if(_charID in owner_LG) exitwith {closeDialog 1; _abort = true; _message = format["You have already built your %1!", _name];};
	}; 
	case 'PG' : {
		_classname = "kingramida";
		_price = -1;
		_name = "Pyramid Garage";
		if(!(_charID in owner_LG)) exitwith {closeDialog 1; _abort = true; _message = format["You must build a Large Garage first!", _name];};
		if(_charID in owner_PG) exitwith {closeDialog 1; _abort = true; _message = format["You have already build your %1!", _name];};
	};
};
if(_abort) exitwith{cutText[_message,"PLAIN DOWN"];};
_Briefcases = {_x == "ItemBriefcase100oz"} count magazines player;
if(_Briefcases > _price) then {
 
// Edit the classname ABOVE to change what is built
 
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
 
_requireplot = 1;
 
_isAllowedUnderGround = 0;
if(isNumber (configFile >> "CfgVehicles" >> _classname >> "nounderground")) then {
_isAllowedUnderGround = getNumber(configFile >> "CfgVehicles" >> _classname >> "nounderground");
};
 
_offset = [0,10,1];
 
_isPole = (_classname == "Plastic_Pole_EP1_DZ");
_isLandFireDZ = (_classname == "Land_Fire_DZ");
 
_distance = DZE_PlotPole select 0;
_needText = localize "str_epoch_player_246";
 
if(_isPole) then {
_distance = DZE_PlotPole select 1;
};
 
// check for near plot
_findNearestPoles = nearestObjects [(vehicle player), ["Plastic_Pole_EP1_DZ"], _distance];
_findNearestPole = [];
 
{
if (alive _x) then {
_findNearestPole set [(count _findNearestPole),_x];
};
} foreach _findNearestPoles;
 
_IsNearPlot = count (_findNearestPole);
 
// If item is plot pole and another one exists within 45m
if(_isPole and _IsNearPlot > 0) exitWith {  DZE_ActionInProgress = false; cutText [(localize "str_epoch_player_44") , "PLAIN DOWN"]; };
 
if(_IsNearPlot == 0) then {
 
// Allow building of plot
_canBuildOnPlot = true;
 
} else {
// Since there are plots nearby we check for ownership and then for friend status
 
// check nearby plots ownership and then for friend status
_nearestPole = _findNearestPole select 0;
 
// Find owner
_ownerID = _nearestPole getVariable["CharacterID","0"];
 
// diag_log format["DEBUG BUILDING: %1 = %2", dayz_characterID, _ownerID];
 
// check if friendly to owner
if(dayz_characterID == _ownerID) then {  //Keep ownership
// owner can build anything within his plot except other plots
if(!_isPole) then {
_canBuildOnPlot = true;
};
 
} else {
// disallow building plot
_canBuildOnPlot = false;
};
};
 
// _message
if(!_canBuildOnPlot) exitWith {  DZE_ActionInProgress = false; cutText [format["Woah there survivor! This ain't your patch, someone's plot pole is nearby!"], "PLAIN DOWN",3]; };
 
_missing = "";
 
_location = [0,0,0];
_isOk = true;
 
// get inital players position
_location1 = getPosATL player;
_dir = getDir player;
 
// if ghost preview available use that instead
if (_ghost != "") then {
_classname = _ghost;
};
 
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
_objHupDiff = _objHupDiff + 1;
};
if(_zheightdirection == "down_alt") then {
_position set [2,((_position select 2)-1)];
_objHDiff = _objHDiff - 1;
};
 
if(_zheightdirection == "up_ctrl") then {
_position set [2,((_position select 2)+0.01)];
_objHupDiff = _objHupDiff + 0.01;
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
if(!placevault) then { _cancel = true; _reason = "Cannot build in a city."; };
	if(isNil inSector) then {
	isSector = false;
	};
if(isSector) then {_cancel = true; _reason = "Cannot build in SectorB."; };
if(!_cancel) then {
 
_classname = _classnametmp;
 
// Start Build
player enableSimulation false;
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
_tmpbuilt setVariable ["CharacterID",_uid,true];
_activatingPlayer = player;
 
switch (_type) do {
	case 'B1' : {
		player removeMagazine "ItemRuby";
		owner_B1 set [count owner_B1, _charID];
		publicVariable "owner_B1";
	};
	case 'B2' : {
		player removeMagazine "ItemRuby";
		owner_B2 set [count owner_B2, _charID];
		publicVariable "owner_B2";
	};
	case 'B3' : {
		player removeMagazine "ItemRuby";
		owner_B3 set [count owner_B3, _charID];
		publicVariable "owner_B3";
	};
	case 'H1' : {
		player removeMagazine "ItemSapphire";
		owner_H1 set [count owner_H1, _charID];
		publicVariable "owner_H1";
	};
	case 'H2' : {
		player removeMagazine "ItemSapphire";
		owner_H2 set [count owner_H2, _charID];
		publicVariable "owner_H2";
	};
	case 'H3' : {
		player removeMagazine "ItemSapphire";
		owner_H3 set [count owner_H3, _charID];
		publicVariable "owner_H3";
	};
	case 'SG' : {
		player removeMagazine "ItemTopaz";
		owner_SG set [count owner_SG, _charID];
		publicVariable "owner_SG";
	};
	case 'LG' : {
		player removeMagazine "ItemTopaz";
		owner_LG set [count owner_LG, _charID];
		publicVariable "owner_LG";
	};
	case 'PG' : {
		player removeMagazine "ItemEmerald";
		owner_PG set [count owner_PG, _charID];
		publicVariable "owner_PG";
	};
}; 

_dir = getDir player;
PVDZE_veh_Publish = [_tmpbuilt,[_dir,_location],_classname,true,_charID,_activatingPlayer];
publicVariableServer  "PVDZE_veh_Publish";
 
// Customise the message below
 player enableSimulation true;
cutText [format["Nice one! You now have a %1", _name], "PLAIN DOWN",3];
 
// Customer the message above
 
player reveal _tmpbuilt;
DZE_ActionInProgress = false;
 
} else {
cutText [format[(localize "str_epoch_player_47"),_text,_reason], "PLAIN DOWN"];
DZE_ActionInProgress = false;
};
 DZE_ActionInProgress = false;
 } else {
 closeDialog 1;
 cutText[format["You need %1 briefcases gold to build this house!",(_price+1)],"PLAIN DOWN"];
 };