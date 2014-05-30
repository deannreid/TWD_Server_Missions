call compile preprocessFileLineNumbers "custom\walkamongstthedead\config.sqf";
call compile preprocessFileLineNumbers "custom\takeclothes\init.sqf";
["custom\elevator"] execVM "custom\elevator\elevator_init.sqf";	
		  _nil = [] execVM "custom\VehicleKeyChanger\VehicleKeyChanger_init.sqf";
		  _nil = [] execVM "custom\JAEM\EvacChopper_init.sqf";
		  _nil = [] execVM "custom\code\deathmessages.sqf";
		  _nul = [] execVM "custom\loading\loginCamera.sqf";
				 []	execVM "custom\R3F_ARTY_AND_LOG\init.sqf";
				 [] execVM "custom\VehicleStow\Start.sqf";
				 [] execVM "custom\vlsafezone\safe_zone.sqf";
				 []	execVM "custom\loading\loadout.sqf";
				 [] execVM "custom\toolmenu\init.sqf";
				 []	execVM "custom\service_point\service_point.sqf";
				 
	if (dayZ_instance == 15) then
	{
		[] execVM "custom\namalsk\fn_dzn_snowfall.sqf";
 _bul = [] execVM "\nst\ns_modules\blowout\module\blowout_client.sqf";
		[] execVM "custom\namalsk\breath.sqf";		
		   execVM "custom\namalsk\spawn_aii.sqf";	
		   };