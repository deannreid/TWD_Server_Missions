#define CHECK1 if(typeName _x == "STRING")then{
#define CHECK2 if((isNil "_qty")||{typeName _qty == "STRING"})then{_qty=1;};
#define CLEAR_MEN {if!(_x isKindOf "Survivor1_DZ")then{deleteVehicle _x;};}count(player nearEntities["Man",100]);
#define GENDERC if(player isKindOf "SurvivorW2_DZ")then{_model=
#define GET_CLASS disableSerialization;_text=lbText[8888,(lbCurSel 8888)];{if(_text==(_x select 0))then{_class=_x;};}forEach _publicClasses+_customLoadouts;

classFill = {
	private ["_class","_humanity","_index","_level","_lock","_puid"];
	#include "classConfig.sqf"
	disableSerialization;
	lbClear 8888;
	_humanity = player getVariable ["humanity",0];
	_puid = getPlayerUID player;
	{
		_lock = 0;
		_level = _x select 8;
		_hlevel = _x select 9;
		if (count _x > 11) then {_level = _x select 19;_hlevel = _x select 20;};
		if (((_hlevel < 0) && {_humanity >= _hlevel}) || 
				{(_level == 1) && {!(_puid in _classLevel1)}} || 
				{(_level == 2) && {!(_puid in _classLevel2)}} ||
				{(_level == 3) && {!(_puid in _classLevel3)}} ||
				{(_hlevel > 0) && {_humanity <= _hlevel}}
				) then {_lock=1;};
		_index = lbAdd [8888,_x select 0];
		lbSetPicture [8888,_index,"\ca\ui\data\objective_complete_ca.paa"];
		if (_lock > 0) then {lbSetPicture [8888,_index,"\ca\ui\data\ui_server_locked_ca.paa"];};
		if (count _x > 11) then {lbSetColor [8888,_index,[.97,.87,.35,1]];};
		if (_hlevel > 0) then {lbSetColor [8888,_index,[.38,.7,.9,1]];};
		if (_hlevel < 0) then {lbSetColor [8888,_index,[1,0,0,.8]];};
		if (_level > 0) then {lbSetColor [8888,_index,[0,1,0,.8]];};
	} forEach _publicClasses;
	if (_puid in _customLoadout) then {
		{if (_puid == _x) then {_index = _forEachIndex;};} forEach _customLoadout;
		_class = _customLoadouts select _index;
		_index = lbAdd [8888,_class select 0];
		lbSetPicture [8888,_index,"\ca\ui\data\objective_complete_ca.paa"];
	};
};

classPick = {
	private ["_class","_go","_humanity","_level","_text","_puid"];
	#include "classConfig.sqf"
	_go = 1;
	GET_CLASS
	if (isNil "_class") exitWith {systemChat "Select a class!";_go=0;};
	if (count _class > 8) then {
		_level = _class select 8;
		_hlevel = _class select 9;
		if (count _class > 11) then {_level = _class select 19;_hlevel = _class select 20;};
		_humanity = player getVariable ["humanity",0];
		_puid = getPlayerUID player;
		if ((_hlevel < 0) && {_humanity >= _hlevel}) exitWith {systemChat format["Your humanity must be less than %1 for this class.",_hlevel];_go=0;};
		if ((_hlevel > 0) && {_humanity <= _hlevel}) exitWith {systemChat format["Your humanity must be greater than %1 for this class.",_hlevel];_go=0;};
		if ((_level == 1) && {!(_puid in _classLevel1)}) exitWith {systemChat "This class is for level 1 VIPs only.";_go=0;};
		if ((_level == 2) && {!(_puid in _classLevel2)}) exitWith {systemChat "This class is for level 2 VIPs only.";_go=0;};
		if ((_level == 3) && {!(_puid in _classLevel3)}) exitWith {systemChat "This class is for level 3 VIPs only.";_go=0;};
	};
	if (_go > 0) then {uiNamespace setVariable ["classChoice",_class];};
};

classPreview = {
	private ["_class","_model","_pPos","_text","_unit"];
	#include "classConfig.sqf"
	CLEAR_MEN
	_class = _publicClasses select 0;
	GET_CLASS
	_model = _class select 1;
	GENDERC _class select 2;};
	_weps = _class select 4;
	if (count _class > 11) then {
		_model = _model select 0;
		GENDERC (_class select 1) select 1;};
		_model = _model call BIS_fnc_selectRandom;
		_weps = _class select 6;
		if (count _weps > 0) then {_weps = [(_weps call BIS_fnc_selectRandom)];};
	};
	_pPos = getPosASL player;
	_unit = _model createVehicleLocal _pPos;
	{_unit removeMagazine _x;} count magazines _unit;
	removeAllItems _unit;
	removeAllWeapons _unit;
	removeBackpack _unit;
	{if !(_x in (weapons _unit)) then {_unit addWeapon _x;_qty=1;};} count _weps+_startWeps;
	if ((primaryWeapon _unit) == "") then {deleteVehicle _unit;_unit = createAgent [_model,_pPos,[],0,"CAN_COLLIDE"];};
	_unit attachTo [player,[.34,3.8,1.1]];
	_unit setDir ((getDir player) + 180);
	_unit enableSimulation false;
};

private ["_cam","_class","_mags","_model","_muzzle","_myModel","_pistol","_pistols","_pistolAmmo","_qty","_tool","_tools","_wep","_weps"];
#include "classConfig.sqf"
uiNamespace setVariable ["classChoice",[]];

if !(_isPZombie) then {
	{player removeMagazine _x;} count magazines player;
	removeAllItems player;
	removeAllWeapons player;
	removeBackpack player;
	player addWeapon "ItemWatch";_qty=1;
	_light = "#lightpoint" createVehicleLocal _debug;
	_light lightAttachObject [player,[0,1,.1]];
	_light setLightBrightness 1;
	_light setLightAmbient [1,0,0];
	_light setLightColor [1,0,0];	
	_cam = "camera" camCreate _debug;
	_cam cameraEffect ["external","back"];
	_cam camSetFOV .7;
	_cam camCommit 0;
	waitUntil {camCommitted _cam};
	_cam camSetRelPos [0,.8,1.9];
	_cam camCommit 0;
	waitUntil {camCommitted _cam};
	_cam attachTo [player,[0,.8,1.9]];
	
	while {count (uiNamespace getVariable "classChoice") < 1} do {
		AT_SPAWN
		if (!dialog) then {_i="createDialog";createDialog "ClassDialog";call classFill;call classPreview;player switchMove "";};
		uiSleep 1;
	};
	closeDialog 0;
	deleteVehicle _light;
	_cam cameraEffect ["terminate","back"];
	camDestroy _cam;
	CLEAR_MEN

	_class = uiNamespace getVariable "classChoice";
	_myModel = typeOf player;
	_model = _class select 1;
	GENDERC _class select 2;};
	_mags = _class select 3;
	_weps = _class select 4;
	_bag = _class select 5;
	_bmags = _class select 6;
	_bweps = _class select 7;
	
	if (count _class > 11) then {
		_model = _model select 0;
		GENDERC (_class select 1) select 1;};
		_model = _model call BIS_fnc_selectRandom;
		_tools = _class select 4;
		_weps = _class select 6;
		_pistol = _class select 8;
		_bag = (_class select 10) call BIS_fnc_selectRandom;
		_btools = _class select 13;
		_bweps = _class select 15;
		_bpistol = _class select 17;
		if (count _weps > 0) then {_weps = [(_weps call BIS_fnc_selectRandom)];};
		if (count _pistol > 0) then {_pistol = [(_pistol call BIS_fnc_selectRandom)];};
		if (count _bweps > 0) then {_bweps = [(_bweps call BIS_fnc_selectRandom)];};
		if (count _bpistol > 0) then {_bpistol = [(_bpistol call BIS_fnc_selectRandom)];};
		if (count _tools > 0) then {_tools = [];while {count _tools < (_class select 5)} do {_tool = (_class select 4) call BIS_fnc_selectRandom;if !(_tool in _tools) then {_tools set [count _tools,_tool];};};};
		if (count _btools > 0) then {_btools = [];while {count _btools < (_class select 14)} do {_tool = (_class select 13) call BIS_fnc_selectRandom;if !(_tool in _btools) then {_btools set [count _btools,_tool];};};};
		_magFill = {
			private ["_a","_class","_index","_mag","_qty","_ret"];
			_a = _this select 0;
			_class = _this select 1;
			_index = _this select 2;
			_ret = [];
			if (count _a > 0) then {
				if (count _this < 4) then {
					_mag = [];
					_mag = getArray (configFile >> "cfgWeapons" >> (_a select 0) >> "magazines");
					if (count _mag > 0) then {for "_i" from 1 to (_class select _index) do {_ret set [count _ret,(_mag select 0)];};};
				} else {
					while {({typeName _x == "STRING"} count _ret) < (_class select (_this select 3))} do {
						_index = _a call BIS_fnc_randomIndex;
						_mag = _a select _index;
						if (typeName _mag == "STRING") then {
							if !(_mag in _ret) then {
								_ret set [count _ret,_mag];
								_qty = _a select (_index+1);CHECK2
								_ret set [count _ret,_qty];
							};
						};
					};
				};
			};
			_ret
		};
		_bmags = [(_class select 11),_class,11,12] call _magFill;
		_bmags2 = [_bweps,_class,16] call _magFill;
		_bmags3 = [_bpistol,_class,18] call _magFill;
		_mags = [(_class select 2),_class,2,3] call _magFill;
		_mags2 = [_weps,_class,7] call _magFill;
		_mags3 = [_pistol,_class,9] call _magFill;
		_mags = _mags+_mags2+_mags3;
		_bmags = _bmags+_bmags2+_bmags3;
		_bweps = _bweps+_btools+_bpistol;
		_weps = _weps+_pistol+_tools;
	};

	if (_model != _myModel) then {
		[dayz_playerUID,dayz_characterID,_model] spawn player_humanityMorph;
		waitUntil {typeOf player != _myModel};
		uiSleep 1;
	};
	
	player attachTo [_holder,[0,0,0]];
	{player removeMagazine _x;} count magazines player;
	removeAllItems player;
	removeAllWeapons player;
	removeBackpack player;
	player addWeapon "Loot";
	player addWeapon "Flare";
	
	{CHECK1 _qty = (_startMags select (_forEachIndex+1));CHECK2 for "_i" from 1 to _qty do {player addMagazine _x;_qty=1;};};} forEach _startMags;
	{player addWeapon _x;_qty=1;} count _startWeps;
	
	_hasBinoc = 0;
	_hasPistol = 0;
	_hasPistolAmmo = 0;
	_binoc = ["Binocular","Binocular_Vector"];
	_pistols = [
		"Colt1911","glock17_EP1","M9","M9SD","Makarov","MakarovSD","revolver_EP1","revolver_gold_EP1","UZI_EP1","UZI_SD_EP1","Sa61_EP1",
		"DDOPP_X26","RH_Deagleg","RH_Deaglem","RH_Deagles","RH_Deaglemz","RH_Deaglemzb","RH_deagle","RH_anac","RH_anacg","RH_bull","RH_python",
		"RH_browninghp","RH_p226","RH_p226s","RH_p38","RH_ppk","RH_mk22","RH_mk22sd","RH_mk22v","RH_mk22vsd","RH_usp","RH_uspm","RH_uspsd","RH_m1911",
		"RH_m1911old","RH_m1911sd","RH_tt33","RH_mk2","RH_m9","RH_m93r","RH_m9c","RH_m9csd","RH_m9sd","RH_muzi"
	];
	_pistolAmmo = [
		"15Rnd_9x19_M9","15Rnd_9x19_M9SD","17Rnd_9x19_glock17","20Rnd_B_765x17_Ball","30Rnd_9x19_UZI","30Rnd_9x19_UZI_SD","6Rnd_45ACP","7Rnd_45ACP_1911","8Rnd_9x18_Makarov","8Rnd_9x18_MakarovSD",
		"DDOPP_1Rnd_X26","RH_7Rnd_50_AE","RH_6Rnd_44_Mag","RH_6Rnd_357_Mag","RH_15Rnd_9x19_usp","RH_15Rnd_9x19_uspsd","RH_8Rnd_9x19_P38","RH_8Rnd_9x19_Mk","RH_8Rnd_9x19_Mksd","RH_8Rnd_45cal_m1911",
		"RH_32Rnd_9x19_Muzi","RH_13Rnd_9x19_bhp","RH_7Rnd_32cal_ppk","RH_12Rnd_45cal_usp","RH_8Rnd_762_tt33","RH_10Rnd_22LR_mk2","RH_20Rnd_9x19_M93","RH_19Rnd_9x19_g18","RH_17Rnd_9x19_g17",
		"RH_17Rnd_9x19_g17SD","RH_20Rnd_32cal_vz61","RH_30Rnd_9x19_tec","vil_bhp_mag","vil_usp45_mag","vil_usp45sd_mag","vil_32Rnd_uzi","vil_32Rnd_UZI_SD"
	];
	{
		if (_x in _binoc) then {_hasBinoc = 1;};
		if (_x in _pistols) then {_hasPistol = 1;};
		if (_x in _pistolAmmo) then {_hasPistolAmmo = 1;};
	} count _weps+_mags;
	if (_hasBinoc > 0) then {{player removeWeapon _x;} count _binoc;};	
	if (_hasPistol > 0) then {{player removeWeapon _x;} count _pistols;};
	if (_hasPistolAmmo > 0) then {{player removeMagazines _x;} count _pistolAmmo;};

	{CHECK1 _qty = (_mags select (_forEachIndex+1));CHECK2 for "_i" from 1 to _qty do {player addMagazine _x;_qty=1;};};} forEach _mags;
	{if !(_x in (weapons player)) then {player addWeapon _x;_qty=1;};} count _weps;
	
	if (_bag != "") then {player addBackpack _bag};
	if ((isNull (unitBackpack player)) && {_startBag != ""}) then {player addBackpack _startBag;};
	_bag = unitBackpack player;
	if (!isNull _bag) then {
		{CHECK1 _qty = (_bmags select (_forEachIndex+1));CHECK2 _bag addMagazineCargoGlobal [_x,_qty];_qty=1;};} forEach _bmags;
		{CHECK1 _qty = (_bweps select (_forEachIndex+1));CHECK2 _bag addWeaponCargoGlobal [_x,_qty];_qty=1;};} forEach _bweps;
	};
	
	_wep = primaryWeapon player;
	if ((getText(configFile >> "cfgWeapons" >> _wep >> "melee")) == "true") then {call dayz_meleeMagazineCheck;};
	if (_wep == "") then {{if (_x in _pistols) exitWith {_wep = _x;};} count (weapons player);};
	_muzzle = getArray(configFile >> "cfgWeapons" >> _wep >> "muzzles");
	if (count _muzzle > 1) then {player selectWeapon (_muzzle select 0);} else {player selectWeapon _wep;};
	reload player;
};
classFill=nil;classPick=nil;classPreview=nil;