_args = _this select 3;
_veh = _args select 0; 
_hasNeon = _veh getVariable["SilverNeon", false]; 

if(!_hasNeon ) 
	then
	{
		_veh setVariable["SilverNeon", true, true]; 
		_colour = _veh getVariable["SilverNeonCol", 0]; 
		_colour = _colour + 1; 
	if(_colour > 5 ) 
		then
			{
				_colour = 1;
			}; 
			_veh setVariable["SilverNeonCol", _colour, true]; 
			silver_neon_tog = 1; 
			silversSpawnLight = [_veh, _colour]; 
			publicVariable "silversSpawnLight"; 
			[_veh, _colour] spawn silver_spawnLight; 
	while
			{
				(alive _veh) and (silver_neon_tog != 0) and (_veh getVariable["SilverNeon", false])
			}
		do
			{
				sleep 0.2;
			}; 
	if(silver_neon_tog != 0 ) 
		then
			{
				silver_neon_tog = 0; 
				deleteVehicle silver_neon_light;
			};
	}else
		{
			_veh setVariable["SilverNeon", false, true]; 
		if(silver_neon_tog != 0 ) 
			then
				{
					silver_neon_tog = 0; 
					deleteVehicle silver_neon_light;
				};
		};