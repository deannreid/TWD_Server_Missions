player_zombieCheck = {};
morphtoskins = 
[
	["",true],
	["These skins are not permanent.", [-1], "", -5, [["expression", ""]], "1", "0"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Survivor Girl Skin", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'SurvivorW2_DZ'] spawn player_humanityMorph;"]], "1", "1"],
	["Survivor Skin", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Survivor2_DZ'] spawn player_humanityMorph;"]], "1", "1"],
	["Bandit Skin", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Bandit1_DZ'] spawn player_humanityMorph;"]], "1", "1"],
	["Hero Skin", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Survivor3_DZ'] spawn player_humanityMorph;"]], "1", "1"],
	["Rocket Skin", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Rocket_DZ'] spawn player_humanityMorph;"]], "1", "1"],
	["Ghillie Skin", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Sniper1_DZ'] spawn player_humanityMorph;"]], "1", "1"],
	["Citizen3 *", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Citizen3'] spawn player_humanityMorph;"]], "1", "1"],
	["Worker1 *", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Worker1'] spawn player_humanityMorph;"]], "1", "1"],
	["Villager1 *", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Villager1'] spawn player_humanityMorph;"]], "1", "1"],
	["TK_CIV_Takistani01_EP1 *", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'TK_CIV_Takistani01_EP1'] spawn player_humanityMorph;"]], "1", "1"],
	["TK_CIV_Takistani05_EP1 *", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'TK_CIV_Takistani05_EP1'] spawn player_humanityMorph;"]], "1", "1"],
	["TK_INS_Soldier_EP1 *", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'TK_INS_Soldier_EP1'] spawn player_humanityMorph;"]], "1", "1"],
	["CZ_Soldier_DES_EP1 *", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'CZ_Soldier_DES_EP1'] spawn player_humanityMorph;"]], "1", "1"],
	["US_Soldier_EP1 *", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'US_Soldier_EP1'] spawn player_humanityMorph;"]], "1", "1"],
	["GER_Soldier_EP1 *", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'GER_Soldier_EP1'] spawn player_humanityMorph;"]], "1", "1"],
	["Soldier_Crew_PMC *", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Soldier_Crew_PMC'] spawn player_humanityMorph;"]], "1", "1"],
	["BAF_Soldier_Sniper_MTP *", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'BAF_Soldier_Sniper_MTP'] spawn player_humanityMorph;"]], "1", "1"],
	["BAF_Soldier_SniperH_MTP *", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'BAF_Soldier_SniperH_MTP'] spawn player_humanityMorph;"]], "1", "1"],
	["BAF_Soldier_SniperN_MTP *", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'BAF_Soldier_SniperN_MTP'] spawn player_humanityMorph;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];
//	player addaction [("<t color=""#0074E8"">" + ("Super Admin Menu") +"</t>"),"toolmenu\superadmintools\Eexcute.sqf","",5,false,true,"",""];
showCommandingMenu "#USER:morphtoskins";