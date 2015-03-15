private ["_OpenMenuKey","_LAdmins","_NAdmins","_SAdmins","_adminGUI","_broadcastToolUse","_majorLog","_minorLog","_unauthorisedUse","_antiTeleport","_osLinux","_gmEpoch","_gmILife","_gmEvolve","_ZSC","_P4L","_puid","_varErr1","_varErr2","_varErr3","_varErr4","_varErr5","_varErr6","_varErr7","_varErr8","_varErr9","_varErr10","_varErr11","_varErr12","_varErr13","_guiFrameColour","_varErr14","_guiTitleTextColour","_varErr15","_guiTitleBGColour","_varErr16","_guiMainTextNonToggleColour","_varErr17","_guiMainTextToggleColour","_varErr18","_guiPlayerTextColour","_varErr19","_varErr20","_varErr21"];
#include "NATConfig.sqf"

diag_log ("NATI: Waiting for BIS_fnc_init");
	waitUntil {sleep 0.5;!isNil "BIS_fnc_init";};

/*
 * Variable Check 
 */ 
if (isNil '_OpenMenuKey') then {_OpenMenuKey = 0x3C;_varErr1 =true;};
if (_varErr1) then {diag_log "Your Config File is missing Variable  |OpenMenuKey|";};
if (isNil '_LAdmins') then {_LAdmins = [];_varErr2 =true;};
if (_varErr2) then {diag_log "Your Config File is missing Variable  |LAdmins|";};
if (isNil '_NAdmins') then {_NAdmins = [];_varErr3 =true;};
if (_varErr3) then {diag_log "Your Config File is missing Variable  |NAdmins|";};
if (isNil '_SAdmins') then {_SAdmins = [];_varErr4 =true;};
if (_varErr4) then {diag_log "Your Config File is missing Variable  |SAdmins|";};
if (isNil '_majorLog') then {_majorLog = true;_varErr5 =true;};
if (_varErr5) then {diag_log "Your Config File is missing Variable  |majorLog|";};
if (isNil '_minorLog') then {_minorLog = true;_varErr6 =true;};
if (_varErr6) then {diag_log "Your Config File is missing Variable  |minorLog|";};
if (isNil '_unauthorisedUse') then {_unauthorisedUse = true;_varErr7 =true;};
if (_varErr7) then {diag_log "Your Config File is missing Variable  |unauthorisedUse|";};
if (isNil '_antiTeleport') then {_antiTeleport = true;_varErr8 =true;};
if (_varErr8) then {diag_log "Your Config File is missing Variable  |antiTeleport|";};
if (isNil '_osLinux') then {_osLinux = false;_varErr9 =true;};
if (_varErr9) then {diag_log "Your Config File is missing Variable  |osLinux|";};
if (isNil '_gmEpoch') then {_gmEpoch = false;_varErr10 =true;};
if (_varErr10) then {diag_log "Your Config File is missing Variable  |gmEpoch|";};
if (isNil '_gmEvolve') then {_gmEvolve = false;_varErr11 =true;};
if (_varErr11) then {diag_log "Your Config File is missing Variable  |gmEvolve|";};
if (isNil '_gmILife') then {_gmILife = false;_varErr11 =true;};
if (_varErr11) then {diag_log "Your Config File is missing Variable  |gmILife|";};
if (isNil '_ZSC') then {_ZSC = false;_varErr12 =true;};
if (_varErr12) then {diag_log "Your Config File is missing Variable  |ZSC|";};
if (isNil '_P4L') then {_P4L = false;_varErr13 =true;};
if (_varErr13) then {diag_log "Your Config File is missing Variable  |ZSC|";};
if (isNil '_guiFrameColour') then {_guiFrameColour = [0,0.36,0.85,1];_varErr14 =true;};
if (_varErr14) then {diag_log "Your Config File is missing Variable  |guiFrameColour|";};
if (isNil '_guiTitleTextColour') then {_guiTitleTextColour = [1,1,1,1];_varErr15 =true;};
if (_varErr15) then {diag_log "Your Config File is missing Variable  |guiTitleTextColour|";};
if (isNil '_guiTitleBGColour') then {_guiTitleBGColour = [0,0.1,0,1];_varErr16 =true;};
if (_varErr16) then {diag_log "Your Config File is missing Variable  |ZSC|";};
if (isNil '_guiMainTextNonToggleColour') then {_guiMainTextNonToggleColour = [0.3,0.3,0.3,1];_varErr17 =true;};
if (_varErr17) then {diag_log "Your Config File is missing Variable  |guiMainTextNonToggleColour|";};
if (isNil '_guiMainTextToggleColour') then {_guiMainTextToggleColour = [0.5,0.5,0.5,1];_varErr18 =true;};
if (_varErr18) then {diag_log "Your Config File is missing Variable  |guiMainTextToggleColour|";};
if (isNil '_guiPlayerTextColour') then {_guiPlayerTextColour = [0.5,0.5,0.5,1];_varErr19 =true;};
if (_varErr19) then {diag_log "Your Config File is missing Variable  |guiPlayerTextColour|";};
if (isNil '_adminGUI') then {_adminGUI = true;_varErr20 =true;};
if (_varErr20) then {diag_log "Your Config File is missing Variable  |adminGUI|";};
if (isNil '_broadcastToolUse') then {_broadcastToolUse = true;_varErr21 =true;};
if (_varErr21) then {diag_log "Your Config File is missing Variable  |broadcastToolUse|";};

//Check Admins
	_puid = getPlayerUID player; 
	noxLowList = _LAdmins;	
	noxNormalList = _NAdmins; 
	noxSuperList = _SAdmins;
	noxAllAdmins = _LAdmins + _NAdmins + _SAdmins;

	#include "NATAH.sqf"
	uiSleep 10;
		if (NoxAH) then {
						diag_log "NOXAT - AntiCheat Loaded";
		} else {
				diag_log "NOXAT - AntiCheat Failed to load correctly and could make your server vulnerable.";
		};


diag_log ("NATI: Waiting for NAT_AH_init");
	waitUntil {sleep 0.5;!isNil "NAT_AH_init";};
		diag_log "NOXAT - Init AdminStart";



/*
	//TODO: Redo code layout to make it more friendly to my brain.
	//    : Setup Console Debug Messages to double check everythings doing what it is meant too.
*/
adminCode = {
diag_log "adminCode";
    adminMainSetup = {
	//Insert Setup Here
	};

	subMenu = false;
	getPlayerDetails = {		
	diag_log "Getting Player Details";
        _player = "";
		_playerList = lbtext [1, (lbCurSel 1)];

		if (_playerList != "") then {
			{
				_userID = getPlayerUID _pid;
				if (_userID != "") then
				{
					if (_playerList == format["%1",_name _x]) then
					{
					_name = name _x;
					_adminName = _name;
					_adminUID = _userID;
					_adminVehicle = vehicle _x;
					_adminPosition = getPosAtl _x;
					};
				};		
			} forEach playableUnits;
		};
		_name;
	};

	boxPlayerFill = {
	diag_log "boxPlayerFill Called";
		disableSerialization;
		_ctrl = 1 call getControl; //Left Box
		lbclear _ctrl;
		_ctrl ctrlSetFont "EtelkaNarrowMediumPro";
		_setup = [];
		_userID = getPlayerUID _x;
			#DEFINE ctrlSizeColour	 _ctrl lbSetData [(lbsize _ctrl)-1, "1"]; _ctrl lbSetColor [(lbsize _ctrl)-1, _guiPlayerTextColour];
		if(getPlayerUID player in noxSuperList) then {
			_superadmin = {getPlayerUID _x in noxSuperList} count _setup;
				_ctrl lbAdd "=== Super Admins ===";
				_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
				{
					if(_userID in noxSuperList) then {
						_setup = _setup - [_x];
						_ctrl lbAdd format["%1",_name _x];
						ctrlSizeColour
					};
				} count _setup;
		};
		
		if(getPlayerUID player in noxNormalList) then {
			_normalAdmin = {getPlayerUID _x in noxNormalList} count _setup;
				_ctrl lbAdd "=== Standard Admins ===";
				_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
				{
					if(_userID in noxNormalList) then {
						_setup = _setup - [_x];
						_ctrl lbAdd format["%1",_name _x];
						ctrlSizeColour

					};
				} count _setup;
		};	
		
		if(getPlayerUID player in noxLowList) then {		
			_lowAdmin = {getPlayerUID _x in noxLowList} count _setup;
				_ctrl lbAdd "=== Low Admins ===";
				_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
				{
					if(_userID in noxLowList) then {
						_setup = _setup - [_x];
						_ctrl lbAdd format["%1",_name _x];
						ctrlSizeColour
					};
				} count _setup;
		};
		
		_NormalPlayer = {(!(getPlayerUID _x in noxLowList && noxNormalList && noxSuperList))} count _setup;
		if(_NormalPlayer => 0) then {
			_ctrl lbAdd "=== Member ===";
			_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
			_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
			{
					_setup = _setup - [_x];
					_ctrl lbAdd format["%1",_name _x];
					ctrlSizeColour
			} count _setup;
		};
	};

boxAdminFill {
	noxadmin = [];
	superAdminMenu {
	diag_log "superAdminMenu Called";
		noxadmin = noxadmin + ["                 Map Markers                 ",[]];		
		noxadmin = noxadmin + ["Player Markers",call compile preprocessFileLineNumbers _plrMarker,_guiMainTextToggleColour];	
		noxadmin = noxadmin + ["Corpse Markers",call compile preprocessFileLineNumbers _corMarker,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["Wreck Markers",call compile preprocessFileLineNumbers _wreMarker,_guiMainTextToggleColour];	
		noxadmin = noxadmin + ["Tent Markers",call compile preprocessFileLineNumbers _tntMarker,_guiMainTextToggleColour];
			if (_isEpoch) then
			{
				noxadmin = noxadmin + ["Safe Markers",call compile preprocessFileLineNumbers _sfeMarker,_guiMainTextToggleColour];		
				noxadmin = noxadmin + ["Plot Markers",call compile preprocessFileLineNumbers _pltMarker,_guiMainTextToggleColour];
			};
		noxadmin = noxadmin + ["Vehicle Markers (Unlocked)",call compile preprocessFileLineNumbers _vulMarker,_guiMainTextToggleColour];	
		noxadmin = noxadmin + ["Vehicle Markers (Locked)",call compile preprocessFileLineNumbers _vlMarker,_guiMainTextToggleColour];	

		noxadmin = noxadmin + ["",[]];
													
		noxadmin = noxadmin + ["                 Teleport                 ",[]];		
		noxadmin = noxadmin + ["Teleport to Player",call compile preprocessFileLineNumbers _plrTP2,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Teleport Player to You",call compile preprocessFileLineNumbers _plrTP2S,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Map Teleport",call compile preprocessFileLineNumbers _plrTPWM,_guiMainTextNonToggleColour];	

		noxadmin = noxadmin + ["","",[]];
		noxadmin = noxadmin + ["                 Admin Tools                 ",[]];		
		noxadmin = noxadmin + ["Kick Player",call compile preprocessFileLineNumbers _admPKick,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Ban Player",call compile preprocessFileLineNumbers _admPBan,_guiMainTextNonToggleColour];		
		noxadmin = noxadmin + ["Kill Player",call compile preprocessFileLineNumbers _admPKill,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Remove Player Gear",call compile preprocessFileLineNumbers _admRPG,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Spectate Player",call compile preprocessFileLineNumbers _admSpec,_guiMainTextNonToggleColour];	

		noxadmin = noxadmin + ["","",[]];		
		noxadmin = noxadmin + ["                 Player Tools                 ",[]];	
		noxadmin = noxadmin + ["Heal Player",call compile preprocessFileLineNumbers _plrHeal,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Zombie Shield",call compile preprocessFileLineNumbers _plrZS,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["Zombie Remove Aggro",call compile preprocessFileLineNumbers _plrNZA,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["Infinite Ammo",call compile preprocessFileLineNumbers _plrUA,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["No Recoil",call compile preprocessFileLineNumbers _plrRR,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["God",call compile preprocessFileLineNumbers _plrGod,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["Car God",call compile preprocessFileLineNumbers _plrCGod,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["Invisibility",call compile preprocessFileLineNumbers _plrHarryPotter,_guiMainTextToggleColour];		
			if (_isEpoch) then
			{	
				noxadmin = noxadmin + ["Remove Build Limit",call compile preprocessFileLineNumbers _plrRBL,_guiMainTextToggleColour];		
				noxadmin = noxadmin + ["1 Step Building",call compile preprocessFileLineNumbers _plr1SB,_guiMainTextToggleColour];		
				noxadmin = noxadmin + ["No Plot Pole",call compile preprocessFileLineNumbers _plrRPP,_guiMainTextToggleColour];		
				noxadmin = noxadmin + ["No Overburden",call compile preprocessFileLineNumbers _plrROB,_guiMainTextToggleColour];	
			};
		noxadmin = noxadmin + ["","",[]];	
		noxadmin = noxadmin + ["                 Vehicle Tools                 ",[]];	
		noxadmin = noxadmin + ["Point to Repair (Perm)",call compile preprocessFileLineNumbers _p2rp,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Point to Repair (Temp)",call compile preprocessFileLineNumbers _p2rt,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Point to Delete (Perm)",call compile preprocessFileLineNumbers _p2dp,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Point to Delete (Temp)",call compile preprocessFileLineNumbers _p2dt,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Flip Vehicle",call compile preprocessFileLineNumbers _p2f,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Refuel Vehicle",call compile preprocessFileLineNumbers _p2r,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["","",[]];
		noxadmin = noxadmin + ["Lock Vehicle (1)",call compile preprocessFileLineNumbers _vLock,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Unlock Vehicle (2)",call compile preprocessFileLineNumbers _vUnlock,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["","",[]];	
		noxadmin = noxadmin + ["Spawn Vehicle",call compile preprocessFileLineNumbers _vSpawnT,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Spawn Vehicle HIVE",call compile preprocessFileLineNumbers _vSpawnP,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["","",[]];	
		noxadmin = noxadmin + ["                 Crates                 ",[]];	
		noxadmin = noxadmin + ["---Private",[]];	
		noxadmin = noxadmin + ["Weapons & Ammo",call compile preprocessFileLineNumbers _prvWcrate,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Items",call compile preprocessFileLineNumbers _prvIcrate,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["All in One",call compile preprocessFileLineNumbers _prvAIOcrate,_guiMainTextNonToggleColour];
			if (_isEpoch) then
			{	
				noxadmin = noxadmin + ["Epoch Crate",call compile preprocessFileLineNumbers _prvBcrate,_guiMainTextNonToggleColour];
			};
		noxadmin = noxadmin + ["Backpack Crate",call compile preprocessFileLineNumbers _prvBPcrate,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["","",[]];	
		noxadmin = noxadmin + ["---Public",[]];	
		noxadmin = noxadmin + ["Weapons & Ammo",call compile preprocessFileLineNumbers _pubWcrate,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Items",call compile preprocessFileLineNumbers _pubIcrate,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["All in One",call compile preprocessFileLineNumbers _pubAIOcrate,_guiMainTextNonToggleColour];
			if (_isEpoch) then
			{	
				noxadmin = noxadmin + ["Epoch Crate",call compile preprocessFileLineNumbers _pubBcrate,_guiMainTextNonToggleColour];
			};
		noxadmin = noxadmin + ["Backpack Crate",call compile preprocessFileLineNumbers _pubBPcrate,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["","",[]];
		noxadmin = noxadmin + ["                 Weather/Time                 ",[]];	

		noxadmin = noxadmin + ["","",[]];	
		noxadmin = noxadmin + ["                 HouseKeeping                 ",[]];
		noxadmin = noxadmin + ["Delete Zombies",call compile preprocessFileLineNumbers _hkDelZeds ,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Delete Dead Bodys",call compile preprocessFileLineNumbers _hkDelDB,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Delete Loot",call compile preprocessFileLineNumbers _hkDelLoot,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Delete Weapon Crates",call compile preprocessFileLineNumbers _hkDelWC,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Delete Destroyed Vehicles",call compile preprocessFileLineNumbers _hkDelDV,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Reset Vehicles (Deletes all vehicles with ID:0 won't Respawn until restart)",call compile preprocessFileLineNumbers _hkResetVehicles ,_guiMainTextNonToggleColour];
	};

	normalAdminMenu {
	diag_log "normalAdminMenu Called";
		noxadmin = noxadmin + ["                 Map Markers                 ",[]];		
		noxadmin = noxadmin + ["Player Markers",call compile preprocessFileLineNumbers _plrMarker,_guiMainTextToggleColour];	
		noxadmin = noxadmin + ["Corpse Markers",call compile preprocessFileLineNumbers _corMarker,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["Wreck Markers",call compile preprocessFileLineNumbers _wreMarker,_guiMainTextToggleColour];	
		noxadmin = noxadmin + ["Tent Markers",call compile preprocessFileLineNumbers _tntMarker,_guiMainTextToggleColour];
			if (_isEpoch) then
			{
				noxadmin = noxadmin + ["Safe Markers",call compile preprocessFileLineNumbers _sfeMarker,_guiMainTextToggleColour];		
				noxadmin = noxadmin + ["Plot Markers",call compile preprocessFileLineNumbers _pltMarker,_guiMainTextToggleColour];
			};
		noxadmin = noxadmin + ["Vehicle Markers (Unlocked)",call compile preprocessFileLineNumbers _vulMarker,_guiMainTextToggleColour];	
		noxadmin = noxadmin + ["Vehicle Markers (Locked)",call compile preprocessFileLineNumbers _vlMarker,_guiMainTextToggleColour];	

		noxadmin = noxadmin + ["",[]];	
		noxadmin = noxadmin + ["                 Teleport                 ",[]];		
		noxadmin = noxadmin + ["Teleport to Player",call compile preprocessFileLineNumbers _plrTP2,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Teleport Player to You",call compile preprocessFileLineNumbers _plrTP2S,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Map Teleport",call compile preprocessFileLineNumbers _plrTPWM,_guiMainTextNonToggleColour];	

		noxadmin = noxadmin + ["","",[]];
		noxadmin = noxadmin + ["                 Admin Tools                 ",[]];		
		noxadmin = noxadmin + ["Kick Player",call compile preprocessFileLineNumbers _admPKick,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Kill Player",call compile preprocessFileLineNumbers _admPKill,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Remove Player Gear",call compile preprocessFileLineNumbers _admRPG,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Spectate Player",call compile preprocessFileLineNumbers _admSpec,_guiMainTextNonToggleColour];	

		noxadmin = noxadmin + ["","",[]];		
		noxadmin = noxadmin + ["                 Player Tools                 ",[]];	
		noxadmin = noxadmin + ["Heal Player",call compile preprocessFileLineNumbers _plrHeal,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Zombie Shield",call compile preprocessFileLineNumbers _plrZS,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["Zombie Remove Aggro",call compile preprocessFileLineNumbers _plrNZA,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["Infinite Ammo",call compile preprocessFileLineNumbers _plrUA,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["No Recoil",call compile preprocessFileLineNumbers _plrRR,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["God",call compile preprocessFileLineNumbers _plrGod,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["Car God",call compile preprocessFileLineNumbers _plrCGod,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["Invisibility",call compile preprocessFileLineNumbers _plrHarryPotter,_guiMainTextToggleColour];		
			if (_isEpoch) then
			{	
				noxadmin = noxadmin + ["Remove Build Limit",call compile preprocessFileLineNumbers _plrRBL,_guiMainTextToggleColour];		
				noxadmin = noxadmin + ["1 Step Building",call compile preprocessFileLineNumbers _plr1SB,_guiMainTextToggleColour];		
				noxadmin = noxadmin + ["No Plot Pole",call compile preprocessFileLineNumbers _plrRPP,_guiMainTextToggleColour];		
				noxadmin = noxadmin + ["No Overburden",call compile preprocessFileLineNumbers _plrROB,_guiMainTextToggleColour];	
			};
		noxadmin = noxadmin + ["","",[]];	
		noxadmin = noxadmin + ["                 Vehicle Tools                 ",[]];	
		noxadmin = noxadmin + ["Point to Repair (Perm)",call compile preprocessFileLineNumbers _p2rp,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Point to Repair (Temp)",call compile preprocessFileLineNumbers _p2rt,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Point to Delete (Temp)",call compile preprocessFileLineNumbers _p2dt,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Flip Vehicle",call compile preprocessFileLineNumbers _p2f,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Refuel Vehicle",call compile preprocessFileLineNumbers _p2r,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["","",[]];
		noxadmin = noxadmin + ["Lock Vehicle (1)",call compile preprocessFileLineNumbers _vLock,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Unlock Vehicle (2)",call compile preprocessFileLineNumbers _vUnlock,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["","",[]];	
		noxadmin = noxadmin + ["Spawn Vehicle",call compile preprocessFileLineNumbers _vSpawnT,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Spawn Vehicle HIVE",call compile preprocessFileLineNumbers _vSpawnP,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["","",[]];	
		noxadmin = noxadmin + ["                 Crates                 ",[]];	
		noxadmin = noxadmin + ["---Private",[]];	
		noxadmin = noxadmin + ["Weapons & Ammo",call compile preprocessFileLineNumbers _prvWcrate,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Items",call compile preprocessFileLineNumbers _prvIcrate,_guiMainTextNonToggleColour];
			if (_isEpoch) then
			{	
				noxadmin = noxadmin + ["Epoch Crate",call compile preprocessFileLineNumbers _prvBcrate,_guiMainTextNonToggleColour];
			};
		noxadmin = noxadmin + ["Backpack Crate",call compile preprocessFileLineNumbers _prvBPcrate,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["","",[]];	
		noxadmin = noxadmin + ["---Public",[]];	
		noxadmin = noxadmin + ["Weapons & Ammo",call compile preprocessFileLineNumbers _pubWcrate,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Items",call compile preprocessFileLineNumbers _pubIcrate,_guiMainTextNonToggleColour];
			if (_isEpoch) then
			{	
				noxadmin = noxadmin + ["Epoch Crate",call compile preprocessFileLineNumbers _pubBcrate,_guiMainTextNonToggleColour];
			};
		noxadmin = noxadmin + ["Backpack Crate",call compile preprocessFileLineNumbers _pubBPcrate,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["","",[]];
		noxadmin = noxadmin + ["                 Weather/Time                 ",[]];	

		noxadmin = noxadmin + ["","",[]];	
		noxadmin = noxadmin + ["                 HouseKeeping                 ",[]];
		noxadmin = noxadmin + ["Delete Loot",call compile preprocessFileLineNumbers _hkDelLoot ,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Delete Weapon Crates",call compile preprocessFileLineNumbers _hkDelWC,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Delete Destroyed Vehicles",call compile preprocessFileLineNumbers _hkDelDV ,_guiMainTextNonToggleColour];
	};
	
	lowAdminMenu {
	diag_log "lowAdminMenu Called";
		noxadmin = noxadmin + ["                 Map Markers                 ",[]];		
		noxadmin = noxadmin + ["Player Markers",call compile preprocessFileLineNumbers _plrMarker,_guiMainTextToggleColour];	
		noxadmin = noxadmin + ["Corpse Markers",call compile preprocessFileLineNumbers _corMarker,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["Wreck Markers",call compile preprocessFileLineNumbers _wreMarker,_guiMainTextToggleColour];	
		noxadmin = noxadmin + ["Tent Markers",call compile preprocessFileLineNumbers _tntMarker,_guiMainTextToggleColour];
		noxadmin = noxadmin + ["Vehicle Markers (Unlocked)",call compile preprocessFileLineNumbers _vulMarker,_guiMainTextToggleColour];	
		noxadmin = noxadmin + ["Vehicle Markers (Locked)",call compile preprocessFileLineNumbers _vlMarker,_guiMainTextToggleColour];	

		noxadmin = noxadmin + ["",[]];	
		noxadmin = noxadmin + ["                 Teleport                 ",[]];		
		noxadmin = noxadmin + ["Teleport to Player",call compile preprocessFileLineNumbers _plrTP2,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Teleport Player to You",call compile preprocessFileLineNumbers _plrTP2S,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Map Teleport",call compile preprocessFileLineNumbers _plrTPWM,_guiMainTextToggleColour];	

		noxadmin = noxadmin + ["","",[]];
		noxadmin = noxadmin + ["                 Admin Tools                 ",[]];		
		noxadmin = noxadmin + ["Kick Player",call compile preprocessFileLineNumbers _admPKick,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Spectate Player",call compile preprocessFileLineNumbers _admSpec,_guiMainTextNonToggleColour];	

		noxadmin = noxadmin + ["","",[]];		
		noxadmin = noxadmin + ["                 Player Tools                 ",[]];	
		noxadmin = noxadmin + ["Heal Player",call compile preprocessFileLineNumbers _plrHeal,_guiMainTextNonToggleColour];		
		noxadmin = noxadmin + ["No Recoil",call compile preprocessFileLineNumbers _plrRR,_guiMainTextToggleColour];		
		noxadmin = noxadmin + ["God",call compile preprocessFileLineNumbers _plrGod,_guiMainTextToggleColour];			
			if (_isEpoch) then
			{		
				noxadmin = noxadmin + ["1 Step Building",call compile preprocessFileLineNumbers _plr1SB,_guiMainTextToggleColour];		
				noxadmin = noxadmin + ["No Plot Pole",call compile preprocessFileLineNumbers _plrRPP,_guiMainTextToggleColour];		
				noxadmin = noxadmin + ["No Overburden",call compile preprocessFileLineNumbers _plrROB,_guiMainTextToggleColour];	
			};
		noxadmin = noxadmin + ["","",[]];	
		noxadmin = noxadmin + ["                 Vehicle Tools                 ",[]];	
		noxadmin = noxadmin + ["Point to Repair (Perm)",call compile preprocessFileLineNumbers _p2rp,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Point to Repair (Temp)",call compile preprocessFileLineNumbers _p2rt,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Flip Vehicle",call compile preprocessFileLineNumbers _p2f,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Refuel Vehicle",call compile preprocessFileLineNumbers _p2r,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["","",[]];
		noxadmin = noxadmin + ["Lock Vehicle (1)",call compile preprocessFileLineNumbers _vLock,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["Unlock Vehicle (2)",call compile preprocessFileLineNumbers _vUnlock,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["","",[]];	
		noxadmin = noxadmin + ["Spawn Vehicle",call compile preprocessFileLineNumbers _vSpawnT,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["","",[]];	
		noxadmin = noxadmin + ["                 Crates                 ",[]];	
		noxadmin = noxadmin + ["---Private",[]];	
		noxadmin = noxadmin + ["Items",call compile preprocessFileLineNumbers _prvIcrate,_guiMainTextNonToggleColour];
			if (_isEpoch) then
			{	
				noxadmin = noxadmin + ["Epoch Crate",call compile preprocessFileLineNumbers _prvBcrate,_guiMainTextNonToggleColour];
			};
		noxadmin = noxadmin + ["Backpack Crate",call compile preprocessFileLineNumbers _prvBPcrate,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["","",[]];	
		noxadmin = noxadmin + ["---Public",[]];	
		noxadmin = noxadmin + ["Items",call compile preprocessFileLineNumbers _pubIcrate,_guiMainTextNonToggleColour];
			if (_isEpoch) then
			{	
				noxadmin = noxadmin + ["Epoch Crate",call compile preprocessFileLineNumbers _pubBcrate,_guiMainTextNonToggleColour];
			};
		noxadmin = noxadmin + ["Backpack Crate",call compile preprocessFileLineNumbers _pubBPcrate,_guiMainTextNonToggleColour];	
		noxadmin = noxadmin + ["","",[]];

		noxadmin = noxadmin + ["","",[]];	
		noxadmin = noxadmin + ["                 HouseKeeping                 ",[]];
		noxadmin = noxadmin + ["Delete Weapon Crates",call compile preprocessFileLineNumbers _hkDelWC,_guiMainTextNonToggleColour];
		noxadmin = noxadmin + ["Delete Destroyed Vehicles",call compile preprocessFileLineNumbers _hkDelDV,_guiMainTextNonToggleColour];
	};
};

//Spawn respective menus 
boxPopulate ={
	diag_log "boxPopulate Called";
    inSub = false;
	noxadmin = [];
	_ctrl = 2 call getControl;
	lbclear _ctrl;
	_ctrl ctrlSetFont "EtelkaNarrowMediumPro";
	
	if(getPlayerUID player in noxLowList) then {call lowAdminMenu;};
	if(getPlayerUID player in noxNormalList) then {call normalAdminMenu;};
	if(getPlayerUID player in noxSuperList) then {call superAdminMenu;};
	if (_playerMenu) then{if(!(getPlayerUID _x in noxLowList && noxNormalList && noxSuperList)) then {call playerMenu};};
	call adminMainSetup;	
};

//Init Admin Code > Create GUI
	adminInit = {
	diag_log "adminInit Called";
		if (isNil "restartCount") then {restartCount = 180;};
		_time = (restartCount-(round(serverTime / 60)));
		closeDialog 0;
		if !(dialog) then {createDialog "RscConfigEditor_Main";hint "Admin Menu Loaded!"}else{hint "Problem Loading Dialog, You should never see this. EVER!!, If you do, Make sure no other dialog is open. e.g infiSTAR";};
		disableSerialization;
			//Header Box
			_ctrl = 3 call getControl;
			_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, 0.04];
			_ctrl ctrlSetBackgroundColor _guiTitleBGColour;
			_ctrl ctrlSetFont "EtelkaNarrowMediumPro";
			_ctrl ctrlSetTextColor _guiTitleTextColour;
			_ctrl ctrlSetScale 1.6;
			_ctrl ctrlSetForegroundColor [0,0.1,0,1];
			_ctrl ctrlSetText format["Noxsicarius Admin Menu ' Restart in: %1",_time];
			_ctrl ctrlCommit 0;
		
			//Admin Box		
			_ctrl = 2 call getControl;
			_ctrl ctrlSetPosition [safezoneXAbs + 0.465, safezoneY + 0.05, 1.445, (safeZoneH - 0.10)*0.758];
			_ctrl ctrlSetFont "EtelkaNarrowMediumPro";
			_ctrl ctrlSetScale 1.35;
			_ctrl ctrlSetForegroundColor [0,0.36,0.85,1];
			_ctrl ctrlCommit commitT;
			_ctrl ctrlSetEventHandler ["LBDblClick", "call adminDblClick;"]; //Enable menu select/toggle
				call boxAdminFill;
		
			//Players	
			_ctrl = 1 call getControl;
			_ctrl ctrlSetPosition [safezoneXAbs + 0.005, safezoneY + 0.05, (0.485)*0.7, (safeZoneH - 0.10)*0.758];
			_ctrl ctrlSetFont "EtelkaNarrowMediumPro";
			_ctrl ctrlSetScale 1.35;
			_ctrl ctrlSetForegroundColor [0,0.36,0.85,1];
			_ctrl ctrlCommit commitT;
				call boxPopulate;
				call boxPlayerFill;
			
			//Frame	
			_ctrl = -1 call getControl;
			_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, safezoneH];
			_ctrl ctrlSetForegroundColor _guiFrameColour;
			_ctrl ctrlCommit commitT;	
	};
};