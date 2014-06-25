private ["_EH_Fired","_inVehicle","_inVehicleLast","_EH_Fired_Vehicle","_maxspeed","_vehicle",
"_curspeed","_vel","_dir","_speed","_speedlimit","_backpackProtection","_cnt"];
 
disableSerialization;
 
waitUntil {!isNil "dayz_animalCheck"};
 
_inVehicle = objNull;
_inVehicleLast = objNull;
 
while {true} do {
 
waitUntil {!canBuild};
 
_inSafezoneFinished = false;
_msg = "You have entered a Safe Zone!";
hint _msg;
taskHint [_msg, [0,1,0,1], "taskDone"];
_thePlayer = player;
 
player_zombieCheck = {};
fnc_usec_damageHandler = {};
_thePlayer removeAllEventHandlers "handleDamage";
_thePlayer addEventHandler ["handleDamage", {false}];
_thePlayer allowDamage false;
 
_EH_Fired = _thePlayer addEventHandler ["Fired", {
cutText ["You can not fire your weapon in a Trader City Area","WHITE IN"];
systemchat ("You can not fire your weapon in a Trader City Area");
deleteVehicle nearestObject [_this select 0,_this select 4];
}];
 
_speedlimit = [] spawn {
_maxspeed = 20;
while {!canbuild} do {
waitUntil {vehicle player != player and !((vehicle player) isKindOf 'Air')};
_vehicle = vehicle player;
_curspeed = speed _vehicle;
if (_curspeed > _maxspeed) then {
if (_curspeed - _maxspeed > 15) then {
_vehicle setVelocity [0,0,0];
}
else
{
_vel = velocity _vehicle;
_dir = direction _vehicle;
_speed = _curspeed - _maxspeed;
_vehicle setVelocity [(_vel select 0)-((sin _dir)*_speed),(_vel select 1)- ((cos _dir)*_speed),(_vel select 2)];
};
};
sleep 0.1;
};
};
 
_backpackProtection = [] spawn {                 // Also zombie shield
while {1 == 1} do
{
if (!canbuild) then
{
_cnt = {isPlayer _x && _x != player} count (player nearEntities [["CAManBase"], 3]);
if ((_cnt > 0) && (!isNull (findDisplay 106))) then
{
(findDisplay 106) closedisplay 0;
closeDialog 0;
cutText ["You are not allowed to open gear while near another player!","PLAIN"];
systemchat "You are not allowed to open gear while near another player!";
hint "You are not allowed to open gear while near another player!";
};
 
{
if (!isNull _x) then {
if !(isPlayer _x) then {
deletevehicle _x;
};
};
} forEach (vehicle player nearEntities ["zZombie_Base",15]);
}
else
{
sleep 2;
};
sleep 0.1;
};
};
 
[] spawn {
while {1 == 1} do
{
if (!canbuild) then
{
{
if (!isNull _x) then
{
_in = _x getVariable ["inSafeZone",0];
if (_in == 0) then
{
_x setVariable ["inSafeZone", 1, true];
_x removeAllEventHandlers "HandleDamage";
_x addEventHandler ["HandleDamage", {false}];
_x allowDamage false;
};
};
} forEach ((vehicle player) nearEntities [["LandVehicle","Air","Ship"], 15]);
}
else
{
{
if (!isNull _x) then
{
_in = _x getVariable ["inSafeZone",0];
if (_in == 1) then
{
_x setVariable ["inSafeZone", 0, true];
_x removeAllEventHandlers "HandleDamage";
_x addeventhandler ["HandleDamage",{_this call vehicle_handleDamage} ];
_x allowDamage true;
};
};
} forEach ((vehicle player) nearEntities [["LandVehicle","Air","Ship"], 15]);
sleep 5;
};
sleep 0.1;
};
};
 
if (true) then
{
while {!canBuild} do
{
sleep 0.1;
if (!(isNull _inVehicle) && (vehicle player == player)) then
{
_inVehicle removeEventHandler ["Fired", _EH_Fired_Vehicle];
_inVehicleLast = _inVehicle;
_inVehicleLast removeEventHandler ["Fired", _EH_Fired_Vehicle];
_inVehicle = objNull;
};
 
if (vehicle player != player && isNull _inVehicle) then
{
_inVehicle = vehicle player;
_EH_Fired_Vehicle = _inVehicle addEventHandler ["Fired", {
cutText ["You can not fire your vehicles weapon in a Trader City Area","WHITE IN"];
systemChat ("You can not fire your vehicles weapon in a Trader City Area");
deleteVehicle nearestObject [_this select 0,_this select 4];
}];
};
};
} else {
waitUntil {canBuild};
};
 
terminate _backpackProtection;
terminate _speedlimit;
_msg = "You have left the Safe Zone!";
hint _msg;
taskHint [_msg, [1,0,0.1,1], "taskFailed"];
 
if (!(isNull _inVehicle)) then
{
_inVehicle removeEventHandler ["Fired", _EH_Fired_Vehicle];
};
 
if (!(isNull _inVehicleLast)) then
{
_inVehicleLast removeEventHandler ["Fired", _EH_Fired_Vehicle];
};
 
_thePlayer removeEventHandler ["Fired", _EH_Fired];
 
player_zombieCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";
fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";
if (gmdadmin != 1) then {
_thePlayer addEventHandler ["handleDamage", {true}];
_thePlayer removeAllEventHandlers "handleDamage";
_thePlayer allowDamage true;
};
 
_inSafezoneFinished = true;
};