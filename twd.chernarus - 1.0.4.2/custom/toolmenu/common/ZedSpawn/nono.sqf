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


_togetic = "Skin_Sniper1_DZ";
_typhlosion = 500;

hint format["Adding %1..\n[%2]", _typhlosion, _togetic];

for "_i" from 1 to _typhlosion do
{
    _boobielicious addMagazine _togetic;
};

_togetic = "DZ_Backpack_EP1";
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
cutText [format["DONE, Troll Dem Bitches'"], "PLAIN DOWN"];


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