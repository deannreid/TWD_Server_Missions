private["_d1hGWzT","_WCRdhU","_OtdWo7r","_H9oe3vFBb7","_7XCexfq","_tZr9j","_p6L6D"]; 
_d1hGWzT = _this select 0; 
_WCRdhU = _this select 1; 

_OtdWo7r = [0.25, 0.0, 0.4]; 
if( _WCRdhU == 1 ) then { _OtdWo7r = [0.3, 0.0, 0.0]; }; 
if( _WCRdhU == 2 ) then { _OtdWo7r = [0.2, 0.0, 0.3]; }; 
if( _WCRdhU == 3 ) then { _OtdWo7r = [0.0, 0.0, 0.3]; }; 
if( _WCRdhU == 4 ) then { _OtdWo7r = [0.0, 0.3, 0.0]; }; 
	_H9oe3vFBb7 = 0.02; 
if( _WCRdhU == 1 ) then { _H9oe3vFBb7 = 0.02; }; 
	_7XCexfq = [0.0, 0.0, 0.0]; 
	_tZr9j = "#lightpoint" createVehicleLocal (getPosATL _d1hGWzT); 
	_tZr9j setLightColor _OtdWo7r; 
	_tZr9j setLightAmbient _OtdWo7r; 
	_tZr9j setLightBrightness _H9oe3vFBb7; 
	_tZr9j lightAttachObject [_d1hGWzT, [0,-0.5,-1.5]]; 
	
	
//neon_light = _tZr9j; 
while{ (alive _d1hGWzT) and (daytime > 20 || daytime < 4) and (_d1hGWzT getVariable["Neon", false]) and (_d1hGWzT getVariable["ShouldHaveLight", true])  } do { sleep 0.1; }; 
neon_tog = 0; 
deleteVehicle _tZr9j; 
_d1hGWzT setVariable["ShouldHaveLight", false, true];
SAND_spawnLight = nil;