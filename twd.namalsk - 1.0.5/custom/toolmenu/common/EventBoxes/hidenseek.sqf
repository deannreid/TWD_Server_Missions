_crate = "USBasicWeaponsBox" createVehicle (position player);
_crate setVariable ["Mission",1,true];

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;

// add items
_crate addMagazineCargoGlobal ["ItemComboLock", 10];
_crate addMagazineCargoGlobal ["light_pole_kit", 6];
_crate addMagazineCargoGlobal ["StorageShed_DZ", 4];
_crate addMagazineCargoGlobal ["StorageShed_DZ", 4];

// add money
_crate addMagazineCargoGlobal ["ItemBriefcase100oz", 2];
_crate addMagazineCargoGlobal ["ItemGoldBar10oz", 5];
_crate addMagazineCargoGlobal ["ItemSilverBar10oz", 10];
_crate addMagazineCargoGlobal ["ItemChopperBar10oz", 20];

// add weapons
_crate addWeaponCargoGlobal ["BAF_AS50_scoped", 1];
_crate addWeaponCargoGlobal ["m8_Sharpshooter", 1];
_crate addWeaponCargoGlobal ["G36C", 5];

// add ammo
_crate addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 80];
_crate addMagazineCargoGlobal ["20Rnd_B_AA12_PELLETS", 20];
_crate addMagazineCargoGlobal ["100Rnd_556x45_BetaCMag", 10];

_crate attachto [player, [0,3,1.7]];
sleep 5;
detach _crate;
player reveal _crate;