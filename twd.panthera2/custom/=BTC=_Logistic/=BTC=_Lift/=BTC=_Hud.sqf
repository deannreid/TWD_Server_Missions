/*
Modified by Torndeco for DayZ Epoch
All credits & rights go to =BTC= Giallustio
Please don't bug original author about bugs that i have introduced.
*/

/*
Created by =BTC= Giallustio
Version: 0.52
Date: 05/02/2012
Visit us at: http://www.blacktemplars.altervista.org/
You are not allowed to modify this file and redistribute it without permission given by me (Giallustio).
*/


private ["_chopper"];
if (BTC_Hud_Cond) then {
	BTC_Hud_Cond = false;
} else {
	BTC_Hud_Cond = true;
};
_chopper = vehicle player;
_chopper removeAction BTC_liftHudId;

if (BTC_Hud_Cond) then {
	BTC_liftHudId = _chopper addAction [("<t color=""#ED2744"">" + ("Hud Off") + "</t>"),"custom\=BTC=_Logistic\=BTC=_Lift\=BTC=_Hud.sqf", "", 0, false, false];
} else {
	BTC_liftHudId = _chopper addAction [("<t color=""#ED2744"">" + ("Hud On") + "</t>"),"custom\=BTC=_Logistic\=BTC=_Lift\=BTC=_Hud.sqf", "", 0, false, false];
};