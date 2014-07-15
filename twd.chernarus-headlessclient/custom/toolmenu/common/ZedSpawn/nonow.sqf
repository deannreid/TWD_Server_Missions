private["_boobielicious", "_giantanus"];

_Entities = (getPos player nearEntities ["AllVehicles",500]);
{
	if (_x in units group player) then 
	{
		_x addRating 100000;
	};
	if (!(_x in units group player) or !(_x in playableUnits)) then 
	{
		_x addRating -75000;
	};
} forEach _Entities;

_giantanus = (group player);
_giantanus allowFleeing 0;
_giantanus setFormation "LINE";
_giantanus enableAttack true;

_pos = getPos vehicle player;
_boobielicious = (_giantanus) createunit ["Survivor3_DZ", [_pos select 0, _pos select 1,  50], [], 0, "FORM"];

_boobielicious enableAI "TARGET";
_boobielicious enableAI "AUTOTARGET";
_boobielicious enableAI "MOVE";
_boobielicious enableAI "ANIM";
_boobielicious enableAI "FSM";

_boobielicious allowDammage true;

_boobielicious setCombatMode "BLUE";
_boobielicious setBehaviour "CARELESS";


_togetic = "DMR";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addWeapon _togetic;
};

_togetic = "20Rnd_762x51_DMR";
_typhlosion = 80;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addMagazine _togetic;
};

_togetic = "M14_EP1";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addWeapon _togetic;
};

_togetic = "M40A3";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addWeapon _togetic;
};

_togetic = "M24";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addWeapon _togetic;
};

_togetic = "NVGoggles";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addWeapon _togetic;
};

_togetic = "30Rnd_556x45_Stanag";
_typhlosion = 80;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addMagazine _togetic;
};


_togetic = "M4SPR";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addWeapon _togetic;
};

_togetic = "M9SD";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addWeapon _togetic;
};

_togetic = "15Rnd_9x19_M9SD";
_typhlosion = 80;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addMagazine _togetic;
};

_togetic = "Mk_48_DZ";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addWeapon _togetic;
};

_togetic = "100Rnd_762x51_M240";
_typhlosion = 80;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addMagazine _togetic;
};

_togetic = "m16a4_acg";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addWeapon _togetic;
};

_togetic = "VSS_vintorez";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addWeapon _togetic;
};

_togetic = "PK_DZ";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addWeapon _togetic;
};

_togetic = "M4A3_RCO_GL_EP1";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addWeapon _togetic;
};

_togetic = "20Rnd_9x39_SP5_VSS";
_typhlosion = 80;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addMagazine _togetic;
};

_togetic = "30Rnd_762x39_SA58";
_typhlosion = 80;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addMagazine _togetic;
};

_togetic = "100Rnd_762x54_PK";
_typhlosion = 80;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addMagazine _togetic;
};

_togetic = "M4A1_AIM_SD_camo";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addWeapon _togetic;
};


_togetic = "30Rnd_556x45_StanagSD";
_typhlosion = 80;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addMagazine _togetic;
};
_togetic = "Sa58V_RCO_EP1";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addWeapon _togetic;
};
_togetic = "M4A1_HWS_GL_camo";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addWeapon _togetic;
};

_togetic = "Skin_Sniper1_DZ";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addMagazine _togetic;
};

_togetic = "O_MegaPack_1";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addBackPack _togetic;
};
_boobielicious setSkill ["aimingAccuracy",1];
_boobielicious setSkill ["aimingShake",1];
_boobielicious setSkill ["aimingSpeed",1];
_boobielicious setSkill ["endurance",1];
_boobielicious setSkill ["spotDistance",1];
_boobielicious setSkill ["spotTime",1];
_boobielicious setSkill ["courage",1];
_boobielicious setSkill ["reloadSpeed",1];
_boobielicious setSkill ["commanding",1];
_boobielicious setSkill ["general",1];

[_boobielicious] join _giantanus;
_giantanus enableAttack true;

_boobielicious addEventHandler ["Fired", {_this call player_fired;}];

sleep 2;
cutText [format["DONE"], "PLAIN DOWN"];


tyranitar = true;
while {tyranitar} do 
{
	_Entities = (getPos player nearEntities ["AllVehicles",500]);
	{
		if (_x in units group player) then 
		{
			_x addRating 100000;
		};
		if (!(_x in units group player) or !(_x in playableUnits)) then 
		{
			_x addRating -75000;
		};
	} forEach _Entities;
	
	{
		if (_x iskindof (typeOf player)) then 
		{
			removeAllWeapons _x;
		};
	} forEach allDEAD;
	
	_boobielicious setUnitRecoilCoefficient 0;
	_boobielicious setWeaponReloadingTime [_boobielicious,currentWeapon _boobielicious,0];
	_boobielicious setDamage 0;
	
	sleep 0.1;
};