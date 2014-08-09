custom_publish  = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\custom_publishVehicle.sqf";
spawn_ammo_box  = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\ammobox.sqf";

clean_running_mission = False;

//load mission config
[] ExecVM "\z\addons\dayz_server\WAI\missions\missionCfg.sqf";
waitUntil {WAImissionconfig};
diag_log "WAI: Mission Config File Loaded";
[] ExecVM "\z\addons\dayz_server\WAI\missions\missions.sqf";
//Custom ammo boxes
[] ExecVM "\z\addons\dayz_server\WAI\missions\StaticAmmoBoxes.sqf";