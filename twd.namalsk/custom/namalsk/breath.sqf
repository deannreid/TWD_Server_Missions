doobreath = {
	private ["_pos", "_ps"];
	sleep random 2;
	_pos = _this selectionposition "neck";
	while {_this distance player < 800 and alive _this and vehicle _this == _this and _pos select 2 != 0} do {
		_pos = _this selectionposition "neck";
		_ps = "#particlesource" createvehiclelocal getpos _this;
		_ps setparticleparams [["\ca\data\particleeffects\universal\universal.p3d", 16, 12, 13, 0], "", "Billboard", 0.5, 0.5, [_pos select 0, (_pos select 1) + 0.15, _pos select 2], [0, 0.2, -0.2], 1, 1.275, 1, 0.2, [0, 0.2, 0], [[1, 1, 1, 0.01], [1, 1, 1, 0.01], [1, 1, 1, 0]], [1000], 1, 0.04, "", "", _this];
		_ps setparticlerandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
		_ps setdropinterval 0.001;
		_this setvariable ["runningbreath", floor time + 5];
		sleep 0.5;
		deletevehicle _ps;
		sleep 2 + random 2;
	};
};

[] spawn {
	while {true} do {
		sleep 5;
		_near = nearestobjects [player, ["Man"], 500];
		{
			if (alive _x and vehicle _x == _x and _x getvariable ["runningbreath", -1] < time) then {
				_x setvariable ["runningbreath", floor time + 5];
				_x spawn doobreath;
			};
		} foreach _near;
	};
};