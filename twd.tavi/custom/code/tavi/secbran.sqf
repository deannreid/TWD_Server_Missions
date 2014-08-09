if (isNil "secb") then {secb = false;};
if (secb) then {
cutText ["*** You are prohibited from spawning into Sector B - Moving you to the shore. ***", "PLAIN DOWN"];
[] execVM "addons\DRNSpawnsecb.sqf";
};