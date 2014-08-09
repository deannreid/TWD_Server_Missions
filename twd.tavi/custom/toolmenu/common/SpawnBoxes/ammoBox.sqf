// Name of this crate
_crateName = "(Most) Weapons Crate";

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

_spawnCrate addMagazineCargoGlobal ["2Rnd_shotgun_74Slug", 20];
_spawnCrate addMagazineCargoGlobal ["2Rnd_shotgun_74Pellets", 20];
_spawnCrate addMagazineCargoGlobal ["5Rnd_127x108_KSVK", 20];
_spawnCrate addMagazineCargoGlobal ["5Rnd_127x99_as50", 20];
_spawnCrate addMagazineCargoGlobal ["5Rnd_762x51_M24", 20];
_spawnCrate addMagazineCargoGlobal ["5Rnd_86x70_L115A1", 20];
_spawnCrate addMagazineCargoGlobal ["5x_22_LR_17_HMR", 20];
_spawnCrate addMagazineCargoGlobal ["6Rnd_45ACP", 20];
_spawnCrate addMagazineCargoGlobal ["7Rnd_45ACP_1911", 20];
_spawnCrate addMagazineCargoGlobal ["8Rnd_9x18_Makarov", 20];
_spawnCrate addMagazineCargoGlobal ["8Rnd_9x18_MakarovSD", 20];
_spawnCrate addMagazineCargoGlobal ["8Rnd_B_Beneli_74Slug", 20];
_spawnCrate addMagazineCargoGlobal ["8Rnd_B_Beneli_Pellets", 20];
_spawnCrate addMagazineCargoGlobal ["8Rnd_B_Saiga12_74Slug", 20];
_spawnCrate addMagazineCargoGlobal ["8Rnd_B_Saiga12_Pellets", 20];
_spawnCrate addMagazineCargoGlobal ["10Rnd_127x99_M107", 20];
_spawnCrate addMagazineCargoGlobal ["10Rnd_762x54_SVD", 20];
_spawnCrate addMagazineCargoGlobal ["10x_303", 20];
_spawnCrate addMagazineCargoGlobal ["15Rnd_9x19_M9", 20];
_spawnCrate addMagazineCargoGlobal ["15Rnd_9x19_M9SD", 20];
_spawnCrate addMagazineCargoGlobal ["15Rnd_W1866_Slug", 20];
_spawnCrate addMagazineCargoGlobal ["15Rnd_W1866_Pellet", 20];
_spawnCrate addMagazineCargoGlobal ["17Rnd_9x19_glock17", 20];
_spawnCrate addMagazineCargoGlobal ["20Rnd_556x45_Stanag", 20];
_spawnCrate addMagazineCargoGlobal ["20Rnd_762x51_DMR", 20];
_spawnCrate addMagazineCargoGlobal ["20Rnd_762x51_FNFAL", 20];
_spawnCrate addMagazineCargoGlobal ["20Rnd_B_765x17_Ball", 20];
_spawnCrate addMagazineCargoGlobal ["30Rnd_545x39_AK", 20];
_spawnCrate addMagazineCargoGlobal ["30Rnd_545x39_AKSD", 20];
_spawnCrate addMagazineCargoGlobal ["30Rnd_556x45_G36", 20];
_spawnCrate addMagazineCargoGlobal ["30Rnd_556x45_G36SD", 20];
_spawnCrate addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 20];
_spawnCrate addMagazineCargoGlobal ["30Rnd_556x45_StanagSD", 20];
_spawnCrate addMagazineCargoGlobal ["30Rnd_762x39_AK47", 20];
_spawnCrate addMagazineCargoGlobal ["30Rnd_9x19_MP5", 20];
_spawnCrate addMagazineCargoGlobal ["30Rnd_9x19_MP5SD", 20];
_spawnCrate addMagazineCargoGlobal ["30Rnd_9x19_UZI", 20];
_spawnCrate addMagazineCargoGlobal ["30Rnd_9x19_UZI_SD", 20];
_spawnCrate addMagazineCargoGlobal ["50Rnd_127x108_KORD", 20];
_spawnCrate addMagazineCargoGlobal ["64Rnd_9x19_Bizon", 20];
_spawnCrate addMagazineCargoGlobal ["64Rnd_9x19_SD_Bizon", 20];
_spawnCrate addMagazineCargoGlobal ["75Rnd_545x39_RPK", 20];
_spawnCrate addMagazineCargoGlobal ["100Rnd_762x51_M240", 20];
_spawnCrate addMagazineCargoGlobal ["100Rnd_762x54_PK", 20];
_spawnCrate addMagazineCargoGlobal ["100Rnd_556x45_BetaCMag", 20];
_spawnCrate addMagazineCargoGlobal ["100Rnd_556x45_M249", 20];
_spawnCrate addMagazineCargoGlobal ["200Rnd_556x45_L110A1", 20];
_spawnCrate addMagazineCargoGlobal ["200Rnd_556x45_M249", 20];
_spawnCrate addMagazineCargoGlobal ["BoltSteel", 20];
_spawnCrate addMagazineCargoGlobal ["PG7V", 20];
_spawnCrate addMagazineCargoGlobal ["1Rnd_HE_M203", 20];
_spawnCrate addMagazineCargoGlobal ["HandGrenade_west", 20];
_spawnCrate addMagazineCargoGlobal ["SmokeShell", 20];
_spawnCrate addMagazineCargoGlobal ["SmokeShellGreen", 20];
_spawnCrate addMagazineCargoGlobal ["SmokeShellRed", 20];
_spawnCrate addMagazineCargoGlobal ["PipeBomb", 20];


// Send text to spawner only
titleText [format[_crateName + " spawned!"],"PLAIN DOWN"]; titleFadeOut 4;

// Run delaymenu
delaymenu = 
[
	["",true],
	["Select delay", [-1], "", -5, [["expression", ""]], "1", "0"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["30 seconds", [], "", -5, [["expression", "SelectDelay=30;DelaySelected=true;"]], "1", "1"],
	["1 min", [], "", -5, [["expression", "SelectDelay=60;DelaySelected=true;"]], "1", "1"],
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