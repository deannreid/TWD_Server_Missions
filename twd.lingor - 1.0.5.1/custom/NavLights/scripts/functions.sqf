setNl = {
	private["_unit","_type"];
	_unit = _this select 0;
	_type = _this select 1;
	if(typeName _type != "STRING") exitWith {};
	_nul = [_unit] execVM format["custom\NavLights\%1.sqf", _type]; 
};