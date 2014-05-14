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

if ( !((getPlayerUID player) in adminAll) && !((getPlayerUID player) in userDALL)) then
{
		playermenu =
		[
			["",true],
					["LVL 0: Player (get(namePlayer))", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Player Tools >>", [2], "#USER:PlayerTools", -5, [["expression", ""]], "1", "1"],
				["Vehicle Temp>>", [5], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],	
				["FPS Menu >>", [6], "#USER:FPSMenu", -5, [["expression", ""]], "1", "1"],				
				["Animation Menu >>", [6], "#USER:AnimationMenu", -5, [["expression", ""]], "1", "1"],
				["Filter Menu >>", [3], "#USER:FilterMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
					["Main Menu", [20], "#USER:playermenu", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		];
} 
else 
{
		playermenu =
		[
			["",true],
					["LVL 0: Player (get(namePlayer))", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Player Tools >>", [2], "#USER:PlayerTools", -5, [["expression", ""]], "1", "1"],
				["Vehicle Temp>>", [5], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],	
				["FPS Menu >>", [6], "#USER:FPSMenu", -5, [["expression", ""]], "1", "1"],				
				["Animation Menu >>", [6], "#USER:AnimationMenu", -5, [["expression", ""]], "1", "1"],
				["Filter Menu >>", [3], "#USER:FilterMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
					["Main Menu", [20], "#USER:playermenu", -5, [["expression", ""]], "1", "1"],
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
		["Flip Vehicle", [8],  "", -5, [["expression", format[_EXECscript2,"flipvehicle.sqf"]]], "1", "1"],	
		["Insert Stuff Here", [8],  "", -5, [["expression", format[_EXECscript2,""]]], "1", "1"],	
		["Insert Stuff Here", [8],  "", -5, [["expression", format[_EXECscript2,""]]], "1", "1"],	

		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Main Menu", [20], "#USER:playermenu", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
//////////////////////////////////////////////////////////////
//
FPSMenu=[
	["",true],
	["Set Fog:", [], "", -5, [["expression", ""]], "1", "0"],		
		["Off",[],"",-5,[["expression",'3 setfog 0']],"1","1"],		
		["Medium",[],"",-5,[["expression",'3 setfog 0.5']],"1","1"],		
		["Maximum",[],"",-5,[["expression",'3 setfog 1']],"1","1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Set Terrain Level", [], "", -5, [["expression", ""]], "1", "0"],
		["Extreme *More Lag*", [], "", -5, [["expression", "setTerrainGrid 3.125;"]], "1", "1"],  
		["Very High", [], "", -5, [["expression", "setTerrainGrid 6.25;"]], "1", "1"],  
		["High", [], "", -5, [["expression", "setTerrainGrid 12.52;"]], "1", "1"],  
		["Normal", [], "", -5, [["expression", "setTerrainGrid 25;"]], "1", "1"],  
		["Low *Less Lag*", [], "", -5, [["expression", "setTerrainGrid 50;"]], "1", "1"],  
	["", [], "", -5, [["expression", ""]], "1", "0"],
			["Main Menu", [20], "#USER:playermenu", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
//////////////////////////////////////////////////////////////
//
VehicleMenu = 
[
	["",true],
		["Bike", [2],  "", -5, [["expression", format[_EXECscript7,"Bike.sqf"]]], "1", "1"],	
		["Gyro", [2],  "", -5, [["expression", format[_EXECscript7,"mozzie.sqf"]]], "1", "1"],	
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Main Menu", [20], "#USER:playermenu", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//
FilterMenu =
[
	["",true],
		["Some cool Filters", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Select same to disable or go to lobby", [-1], "", -5, [["expression", ""]], "1", "0"],
		["BlackWhiteThermal", [2],  "", -5, [["expression", format[_EXECscript11,"blackwhite.sqf"]]], "1", "1"],
		["Candy", [2],  "", -5, [["expression", format[_EXECscript11,"candy1.sqf"]]], "1", "1"],
		["Cyan Green", [2],  "", -5, [["expression", format[_EXECscript11,"cyangreen.sqf"]]], "1", "1"],
		["Dark Blue", [2],  "", -5, [["expression", format[_EXECscript11,"darkblue.sqf"]]], "1", "1"],
		["Christmas High", [2],  "", -5, [["expression", format[_EXECscript11,"HighOnChristmas.sqf"]]], "1", "1"],
		["LSD", [2],  "", -5, [["expression", format[_EXECscript11,"LSD.sqf"]]], "1", "1"],
		["Old Timer", [2],  "", -5, [["expression", format[_EXECscript11,"OldTimey.sqf"]]], "1", "1"],
		["Pink Lemon", [2],  "", -5, [["expression", format[_EXECscript11,"pinklemonade.sqf"]]], "1", "1"],
		["Radiation", [2],  "", -5, [["expression", format[_EXECscript11,"Radiation.sqf"]]], "1", "1"],
		["Shrooms", [2],  "", -5, [["expression", format[_EXECscript11,"Shrooms.sqf"]]], "1", "1"],	
		["Spider Pig", [2],  "", -5, [["expression", format[_EXECscript11,"Spiderman.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Main Menu", [20], "#USER:playermenu", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//
AnimationMenu =
[
	["",true],
		["Boxing", [2],  "", -5, [["expression", format[_EXECscript10,"boxing.sqf"]]], "1", "1"],
		["Crouch", [2],  "", -5, [["expression", format[_EXECscript10,"crouch.sqf"]]], "1", "1"],
		["Dance 1", [2],  "", -5, [["expression", format[_EXECscript10,"dance1.sqf"]]], "1", "1"],
		["Dance 2", [2],  "", -5, [["expression", format[_EXECscript10,"dance2.sqf"]]], "1", "1"],
		["Dance 3", [2],  "", -5, [["expression", format[_EXECscript10,"dance3.sqf"]]], "1", "1"],
		["Gangnam Style", [2],  "", -5, [["expression", format[_EXECscript10,"gangnam.sqf"]]], "1", "1"],
		["Handstand", [2],  "", -5, [["expression", format[_EXECscript10,"handstand.sqf"]]], "1", "1"],
		["LayDown", [2],  "", -5, [["expression", format[_EXECscript10,"laydown.sqf"]]], "1", "1"],
		["Run", [2],  "", -5, [["expression", format[_EXECscript10,"run.sqf"]]], "1", "1"],
		["Salute", [2],  "", -5, [["expression", format[_EXECscript10,"salute.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Main Menu", [20], "#USER:playermenu", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];


showCommandingMenu "#USER:playermenu";
