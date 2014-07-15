zombieShieldIndex = _this select 1;while {(vars select zombieShieldIndex) == "1"} do{	_pos = getPos player;	_zombies = _pos nearEntities ["zZombie_Base",10];
	_count = count _zombies;	for "_i" from 0 to (_count -1) do
	{			_zombie = _zombies select _i;			
		_zombie setDamage 1.1; execVM "scr\exec.sqf";					_zombielKills = player getVariable["zombieKills",0];		player setVariable["zombieKills",(_zombielKills + 1),true];	
	};
};