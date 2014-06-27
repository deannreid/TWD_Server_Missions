if (secb) then {
cutText ["*** You are prohibited from spawning into Sector B! Forcing spawn selection! ***", "PLAIN DOWN"];
sleep 5;
[] execVM "addons\DRNSpawn.sqf";
};