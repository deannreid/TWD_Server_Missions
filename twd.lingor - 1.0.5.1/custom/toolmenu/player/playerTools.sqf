_pathtoadmintools = "custom\toolmenu\common\AdminTools\";
_pathtoanimmenu = "custom\toolmenu\common\Animations\";

_EXECscript2 = 'player execVM "'+_pathtoadmintools+'%1"';
_EXECscript10 = 'player execVM "'+_pathtoanimmenu+'%1"';

		playermenu =
		[
			["",true],
					["LVL 0: Player (get(namePlayer))", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Player Tools >>", [2], "#USER:PlayerTools", -5, [["expression", ""]], "1", "1"],
				["FPS Menu >>", [6], "#USER:FPSMenu", -5, [["expression", ""]], "1", "1"],				
				["Commands >>", [6], "#USER:AnimationMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
					["Main Menu", [20], "#USER:playermenu", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		];
                                            /////////
                                            //MENUS//
                                            /////////
											
PlayerTools =
[
	["",true],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Flip Vehicle", [8],  "", -5, [["expression", format[_EXECscript2,"flipvehicle.sqf"]]], "1", "1"],	
		["Commit Suicide", [-1], "", -5, [["expression", ""]], "1", "0"],
		["/killme", [-1], "", -5, [["expression", ""]], "1", "0"],
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
///////////////////////////////////////////////////////////
//
AnimationMenu =
[
	["",true],
		["Voices", [20], "#USER:voiceMenu", -5, [["expression", ""]], "1", "1"],
		["Animations", [20], "#USER:animMenu", -5, [["expression", ""]], "1", "1"],
		["Voting", [20], "#USER:voteMenu", -5, [["expression", ""]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Main Menu", [20], "#USER:playermenu", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

voiceMenu =
[
	["",true],
		["/scream", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Main Menu", [20], "#USER:playermenu", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

animMenu =
[
	["",true],
		["/pushup", [-1], "", -5, [["expression", ""]], "1", "0"],
		["/handstand", [-1], "", -5, [["expression", ""]], "1", "0"],
		["/boxing", [-1], "", -5, [["expression", ""]], "1", "0"],
		["/karate", [-1], "", -5, [["expression", ""]], "1", "0"],
		["/boogie", [-1], "", -5, [["expression", ""]], "1", "0"],
		["/clubbing", [-1], "", -5, [["expression", ""]], "1", "0"],
		["/excercise", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],		
		["/stop", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Main Menu", [20], "#USER:playermenu", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

voteMenu =
[
	["",true],
		["/vote day", [-1], "", -5, [["expression", ""]], "1", "0"],
		["/vote night", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Main Menu", [20], "#USER:playermenu", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
showCommandingMenu "#USER:playermenu";
