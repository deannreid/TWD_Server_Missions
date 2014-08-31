//dayZ_instance = 7; //Lingor
dayZ_instance = 11; // Cherno
//dayZ_instance = 16; //Panthera
//dayZ_instance = 15; //Namalsk


if (dayZ_instance == 7) then {
						    	if (twd_debug) then {diag_log "Instance ID = 7";};
							 };
if (dayZ_instance == 11) then {
								if (twd_debug) then {diag_log "Instance ID = 11";};
							  };
if (dayZ_instance == 15) then {
								if (twd_debug) then {diag_log "Instance ID = 15";};
							  };
if (dayZ_instance == 16) then {
								if (twd_debug) then {diag_log "Instance ID = 16";};
							  }	else {if (!isNil "dayZ_instance") then {if (twd_debug) then { diag_log "Instance ID = INVALID, Selecting 11 - Chernarus";}; dayZ_instance = 11;};				  
							  
if (twd_debug) then {diag_log "Loading Server Variables";};					  
#include "svar.sqf";
if (twd_debug) then {diag_log "Loading Server Compiles";};
#include "server.sqf";