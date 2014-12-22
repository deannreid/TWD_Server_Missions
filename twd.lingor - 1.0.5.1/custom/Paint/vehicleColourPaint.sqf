private ["_colour","_colour2","_playerWealth","_PUID"];
_PUID = (getPlayerUID player);

_playerWealth = [player,ColourPrice] call SC_fnc_removeCoins;

if (_playerWealth) then {
	_colour = ""+str((sliderPosition 5700) / 10)+","+str((sliderPosition 5701) / 10)+","+str((sliderPosition 5702) / 10)+",1";
	_colour2 = ""+str((sliderPosition 6700) / 10)+","+str((sliderPosition 6701) / 10)+","+str((sliderPosition 6702) / 10)+",1";

	PVDZE_veh_Colour = [VehicleToPaint,_colour,_colour2,_PUID,dayz_playerName];
	publicVariableServer "PVDZE_veh_Colour";

	titleText ["Vehicle has been repainted! Please wait a moment for the texture to update!","PLAIN DOWN"];
} else {
	titleText ["You do not have enough money to repaint your vehicle!","PLAIN DOWN"];
};
