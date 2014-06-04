if (isNil "godMode") then {godMode = true;};
if (isNil "carGodMode") then {carGodMode = true;};
if (isNil "playerESP") then {playerESP = true;};
if (isNil "enhancedESP") then {enhancedESP = false;};
if (isNil "grassOff") then {grassOff = true;};
if (isNil "infAmmo") then {infAmmo = true;};
if (isNil "speedBoost") then {speedBoost = false;};
if (isNil "invisibility") then {invisibility = false;};
if (isNil "flying") then {flying = false;};
if (isNil "AdminBuild") then {AdminBuild = false;};

godModeToggle = {
	godMode = !godMode;
	[godMode] execVM "custom\toolmenu\adtog\toggle\GodModePlayer.sqf";
};
carGodModeToggle = {
	carGodMode = !carGodMode;
	[carGodMode] execVM "custom\toolmenu\adtog\toggle\GodModeVehicle.sqf";
};
playerESPToggle = {
	playerESP = !playerESP;
	if(playerESP && enhancedESP) then {enhancedESP = false; [enhancedESP] execVM "custom\toolmenu\adtog\toggle\ESPenhanced.sqf";};
	[playerESP] execVM "custom\toolmenu\adtog\toggle\ESPplayer.sqf";
};
enhancedESPToggle = {
	enhancedESP = !enhancedESP;
	if(playerESP && enhancedESP) then {playerESP = false; [playerESP] execVM "custom\toolmenu\adtog\toggle\ESPplayer.sqf";};
	[enhancedESP] execVM "custom\toolmenu\adtog\toggle\ESPenhanced.sqf";
};
grassOffToggle = {
	grassOff = !grassOff;
	[grassOff] execVM "custom\toolmenu\adtog\toggle\GrassOFF.sqf";
};
infAmmoToggle = {
	infAmmo = !infAmmo;
	[infAmmo] execVM "custom\toolmenu\adtog\toggle\InfiniteAmmo.sqf";
};
speedBoostToggle = {
	speedBoost = !speedBoost;
	[speedBoost] execVM "custom\toolmenu\adtog\toggle\speedboost.sqf";
};
invisibilityToggle = {
	invisibility = !invisibility;
	[invisibility] execVM "custom\toolmenu\adtog\toggle\Invisibility.sqf";
};
flyingToggle = {
	flying = !flying;
	[flying] execVM "custom\toolmenu\adtog\toggle\Flying.sqf";
};

optionMenu = 
{
	toggleMenu = 
	[
		// To disable an option for admins place a // in the front of the line below
		// and change the initialization to false in the config at the top of this file
		["",true],
		["Toggle options:(current state)", [-1], "", -5, [["expression", ""]], "1", "0"],
		[format["Vehicle Speed Boost: %1",speedBoost],[2],"", -5, [["expression", 'call speedBoostToggle']], "1", "1"],		
		[format["Enhanced ESP: %1",enhancedESP], [3], "", -5, [["expression", 'call enhancedESPToggle']], "1", "1"],
		[format["Player ESP: %1",playerESP], [4], "", -5, [["expression", 'call playerESPToggle']], "1", "1"],
		[format["Invisibility ON: %1",invisibility], [5], "", -5, [["expression", 'call invisibilityToggle']], "1", "1"],
		[format["Flying ON: %1",flying], [7], "", -5, [["expression", 'call flyingToggle']], "1", "1"],
		[format["Infinite Ammo: %1",infAmmo], [8], "", -5, [["expression", 'call infAmmoToggle']], "1", "1"],
		[format["God Mode: %1",godMode], [9], "", -5, [["expression", 'call godModeToggle']], "1", "1"],
		[format["Car God Mode: %1",carGodMode], [10], "", -5, [["expression", 'call carGodModeToggle']], "1", "1"],
		[format["Grass Off: %1",grassOff], [11], "", -5, [["expression", 'call grassOffToggle']], "1", "1"]
	];
	showCommandingMenu "#USER:toggleMenu";
};

AdminToggleON =
{
	if (speedBoost) then {[speedBoost] execVM "custom\toolmenu\adtog\toggle\speedboost.sqf";}; Sleep 0.1;
	if (enhancedESP) then {[enhancedESP] execVM "custom\toolmenu\adtog\toggle\ESPenhanced.sqf";}; Sleep 0.1;
	if (playerESP) then {[playerESP] execVM "custom\toolmenu\adtog\toggle\ESPplayer.sqf";}; Sleep 0.1;
	if (invisibility) then {[invisibility] execVM "custom\toolmenu\adtog\toggle\Invisibility.sqf";}; Sleep 0.1;
	if (infAmmo) then {[infAmmo] execVM "custom\toolmenu\adtog\toggle\InfiniteAmmo.sqf";}; Sleep 0.1;
	if (flying) then {[flying] execVM "custom\toolmenu\adtog\toggle\Flying.sqf";}; Sleep 0.1;
	if (godMode) then {[godMode] execVM "custom\toolmenu\adtog\toggle\GodModePlayer.sqf";}; Sleep 0.1;
	if (carGodMode) then {[carGodMode] execVM "custom\toolmenu\adtog\toggle\GodModeVehicle.sqf";}; Sleep 0.1;
	if (grassOff) then {[grassOff] execVM "custom\toolmenu\adtog\toggle\GrassOFF.sqf";}; Sleep 0.1;
};

AdminToggleOFF =
{
	if (speedBoost) then {[!speedBoost] execVM "custom\toolmenu\adtog\toggle\speedboost.sqf";}; Sleep 0.1;
	if (enhancedESP) then {[!enhancedESP] execVM "custom\toolmenu\adtog\toggle\ESPenhanced.sqf";}; Sleep 0.1;
	if (playerESP) then {[!playerESP] execVM "custom\toolmenu\adtog\toggle\ESPplayer.sqf";}; Sleep 0.1;
	if (invisibility) then {[!invisibility] execVM "custom\toolmenu\adtog\toggle\Invisibility.sqf";}; Sleep 0.1;
	if (infAmmo) then {[!infAmmo] execVM "custom\toolmenu\adtog\toggle\InfiniteAmmo.sqf";}; Sleep 0.1;
	if (flying) then {[!flying] execVM "custom\toolmenu\adtog\toggle\Flying.sqf";}; Sleep 0.1;
	if (godMode) then {[!godMode] execVM "custom\toolmenu\adtog\toggle\GodModePlayer.sqf";}; Sleep 0.1;
	if (carGodMode) then {[!carGodMode] execVM "custom\toolmenu\adtog\toggle\GodModeVehicle.sqf";}; Sleep 0.1;
	if (grassOff) then {[!grassOff] execVM "custom\toolmenu\adtog\toggle\GrassOFF.sqf";}; Sleep 0.1;
};
