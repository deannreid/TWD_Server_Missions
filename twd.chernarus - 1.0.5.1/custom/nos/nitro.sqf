private ["_Vehicle","_theCar"];
//https://community.bistudio.com/wiki/ListOfKeyCodes
_Vehicle = _this select 3; 
_theCar = _Vehicle select 0; 
if (!NITRO_Cond) then {
	_theCar setVariable ["soundFX", 1, true];
	_theCar removeAction s_player_nitrobooston;
	s_player_nitrobooston = -1;
	NITRO_Cond = true;
	systemChat ("NOS boost - Left shift to go fast, space for brakes!");
	waituntil {!isnull (finddisplay 46)};
	boosterkey = (findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call boosterFNC;false;"];
	boosterFNC = 
	{
		private ["_playsoundFX","_theCar","_fuel","_isNitroInstalled"];
		_theCar = vehicle player;
		_isNitroInstalled = _theCar getVariable["nitroinstalled",0];
		_fuel = fuel _theCar_player;
		if(_theCar == player)exitwith{};
		if((isEngineOn _theCar) and (_isNitroInstalled == 1)) then 
		{
			switch (_this) do 
			{
				case 42:
				{
					_playsoundFX = _theCar getVariable["soundFX",1];
					if (_playsoundFX == 1) then {
						[nil,_theCar, rSAY,["nitro", 100]] call RE; 
						[player,25,true,(getPosATL player)] spawn player_alertZombies;
						_theCar setVariable ["soundFX", 0, true];
					};
					_theCar setVelocity [(velocity _theCar select 0) * 1.025, (velocity _theCar select 1) * 1.025, (velocity _theCar select 2) * 0.99];
					_theCar setfuel (_fuel - 0.0002);
				};
				case 57:
				{
					_theCar SetVelocity [(velocity _theCar select 0) * 0.95, (velocity _theCar select 1) *0.95, (velocity _theCar select 2) * 0.99];
				};
			};
		};
	};
} else {
	_theCar setVariable ["soundFX", 0, true];
	_theCar removeAction s_player_nitrobooston;
	s_player_nitrobooston = -1;
	NITRO_Cond = false;
	systemChat ("NOS boost - deactivated");
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", boosterkey];
	//_theCar = nil;
	_theCar setVariable ["nitroinstalled", 1, true];
};
