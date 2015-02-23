/*  

Spawn Configuration:

1. These spawns are just examples to show what this mod can do. You can add or delete
any spawn in the _spawnPoints list. Don't forget to leave off the last comma for the last
element in the array.

2. Spawn format: 
	[Name, Pos, VIP Level, Humanity Level]
	Name - Each spawn must have a unique name. Can be anything. Do not use double quotes " inside.
	Pos - Coordinates in AboveTerrainLevel Format [x,y,z]
	VIP Level -
		0 - Anyone can pick this spawn
		1 - Only players with UIDs in _spawnLevel1 can pick this spawn
		2 - Only players with UIDs in _spawnLevel2 can pick this spawn
		3 - Only players with UIDs in _spawnLevel3 can pick this spawn​
	Humanity Level -
		0 - Anyone can pick this spawn
		Negative # - Only players with humanity less than this number can pick this spawn
		Positive # - Only players with humanity greater than this number can pick this spawn​

3. _customBase - List of UIDs that own custom bases.
   _customBases - List of custom bases in this format: ["Name",[Pos]]
   Name - Each base must have unique name. Can be anything. Do not use double quotes " inside.
   Pos - In AboveTerrainLevel [x,y,z] format
   These must match the order of the first list. The first UID in _customBase corresponds with the first base in _customBases and so on. 
   These will only show in the spawn list for the player who owns them. If multiple UIDs share the same base then add the same base multiple times to maintain order, 
   or consider making it a VIP spawn in _spawnPoints instead. Pos is exactly where you will spawn, does not run through findSafePos. These override body check.

*/

_bodyCheck = 4000; // If a player has a body within this distance of a spawn that spawn will be blocked. Set to -1 to disable.
_mapRadius = 12000; // Distance from center to farthest edge of map. Only used when spawnNearPlot is enabled.
_spawnNearGroup = false; // Allow players to spawn near their group. Blocked if the player has a body within bodyCheck distance of the leader. Requires DZGM to work.
_spawnNearPlot = false; // Allow players to spawn near their plot. Blocked if the player has a body within bodyCheck distance of their plot. Requires Plot4Life to work. 
_spawnRadius = 800; // Distance around spawn to find a safe pos. Lower is closer to exact coordinates. Do not set too low or BIS_fnc_findSafePos may fail.
_customBase = [
	"76561198001768308", //Dean 
	"76561198033945173", //Duuks
	"76561198039115582", //FrankFurter
	"76561198007584311", //Chicken
	"76561197970475174", //James
	"76561197994004959", //Jambo
	"76561198076867468" //Matijs
];
_customBases = [ // Do not use a z (height) higher than _autoOpenHeight in haloConfig.sqf if using halo
	[],
	[],
	[]
];

//Admins
_spawnLevel1 = [	
	"76561198001768308", //Dean 
	"76561198033945173", //Duuks
	"76561198039115582", //FrankFurter
	"76561198007584311", //Chicken
	"76561197970475174", //James
	"76561197994004959", //Jambo
	"76561198076867468" //Matijs
];
_spawnLevel2 = ["0","0","0"];
_spawnLevel3 = ["0","0","0"];

// To give higher level VIPs access to lower level VIP spawns too use +. For example:
// _spawnLevel2 = ["0","0","0"] + _spawnLevel1;
// _spawnLevel3 = ["0","0","0"] + _spawnLevel2;

_spawnPoints = [
	["Random",[[4932,1989,0],[12048,8352,0],[6901,2509,0],[10294,2191,0],[2236,1923,0],[13510,5249,0]],0,0,1], // Random will never be blocked, so you should always keep it if using body check.
	["Balota",[4932,1989,0],0,0],
	["Berezino",[12048,8352,0],0,0],
	["Cherno",[6901,2509,0],0,0],
	["Elektro",[10294,2191,0],0,0],
	["Kamenka",[2236,1923,0],0,0],
	["Solnichny",[13510,5249,0],0,0],
	// Above are defaults
	["Devils",[7068,11221,0],0,0],
	["Gorka",[9711,8962,0],0,0],
	["Grishino",[5939,10195,0],0,0],
	["Guglovo",[8421,6643,0],0,0],
	["Gvozdno",[8812,11642,0],0,0],
	["Kabanino",[5301,8548,0],0,0],
	["Kamyshovo",[12071,3591,0],0,0],
	["Komarovo",[3608,2152,0],0,0],
	["Krasnostav",[11053,12361,0],0,0],
	["Krutoy",[13407,4175,0],0,0],
	["Lopatino",[2718,10094,0],0,0],
	["Petrovka",[4984,12492,0],0,0],
	["Pogorevka",[4582,6457,0],0,0],
	["Prigor",[7952,3205,0],0,0],
	["Pusta",[9153,3901,0],0,0],
	["Vybor",[3626,8976,0],0,0],
	["Vyshnoye",[6587,6026,0],0,0],
	["Zelenogorsk",[2692,5284,0],0,0],
	["Bandit Base",[1607,7804,0],0,-2000],
	["Hero Hideout",[12944,12767,0],0,5000],
	["Misty Peak Airforce Base",[8202.1904, 14525.547,0],1,0],
];

/*
 Tavi
	["Random",[[9093,2614,0],[17588,4952,0],[15954,15847,0],[16674,13930,0],[11361,6685,0],[17744,10299,0],[18292,7537,0],[13561,19300,0],[15246,17425,0],[12268,9763,0]],0,0,1],
	["Topolka",[9093,2614,0],0,0],
	["Stari Sad",[17588,4952,0],0,0],
	["Sevastopol",[15954,15847,0],0,0],
	["Martin",[16674,13930,0],0,0],
	["Komarovo",[11361,6685,0],0,0],
	["Dubovo",[17744,10299,0],0,0],
	["Byelov",[18292,7537,0],0,0],
	["Khotanovsk",[13561,19300,0],0,0],
	["Dalnogorsk",[15246,17425,0],0,0],
	// Above are defaults
	["Kameni",[8350,18937,0],0,0],
	["Lyepestok",[11238,14413,0],0,0],
	["Marina",[10184,1542,0],0,0],
	["Race Track",[1529,7271,0],0,0],
	["Chernovar",[5904,10519,0],0,0]
	

 Napf
	["Random",[[5411,16676,0],[1511,11479,0],[12231,16319,0],[6946,17385,0],[12862,14850,0],[4672,14940,0],[2720,12226,0],[4104,13026,0],[1461,10584,0],[10283,18449,0],[10709,17085,0]],0,0,1],
	["Seltishafen",[5411,16676,0],0,0],
	["Hubel",[1511,11479,0],0,0],
	["Lausen",[12231,16319,0],0,0],	
	["Seewen",[6946,17385,0],0,0],
	["Bunig",[12862,14850,0],0,0],	
	["Bubendorf",[4672,14940,0],0,0],
	["Hindelbank",[2720,12226,0],0,0],
	["Huttwil",[4104,13026,0],0,0],
	["Ittingen",[1461,10584,0],0,0],
	["Hordstern",[10283,18449,0],0,0],
	["Magden",[10709,17085,0],0,0],
	// Above are defaults
	["South Airstrip",[18291,1790,0],0,0],
	["Buckten",[5906,5637,0],0,0],
	["Giswil",[17101,5282,0],0,0],
	["Horw",[17262,13502,0],0,0],
	["Romoos",[12694,11878,0],0,0],
	["Sachseln",[15554,10651,0],0,0],
	["Schangen",[9412,5882,0],0,0],
	["Sissach",[11111,8326,0],0,0],
	["Waldegg",[8538,852,0],0,0]
	

 Sauerland
	["Random",[[15448,8466,0],[19488,7462,0],[19478,12440,0],[20210,14501,0],[16453,6895,0],[19666,10377,0],[11000,10157,0],[10669,13320,0],[11349,12225,0],[12104,8936,0],[12879,14983,0]],0,0,1],
	["Buersfeld",[15448,8466,0],0,0],
	["Hoeinghausen",[19488,7462,0],0,0],
	["Berghausen",[19478,12440,0],0,0],
	["Heggen",[20210,14501,0],0,0],
	["Heidermuehle",[16453,6895,0],0,0],
	["Remblinghausen",[19666,10377,0],0,0],
	["Schueren",[11000,10157,0],0,0],
	["Schmallenberg",[10669,13320,0],0,0],
	["Calle",[11349,12225,0],0,0],
	["Oberdorf",[12104,8936,0],0,0],
	["Burg Calle",[12879,14983,0],0,0],
	// Above are defaults
	["Strelingen",[3437,18843,0],0,0],
	["Berghoven",[18734,21955,0],0,0],
	["Oeventrop",[8668,22650,0],0,0],
	["Arnsberg",[1134,24264,0],0,0],
	["Suederbarup",[13260,543,0],0,0],
	["Osterholz",[2580,8344,0],0,0],
	["Uhlenbusch",[4092,12942,0],0,0],
	["Ihrhofen",[9640,19193,0],0,0],
	["Old Airfield",[17253,2167,0],0,0]

 Panthera
	["Random",[[1725,5463,0],[1640,4350,0],[5897,1669,0],[8745,2248,0],[2454,6911,0],[3250,2556,0],[4115,3820,0],[1876,2840,0],[7988,6808,0],[8818,5909,0],[6117,3812,0]],0,0,1],
	["Unknown1",[1725,5463,0],0,0],
	["Unknown2",[1640,4350,0],0,0],
	["Unknown3",[5897,1669,0],0,0],
	["Unknown4",[8745,2248,0],0,0],
	["Unknown5",[2454,6911,0],0,0],
	["Unknown6",[3250,2556,0],0,0],
	["Unknown7",[4115,3820,0],0,0],
	["Unknown8",[1876,2840,0],0,0],
	["Unknown9",[7988,6808,0],0,0],
	["Unknown10",[8818,5909,0],0,0],
	["Unknown11",[6117,3812,0],0,0],
	// Above are defaults
	["Unknown12",[4444,4088,0],0,0],
	["Unknown13",[6821,983,0],0,0],
	["Unknown14",[8353,4731,0],0,0],
	["Unknown15",[6812,4694,0],0,0],
	["Unknown16",[6356,7228,0],0,0],
	["Unknown17",[5059,6423,0],0,0],
	["Unknown18",[4137,8026,0],0,0],
	["Unknown19",[1755,9141,0],0,0],
	["Unknown20",[4825,5113,0],0,0],
	["Unknown21",[3113,4573,0],0,0],
	["Unknown22",[4721,2201,0],0,0]

 Lingor
	["Random",[[2085,5501,0],[1355,315,0],[4550,913,0],[8880,1703,0],[580,5547,0],[3250,2556,0],[6143,2753,0],[1269,2858,0],[8295,8667,0],[9072,7323,0],[6899,3971,0]],0,0,1],
	["Vidora",[2085,5501,0],0,0],
	["Alma",[1355,315,0],0,0],
	["Calamar",[4550,913,0],0,0],
	["Pikawas",[8880,1703,0],0,0],
	["Benio",[580,5547,0],0,0],
	["Aguado",[3250,2556,0],0,0],
	["Prospero",[6143,2753,0],0,0],
	["Rago",[1269,2858,0],0,0],
	["Cemarin",[8295,8667,0],0,0],
	["Conoteta",[9072,7323,0],0,0],
	["Sanvigado",[6899,3971,0],0,0]
	// Above are defaults

 Namalsk
	["Random",[[4620,10916,0],[7600,6020,0],[6498,11851,0],[7668,11707,0],[4340,4960,0],[7885,7206,0],[3013,7506,0],[4673,10004,0],[7859,9096,0],[8756,10119,0],[5823,5641,0]],0,0,1],
	["Lubjansk",[4620,10916,0],0,0],
	["Old Sawmill",[7600,6020,0],0,0],
	["West Vorkuta",[6498,11851,0],0,0],
	["East Vorkuta",[7668,11707,0],0,0],
	["Brensk",[4340,4960,0],0,0],
	["Tara Harbor",[7885,7206,0],0,0],
	["Norinsk Tunnel",[3013,7506,0],0,0],
	["Lubjansk Bay",[4673,10004,0],0,0],
	["Nemsk Factory",[7859,9096,0],0,0],
	["Jalovisko",[8756,10119,0],0,0],
	["Brensk Bay",[5823,5641,0],0,0]
	// Above are defaults
*/