private ["_HQ","_unitGroup","_squad1","_squad2","_squad3","_squad4","_squad5","_target"];
// Basic Declaration
_HQ = createCenter east; // Creates a center
_unitGroup = createGroup east; // Makes a group
EAST setfriend [WEST,0]; // Makes sure that the "EAST" is hostile.
_target = [7027.7656, 7657.8701, 3.0517578e-005];


// Spawns the AI
_squad1 = _unitGroup createUnit ["Policeman",[7026.6099, 7667.5566, 3.0517578e-005], [], 10, "PRIVATE"];
_squad2 = _unitGroup createUnit ["Policeman",[7026.186, 7668.7749, 0], [], 10, "PRIVATE"];
_squad3 = _unitGroup createUnit ["Policeman",[7025.7593, 7669.873, 0], [], 10, "COLONEL"];
_squad4 = _unitGroup createUnit ["Policeman",[7025.2358, 7671.1953, 0], [], 10, "PRIVATE"];
_squad5 = _unitGroup createUnit ["Policeman",[7027.8037, 7670.0151, 0], [], 10, "PRIVATE"];
_squad6 = _unitGroup createUnit ["Policeman",[7027.8050, 7670.0151, 0], [], 10, "PRIVATE"];
_squad7 = _unitGroup createUnit ["Policeman",[7027.8060, 7670.0151, 0], [], 10, "PRIVATE"];
_squad8 = _unitGroup createUnit ["Policeman",[7027.8070, 7670.0151, 0], [], 10, "PRIVATE"];
_squad9 = _unitGroup createUnit ["Policeman",[7027.8080, 7670.0151, 0], [], 10, "PRIVATE"];
_squad10 = _unitGroup createUnit ["Policeman",[7027.8037, 7670.0151, 0], [], 10, "PRIVATE"];
//Makes them hostile
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] joinSilent _unitGroup;

/*
Adds weapons to the AI. Customiseable on your likings. Just change the "AKS_74_U" to whatever gun you'd like.
*/
_squad1 addweapon "AKS_74_U";
_squad1 addmagazine "30Rnd_545x39_AK";
_squad1 addmagazine "30Rnd_545x39_AK";

_squad2 addweapon "AKS_74_U";
_squad2 addmagazine "30Rnd_545x39_AK";
_squad2 addmagazine "30Rnd_545x39_AK";

_squad3 addweapon "AKS_74_U";
_squad3 addmagazine "30Rnd_545x39_AK";
_squad3 addmagazine "30Rnd_545x39_AK";

_squad4 addweapon "AKS_74_U";
_squad4 addmagazine "30Rnd_545x39_AK";
_squad4 addmagazine "30Rnd_545x39_AK";

_squad5 addweapon "AKS_74_U";
_squad5 addmagazine "30Rnd_545x39_AK";
_squad5 addmagazine "30Rnd_545x39_AK";

_squad6 addweapon "AKS_74_U";
_squad6 addmagazine "30Rnd_545x39_AK";
_squad6 addmagazine "30Rnd_545x39_AK";

_squad7 addweapon "AKS_74_U";
_squad7 addmagazine "30Rnd_545x39_AK";
_squad7 addmagazine "30Rnd_545x39_AK";

_squad8 addweapon "AKS_74_U";
_squad8 addmagazine "30Rnd_545x39_AK";
_squad8 addmagazine "30Rnd_545x39_AK";

_squad9 addweapon "AKS_74_U";
_squad9 addmagazine "30Rnd_545x39_AK";
_squad9 addmagazine "30Rnd_545x39_AK";

_squad10 addweapon "AKS_74_U";
_squad10 addmagazine "30Rnd_545x39_AK";
_squad10 addmagazine "30Rnd_545x39_AK";




// Sets their difficulty
// Good
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] setSkill ["aimingspeed", 1];
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] setSkill ["spotdistance", 1];
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] setSkill ["aimingaccuracy", 1];
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] setSkill ["aimingshake", 0.2];
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] setSkill ["spottime", 1];
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] setSkill ["spotdistance", 1];
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] setSkill ["commanding", 1];
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] setSkill ["general", 1];

// Medium
/* 
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["aimingspeed", 0.2];
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["spotdistance", 0.2];
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["aimingaccuracy", 0.2];
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["aimingshake", 0.2];
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["spottime", 0.4];
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["spotdistance", 0.6];
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["commanding", 0.6];
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["general", 0.7]; 
*/

// Low
/* 
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["aimingspeed", 0.15];
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["spotdistance", 0.15];
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["aimingaccuracy", 0.1];
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["aimingshake", 0.1];
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["spottime", 0.3];
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["spotdistance", 0.5];
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["commanding", 0.5];
[_squad1,_squad2,_squad3,_squad4,_squad5] setSkill ["general", 0.6]; 
*/

//Behaviour
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] enableAI "TARGET";
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] enableAI "AUTOTARGET";
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] enableAI "MOVE";
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] enableAI "ANIM";
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] enableAI "FSM";
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] setCombatMode "RED";
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] setBehaviour "COMBAT";

// Unit move -> bank
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10] moveTo _target;