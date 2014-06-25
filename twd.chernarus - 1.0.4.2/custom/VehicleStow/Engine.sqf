// Code based on BTK Cargo script.

//// Variables
_Transporter = _this select 0;
_TransporterType = typeOf _Transporter;
_TransporterName = getText (configFile >> "CfgVehicles" >> (typeOf _Transporter) >> "displayName");
_Unit = _this select 1;
_Action = _this select 2;
_Selected = (_this select 3) select 0;


//// Unload function
if (_Selected == "DeployVehicle") exitWith {
	
	_Transporter removeAction _Action;
	DeployVehicle = true;

	_Transporter setVariable ["stow_ActionAdded", false];
	_Transporter setVariable ["stow_TransporterStowed", false];
};

/******************************************************************************
* Stow the vehicle.
******************************************************************************/
if ((_Selected == "stow")) exitWith {
	
	//// Mark it as stowed.
	_Transporter setVariable ["stow_TransporterStowed", true];
	
	//// remove the Action
	_Transporter removeAction _Action;

	//// Animate ramp
	sleep 1;

	// Remove the fuel.
	_Transporter setFuel 0;
	
	// Execute the stow script for whichever vehicle we're using.
	if (_TransporterType == "AH1Z") then {
		_stow = [_Transporter, 1] execVM "\ca\air\Scripts\AH1Z_fold.sqf";	
	};

	if (_TransporterType == "MV22") then {
		_stow = [_Transporter, 1] execVM "\ca\air2\mv22\scripts\pack.sqf";
	};

	if (_TransporterType == "UH1Y") then {
		_stow = [_Transporter, 1] execVM "\ca\air2\UH1Y\Scripts\fold.sqf";	
	};

	//// hint stowed.
	hint parseText format ["
	<t align='left' color='#e5b348' size='1.2'><t shadow='1'shadowColor='#000000'>Stowing Vehicle</t></t>
	<img color='#ffffff' image='custom\VehicleStow\Images\img_line_ca.paa' align='left' size='0.79' />
	<t align='left' color='#eaeaea' size='1.0'><t color='#fdd785'>%1</t> stowed.</t>
	<img color='#ffffff' image='custom\VehicleStow\Images\img_line_ca.paa' align='left' size='0.79' />
	",_TransporterName];

	//// add Deploy action.  Only available with engine off and outside vehicle.
	_UnloadAction = _Transporter addAction [("<t color=""#00A0FA"">" + ("Deploy Vehicle") + "</t>"), "custom\VehicleStow\Engine.sqf",["DeployVehicle"], 5,false,true,"","(!isEngineOn _target) && !(vehicle _this == _target)"]; 

	//// Wait until deploy
	waitUntil {DeployVehicle || !(alive _Transporter)};

	
	//// If destroyed
	if (!(alive _Transporter)) exitWith {};
	

	//// Reset variables
	DeployVehicle = false;

	//// Animate
	sleep 1;

	// Refuel
	_Transporter setFuel 1;
	
	// Deploy.
	if (_TransporterType == "AH1Z") then {
		_stow = [_Transporter, 0] execVM "\ca\air\Scripts\AH1Z_fold.sqf";	
	};

	if (_TransporterType == "MV22") then {
		_stow = [_Transporter, 0] execVM "\ca\air2\mv22\scripts\pack.sqf";
	};

	if (_TransporterType == "UH1Y") then {
		_stop = [_Transporter, 0] execVM "\ca\air2\UH1Y\Scripts\fold.sqf";	
	};

	/// Hint deployed
	hint parseText format ["
	<t align='left' color='#e5b348' size='1.2'><t shadow='1'shadowColor='#000000'>Deploying Vehicle</t></t>
	<img color='#ffffff' image='custom\VehicleStow\Images\img_line_ca.paa' align='left' size='0.79' />
	<t align='left' color='#eaeaea' size='1.0'><t color='#fdd785'>%1</t> deployed.</t>
	<img color='#ffffff' image='custom\VehicleStow\Images\img_line_ca.paa' align='left' size='0.79' />
	",_TransporterName];

};


