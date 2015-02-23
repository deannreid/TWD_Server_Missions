#define GET_TEXT disableSerialization;_text=lbText[8888,(lbCurSel 8888)];{if(_text==(_x select 0))then{_spawn=_x;};}forEach _spawnPoints+_customBases;
#define GROUP_POS _leader=leader((uiNamespace getVariable "myGroupPos")select 0);_grid=getPosATL _leader;if(surfaceIsWater _grid)then{_grid=getPosASL _leader;};
#define PLOT_POS _plot=(uiNamespace getVariable "myPlotPos")select 0;_grid=getPosATL _plot;if(surfaceIsWater _grid)then{_grid=getPosASL _plot;};
#define UNLCK_PIC _lb lbSetPicture[_index,"\ca\ui\data\objective_complete_ca.paa"];

moveMap = {
	#include "spawnConfig.sqf"
	private ["_ctrl","_leader","_plot","_grid","_spawn","_text","_zoom"];
	GET_TEXT
	_zoom = .35;
	if (isNil "_spawn") then {_spawn = [[],getMarkerPos "center"];_zoom = 4;};
	_grid = _spawn select 1;
	if (count _spawn > 4) then {_grid = getMarkerPos "center";_zoom = 4;};
	if (_text == "Near MyGroup") then {GROUP_POS};
	if (_text == "Near MyPlot") then {PLOT_POS};
	_ctrl = (findDisplay 88890) displayCtrl 8890;
	_ctrl ctrlMapAnimAdd [1,_zoom,_grid];
	ctrlMapAnimCommit _ctrl;
};

spawnFill = {
	#include "spawnConfig.sqf"
	private ["_block","_bodies","_body","_bodyGroup","_humanity","_index","_lb","_lock","_text","_puid"];
	disableSerialization;
	_blockGroup = 0;
	_blockPlot = 0;
	_bodies = [];
	_lb = (findDisplay 88890) displayCtrl 8888;
	_humanity = player getVariable ["humanity",0];
	_puid = getPlayerUID player;
	{
		if ((!isNull _x) && {(_x getVariable["bodyUID","0"]) == _puid}) then {
			_bodies set [count _bodies,(getPosATL _x)];
			_bodyGroup = _x getVariable["bodyGroup",grpNull];
			if (count units _bodyGroup > 1) then {uiNamespace setVariable ["myGroupPos",[_bodyGroup]];};
		};
	} count allDead;
	if (_spawnNearPlot) then {
		_poles = (getMarkerPos "center") nearEntities ["Plastic_Pole_EP1_DZ",_mapRadius];
		{if ((_x getVariable ["ownerPUID","0"]) == _puid) exitWith {uiNamespace setVariable ["myPlotPos",[_x]];};} count _poles;
	};
	_block = [];
	if (count _bodies > 0) then {
		{
			_body = _x;
			{
				if ((count _x < 5) && {(_body distance (_x select 1)) < _bodyCheck}) then {_block set [count _block,(_x select 0)];};
			} forEach _spawnPoints;
			if (count (uiNamespace getVariable "myGroupPos") > 0) then {GROUP_POS if ((_body distance _grid) < _bodyCheck) then {_blockGroup = 1;};};
			if (count (uiNamespace getVariable "myPlotPos") > 0) then {PLOT_POS if ((_body distance _grid) < _bodyCheck) then {_blockPlot = 1;};};
		} count _bodies;
		if ((count _block > 0) || {_blockGroup > 0} || {_blockPlot > 0}) then {systemChat format ["Note: some spawns are blocked due to a body of yours within %1m",_bodyCheck];};
	};
	lbClear _lb;
	{
		_text = _x select 0;
		if !(_text in _block) then {
			_lock = 0;
			_level = _x select 2;
			_hlevel = _x select 3;
			if (((_hlevel < 0) && {_humanity >= _hlevel}) || 
				{(_level == 1) && {!(_puid in _spawnLevel1)}} || 
				{(_level == 2) && {!(_puid in _spawnLevel2)}} ||
				{(_level == 3) && {!(_puid in _spawnLevel3)}} ||
				{(_hlevel > 0) && {_humanity <= _hlevel}}
				) then {_lock=1;};
			_index = _lb lbAdd _text;
			UNLCK_PIC
			if (_lock > 0) then {_lb lbSetPicture [_index,"\ca\ui\data\ui_server_locked_ca.paa"];};
			if (count _x > 4) then {_lb lbSetColor [_index,[.97,.87,.35,1]];};
			if (_hlevel > 0) then {_lb lbSetColor [_index,[.38,.7,.9,1]];};
			if (_hlevel < 0) then {_lb lbSetColor [_index,[1,0,0,.8]];};
			if (_level > 0) then {_lb lbSetColor [_index,[0,1,0,.8]];};
		};
	} forEach _spawnPoints;
	if ((_blockGroup < 1) && {_spawnNearGroup} && {count (uiNamespace getVariable "myGroupPos") > 0}) then {_index = _lb lbAdd "Near MyGroup";_lb lbSetColor [_index,[1,.7,.4,1]];UNLCK_PIC};
	if ((_blockPlot < 1) && {count (uiNamespace getVariable "myPlotPos") > 0}) then {_index = _lb lbAdd "Near MyPlot";_lb lbSetColor [_index,[1,.7,.4,1]];UNLCK_PIC};
	if (_puid in _customBase) then {
		{if (_puid == _x) then {_index = _forEachIndex;};} forEach _customBase;
		_base = _customBases select _index;
		_index = _lb lbAdd (_base select 0);
		_lb lbSetColor [_index,[0,1,0,.8]];
		UNLCK_PIC
	};
	lbSort _lb;
};

spawnPick = {
	private ["_go","_humanity","_level","_spawn","_text","_puid"];
	#include "spawnConfig.sqf"
	_go = 1;
	GET_TEXT
	if (_text == "Near MyGroup") then {_spawn = [0,[],0,0];};
	if (_text == "Near MyPlot") then {_spawn = [0,[1],0,0];};
	if (isNil "_spawn") exitWith {systemChat "Select a spawn!";_go=0;};
	if (count _spawn > 2) then {
		_level = _spawn select 2;
		_hlevel = _spawn select 3;
		_humanity = player getVariable ["humanity",0];
		_puid = getPlayerUID player;
		if ((_hlevel < 0) && {_humanity >= _hlevel}) exitWith {systemChat format["Your humanity must be less than %1 for this spawn.",_hlevel];_go=0;};
		if ((_hlevel > 0) && {_humanity <= _hlevel}) exitWith {systemChat format["Your humanity must be greater than %1 for this spawn.",_hlevel];_go=0;};
		if ((_level == 1) && {!(_puid in _spawnLevel1)}) exitWith {systemChat "This spawn is for level 1 VIPs only.";_go=0;};
		if ((_level == 2) && {!(_puid in _spawnLevel2)}) exitWith {systemChat "This spawn is for level 2 VIPs only.";_go=0;};
		if ((_level == 3) && {!(_puid in _spawnLevel3)}) exitWith {systemChat "This spawn is for level 3 VIPs only.";_go=0;};
	};
	if (_go > 0) then {uiNamespace setVariable ["spawnChoice",_spawn];};
};

private ["_count","_find","_leader","_ok","_plot","_grid","_spawn","_spot"];
#include "spawnConfig.sqf"
uiNamespace setVariable ["haloChoice",-1];
uiNamespace setVariable ["spawnChoice",[]];
uiNamespace setVariable ["myGroupPos",[]];
uiNamespace setVariable ["myPlotPos",[]];

while {count (uiNamespace getVariable "spawnChoice") < 1} do {
	AT_SPAWN
	if (!dialog) then {cutText ["","BLACK OUT",0];_i="createDialog";createDialog "SpawnDialog";call spawnFill;call moveMap;};
	uiSleep 1;
};
closeDialog 0;
moveMap=nil;spawnFill=nil;spawnPick=nil;

_spawn = uiNamespace getVariable "spawnChoice";
_grid = _spawn select 1;
if (count _spawn > 3) then {
	if (count _spawn > 4) then {_grid = _grid call BIS_fnc_selectRandom;};
	if (count _grid == 0) then {GROUP_POS};
	if (count _grid == 1) then {PLOT_POS};
	_count = 0;
	_find = true;
	while {_find && {_count < 99}} do {
		_spot = [_grid,0,_spawnRadius,10,0,2000,0] call BIS_fnc_findSafePos;
		_ok = (_spot distance _grid) < _spawnRadius;
		_spot set [2,0];
		if ((((ATLtoASL _spot) select 2) > 2.5) &&
			{({isPlayer _x} count (_spot nearEntities ["Man",100])) < 1} && 
			{count (nearestObjects [_spot,["Plastic_Pole_EP1_DZ"],45]) < 1} && {_ok}) then {_find = false;};
		_count = _count + 1;
	};
	_grid = _spot;
};