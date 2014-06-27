private ["_wdNe51","_CMAb","_rHwKw0Z","_bAogWbT"];
_CMAb = _this select 3; 
_rHwKw0Z = _CMAb select 0; 
_bAogWbT = _rHwKw0Z getVariable["Neon", false]; 

if( !_bAogWbT ) then { 
	_rHwKw0Z setVariable["Neon", true, true]; 
	_wdNe51 = _rHwKw0Z getVariable "NeonColour";
	if (isNil {_wdNe51}) then { _wdNe51 = [1, 2, 3, 4] call BIS_fnc_selectRandom; };
	if( _wdNe51 > 4 ) then { _wdNe51 = 1; }; 
	_rHwKw0Z setVariable["NeonColour", _wdNe51, true]; 
	_rHwKw0Z setVariable["ShouldHaveLight", true, true];
	neon_toggle = 1; 
	[_rHwKw0Z, _wdNe51] spawn spawnObjLight; 
	
	SAND_spawnLight = [_rHwKw0Z, _wdNe51]; 
	publicVariable "SAND_spawnLight"; 
	
	while{ (alive _rHwKw0Z) and (neon_toggle != 0) and (_rHwKw0Z getVariable["Neon", false]) and (_rHwKw0Z getVariable["ShouldHaveLight", true]) } do { sleep 0.2; }; 
	if( neon_toggle != 0 ) then { neon_toggle = 0; 	_rHwKw0Z setVariable["ShouldHaveLight", false, true]; }; 
	
} else { 
	_rHwKw0Z setVariable["Neon", false, true]; 
	if( neon_toggle != 0 ) then { neon_toggle = 0; 	_rHwKw0Z setVariable["ShouldHaveLight", false, true];  }; 
};