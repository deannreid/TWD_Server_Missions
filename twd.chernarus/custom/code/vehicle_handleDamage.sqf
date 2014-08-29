private["_selection","_state","_strH","_total","_unit"];
//***Zupa Config ****//

// vehicles locked all over the map
_godmodeVechilesEverywhere = false; // for everyone

// If someone is in the car, it always gets destroyed.
_onlyLockedVehicles = true; // PLOTPOLE AREA: only locked vehicles = true, all vehicles = false

// donator plotpole only works with PLOT FOR LIFE, set FALSE if you dont have it.

_donatorsPlots = false; // True = only godmode vehicles for donaters in the list, False = godmode for every guy.
?
plotDonators = ["0"]; // PUID's of poeple who donated for plotpole

_safeZoneGodVehicle = true; // godmode vehicles in safezones.

safezones = [ // Chernarus safezone area's - change these to other coordinates for other maps.
    [[6315.88,7791.3],100,"Stary"],
    [[4063.4226,11664.19],100,"Bash"],
    [[11447.472,11364.504],100,"Klen"],
    [[5070.75,9729.54],100,"NEAF"],
    [[12944.227,12766.889],100,"Hero"],
    [[1606.6443,7803.5156],100,"Bandit"],
	[[5054.0127,9736.8398],100,"NWAF"]
];

//***END Config ****//

_unit = _this select 0;
_selection = _this select 1;
_total = _this select 2;
_state = false;

if ((locked _unit && _godmodeVechilesEverywhere  && (count (crew _unit)) == 0)  ) exitWith {_state = true;};


if(_safeZoneGodVehicle )then{
{if ((_unit distance (_x select 0)) < 120) exitWith {_state = true;};} forEach safezones;
};

if (_state) exitWith {};
_plots = nearestObjects [_unit, ["Plastic_Pole_EP1_DZ"],70];	
if((count(_plots) > 0))then{		
	_thePlot = _plots select 0;
	_plotOwner = _thePlot getVariable ["ownerPUID",0];
if (((locked _unit || !_onlyLockedVehicles ) && (count (crew _unit)) == 0) && (count(nearestObjects [_unit, ["Plastic_Pole_EP1_DZ"],90]) > 0)  && (  !(_donatorsPlots) || (_plotOwner in plotDonators))) exitWith {_state = true;};
};

if (_state) exitWith {};
if (_selection != "") then {_strH = "hit_" + _selection;} else {_strH = "totalDmg";};
if (_total >= 0.98) then {_total = 1.0;};
 PVDZE_send = [_unit,"VehHandleDam",_this];
 publicVariableServer "PVDZE_send";	
_total