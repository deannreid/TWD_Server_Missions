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
_pathtofolding = "custom\toolmenu\common\mv22fold\";

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
_EXECscript12 = 'player execVM "'+_pathtofolding+'%1"';

if ((getPlayerUID player) in userMod) then 
{
		adminmenu =
		[
			["",true],
					["LVL 1: Moderator", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Player Tools >>", [2], "#USER:PlayerTools", -5, [["expression", ""]], "1", "1"],
				["Mod Tools >>", [3], "#USER:AdminTools", -5, [["expression", ""]], "1", "1"],
				["Vehicle >>", [5], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],		
				["Anim Menu >>", [6], "#USER:AnimationMenu", -5, [["expression", ""]], "1", "1"],						
				["Spawn Boxes >>", [8], "#USER:SpawnBoxes", -5, [["expression", ""]], "1", "1"],
				["Key Commands >>", [9], "#USER:keyCommands", -5, [["expression", ""]], "1", "1"],				
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
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Kick/Mute don't work yet.", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Kick Player", [2],  "", -5, [["expression", format[_EXECscript1,"kickplayer.sqf"]]], "1", "1"],
		["Mute Player", [4],  "", -5, [["expression", format[_EXECscript1,"muteplayer.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["ESP >>", [2], "#USER:ESPMenu", -5, [["expression", ""]], "1", "1"],	
		["Teleport Menu >>", [3], "#USER:teleMenu", -5, [["expression", ""]], "1", "1"],
		["Heal Player", [5],  "", -5, [["expression", format[_EXECscript1,"healplayer.sqf"]]], "1", "1"],
		["Spectate Player", [6],  "", -5, [["expression", format[_EXECscript1,"spectateplayer.sqf"]]], "1", "1"],
		["Check Inventory", [6],  "", -5, [["expression", format[_EXECscript1,"playerinv.sqf"]]], "1", "1"],
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
		["Map Teleport *F3*", [9],  "", -5, [["expression", format[_EXECscript1,"teleport.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
//////////////////////////////////////////////////////////////
//
ESPMenu =
[
	["",true],
		["Full ESP", [3],  "", -5, [["expression", format[_EXECscript2,"EnhancedESP.sqf"]]], "1", "1"],
		["Player-Only ESP", [3],  "", -5, [["expression", format[_EXECscript2,"playesp.sqf"]]], "1", "1"],
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
		["God 2 *removesGrassNStuff*", [5],  "", -5, [["expression", format[_EXECscript2,"Godmode.sqf"]]], "1", "1"],
		["Give Player God", [5],  "", -5, [["expression", format[_EXECscript2,"targetgod.sqf"]]], "1", "1"],		
		["Car God", [6],  "", -5, [["expression", format[_EXECscript2,"cargod.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
//////////////////////////////////////////////////////////////
//
AdminTools =
[
	["",true],
		["Zed Shield", [7],  "", -5, [["expression", format[_EXECscript2,"zombieshield.sqf"]]], "1", "1"],
		["Invisibility", [8],  "", -5, [["expression", format[_EXECscript2,"invisible.sqf"]]], "1", "1"],		
		["Delete >>", [10], "#USER:deleteMenu", -5, [["expression", ""]], "1", "1"],
		["Remove Grass", [2],  "", -5, [["expression", format[_EXECscript2,"removegrass.sqf"]]], "1", "1"],
		["No Recoil", [4],  "", -5, [["expression", format[_EXECscript2,"norecoil.sqf"]]], "1", "1"],	
		["Look N' Repair", [7],  "", -5, [["expression", format[_EXECscript2,"looknrepair.sqf"]]], "1", "1"],
		["Flip Vehicle", [8],  "", -5, [["expression", format[_EXECscript2,"flipvehicle.sqf"]]], "1", "1"],	
		["Repair Buildings", [9],  "", -5, [["expression", format[_EXECscript2,"fixbuildings.sqf"]]], "1", "1"],	
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//
ESPMenu =
[
	["",true],
		["ESP", [3],  "", -5, [["expression", format[_EXECscript2,"playesp.sqf"]]], "1", "1"],
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
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//
SpawnBoxes =
[
	["",true],
		["Health", [3],  "", -5, [["expression", format[_EXECscript3,"HealthBox.sqf"]]], "1", "1"],
		["Bambi Box", [5],  "", -5, [["expression", format[_EXECscript3,"bambi.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//
VehicleMenu = 
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
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

VehicleMenu3 = 
[
	["",true],
		["Helicopters", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Next page", [12], "#USER:VehicleMenu4", -5, [["expression", ""]], "1", "1"],
		["LittleBird", [5],  "", -5, [["expression", format[_EXECscript7,"littleBird.sqf"]]], "1", "1"],
	
		["", [-1], "", -5, [["expression	", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

VehicleMenu4 = 
[
	["",true],
		["Aeroplanes and Jets", [-1], "", -5, [["expression", ""]], "1", "0"],
		["C130", [4],  "", -5, [["expression", format[_EXECscript7,"C130.sqf"]]], "1", "1"],
		["MV22", [7],  "", -5, [["expression", format[_EXECscript7,"MV22.sqf"]]], "1", "1"],
		["AN2", [7],  "", -5, [["expression", format[_EXECscript7,"an2_prop.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:adminmenu";