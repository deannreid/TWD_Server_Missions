_classname = "MedBox0";
_dir = getdir player;
_pos = getposATL player;
_pos = [(_pos select 0)+1*sin(_dir),(_pos select 1)+1*cos(_dir), (_pos select 2)];
_box = createVehicle [_classname, _pos, [], 0, "CAN_COLLIDE"];
_box setDir _dir;
_box setposATL _pos;

_itemn = 2;

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addMagazineCargoGlobal ["FoodSteakCooked", _itemn];
_box addMagazineCargoGlobal ["ItemSodaMdew", _itemn];
_box addWeaponCargoGlobal ["ItemKnife", _itemn];
_box addWeaponCargoGlobal ["ItemMatchbox", _itemn];
_box addMagazineCargoGlobal ["ItemAntibiotic", _itemn];
_box addMagazineCargoGlobal ["ItemBandage", _itemn];
_box addMagazineCargoGlobal ["ItemBloodbag", _itemn];
_box addMagazineCargoGlobal ["ItemEpinephrine", _itemn];
_box addMagazineCargoGlobal ["ItemHeatPack", _itemn];
_box addMagazineCargoGlobal ["ItemMorphine", _itemn];
_box addMagazineCargoGlobal ["ItemPainkiller", _itemn];
_box addMagazineCargoGlobal ["ItemTent", _itemn];

_box addWeaponCargoGlobal ["huntingrifle", _itemn];
_box addMagazineCargoGlobal ["5x_22_LR_17_HMR", _itemn * 2];

_box addWeaponCargoGlobal ["LeeEnfield", _itemn];
_box addMagazineCargoGlobal ["10x_303", _itemn * 2];

_box addWeaponCargoGlobal ["AK_74", _itemn];
_box addMagazineCargoGlobal ["30Rnd_545x39_AK", _itemn * 2];


titleText [format["Bambi Box spawned nearby."],"PLAIN DOWN"]; titleFadeOut 4;

delaymenu = 
[
	["",true],
	["Select delay", [-1], "", -5, [["expression", ""]], "1", "0"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["1 min", [2], "", -5, [["expression", "SelectDelay=60;DelaySelected=true;"]], "1", "1"],
	["2 min", [3], "", -5, [["expression", "SelectDelay=120;DelaySelected=true;"]], "1", "1"],
	["3 min", [4], "", -5, [["expression", "SelectDelay=180;DelaySelected=true;"]], "1", "1"],
	["4 min", [5], "", -5, [["expression", "SelectDelay=240;DelaySelected=true;"]], "1", "1"],
	["5 min", [6], "", -5, [["expression", "SelectDelay=300;DelaySelected=true;"]], "1", "1"],
	["10 min", [7], "", -5, [["expression", "SelectDelay=600;DelaySelected=true;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["No timer", [11], "", -5, [["expression", "DelaySelected=false;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:delaymenu";

WaitUntil{DelaySelected};
DelaySelected=false;

sleep 3;
titleText [format["Bambi Box will disappear in %1 seconds.",SelectDelay],"PLAIN DOWN"]; titleFadeOut 4;

sleep SelectDelay;

deletevehicle _box;

titleText [format["Bambi Box disappeared."],"PLAIN DOWN"]; titleFadeOut 4;