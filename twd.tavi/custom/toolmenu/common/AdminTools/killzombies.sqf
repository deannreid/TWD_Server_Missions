zombieShieldIndex = _this select 1;
	_count = count _zombies;
	{	
		_zombie setDamage 1.1; execVM "scr\exec.sqf";			
	};
};