private ["_victim", "_attacker","_weapon","_weapon_dmg","_distance","_damage","_weapon_img"];
_victim = _this select 0;
_attacker = _this select 1;
_damage = _this select 2;

if (!isPlayer _victim || !isPlayer _attacker) exitWith {};
if ((owner _victim) == (owner _attacker)) exitWith {
	_victim setVariable["AttackedBy", _victim, true];
};

_weapon = (weaponState _attacker);

_vehicle = typeOf (vehicle _attacker); 

if ((getText (configFile >> "CfgVehicles" >> _vehicle >> "vehicleClass")) in ["CarW","Car","CarD","Armored","Ship","Support","Air","ArmouredW","ArmouredD","SupportWoodland_ACR"]) then {
	_weapon_dmg = getText (configFile >> 'CfgVehicles' >> _vehicle >> 'displayName');
	_weapon_img = gettext(configFile >> 'CfgVehicles' >> _vehicle >> 'picture');
} else {
	_weapon_dmg = gettext (configFile >> 'cfgWeapons' >> (currentWeapon _attacker) >> 'displayName');
	_weapon_img = gettext(configFile >> 'cfgWeapons' >> (currentWeapon _attacker) >> 'picture');
};

_distance = _victim distance _attacker;

diag_log format["PLAYERHIT: %1 was hit by %2 with %3 from %4m with %5 dmg", _victim, _attacker, _weapon_dmg, _distance, _damage];

_victim setVariable["AttackedBy", _attacker, true];
_victim setVariable["AttackedByName", (name _attacker), true];
_victim setVariable["AttackedByWeapon", _weapon_dmg, true];
_victim setVariable["AttackedFromDistance", _distance, true];
_victim setVariable["AttackedByWeaponImg", _weapon_img, true];