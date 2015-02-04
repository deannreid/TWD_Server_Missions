/*------------------------------------*/
/* JAEM                               */
/* Just another Chopper-Evac Mod v1.4 */
/* OtterNas3                          */
/* 01/14/2014                         */
/* Last update: 06/14/2014            */
/*------------------------------------*/




private ["_allNearRescueFields","_locationPlayer","_cnt","_objectID","_objectUID","_targetVehicle","_playerUID","_magazinesPlayer","_hasBriefcase","_location","_dir","_object"];


evac_chopperPrice = 10000;




//This prevents the building of Evac-Chopper field on trader signs
_allNearRescueFields = (nearestObjects [player,["HeliHRescue"],50]);
if (count _allNearRescueFields > 0) then {
{
if (((_x getVariable["ObjectID","0"]) == "0") && ((_x getVariable["ObjectUID","0"]) == "0")) then {
systemChat ("You cant build a Evac-Chopper next to a Heli-Rescue sign that is part of the Map or from a Trader!");
systemChat ("You need to wait 60 seconds before you can try to set a Evac-Chopper again!");
[] spawn {
sleep 60;
s_player_makeEvacChopper = -1;
};
breakOut "exit";
};
} forEach _allNearRescueFields;
};


player removeAction s_player_makeEvacChopper;
s_player_makeEvacChopper = 1;


//Getting the target Vehicle and needed variables
_targetVehicle = _this select 3;
_location = ([_targetVehicle] call ON_fnc_GetPos);
_dir = getDir _targetVehicle;
_playerUID = ([player] call ON_fnc_convertUID);
_magazinesPlayer = magazines player;


//Cause we can only make a sign on Terrain and not on buildings or buildables
//We check if the Chopper height is below 1m above Terrain
if ((_location) select 2 >= 3) then {
systemChat("Sorry but Evac-Choppers need to be build on flat Terrain");
systemChat("Make sure you dont stand on a Building or a builded object!");
};


//Check if player has the needed amount of Briefcases to pay for the Evac-Chopper
//If not exit script
_hasBriefcase = player getVariable["cashMoney",0]; //_hasBriefcase = player getVariable["headShots",0];
if (_hasBriefcase < evac_chopperPrice) then {
systemChat(format["Making a Evac-Chopper costs %1 %2 - You dont have it - Sorry!", evac_chopperPrice, CurrencyName]);
s_player_makeEvacChopper = -1;
breakOut "exit";
};


//If player already has a Evac-Chopper
//tell him that only 1 Evac-Chopper is allowed
//Give him 5 seconds until we change the Evac-Chopper to the current target
if (playerHasEvacField) then {
systemChat("WARNING! You already have a Evac-Chopper - Maximum reached");
_cnt = 5;
_locationPlayer = (([player] call ON_fnc_GetPos));
for "_p" from 1 to 5 do
{
systemChat(format ["WARNING! Changing Evac-Chopper to this target in %1s - Move to cancel",_cnt]);
if (player distance _locationPlayer > 0.2) then {
systemChat("Changing Evac-Chopper canceled");
s_player_makeEvacChopper = -1;
breakOut "exit";
};
sleep 1;
_cnt = _cnt - 1;
};
_objectID = playersEvacField getVariable["ObjectID","0"];
_objectUID = playersEvacField getVariable["ObjectUID","0"];
PVDZE_obj_Delete = [_objectID,_objectUID,player];
publicVariableServer "PVDZE_obj_Delete";
PVDZE_EvacChopperFieldsUpdate = ["rem",playersEvacField];
publicVariableServer "PVDZE_EvacChopperFieldsUpdate";
deleteVehicle playersEvacField;
playerHasEvacField = false;
playersEvacField = nil;
};


//Before we start the building process
//we give the player a warning that Evac-Choppers needs free sight around
//Countdown for 10 seconds
systemChat("WARNING! Evac-Choppers needs free sight to all sides");
sleep 2;
systemChat("WARNING! Make sure you got no objects like Buildings or Trees around!");
sleep 2;
_cnt = 10;
for "_i" from 1 to 10 do
{
systemChat(format ["Building of Evac-Chopper starts in %1s - Move to cancel",_cnt]);
if (player distance _locationPlayer > 0.2) then {
systemChat("Building of Evac-Chopper canceled");
s_player_makeEvacChopper = -1;
breakOut "exit";
};
sleep 1;
_cnt = _cnt - 1;
};


//Start Building


//Player did not had a Evac-Chopper yet or decided to replace it with the new target
//So we check again if he STILL has the Briefcase in his inventory
//If yes, we remove it and say thanks ^^


if (!([player, evac_chopperPrice] call SC_fnc_removeCoins)) then {
systemChat(format["Making a Evac-Chopper costs %1 %2 - You dont have it - Sorry!", evac_chopperPrice , CurrencyName ]);
s_player_makeEvacChopper = -1;
breakOut "exit";
} else { 
systemChat(format["Making a Evac-Chopper costs %1 %2 - Thanks for your payment!", evac_chopperPrice, CurrencyName]);
};


//The player payd so we make the Sign and write it to the database
//We use the playerUID so the ownage is permanent!
_object = createVehicle ["HeliHRescue", _location, [], 0, "CAN_COLLIDE"];
_object addEventHandler ["HandleDamage", {false}];
_object enableSimulation false;
_object setDir _dir;
_object setPosATL _location;
player reveal _object;
player playActionNow "Medic";
_object setVariable ["CharacterID",_playerUID,true];
_object setVariable ["Classname", "HeliHRescue",true];
PVDZE_obj_Publish = [_playerUID,_object,[_dir,_location],"HeliHRescue"];
publicVariableServer "PVDZE_obj_Publish";
PVDZE_EvacChopperFieldsUpdate = ["add",_object];
publicVariableServer "PVDZE_EvacChopperFieldsUpdate";


player removeAction s_player_evacCall;
s_player_evacCall = -1;
s_player_makeEvacChopper = -1;
playerHasEvacField = true;
playersEvacField = _object;


//Thats it for the creation part of the Evac-Chopper
//Hope you enjoyed it :)
//Moo,
//Otter