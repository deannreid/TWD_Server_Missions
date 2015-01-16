	execVM "custom\safezone\safezone.sqf";
diag_log "Safezones Loaded";
	execVM "custom\code\killmsg.sqf";
diag_log "KillMessages Loaded";
	call compile preprocessFileLineNumbers "custom\walkamongstthedead\config.sqf";
diag_log "Zombie Mode Loaded";
	call compile preprocessFileLineNumbers "custom\logistic\init.sqf";
diag_log "Logistics Loaded";
