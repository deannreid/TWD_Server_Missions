private["_dialog","_index","_playerUID","_name","_zombie","_bandit"];
_money = player getVariable["money", 0];
_zombie = player getVariable["bankmoney", 0];
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

Suicide	=	compile preprocessFileLineNumbers "custom\suicide\suicide.sqf";
Evac 	=	compile preprocessFileLineNumbers "custom\JAEM\CallEvacChopper.sqf";
Deploy 	=	compile preprocessFileLineNumbers "custom\toolmenu\common\VehicleSpawn\Bike.sqf";
view 	=	compile preprocessFileLineNumbers "custom\menu\scripts\view.sqf";

ctrlSetText [15001, format["%1$",_money]];
ctrlSetText [15002, format["%1$",_zombie]];
ctrlSetText [15003, format["%1",_bandit]];