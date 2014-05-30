player_temp_calculation	=	compile preprocessFileLineNumbers "custom\namalsk\fn_temperatur.sqf";
player_music = 				compile preprocessFileLineNumbers "custom\namalsk\player_music.sqf";
dzn_fnc_snowfall =          compile preprocessFileLineNumbers "custom\namalsk\fn_dzn_snowfall.sqf";
fnc_isInsideBuilding = 		compile preprocessFileLineNumbers "custom\namalsk\fn_isInsideBuilding.sqf";
player_wearClothes =		compile preprocessFileLineNumbers "custom\namalsk\player_wearClothes.sqf";
building_spawnZombies =		compile preprocessFileLineNumbers "custom\namalsk\building_spawnZombies.sqf";
execVM "custom\code\DynamicWeatherEffects.sqf";