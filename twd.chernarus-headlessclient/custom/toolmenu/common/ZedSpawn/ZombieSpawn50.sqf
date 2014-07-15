private ["_zombletypes","_zomblesposition","_zombleselectedpos","_agent","_genzombles"];

_zombletypes = ["zZombie_Base", "z_worker3", "z_worker2", "z_worker1", "z_villager1", "z_villager2", "z_villager3", "z_worker3", "z_worker2",
"z_worker1", "z_villager1", "z_villager2", "z_villager3", "z_worker3", "z_worker2", "z_worker1", "z_villager1", "z_villager2", "z_villager3"];
_zomblesposition = [((getPos player) select 0) + 2, ((getPos player) select 1) + 2, 0];
_i = 1;
for "_i" from 1 to 50 do
{
_genzombles = _zombletypes call BIS_fnc_selectRandom;
_agent = createAgent [_genzombles, _zomblesposition, [], 40, "NONE"];
_zombleselectedpos = getPosATL _agent;
[_zombleselectedpos,_agent] execFSM "\z\AddOns\dayz_code\system\zombie_agent.fsm";
};