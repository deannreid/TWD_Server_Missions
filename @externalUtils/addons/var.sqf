_hClient = false; //<== Do not enable.  
_infiStarAdminMenu = true; 
_vlAntiHack = true;
_dzmsAC = true;
_dzaiAC = true;
_buildEnable = true;

//////////////////////////////

if (_buildEnabled) then  {	
		diag_log "Buildings ENABLED";
		preProcessFileLineNumbers "twd\addons\custom\buildings\init.sqf"
				} else  {
					diag_log "Buildings DISABLED";
					};
							
if (_hClient) then  {	
		diag_log "Headless Client ENABLED";
		preProcessFileLineNumbers "twd\addons\custom\headlessclient\init.sqf"
				} else  {
					diag_log "Headless Client DISABLED";
					};
	
if (_infiStarAdminMenu) then  {	
			diag_log "infiSTAR Admin Menu ENABLED";
			preProcessFileLineNumbers "twd\addons\custom\isadminmenu\init.sqf"
				} else  {
					diag_log "infiSTAR Admin Menu DISABLED";
					};							
							
if (_vlAntiHack) then  {	
			diag_log "VL AntiHack ENABLED";
			preProcessFileLineNumbers "twd\addons\custom\vlantihack\init.sqf"
				} else  {
					diag_log "VL AntiHack DISABLED";
					};							
							
if (_dzmsAC) then  {	
			diag_log "DayZ Mission System ENABLED";
			preProcessFileLineNumbers "twd\addons\custom\DZMS\init.sqf"
				} else  {
					diag_log "DayZ Mission System DISABLED";
					};							
							
if (_dzaiAC) then  {	
			diag_log "DayZ AI ENABLED";
			preProcessFileLineNumbers "twd\addons\custom\DZAI\init.sqf"
				} else  {
					diag_log "DayZ AI DISABLED";
					};
