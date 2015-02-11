execVM "custom\code\modnotinstalled.sqf";
	execVM "custom\safezone\safezone.sqf";
diag_log "Safezones Loaded";
	execVM "custom\code\killmsg.sqf";
diag_log "KillMessages Loaded";
	call compile preprocessFileLineNumbers "custom\walkamongstthedead\config.sqf";
diag_log "Zombie Mode Loaded";
	call compile preprocessFileLineNumbers "custom\logistic\init.sqf";
diag_log "Logistics Loaded";
    execVM "custom\service_point\service_point.sqf";
diag_log "Service Points Loaded";
	execVM "custom\markers\init.sqf";
diag_log "Markers Loaded";
	execVM "custom\aiclient\init.sqf";
	