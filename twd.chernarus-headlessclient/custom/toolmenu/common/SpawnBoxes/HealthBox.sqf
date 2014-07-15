// Name of this crate
_crateName = "Health Crate";

// Crate type
_classname = "USOrdnanceBox";

// Location of player and crate
_dir = getdir player;
_pos = getposATL player;
_pos = [(_pos select 0)+1*sin(_dir),(_pos select 1)+1*cos(_dir), (_pos select 2)];
_spawnCrate = createVehicle [_classname, _pos, [], 0, "CAN_COLLIDE"];
_spawnCrate setDir _dir;
_spawnCrate setposATL _pos;

// Remove default items/weapons from current crate before adding custom gear
clearWeaponCargoGlobal _spawnCrate;
clearMagazineCargoGlobal _spawnCrate;
clearBackpackCargoGlobal _spawnCrate;

_spawnCrate addMagazineCargoGlobal ["ItemBandage", 500];
_spawnCrate addMagazineCargoGlobal ["ItemEpinephrine", 500];
_spawnCrate addMagazineCargoGlobal ["ItemMorphine", 500];
_spawnCrate addMagazineCargoGlobal ["ItemBloodbag", 500];
_spawnCrate addMagazineCargoGlobal ["ItemAntibiotic", 500];
_spawnCrate addMagazineCargoGlobal ["ItemPainkiller", 500];
_spawnCrate addMagazineCargoGlobal ["HandChemBlue", 500];
_spawnCrate addMagazineCargoGlobal ["HandChemGreen", 500];
_spawnCrate addMagazineCargoGlobal ["HandChemRed", 500];
_spawnCrate addMagazineCargoGlobal ["FoodbaconCooked", 500];
_spawnCrate addMagazineCargoGlobal ["FoodbeefCooked", 500];
_spawnCrate addMagazineCargoGlobal ["FoodCanBakedBeans", 500];
_spawnCrate addMagazineCargoGlobal ["FoodCanFrankBeans", 500];
_spawnCrate addMagazineCargoGlobal ["FoodCanPasta", 500];
_spawnCrate addMagazineCargoGlobal ["FoodCanSardines", 500];
_spawnCrate addMagazineCargoGlobal ["FoodchickenCooked", 500];
_spawnCrate addMagazineCargoGlobal ["FoodmuttonCooked", 500];
_spawnCrate addMagazineCargoGlobal ["FoodrabbitCooked", 500];
_spawnCrate addMagazineCargoGlobal ["ItemTroutCooked", 500];
_spawnCrate addMagazineCargoGlobal ["ItemTunaCooked", 500];
_spawnCrate addMagazineCargoGlobal ["ItemSeaBassCooked", 500];
_spawnCrate addMagazineCargoGlobal ["ItemSodaCoke", 500];
_spawnCrate addMagazineCargoGlobal ["ItemSodaMdew", 500];
_spawnCrate addMagazineCargoGlobal ["ItemSodaPepsi", 500];
_spawnCrate addMagazineCargoGlobal ["ItemSodaXdrink", 500];
_spawnCrate addMagazineCargoGlobal ["ItemWaterbottleUnfilled", 500];
_spawnCrate addMagazineCargoGlobal ["ItemHeatPack", 500];
_spawnCrate addMagazineCargoGlobal ["ItemWaterbottle", 500];

// Send text to spawner only
titleText [format[_crateName + " spawned!"],"PLAIN DOWN"]; titleFadeOut 4;

// Run delaymenu
delaymenu = 
[
	["",true],
	["Select despawn time!", [-1], "", -5, [["expression", ""]], "1", "0"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["30 seconds", [], "", -5, [["expression", "SelectDelay=30;DelaySelected=true;"]], "1", "1"],
	["1 min", [], "", -5, [["expression", "SelectDelay=60;DelaySelected=true;"]], "1", "1"],
	["3 min", [], "", -5, [["expression", "SelectDelay=180;DelaySelected=true;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];
showCommandingMenu "#USER:delaymenu";
WaitUntil{DelaySelected};
DelaySelected=false;
titleText [format[_crateName + " will disappear in %1 seconds.",SelectDelay],"PLAIN DOWN"]; titleFadeOut 4;
sleep SelectDelay;

// Delete crate after SelectDelay seconds
deletevehicle _spawnCrate;
titleText [format[_crateName + " disappeared."],"PLAIN DOWN"]; titleFadeOut 4;