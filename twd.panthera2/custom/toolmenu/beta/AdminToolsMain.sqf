_pathtoplayertools = "custom\toolmenu\common\BetaTools\";

_EXECscript1 = 'player execVM "'+_pathtobeta'%1"';


if ((getPlayerUID player) in userBeta) then 
{
		adminmenu =
		[
			["",true],
					["BETA MENU", [-1], "", -5, [["expression", ""]], "1", "0"],
			//	["Fly", [2],  "", -5, [["expression", format[_EXECscript1,"fly.sqf"]]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];
};


showCommandingMenu "#USER:adminmenu";