adminAll = 
			[
				"139811590",  // Dean
				"119540166",  // Cable
				"102208774",  // Kieran
				"10265984",   //Z67
				"77269254",   //DrtyPntyz
				"128440262",  // Ripcord
				"241379398",  //Vapo
				"94794054",   // Adrian
				"11655302",   //Ghost
				"237964422",  //Wicked
				"125215110",  // Calvin
				"111721542",  //Robert
				"170218310",  //Headshot
				"251888070",  //Rebel
				"238995270"   //WhiteWolf		
			];
//
//////////////////////////////////////////////////////////////
//
userMaster =  //Master Admin
			[
				"139811590", // Dean
				"119540166", // Cable
				"102208774", // Kieran
				"10265984",  //Z67
				"77269254",  //DrtyPntyz
				"128440262", // Ripcord			
				"241379398"  //Vapo
			];
//
//////////////////////////////////////////////////////////////
//
userSuper = // Super Admins
			[
				"94794054",  // Adrian
				"11655302",   //Ghost
				"237964422", //Wicked
				"125215110",   // Calvin
				"111721542" //Robert
			];
//
//////////////////////////////////////////////////////////////
//
userAdmin = //Admins
			[			
				"170218310",  //Headshot
				"251888070", //Rebel
				"238995270" //WhiteWolf		
			];
//
//////////////////////////////////////////////////////////////
//
userMod = //Mods
			[
			];



////////////////////////////////////////////////////////////////
////////////////////////DONATORS BELOW//////////////////////////
////////////////////////////////////////////////////////////////

userDALL = //ALL DONATORS
			[
				"170530310",  //Vook
				"170096454", //BREAD_man
				"153285574", //Fun|Sniper  
				"128440262", // Ripcord
				"52501638", // Fluttersh
				"11655302",  //Ghost
				"167093190", //GhostSamurai
				"135256198", //Josh
				"10265984", //Z67
				"79105478",  //Apoc Jay
				"236154822", //Secure
				"236156102", //MSI
				"124823430", //JohnLynzi14a
				"236124742", //Elam Shtrom
				"239832326", //JLKA-CRY 
				"169641350", // xXAtari5200xX
				"171650182", // =DTU=Blackhawk1917
				"230755206", // Carson
				"169904646", //Devil
				"167672134",  // AAron Attwood
				"83584448",  // Noah Attwood
				"239832326", //Jlka-cry
				"234595718", // MCDagger99
				"116156422", // Matthew Stevens
				"231224966", //Paolo
				"244755462", //Smug
				"107969158", // xconnection 3d
				"151121990", //Splatfreak
				"74806144", //Mastik
				"96576454",   //Kobedabitch
				"248179974", // Burgy
				"248180166", // Fallen Angel
				"241927814", //Jimmi
				"240938566", //ccletta guy 
				"199315590", //Circlederp
				"231517766"  //Liquid White
];
//
//////////////////////////////////////////////////////////////
//
userD1 = //Donator T1
			[
				""
			];
//
//////////////////////////////////////////////////////////////
//
userD2 = //Donator T2
			[
				"170530310",  //Vook
				"170096454", //BREAD_man
				"153285574", //Fun|Sniper  
				"52501638", // Fluttersh
				"240938566", //ccletta
				"231517766"  //Liquid White
			];
//
//////////////////////////////////////////////////////////////
//
userD3 = //Donator T3
			[
				"11655302",  //Ghost
				"167093190", //GhostSamurai
				"135256198", //Josh
				"10265984",  //Z67
				"79105478",  //Apoc Jay
				"236154822", //Secure
				"236156102", //MSI
				"124823430", //JohnLynzi14a
				"236124742", //Elam Shtrom
				"239832326", //JLKA-CRY 
				"169641350", // xXAtari5200xX
				"171650182", // =DTU=Blackhawk1917
				"230755206", // Carson
				"169904646", //Devil
				"167672134", // AAron Attwood
				"83584448",  // Noah Attwood
				"239832326", //Jlka-cry
				"234595718", // MCDagger99
				"116156422", // Matthew Stevens
				"231224966", //Paolo
				"244755462", //Smug
				"107969158", // xconnection 3d
				"151121990", //Splatfreak
				"74806144", //Mastik
				"96576454", //Kobedabitch
				"241927814", //Jimmi
				"248179974",// Burgy
				"199315590",//Circlederp
				"248180166" // Fallen Angel
			];
//
//////////////////////////////////////////////////////////////
//

if ( !((getPlayerUID player) in adminAll) && !((getPlayerUID player) in userDALL)) then
		{	
			[] execVM "\z\addons\dayz_code\system\antihack.sqf";
		} else {
				DZE_teleport = [99999,99999,99999,99999,99999];
				DZE_requireplot = 0;
			   	DZE_BuildOnRoads = true;
				DZE_BuildingLimit = 9999;
			   };