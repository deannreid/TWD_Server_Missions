	speedlimit = [] spawn {
		_maxspeed = 25;
		while {!canbuild} do {
			waitUntil {vehicle player != player and !((vehicle player) isKindOf 'Air')};
			_vehicle = vehicle player;
			_curspeed = speed _vehicle;
			if (_curspeed > _maxspeed) then {
				_vel = velocity _vehicle;
				_dir = direction _vehicle;
				_speed = _curspeed - _maxspeed;
				_vehicle setVelocity [(_vel select 0)-((sin _dir)*_speed),(_vel select 1)- ((cos _dir)*_speed),(_vel select 2)];
			};
			uiSleep 0.1;
		};
	};