diag_log "==============================================";
	diag_log "Starting Mission Init";

	diag_log "Loading Variables";
	#include "custom\code\server\svar.sqf"
	
		if (isServer) then {
			diag_log "Loading ServerSide Stuff!";
				#include "custom\code\server\server.sqf";
			diag_log "Finished Loading NonDedicated Stuff!";
			diag_log "==============================================";		
		};
		
		if (!isDedicated) then {
			diag_log "Loading NonDedicated Stuff!";
				#include "custom\code\server\dedicated.sqf";
			diag_log "Finished Loading NonDedicated Stuff!";
			diag_log "==============================================";		
		};
		
	diag_log "Finished Mission Init";
diag_log "==============================================";