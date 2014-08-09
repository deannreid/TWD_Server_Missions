_crate = "USBasicWeaponsBox" createVehicle (position player);
_crate setVariable ["Mission",1,true];

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;

_crate addMagazineCargoGlobal ["ItemBandage", 1];
_crate addMagazineCargoGlobal ["ItemBloodbag", 1];
_crate addMagazineCargoGlobal ["ItemPainkiller", 1];
_crate addMagazineCargoGlobal ["FoodchickenUnCooked", 3];
_crate addMagazineCargoGlobal ["ItemWaterbottle", 1];
_crate addMagazineCargoGlobal ["15Rnd_9x19_M9SD", 1];
_crate addWeaponCargoGlobal ["ItemHatchet", 1];
_crate addWeaponCargoGlobal ["ItemCrowbar", 1];
_crate addWeaponCargoGlobal ["ItemToolbox", 1];
_crate addWeaponCargoGlobal ["ItemKnife", 1];

_crate addWeaponCargoGlobal ["M9SD", 1];


_crate attachto [player, [0,3,1.7]];
sleep 5;
detach _crate;
player reveal _crate;