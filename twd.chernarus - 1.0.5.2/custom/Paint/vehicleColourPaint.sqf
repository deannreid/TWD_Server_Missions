private ["_colour","_colour2","_playerWealth","_PUID","_txt"];
_PUID = (getPlayerUID player);

if !([[[(ColourPrice select 0), (ColourPrice select 1)]],0] call epoch_returnChange) then {
	_txt = getText(configFile >> "CfgMagazines" >> (ColourPrice select 0) >> "displayName");
	titleText [format[(localize "STR_EPOCH_ACTIONS_12"), (ColourPrice select 1), _txt], "PLAIN DOWN"];
} else {
	_colour = ""+str((sliderPosition 5700) / 10)+","+str((sliderPosition 5701) / 10)+","+str((sliderPosition 5702) / 10)+",1";
	_colour2 = ""+str((sliderPosition 6700) / 10)+","+str((sliderPosition 6701) / 10)+","+str((sliderPosition 6702) / 10)+",1";
	
	PVDZE_veh_Colour = [VehicleToPaint,_colour,_colour2,_PUID,dayz_playerName];
	publicVariableServer "PVDZE_veh_Colour";
	
	titleText ["Vehicle has been repainted! Please wait a moment for the texture to update!","PLAIN DOWN"];
};
