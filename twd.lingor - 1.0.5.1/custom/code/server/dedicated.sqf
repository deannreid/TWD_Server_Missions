diag_log "==============================================";
		call compile preprocessFileLineNumbers "custom\walkamongstthedead\config.sqf";
	diag_log "Walk Amongst The Dead Loaded";
		call compile preprocessFileLineNumbers "custom\takeclothes\init.sqf";
	diag_log "Take Clothing Loaded";
		["custom\elevator"] execVM "custom\elevator\elevator_init.sqf";
	diag_log "Elevators Loaded";
		_nil = [] execVM "custom\JAEM\EvacChopper_init.sqf";
	diag_log "JAEM Loaded";
	    execVM "custom\vlsafezone\safe_zone.sqf";
	diag_log "Safezones Loaded";
if (dayZ_instance == 11) then {		
		execVM 'custom\mining\init.sqf';
	diag_log "Mining Loaded";};
		execVM "custom\toolmenu\player\Activate.sqf";
	diag_log "Player Tool Menu Loaded";
		execVM "custom\service_point\service_point.sqf";
	diag_log "Service Points Loaded";
		execVM "custom\code\killmessage.sqf";
	diag_log "Custom Kill Messages Loaded";
		watermark_1 = compile preprocessFileLineNumbers "custom\code\twd.sqf";
		player spawn watermark_1;
	diag_log "Watermark Loaded";
		[]execVM "custom\carradio\checkradio.sqf"
	diag_log "Car Stereo Loaded";
		execVM "custom\markers\init.sqf";
	diag_log format "Markers Loaded";
diag_log "==============================================";