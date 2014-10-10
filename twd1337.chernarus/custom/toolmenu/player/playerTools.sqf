_pathtoadmintools = "custom\toolmenu\common\AdminTools\";
_pathtoanimmenu = "custom\toolmenu\common\Animations\";

_EXECscript2 = 'player execVM "'+_pathtoadmintools+'%1"';
_EXECscript10 = 'player execVM "'+_pathtoanimmenu+'%1"';

		playermenu =
		[
			["",true],
					["LVL 0: Player", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Player Tools >>", [2], "#USER:PlayerTools", -5, [["expression", ""]], "1", "1"],		
				["Animation Menu >>", [6], "#USER:AnimationMenu", -5, [["expression", ""]], "1", "1"],
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
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Main Menu", [20], "#USER:playermenu", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
//////////////////////////////////////////////////////////////
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
