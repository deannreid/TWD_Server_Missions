_crate = "USOrdnanceBox" createVehicle (position player);
_crate setVariable ["Mission",1,true];

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;

// add items
_crate addMagazineCargoGlobal ["ItemBriefcase100oz", 20];
_crate addMagazineCargoGlobal ["ItemSilverBar", 20];
_crate addMagazineCargoGlobal ["ItemSilverBar10oz", 20];
_crate addMagazineCargoGlobal ["ItemGoldBar", 20];
_crate addMagazineCargoGlobal ["ItemGoldBar10oz", 20];
_crate addMagazineCargoGlobal ["ItemRuby", 20];
_crate addMagazineCargoGlobal ["ItemEmerald", 20];
_crate addMagazineCargoGlobal ["ItemCitrine", 20];
_crate addMagazineCargoGlobal ["ItemObsidian", 20];
_crate addMagazineCargoGlobal ["ItemTopaz", 20];
_crate addMagazineCargoGlobal ["ItemSapphire", 20];
_crate addMagazineCargoGlobal ["ItemAmethyst", 20];

_crate attachto [player, [0,3,1.7]];
sleep 5;
detach _crate;
player reveal _crate;