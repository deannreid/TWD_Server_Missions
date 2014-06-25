/*------------------------------------*/
/* JAEM                               */
/* Just another Chopper-Evac Mod v1.4 */
/* OtterNas3                          */
/* 01/14/2014                         */
/* Last update: 06/14/2014            */
/*------------------------------------*/

private ["_cnt","_locationPlayer","_objectID","_objectUID"];

player removeAction s_player_clearEvacChopper;
s_player_clearEvacChopper = 0;

_cnt = 5;
_locationPlayer = (([player] call ON_fnc_GetPos));

for "_p" from 1 to 5 do
{
	systemChat(format ["WARNING! Evac-Chopper get disabled in %1s - NO REFUND! - Move to cancel!",_cnt]);
	if (player distance _locationPlayer > 0.2) then {
		systemChat("Disable of Evac-Chopper canceled");
		s_player_clearEvacChopper = -1;
		breakOut "exit";
	};
	sleep 1;
	_cnt = _cnt - 1;
};

_objectID = playersEvacField getVariable["ObjectID","0"];
_objectUID = playersEvacField getVariable["ObjectUID","0"];

PVDZE_obj_Delete = [_objectID,_objectUID,player];
publicVariableServer "PVDZE_obj_Delete";
deleteVehicle playersEvacField;

PVDZE_EvacChopperFieldsUpdate = ["rem",playersEvacField];
publicVariableServer "PVDZE_EvacChopperFieldsUpdate";

playerHasEvacField = false;
playersEvacField = nil;

s_player_clearEvacChopper = -1;
