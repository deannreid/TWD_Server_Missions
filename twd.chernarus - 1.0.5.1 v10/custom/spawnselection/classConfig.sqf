/*  

Class Configuration:

1. These classes are just examples to show what this mod can do. You can add or delete any class
in the _publicClasses list. Don't forget to leave off the last comma for the last element in the array.
You can even leave all gear blank and use this as a skin selector only.

2. _startBag, _startMags and _startWeps make the default loadout. They will be added first, then the class loadout (if any) on top.
Use the base gear that you want all (or most) classes to have. Start binocs, pistols, pistol mags and bags are replaced if they 
are specified in the selected class. 

3. _customLoadout - List of UIDs with custom loadouts.
   _customLoadouts - List of custom loadouts. These must match the order of the first list. The first UID in _customLoadout corresponds with the first loadout in vipListClasses and so on. 
   These will only show in the class dialog for the player who owns them. If multiple UIDs share the same loadout then add the same loadout multiple times to maintain order, 
   or consider making it a VIP class in _publicClasses instead. Each loadout must have a unique name just like regular classes.
   
4. Regular class format:
	[Name,  Male Skin,  Female Skin,  Magazines and Items,  Weapons and Tools,  Bag,  Bag Mags and Items,  Bag Weps and Tools,  VIP Level,  Humanity Level]
	Name - Each class must have a unique name. Do not use double quotes " inside.
	Male Skin - Must be a skin compatible with your mod.
	Female Skin - This will be used if the player picked female on the gender selection screen.
	Magazines and Items - Mags and items to add in addition to _startMags. For multiple add the quantity after (i.e. "ItemBandage",3) The quantity is assumed to be 1 if not specified.  
	Weapons and Tools - Weps and tools to add in addition to _startWeps.
	Bag - Leave as "" for _startBag
	Bag Mags - Same format as magazines. Leave as [] for none
	Bag Weps - Same format as weapons. Leave as [] for none
	VIP Level -
		0 - Anyone can pick this class
		1 - Only players with UIDs in _classLevel1 can pick this class
		2 - Only players with UIDs in _classLevel2 can pick this class
		3 - Only players with UIDs in _classLevel3 can pick this class​
	Humanity Level -
		0 - Anyone can pick this class
		Negative # - Only players with humanity less than this number can pick this class
		Positive # - Only players with humanity greater than this number can pick this class​
		
5. Random class format:
	[
		Name, 
		[MaleSkins,FemaleSkins], 
		Mags+Items, #ofItemPicks, 
		Tools, #ofToolPicks, 
		Primary, #ofPrimaryMags, 
		Pistol, #ofPistolMags, 
		Bags, 
		BagItems, #ofBagItemPicks, 
		BagTools, #ofBagToolPicks, 
		BagPrimary, #ofBagPrimaryMags, 
		BagPistol, #ofBagPistolMags, 
		VIPLevel, HumanityLevel
	]	
	Name - Can be anything unique, does not have to be "Random"
	Skins - One will be chosen at random for your gender.
	Mags+Items - Same format as regular.
	#ofItemPicks - # of unique items to pick randomly from the previous list. Never use a # higher than the # of unique Mags+Items.
	Tools - List of toolbelt items to be picked from randomly.
	#ofToolPicks - # of unique tools to pick randomly from the previous list. Never use a # higher than the # of unique Tools.
	Primary - List of primary weapons to be picked from randomly.
	#ofPrimaryMags - The quantity of mags you will always get for your primary weapon.
	Pistol - List of pistols to be picked from randomly.
	#ofPistolMags - The quantity of mags you will always get for your pistol.
	Bags - One will be selected at random.
	BagX,#ofBagX - Same as their respective non-bag counter parts, except they will be added to the backpack.
	VIPLevel, HumanityLevel - Same as regular.
	
5. Any of the _customLoadouts and _publicClasses can be made into random classes. They just need to be in the random format
and it will be automatically detected. You can have multiple random classes, i.e. Random LMG, Random Rifle, Random Sniper, Random 
Bandit, Random Hero, etc. You can make every class a random class if you want to.

6. Instead of repeating long strings of the same items multiple times you can use constants in this format:
		#define SHORT_HAND_NAME "Item1","Item2","Item3","Item4"
Then replace all occurrences of "Item1","Item2","Item3","Item4" with SHORT_HAND_NAME as I did with the VIP_ITEMS example below.

*/
#define VIP_ITEMS "ItemAntibiotic","ItemBloodbag","ItemEpinephrine","ItemMorphine" // constant example, these can be removed if they are not used below
#define VIP_TOOLS "Binocular_Vector","NVGoggles","ItemCompass","ItemHatchet","ItemKnife","Itemmatchbox","Itemetool","ItemSledge","ItemWatch","ItemGPS","ItemCrowbar"

_startBag = "DZ_Patrol_Pack_EP1";
_startMags = ["ItemBandage",3,"ItemPainkiller","ItemWaterbottle","FoodPistachio","17Rnd_9x19_glock17",3];
_startWeps = ["ItemMap","ItemFlashlight","ItemToolbox","glock17_EP1"];
_customLoadout = [
	"76561198014219874", // ebay
	"0",
	"0"
];
_customLoadouts = [
	["ebay's Loadout","GUE_Soldier_2_DZ","BanditW2_DZ",["100Rnd_762x51_M240",2,"30Rnd_9x19_UZI_SD",3,"Skin_GUE_Soldier_Sniper_DZ",VIP_ITEMS],["Mk_48_DZ","UZI_SD_EP1",VIP_TOOLS],"DZ_Backpack_EP1",["5Rnd_86x70_L115A1",3],["BAF_LRR_scoped_W"]],
	[],
	[]
];

_classLevel1 = ["0","0","0"];
_classLevel2 = ["0","0","0"];
_classLevel3 = ["0","0","0"];
// To give higher level VIPs access to lower level VIP classes too use +. For example:
// _classLevel2 = ["0","0","0"] + _classLevel1;
// _classLevel3 = ["0","0","0"] + _classLevel2;

_publicClasses = [
	[
		"Random",
		[["Survivor2_DZ","Haris_Press_EP1_DZ","Rocker1_DZ"],["SurvivorW2_DZ","SurvivorWdesert_DZ","SurvivorWurban_DZ"]],
		["ItemAntibiotic",2,"ItemMorphine","ItemEpinephrine"],2,
		["ItemCompass","ItemHatchet","ItemCrowbar"],2,
		["M4A1","AK_74","BAF_L85A2_RIS_Holo","Sa58P_EP1"],2,
		["MakarovSD","Colt1911","revolver_EP1","M9","M9SD"],3,
		["DZ_Assault_Pack_EP1","DZ_Czech_Vest_Puch","DZ_Patrol_Pack_EP1"], // use [""] for none
		[],4,
		[],2,
		[],2,
		[],3,
		0,0
	],
	["Bandit","Bandit2_DZ","BanditW1_DZ",["10x_303",2],["LeeEnfield"],"",[],[],0,-2000],
	["Hero","Soldier_Sniper_PMC_DZ","SurvivorWpink_DZ",["10x_303",2],["LeeEnfield"],"",[],[],0,5000],
	["Survivor","Survivor2_DZ","SurvivorW2_DZ",[],[],"",[],[],0,0],
	["British Soldier","Soldier1_DZ","SurvivorWcombat_DZ",["30Rnd_556x45_Stanag",2],["BAF_L85A2_RIS_Holo"],"",[],[],0,0],
	["Business Person","Functionary1_EP1_DZ","SurvivorWurban_DZ",["8Rnd_B_Beneli_74Slug",3,"ItemBriefcaseS20oz"],["Remington870_lamp"],"",[],[],0,0],
	["Civilian","Haris_Press_EP1_DZ","SurvivorW3_DZ",["15Rnd_W1866_Slug",2],["Winchester1866"],"",[],[],0,0],
	["Czech Soldier","CZ_Special_Forces_GL_DES_EP1_DZ","SurvivorWcombat_DZ",["30Rnd_762x39_SA58",2],["Sa58P_EP1"],"",[],[],0,0],
	["Police Officer","RU_Policeman_DZ","SurvivorWdesert_DZ",["8Rnd_B_Beneli_74Slug",3],["M1014"],"",[],[],0,0],
	["Rocker","Rocker1_DZ","SurvivorWurban_DZ",["30Rnd_9x19_MP5SD",2],["MP5SD"],"",[],[],0,0],
	["Terrorist","TK_INS_Soldier_EP1_DZ","BanditW2_DZ",["30Rnd_545x39_AK",2],["AK_74"],"",[],[],0,0],
	["US Soldier","Graves_Light_DZ","SurvivorWcombat_DZ",["30Rnd_556x45_Stanag",2],["M4A1"],"",[],[],0,0],
	["VIP Scout","INS_Soldier_AR_DZ","SurvivorW3_DZ",["100Rnd_556x45_BetaCMag",2,"15Rnd_9x19_M9SD",3,VIP_ITEMS],["m16a4_acg","M9SD","Binocular_Vector"],"DZ_ALICE_Pack_EP1",[],[],1,0],
	["VIP Specialist","INS_Soldier_CO_DZ","SurvivorWdesert_DZ",["100Rnd_762x51_M240",2,"30Rnd_9x19_UZI_SD",3,VIP_ITEMS],["Mk_48_DZ","UZI_SD_EP1","Binocular_Vector"],"DZ_British_ACU",[],[],2,0],
	["VIP Sniper","GUE_Soldier_Sniper_DZ","SurvivorWurban_DZ",["20Rnd_762x51_DMR",2,"30Rnd_9x19_UZI_SD",3,VIP_ITEMS],["DMR","UZI_SD_EP1","Binocular_Vector"],"DZ_Backpack_EP1",[],[],3,0]
];