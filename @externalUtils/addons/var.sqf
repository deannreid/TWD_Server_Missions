private ["_hClient","_infiStarAdminMenu","_vlAntiHack","dzmsAC","_dzaiAC","_buildEnable"];
_hClient = false; //<== Do not enable.  
_infiStarAdminMenu = true; 
_vlAntiHack = true;
_dzmsAC = true;
_dzaiAC = true;
_buildEnable = true;

//////////////////////////////

if (_buildEnabled) then  {	
		diag_log "Buildings ENABLED";
		preProcessFileLineNumbers "z\addons\twd_server\buildings\init.sqf"
				} else  {
					diag_log "Buildings DISABLED";
					};
							
if (_hClient) then  {	
		diag_log "Headless Client ENABLED";
		preProcessFileLineNumbers "z\addons\twd_server\headlessclient\init.sqf"
				} else  {
					diag_log "Headless Client DISABLED";
					};
	
if (_infiStarAdminMenu) then  {	
			diag_log "infiSTAR Admin Menu ENABLED";
			preProcessFileLineNumbers "z\addons\twd_server\isadminmenu\init.sqf"
				} else  {
					diag_log "infiSTAR Admin Menu DISABLED";
					};							
							
if (_vlAntiHack) then  {	
			diag_log "VL AntiHack ENABLED";
			preProcessFileLineNumbers "z\addons\twd_server\vlantihack\init.sqf"
				} else  {
					diag_log "VL AntiHack DISABLED";
					};							
							
if (_dzmsAC) then  {	
			diag_log "DayZ Mission System ENABLED";
			preProcessFileLineNumbers "z\addons\twd_server\DZMS\init.sqf"
				} else  {
					diag_log "DayZ Mission System DISABLED";
					};							
							
if (_dzaiAC) then  {	
			diag_log "DayZ AI ENABLED";
			preProcessFileLineNumbers "z\addons\twd_server\DZAI\init.sqf"
				} else  {
					diag_log "DayZ AI DISABLED";
					};
