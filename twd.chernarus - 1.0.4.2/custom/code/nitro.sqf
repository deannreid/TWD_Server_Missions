private ["_DoGF","_aeN7iLu"];
//https://community.bistudio.com/wiki/ListOfKeyCodes
_DoGF = _this select 3; 
_aeN7iLu = _DoGF select 0; 
if (!NITRO_Cond) then {
	_aeN7iLu setVariable ["soundFX", 1, true];
	_aeN7iLu removeAction s_player_nitrobooston;
	s_player_nitrobooston = -1;
	NITRO_Cond = true;
	systemChat ("NOS boost - Left shift to go fast, space for brakes!");
	waituntil {!isnull (finddisplay 46)};
	boosterkey = (findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call boosterFNC;false;"];
	boosterFNC = 
	{
		private ["_playsoundFX","_aeN7iLu","_fuel","_isNitroInstalled"];
		_aeN7iLu = vehicle player;
		_isNitroInstalled = _aeN7iLu getVariable["nitroinstalled",0];
		_fuel = fuel _vehicle_player;
		if(_aeN7iLu == player)exitwith{};
		if((isEngineOn _aeN7iLu) and (_isNitroInstalled == 1)) then 
		{
			switch (_this) do 
			{
				case 42:
				{
					_playsoundFX = _aeN7iLu getVariable["soundFX",1];
					if (_playsoundFX == 1) then {
						[nil,_aeN7iLu, rSAY,["nitro", 100]] call RE; 
						[player,25,true,(getPosATL player)] spawn player_alertZombies;
						_aeN7iLu setVariable ["soundFX", 0, true];
					};
					_aeN7iLu setVelocity [(velocity _aeN7iLu select 0) * 1.025, (velocity _aeN7iLu select 1) * 1.025, (velocity _aeN7iLu select 2) * 0.99];
					_aeN7iLu setfuel (_fuel - 0.0002);
				};
				case 57:
				{
					_aeN7iLu SetVelocity [(velocity _aeN7iLu select 0) * 0.95, (velocity _aeN7iLu select 1) *0.95, (velocity _aeN7iLu select 2) * 0.99];
				};
			};
		};
	};
} else {
	_aeN7iLu setVariable ["soundFX", 0, true];
	_aeN7iLu removeAction s_player_nitrobooston;
	s_player_nitrobooston = -1;
	NITRO_Cond = false;
	systemChat ("NOS boost - deactivated");
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", boosterkey];
	//_aeN7iLu = nil;
	_aeN7iLu setVariable ["nitroinstalled", 1, true];
};
