_pathtoplayertools = "custom\toolmenu\common\PlayerTools\";
_pathtoadmintools = "custom\toolmenu\common\AdminTools\";
_pathtospawnboxes = "custom\toolmenu\common\SpawnBoxes\";
_pathtoeventboxes = "custom\toolmenu\common\EventBoxes\";
_pathtoskinmenu = "custom\toolmenu\common\SkinMenu\";
_pathtozedspawn = "custom\toolmenu\common\ZedSpawn\";
_pathtovehiclespawn = "custom\toolmenu\common\VehicleSpawn\";
_pathtotestmenu = "custom\toolmenu\common\TestMenu\";
_pathtokeymenu = "custom\toolmenu\common\VehicleKey\";
_pathtoanimmenu = "custom\toolmenu\common\Animations\";
_pathtofiltermenu = "custom\toolmenu\common\Filters\";

_EXECscript1 = 'player execVM "'+_pathtoplayertools+'%1"';
_EXECscript2 = 'player execVM "'+_pathtoadmintools+'%1"';
_EXECscript3 = 'player execVM "'+_pathtospawnboxes+'%1"';
_EXECscript4 = 'player execVM "'+_pathtoeventboxes+'%1"';
_EXECscript5 = 'player execVM "'+_pathtoskinmenu+'%1"';
_EXECscript6 = 'player execVM "'+_pathtozedspawn+'%1"';
_EXECscript7 = 'player execVM "'+_pathtovehiclespawn+'%1"';
_EXECscript8 = 'player execVM "'+_pathtotestmenu+'%1"';
_EXECscript9 = 'player execVM "'+_pathtokeymenu+'%1"';
_EXECscript10 = 'player execVM "'+_pathtoanimmenu+'%1"';
_EXECscript11 = 'player execVM "'+_pathtofiltermenu+'%1"';

if ((getPlayerUID player) in userAdmin) then 
{
		adminmenu =
		[
			["",true],
					["LVL 2: Admin", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Player Tools >>", [2], "#USER:PlayerTools", -5, [["expression", ""]], "1", "1"],
				["Admin Tools >>", [3], "#USER:AdminTools", -5, [["expression", ""]], "1", "1"],
				["Skins >>", [4],  "", -5, [["expression", format[_EXECscript5,"Skins.sqf"]]], "1", "1"],
				["Vehicle >>", [5], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],			
			["", [-1], "", -5, [["expression", ""]], "1", "0"],								
				["Spawn Boxes >>", [8], "#USER:SpawnBoxes", -5, [["expression", ""]], "1", "1"],
				["Event Boxes >>", [9], "#USER:EventBoxes", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];
};
                                            /////////
                                            //MENUS//
                                            /////////
PlayerTools =
[
	["",true],

		["Kick/Mute/Ban don't work yet.", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Kick Player", [2],  "", -5, [["expression", format[_EXECscript1,"kickplayer.sqf"]]], "1", "1"],
	//	["Ban Player", [3],  "", -5, [["expression", format[_EXECscript1,"banplayer.sqf"]]], "1", "1"],
		["Mute Player", [4],  "", -5, [["expression", format[_EXECscript1,"muteplayer.sqf"]]], "1", "1"],
	//	["Kill Player", [4],  "", -5, [["expression", format[_EXECscript1,"killplayer.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["ESP >>", [2], "#USER:ESPMenu", -5, [["expression", ""]], "1", "1"],	
	//	["Humanity >>", [10], "#USER:humanMenu", -5, [["expression", ""]], "1", "1"],
		["Teleport Menu >>", [3], "#USER:teleMenu", -5, [["expression", ""]], "1", "1"],
		["Heal Player", [5],  "", -5, [["expression", format[_EXECscript1,"healplayer.sqf"]]], "1", "1"],
		["Spectate Player", [6],  "", -5, [["expression", format[_EXECscript1,"spectateplayer.sqf"]]], "1", "1"],
		["Check Inventory", [6],  "", -5, [["expression", format[_EXECscript1,"playerinv.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Next page >>", [110], "#USER:PlayerTools1", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
PlayerTools1 =
[
	["",true],
	//	["Speed and Fly are buggy", [-1], "", -5, [["expression", ""]], "1", "0"],
	//	["Fly", [2],  "", -5, [["expression", format[_EXECscript2,"fly.sqf"]]], "1", "1"],
	//	["Speedboost", [3],  "", -5, [["expression", format[_EXECscript2,"speedboost.sqf"]]], "1", "1"],
		["Remove Grass", [2],  "", -5, [["expression", format[_EXECscript2,"removegrass.sqf"]]], "1", "1"],
		["Infinite Ammo", [3],  "", -5, [["expression", format[_EXECscript2,"infiniteammo.sqf"]]], "1", "1"],
		["No Recoil", [4],  "", -5, [["expression", format[_EXECscript2,"norecoil.sqf"]]], "1", "1"],	
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
humanMenu =
[
	["",true],
		["Gives Humanity to Cursor Target or Self", [-1], "", -5, [["expression", ""]], "1", "0"],	
			["Add Humanity", [2],  "", -5, [["expression", format[_EXECscript1,"givehuman.sqf"]]], "1", "1"],
			["Remove Humanity", [3],  "", -5, [["expression", format[_EXECscript1,"takehuman.sqf"]]], "1", "1"],	
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
//////////////////////////////////////////////////////////////
//
teleMenu =
[
	["",true],
		["Teleport To Me", [7], "", -5, [["expression", format[_EXECscript1, "teleporttome.sqf"]]], "1", "1"],
		["Teleport To", [8],  "", -5, [["expression", format[_EXECscript1,"teleportto.sqf"]]], "1", "1"],
	//	["Map Teleport *F4*", [9],  "", -5, [["expression", format[_EXECscript1,"teleport.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
//////////////////////////////////////////////////////////////
//
keyCommands =
[
	["",true],
		["Admin Menu *F1*", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["ESP *F2*", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Full God *F3*", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Map TP *F4*", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Vehicle Dialog *F5*", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["PermDelete", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
//////////////////////////////////////////////////////////////
//
godMenu =
[
	["",true],
		["God", [4],  "", -5, [["expression", format[_EXECscript2,"god.sqf"]]], "1", "1"],
		["God *removesGrassNStuff* *F3*", [5],  "", -5, [["expression", format[_EXECscript2,"Godmode.sqf"]]], "1", "1"],
		["Give Player God", [5],  "", -5, [["expression", format[_EXECscript2,"targetgod.sqf"]]], "1", "1"],		
	//	["Car God", [6],  "", -5, [["expression", format[_EXECscript2,"cargod.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
//////////////////////////////////////////////////////////////
//
AdminTools =
[
	["",true],
		["God Mode >>", [3], "#USER:godMenu", -5, [["expression", ""]], "1", "1"],
	//	["Key Spawn", [5],  "", -5, [["expression", format[_EXECscript2,"keyspawn.sqf"]]], "1", "1"],
	//	["Code Check", [6],  "", -5, [["expression", format[_EXECscript2,"codefinder.sqf"]]], "1", "1"],	
	//	["Zed Shield", [7],  "", -5, [["expression", format[_EXECscript2,"zombieshield.sqf"]]], "1", "1"],
		["Look N' Repair", [7],  "", -5, [["expression", format[_EXECscript2,"looknrepair.sqf"]]], "1", "1"],		
	//	["Invisibility", [8],  "", -5, [["expression", format[_EXECscript2,"invisible.sqf"]]], "1", "1"],		
		["Delete >>", [10], "#USER:deleteMenu", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//
ESPMenu =
[
	["",true],
		["Full ESP", [3],  "", -5, [["expression", format[_EXECscript2,"fullesp.sqf"]]], "1", "1"],
	//	["Enhanced ESP", [3],  "", -5, [["expression", format[_EXECscript2,"enhanced.sqf"]]], "1", "1"],
	//	["Player-Only ESP", [3],  "", -5, [["expression", format[_EXECscript2,"player.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//
DeleteMenu =
[
	["",true],
		["Temp Delete", [2],  "", -5, [["expression", format[_EXECscript2,"tempdelete.sqf"]]], "1", "1"],
		["Perm Delete *DEL KEY*", [3],  "", -5, [["expression", format[_EXECscript2,"permdelete.sqf"]]], "1", "1"],
	//	["Base Destruction", [5], "#USER:BaseDestructionMenu", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//	
if (isNil "BD_vehicles") then {BD_vehicles = true;};
BaseDestructionMenu = 
[
	["Base Destruction",true],
		["Set Center", [2], "", -5, [["expression", '["center"] execVM "custom\toolmenu\common\AdminTools\basedelete.sqf"']], "1", "1"],
		["Set Radius", [3], "", -5, [["expression", '["radius"] execVM "custom\toolmenu\common\AdminTools\basedelete.sqf"']], "1", "1"],
		["Show Dome", [4], "", -5, [["expression", '["dome"] execVM "custom\toolmenu\common\AdminTools\basedelete.sqf"']], "1", "1"],
		[format["Include Vehicles (%1)",BD_vehicles], [5], "", -5, [["expression", "BD_vehicles = !BD_vehicles;"]], "1", "1"],
		["DESTROY ALL INSIDE DOME", [6], "", -5, [["expression", '["destroy"] execVM "custom\toolmenu\common\AdminTools\basedelete.sqf"']], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//	
SpawnBoxes =
[
	["",true],
		["Build", [2],  "", -5, [["expression", format[_EXECscript3,"BuildBox.sqf"]]], "1", "1"],
		["Health", [3],  "", -5, [["expression", format[_EXECscript3,"HealthBox.sqf"]]], "1", "1"],
	//	["Money", [4],  "", -5, [["expression", format[_EXECscript3,"MoneyBox.sqf"]]], "1", "1"],
	//	["All In One", [5],  "", -5, [["expression", format[_EXECscript3,"allInOne.sqf"]]], "1", "1"],
	//	["Weapon", [5],  "", -5, [["expression", format[_EXECscript3,"WeaponBox.sqf"]]], "1", "1"],	
		["Ammo", [5],  "", -5, [["expression", format[_EXECscript3,"ammoBox.sqf"]]], "1", "1"],			
		["Bambi Box", [5],  "", -5, [["expression", format[_EXECscript3,"bambi.sqf"]]], "1", "1"],
		["Backpack Tent", [5],  "", -5, [["expression", format[_EXECscript3,"backpack.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//
EventBoxes =
[
	["",true],
		["Hide N' Seek", [2],  "", -5, [["expression", format[_EXECscript4,"hidenseek.sqf"]]], "1", "1"],
		["Hunger Games", [3],  "", -5, [["expression", format[_EXECscript4,"hungergame.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//
ZedMenu =
[
	["",true],
		["Select amount to spawn!", [-1], "", -5, [["expression", ""]], "1", "0"],
		["1", [2],  "", -5, [["expression", format[_EXECscript6,"ZombieSpawn1.sqf"]]], "1", "1"],
		["5", [3], "", -5, [["expression", format[_EXECscript6, "ZombieSpawn5.sqf"]]], "1", "1"],
		["10", [4], "", -5, [["expression", format[_EXECscript6, "ZombieSpawn10.sqf"]]], "1", "1"],
		["25", [5], "", -5, [["expression", format[_EXECscript6, "ZombieSpawn25.sqf"]]], "1", "1"],
		["50", [6],  "", -5, [["expression", format[_EXECscript6,"ZombieSpawn50.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//
VehicleMenu = 
[
	["",true],
		["Temp Vehicles >>", [12], "#USER:VehicleMenu0", -5, [["expression", ""]], "1", "1"],
	//	["Perm Vehicles >>", [2],  "", -5, [["expression", format[_EXECscript7,"addvehicleDialog.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Lock Vehicle", [8],  "", -5, [["expression", format[_EXECscript2,"vehicle_lock.sqf"]]], "1", "1"],			
		["Unlock Vehicle", [8],  "", -5, [["expression", format[_EXECscript2,"vehicle_unlock.sqf"]]], "1", "1"],	
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenu0 = 
[
	["",true],
		["Cars >>", [12], "#USER:VehicleMenu1", -5, [["expression", ""]], "1", "1"],
		["Trucks/Boats >>", [12], "#USER:VehicleMenu2", -5, [["expression", ""]], "1", "1"],	
		["Helicopters >>", [12], "#USER:VehicleMenu3", -5, [["expression", ""]], "1", "1"],	
		["Jets >>", [12], "#USER:VehicleMenu4", -5, [["expression", ""]], "1", "1"],	
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenu1 = 
[
	["",true],
		["Cars n Stuff", [-1], "", -5, [["expression", ""]], "1", "0"],
						["Next page", [12], "#USER:VehicleMenu2", -5, [["expression", ""]], "1", "1"],
		["SUV", [2],  "", -5, [["expression", format[_EXECscript7,"SUV.sqf"]]], "1", "1"],
		["Offroad", [2],  "", -5, [["expression", format[_EXECscript7,"militrayOffroad.sqf"]]], "1", "1"],
		["Taxi", [2],  "", -5, [["expression", format[_EXECscript7,"taxi.sqf"]]], "1", "1"],
		["Tractor", [2],  "", -5, [["expression", format[_EXECscript7,"Tractor.sqf"]]], "1", "1"],
		["Golf", [2],  "", -5, [["expression", format[_EXECscript7,"A10.sqf"]]], "1", "1"],		
		["Bike", [2],  "", -5, [["expression", format[_EXECscript7,"Bike.sqf"]]], "1", "1"],	
		["ATV", [2],  "", -5, [["expression", format[_EXECscript7,"ATV.sqf"]]], "1", "1"],	
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

VehicleMenu2 = 
[
	["",true],
		["Vans n Boats Stuff", [-1], "", -5, [["expression", ""]], "1", "0"],
						["Next page", [12], "#USER:VehicleMenu3", -5, [["expression", ""]], "1", "1"],
		["HMMV", [2],  "", -5, [["expression", format[_EXECscript7,"HMMV.sqf"]]], "1", "1"],
		["Bus", [2],  "", -5, [["expression", format[_EXECscript7,"bus.sqf"]]], "1", "1"],
		["PBX*Boat*", [2],  "", -5, [["expression", format[_EXECscript7,"PBX.sqf"]]], "1", "1"],
		["Tank 1", [2],  "", -5, [["expression", format[_EXECscript7,"tank.sqf"]]], "1", "1"],
		["Tank Fall", [2],  "", -5, [["expression", format[_EXECscript7,"TANKfall.sqf"]]], "1", "1"],
		["Tank Nam", [2],  "", -5, [["expression", format[_EXECscript7,"TANKnam.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

VehicleMenu3 = 
[
	["",true],
		["Helicopters", [-1], "", -5, [["expression", ""]], "1", "0"],
						["Next page", [12], "#USER:VehicleMenu4", -5, [["expression", ""]], "1", "1"],
		["Apache", [2],  "", -5, [["expression", format[_EXECscript7,"APACHE.sqf"]]], "1", "1"],			
		["Chinook", [3],  "", -5, [["expression", format[_EXECscript7,"chinook.sqf"]]], "1", "1"],
		["UH1H", [4],  "", -5, [["expression", format[_EXECscript7,"UH1H_TK.sqf"]]], "1", "1"],
		["LittleBird", [5],  "", -5, [["expression", format[_EXECscript7,"littleBird.sqf"]]], "1", "1"],
		["AH64", [6],  "", -5, [["expression", format[_EXECscript7,"AH64.sqf"]]], "1", "1"],
		["MH6J", [7],  "", -5, [["expression", format[_EXECscript7,"MH6J.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression	", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

VehicleMenu4 = 
[
	["",true],
		["Aeroplanes and Jets", [-1], "", -5, [["expression", ""]], "1", "0"],
		["A10", [2],  "", -5, [["expression", format[_EXECscript7,"A10.sqf"]]], "1", "1"],
		["AV8B", [3],  "", -5, [["expression", format[_EXECscript7,"AV8B.sqf"]]], "1", "1"],
		["C130", [4],  "", -5, [["expression", format[_EXECscript7,"C130.sqf"]]], "1", "1"],
		["F35B", [5],  "", -5, [["expression", format[_EXECscript7,"F35.sqf"]]], "1", "1"],		
		["L39", [6],  "", -5, [["expression", format[_EXECscript7,"L39.sqf"]]], "1", "1"],
		["SU25", [7],  "", -5, [["expression", format[_EXECscript7,"SU25.sqf"]]], "1", "1"],
		["MV22", [7],  "", -5, [["expression", format[_EXECscript7,"MV22.sqf"]]], "1", "1"],
		["AN2", [7],  "", -5, [["expression", format[_EXECscript7,"an2_prop.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//
showCommandingMenu "#USER:adminmenu";