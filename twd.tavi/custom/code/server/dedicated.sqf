call compile preprocessFileLineNumbers "custom\walkamongstthedead\config.sqf";
call compile preprocessFileLineNumbers "custom\takeclothes\init.sqf";
["custom\elevator"] execVM "custom\elevator\elevator_init.sqf";	
		_logistic = execVM "custom\=BTC=_Logistic\=BTC=_Logistic_Init.sqf";
		  _nil = [] execVM "custom\JAEM\EvacChopper_init.sqf";
		  _nil = [] execVM "custom\code\deathmessages.sqf";
		  _nul = [] execVM "custom\loading\loginCamera.sqf";
		  _nil = [] execVM "custom\VASP\VASP_init.sqf";
				 [] execVM "custom\VehicleStow\Start.sqf";
				 [] execVM "custom\vlsafezone\safe_zone.sqf";
				 []	execVM "custom\loading\loadout.sqf";
				 [] execVM "custom\toolmenu\init.sqf";
				 []	execVM "custom\service_point\service_point.sqf";
				 [] execVM "custom\loading\welcome.sqf";
watermark_1 = compile preprocessFileLineNumbers "custom\code\twd.sqf";
player spawn watermark_1;