private ["_dialog","_index","_zombie","_bandit","_money","_playerESP","_globalESP","_godMode","_carGod","_playerSafeZone","_infiniteAmmo","_flyMode","_baseDelete","_codeFind","_keySpawn","_removeGrass","_removeRecoil","_removeVehiclePerm","_removeVehicleTemp","_vehicleSpeed","_vehicleFlip","_vehicleRepair","_mapTP","_weatherLord","_timeLord","_playerBan","_playerKick","_playerMute","_playerGod","_playerSpec","_playerSpecInv","_playerTPT","_playerTPF","_playerHumanAdd","_playerHumanNeu","_playerHumanRem","_playerHeal","_boxAIO","_boxBambi","_boxMoney","_boxWeapon","_boxAmmo","_boxBackpack","_boxHealth","_skinGen","_tempVehGen","_permVehGen","_vehicleLock","_vehicleUnlock","_weaponGen","_ammoGen","_gearGen","_zedSpawn","_aiSpawn"];

_playerList = player getVariable["money", 0];
_adminList = player getVariable["bankmoney", 0];
_bandit = player getVariable["banditKills", 0];

_dialog = createdialog "Menu";
waitUntil {dialog};
lbClear 15004;

_index = lbAdd [15004, "500"];
_index = lbAdd [15004, "1000"];
_index = lbAdd [15004, "1500"];
_index = lbAdd [15004, "2000"];
_index = lbAdd [15004, "3000"];
_index = lbAdd [15004, "5000"];

/*Script Execute*/

/*FOR ADMINS*/
/*Admin Tools*/ //Things like God Mode, Delete, Key Spawn/CodeFind
_playerESP = compile preprocessFileLineNumbers "";
_globalESP = compile preprocessFileLineNumbers "";
_godMode = compile preprocessFileLineNumbers "";
_carGod = compile preprocessFileLineNumbers "";
_playerSafeZone = compile preprocessFileLineNumbers "";
_infiniteAmmo = compile preprocessFileLineNumbers "";
_flyMode = compile preprocessFileLineNumbers "";
_baseDelete = compile preprocessFileLineNumbers "";
_codeFind = compile preprocessFileLineNumbers "";
_keySpawn = compile preprocessFileLineNumbers "";
_removeGrass = compile preprocessFileLineNumbers "";
_removeRecoil = compile preprocessFileLineNumbers "";
_removeVehiclePerm = compile preprocessFileLineNumbers "";
_removeVehicleTemp = compile preprocessFileLineNumbers "";
_vehicleSpeed = compile preprocessFileLineNumbers "";
_vehicleFlip = compile preprocessFileLineNumbers "";
_vehicleRepair = compile preprocessFileLineNumbers "";
_mapTP = compile preprocessFileLineNumbers "";
_weatherLord = compile preprocessFileLineNumbers "";
_timeLord = compile preprocessFileLineNumbers "";

/*Player Tools*/ //Things that admins can effect to players e.g kick/ban/heal
_playerBan = compile preprocessFileLineNumbers "";
_playerKick = compile preprocessFileLineNumbers "";
_playerMute = compile preprocessFileLineNumbers "";
_playerGod = compile preprocessFileLineNumbers "";
_playerSpec = compile preprocessFileLineNumbers "";
_playerSpecInv = compile preprocessFileLineNumbers "";
_playerTPT = compile preprocessFileLineNumbers "";
_playerTPF = compile preprocessFileLineNumbers "";
_playerHumanAdd = compile preprocessFileLineNumbers "";
_playerHumanNeu = compile preprocessFileLineNumbers "";
_playerHumanRem = compile preprocessFileLineNumbers "";
_playerHeal = compile preprocessFileLineNumbers "";

/*Boxes*/ //Spawn Boxes
_boxAIO = compile preprocessFileLineNumbers "";
_boxBambi = compile preprocessFileLineNumbers "";
_boxMoney = compile preprocessFileLineNumbers "";
_boxWeapon = compile preprocessFileLineNumbers "";
_boxAmmo = compile preprocessFileLineNumbers "";
_boxBackpack = compile preprocessFileLineNumbers "";
_boxHealth = compile preprocessFileLineNumbers "";

/*Skins*/ //Show a list of skins including invis
_skinGen = compile preprocessFileLineNumbers "";

/*Vehicle Spawn*/ //Show a list of all vehicles pre-loaded before menu to stop lag
_tempVehGen = compile preprocessFileLineNumbers "";
_permVehGen = compile preprocessFileLineNumbers "";
_vehicleLock = compile preprocessFileLineNumbers "";
_vehicleUnlock = compile preprocessFileLineNumbers "";

/*Weapon Loadout*/ //Same as vehicles, spawn in after compiles.sqf but before user logs in
_weaponGen = compile preprocessFileLineNumbers "";
_ammoGen = compile preprocessFileLineNumbers "";
_gearGen = compile preprocessFileLineNumbers "";

/*Zed\AI Spawn*/
_zedSpawn = compile preprocessFileLineNumbers "";
_aiSpawn = compile preprocessFileLineNumbers "";


ctrlSetText [15001, format["%1$",_money]];
ctrlSetText [15002, format["%1$",_zombie]];
ctrlSetText [15003, format["%1",_bandit]];