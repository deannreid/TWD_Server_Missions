call compile preprocessFileLineNumbers "custom\walkamongstthedead\config.sqf";
call compile preprocessFileLineNumbers "custom\takeclothes\init.sqf";
call compile preprocessFileLineNumbers "custom\wmod\init.sqf";
["custom\elevator"] execVM "custom\elevator\elevator_init.sqf";	
		  _nil = [] execVM "custom\JAEM\EvacChopper_init.sqf";
				 [] execVM "custom\vlsafezone\safe_zone.sqf";
				 [] execVM 'custom\mining\init.sqf';
				 [] execVM "custom\toolmenu\player\Activate.sqf";
				 [] execVM "custom\toolmenu\permveh\Activate.sqf";
				 []	execVM "custom\service_point\service_point.sqf";
				 []	ExecVM "custom\TradeFromVehicle\init.sqf" 
watermark_1 = compile preprocessFileLineNumbers "custom\code\twd.sqf";
player spawn watermark_1;