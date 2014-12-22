/////////////////////
///Adding Traders///
////////////////////
if (dayZ_instance == 11) then
{
	if (isServer) then 
		{
			call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\dynamic_vehicle.sqf";
			_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\mission.sqf";
		};

};

if (dayZ_instance == 16) then
{
	if (isServer) then 
		{
			call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_16.Panthera2\dynamic_vehicle.sqf";
			_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_16.Panthera2\mission.sqf";
		};
};

if (dayZ_instance == 7) then
{
	if (isServer) then 
		{
			call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_7.Lingor\dynamic_vehicle.sqf";
			_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_7.Lingor\mission.sqf";
		};
};

if (dayZ_instance == 15) then
{
	if (isServer) then 
		{
			call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_15.namalsk\dynamic_vehicle.sqf";
			_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_15.namalsk\mission.sqf";
		};
};