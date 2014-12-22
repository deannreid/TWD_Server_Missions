/*
Author of native script: HALV
Author of edit: GaspArt aka SixPeso
*/

_useLocalMarkers = false;

if (isServer)then{
	private["_blacklistedAreas"];
	diag_log "[Random_Weed_Farm]: waiting for BIS_fnc_findSafePos";
	waitUntil {(!isNil "BIS_fnc_findSafePos")};
	if(isNil "dayz_MapArea")then{dayz_MapArea = 7000};
	_WorldName = toLower format ["%1", worldName];

//settings
	//how many will spawn farms, note that farms can spawn "on top" of eachother (min 1, default 6)
	_farms = 30;
	//min farms (min 1, default 2)
	_farmsmin = 20;
	//how many plants per farm (min 1, default 9)
	_plants = 6;
	//min plants (min 1, default 4)
	_plantsmin = 4;
	//min dist (in meters) from roads to build farms (default 200m)
	_mindist2roads = 10;
	//the object to spawn, default "Fiberplant"
	_fiberplant = "MAP_snow";
	_spawnarea = (dayz_MapArea/2);
	switch(_WorldName)do{
		case "napf":{
		_blacklistedAreas = [
		[[8246.3184,15485.867,0],	500],
		[[15506.952,13229.368,0],	500],
		[[12399.751,5074.5273,0],	500],
		[[10398.626,8279.4619,0],	500],
		[[5149.9814,4864.1191,0],	500],
		[[6633.1538,7254.916,0],	500],
		[[13288.313,19590.338,0],	800]
		];
		};
		case "chernarus":{
		_blacklistedAreas = [
		[[23999.742,2.4571743,0],	500],
		[[6325.6772,7807.7412,0],	500],
		[[4063.4226,11664.19,0],	500],
		[[11447.472,11364.504,0],	500],
		[[1606.6443,7803.5156,0],	500],
		[[2993.46,15314.8,0],	1000],
		[[4993.46,15314.8,0],	1000],
		[[6993.46,15314.8,0],	1000],
		[[8993.46,15314.8,0],	1000],
		[[10993.46,15314.8,0],	1000],
		[[12993.46,15314.8,0],	1000],
		[[14993.46,15314.8,0],	1000],
		[[8122.35,13464.5,0],		500] // <-- no comma for last entry
		];
		};
		default{
		_blacklistedAreas = [
			[[0,0,0],	0]
		];
		};
	};
//function to find x amount of positions around a position (on ground, z axis not included) in a size you define - "labyrinth style"
//[start position, amount of positions to return (ex start pos), distance between positions,include startposition (optional, default true)] call _fnc_positions_array
	_fnc_positions_array = {
		private ["_posi"];
		_pos = _this select 0;
		_amnt = _this select 1;
		_adjust = _this select 2;
		_include = if(count _this > 3)then{_this select 3}else{true};
		_positions = [];
		_buildDir = 0;
		_buildRow = 0;
		_Row = 0;
		_build = 0;
		if(_include)then{_positions set [count _positions,[_pos select 0,_pos select 1,0]];_amnt = _amnt - 1;};
		for "_i" from 0 to (_amnt-1) do {
			if(_Row > 1)then{_buildRow = _buildRow + 1;_Row = 0;};
			if(_buildDir > 3)then{_buildDir = 0;};
			for "_i" from 0 to _buildRow do {
				switch (_buildDir) do{
					case 0:{
						_posi = [(_pos select 0),(_pos select 1) + _adjust]; //up
						_positions set [count _positions,[_posi select 0,_posi select 1,0]];
					};
					case 1:{
						_posi = [(_pos select 0) + _adjust,(_pos select 1)]; //left
						_positions set [count _positions,[_posi select 0,_posi select 1,0]];
					};
					case 2:{
						_posi = [(_pos select 0),(_pos select 1) - _adjust]; //down
						_positions set [count _positions,[_posi select 0,_posi select 1,0]];
					};
					case 3:{
						_posi = [(_pos select 0) - _adjust,(_pos select 1)]; //right
						_positions set [count _positions,[_posi select 0,_posi select 1,0]];
					};
				};
				_pos = _posi;
				_build = _build + 1;
				if(_build >= _amnt)exitWith{};
			};
			_buildDir = _buildDir + 1;
			_Row = _Row + 1;
			if(_build >= _amnt)exitWith{};
		};
//		diag_log format["[Random_Weed_Farm]: Debug - _build: '%1' _amnt: '%2' _positions: '%3' %4",_build,_amnt,(count _positions),_positions];
		_positions
	};

	_amnt = round(random _farms);
	if(_amnt < _farmsmin)then{_amnt = _farmsmin};
	if(_amnt < 1)then{_amnt = 1};

	diag_log format["[Random_Weed_Farm]: Function loaded ... Server Building %1 Weed Farm(s)",_amnt];

	_locations = [];
	for "_i" from 0 to (_amnt-1) do {
		private ["_coords"];
		while{true}do{
			scopeName "posiscope";
			_coords = [getMarkerPos 'Center',0,_spawnarea,25,0,2000,0] call BIS_fnc_findSafePos;
			_roadlist = _coords nearRoads _mindist2roads;
			_IsBlacklisted = false;
			{if(_coords distance (_x select 0) < (_x select 1))exitWith{_IsBlacklisted = true};}forEach _blacklistedAreas;
			if((count _roadlist < 1) and !_IsBlacklisted)then{breakOut "posiscope"};
		};
		_locations set [count _locations,[_coords select 0,_coords select 1,0]];
		_amnt = round(random _plants);
		if(_amnt < _plantsmin)then{_amnt = _plantsmin};
		if(_amnt < 1)then{_amnt = 1};
		diag_log format["[Random_Weed_Farm]: Found Location for a farm (%1) %2 with %3 plants",mapGridPosition _coords,_coords,_amnt];
		//aparently sizeOf has problems sometimes, so we iput this manually - else perhaps use [position, amount, sizeOf "object"]
		_plantpositions = [[(_coords select 0),(_coords select 1),0],_amnt,5] call _fnc_positions_array;
		{
			_plant = createVehicle [_fiberplant, _x, [], 0, "CAN_COLLIDE"];
			_plant setPos _x;
			_uID = str(round(random 999999));
			_plant setVariable ["ObjectID", _uID, true];
			_plant setVariable ["ObjectUID", _uID, true];
			_plant setVariable ["lastUpdate",time,true];
		}forEach _plantpositions;
	};
	diag_log "[Random_Weed_Farm]: Weed Farm(s) Done ... Broadcasting locations for clients";
	PV_HALV_Broadcast_weedlocations = _locations;
	publicVariable "PV_HALV_Broadcast_weedlocations";
};