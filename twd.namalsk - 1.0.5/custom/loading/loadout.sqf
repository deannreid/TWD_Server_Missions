///////////////////// Members //////////////////////
DefaultMagazines = ["ItemBandage","ItemBandage","17Rnd_9x19_glock17","17Rnd_9x19_glock17","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];
DefaultWeapons = ["glock17_EP1","ItemFlashlight","ItemHatchet","ItemMap","ItemToolbox"];
DefaultBackpack = "DZ_Patrol_Pack_EP1";
///////////////////// Members //////////////////////

///////////////////// Owners ////////////////////// 
if ((getPlayerUID player) in userMaster) then 
	{
	DefaultMagazines = ["ItemBandage","ItemBandage","ItemBandage","ItemBandage","5Rnd_127x99_AS50","5Rnd_127x99_AS50","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemWaterbottleBoiled","ItemWaterbottleBoiled","FoodSteakCooked"];
	DefaultWeapons = ["glock17_EP1","BAF_AS50_scoped","Binocular_Vector","NVGoggles","ItemMap","ItemCompass","ItemGPS","ItemWatch","ItemKnife","Itemtoolbox","ItemCrowbar","Itemetool","ItemHatchet"];
	DefaultBackpack = "DZ_LargeGunBag_EP1";
	};
///////////////////// Owners //////////////////////

///////////////////// Super Admins //////////////////////
if ((getPlayerUID player) in userSuper) then 
	{
	DefaultMagazines = ["ItemBandage","ItemBandage","ItemBandage","ItemBandage","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemWaterbottleBoiled","ItemWaterbottleBoiled","FoodSteakCooked","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag"];
	DefaultWeapons = ["M4A1_HWS_GL","Binocular_Vector","NVGoggles","ItemMap","ItemCompass","ItemGPS","ItemWatch","ItemKnife","Itemtoolbox","ItemCrowbar","Itemetool","ItemHatchet"];
	DefaultBackpack = "DZ_LargeGunBag_EP1";
	};	
///////////////////// Super Admins //////////////////////

///////////////////// Admins //////////////////////
if ((getPlayerUID player) in userAdmin) then 
	{
	DefaultMagazines = ["ItemBandage","ItemBandage","ItemBandage","ItemBandage","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemWaterbottleBoiled","ItemWaterbottleBoiled","FoodSteakCooked","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag"];
	DefaultWeapons = ["glock17_EP1","m16a4_acg","Binocular_Vector","NVGoggles","ItemMap","ItemCompass","ItemGPS","ItemWatch","ItemKnife","Itemtoolbox","ItemCrowbar","Itemetool","ItemHatchet"];
	DefaultBackpack = "DZ_LargeGunBag_EP1";
	};		
///////////////////// Admins //////////////////////	
	
///////////////////// Mods //////////////////////	
if ((getPlayerUID player) in userMod) then 
	{
	DefaultMagazines = ["ItemBandage","ItemBandage","ItemBandage","ItemBandage","17Rnd_9x19_glock17","17Rnd_9x19_glock17","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemWaterbottleBoiled","ItemWaterbottleBoiled","FoodSteakCooked","100Rnd_762x54_PK","100Rnd_762x54_PK","100Rnd_762x54_PK","ItemGoldBar10oz"];
	DefaultWeapons = ["glock17_EP1","Pecheneg_DZ","Binocular_Vector","NVGoggles","ItemMap","Itemtoolbox"];
	DefaultBackpack = "DZ_Backpack_EP1";
	};
///////////////////// Mods //////////////////////	
	
///////////////////// Donators //////////////////////		
if ((getPlayerUID player) in userDALL) then 
	{
	DefaultMagazines = ["17Rnd_9x19_glock17","17Rnd_9x19_glock17","ItemBandage","ItemBandage","ItemBandage","ItemBandage","ItemMorphine","ItemPainkiller","ItemGoldBar","15Rnd_W1866_Slug","15Rnd_W1866_Slug"];
	DefaultWeapons = ["glock17_EP1","Winchester1866","ItemMap","ItemFlashlightRed","ItemHatchet"];
	DefaultBackpack = "DZ_Backpack_EP1";
	};
///////////////////// Donators //////////////////////