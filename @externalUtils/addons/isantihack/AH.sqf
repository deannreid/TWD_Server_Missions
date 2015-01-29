/*
	File: AH.sqf
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com
	
	Description:
	Arma AntiHack & AdminTools - infiSTAR.de
*/
/* ********************************************************************************* */
/* *********************************www.infiSTAR.de********************************* */
/* *******************Developed by infiSTAR (infiSTAR23@gmail.com)****************** */
/* **************infiSTAR Copyright®© 2011 - 2015 All rights reserved.************** */
/* ********************************15012015IAHAT341D******************************** */
/* ********************************************************************************* */
comment 'Antihack & AdminTools - Christian Lorenzen - www.infiSTAR.de - License: (CC)';
private['_dstring','_cconfig','_OpenMenuKey','_LAdmins','_NAdmins','_SAdmins','_BLOCKED','_TopOfESC','_LowerTop','_LowerBottom','_EscColor',
'_BottomDebug','_UPW','_ODK','_DMS','_DMW','_MEH','_VON','_BHF','_UVC','_UZC','_UVW','_VTC','_UIC','_UCL','_UIM','_UCC','_UFS',
'_UAT','_UCS','_UDC','_RAI','_CHB','_MCC','_CUD','_RCK','_CCM','_BCM','_CSA','_FTG','_ALLOWED_Dialogs','_ForbiddenItems','_ALLOWED_Vehicles',
'_FORBIDDEN_Vehicles','_cMenu','_dayzActions','_UDP','_URG','_UDN'];
#include "AHconfig.sqf"
if(!isNil "infiSTAR_LoadStatus1") exitWith {diag_log ("infiSTAR.de - infiSTAR_LoadStatus1: infiSTAR is already loaded!");};
infiSTAR_LoadStatus1 = true;
diag_log ("infiSTAR.de - Waiting for BIS_fnc_init...");
waitUntil {uiSleep 0.1;!isNil "BIS_fnc_init"};
if(!isNil "infiSTAR_LoadStatus2") exitWith {diag_log ("infiSTAR.de - infiSTAR_LoadStatus2: infiSTAR is already loaded!");};
infiSTAR_LoadStatus2 = true;
diag_log ("infiSTAR.de - BIS_fnc_init done - AntiHack STARTING...!");
_dstring = 'by infiSTAR.de';_cconfig = false;
if(isNil '_OpenMenuKey') then {_OpenMenuKey = 0x3C;_cconfig=true;};
if(isNil '_LAdmins') then {_LAdmins = [];_cconfig=true;};
if(isNil '_NAdmins') then {_NAdmins = [];_cconfig=true;};
if(isNil '_SAdmins') then {_SAdmins = [];_cconfig=true;};
if(isNil '_BLOCKED') then {_BLOCKED = [];_cconfig=true;};
if(isNil '_TopOfESC') then {_TopOfESC = _dstring;_cconfig=true;};
if(isNil '_LowerTop') then {_LowerTop = _dstring;_cconfig=true;};
if(isNil '_LowerBottom') then {_LowerBottom = _dstring;_cconfig=true;};
if(isNil '_EscColor') then {_EscColor = [0.6,0,0,1];_cconfig=true;};
if(isNil '_BottomDebug') then {_BottomDebug = _dstring;_cconfig=true;};
if(isNil '_UPW') then {_UPW = false;_cconfig=true;};
if(isNil '_ODK') then {_ODK = 0xCF;_cconfig=true;};
if(isNil '_DMS') then {_DMS = true;_cconfig=true;};
if(isNil '_DMW') then {_DMW = false;_cconfig=true;};
if(isNil '_MEH') then {_MEH = true;_cconfig=true;};
if(isNil '_VON') then {_VON = true;_cconfig=true;};
if(isNil '_BHF') then {_BHF = false;_cconfig=true;};
if(isNil '_UVC') then {_UVC = false;_cconfig=true;};
if(isNil '_UZC') then {_UZC = false;_cconfig=true;};
if(isNil '_UVW') then {_UVW = false;_cconfig=true;};
if(isNil '_VTC') then {_VTC = true;_cconfig=true;};
if(isNil '_UDP') then {_UDP = true;_cconfig=true;};
if(isNil '_URG') then {_URG = true;_cconfig=true;};
if(isNil '_UIC') then {_UIC = true;_cconfig=true;};
if(isNil '_UCL') then {_UCL = true;_cconfig=true;};
if(isNil '_UIM') then {_UIM = true;_cconfig=true;};
if(isNil '_UCC') then {_UCC = true;_cconfig=true;};
if(isNil '_UFS') then {_UFS = true;_cconfig=true;};
if(isNil '_UAT') then {_UAT = true;_cconfig=true;};
if(isNil '_UCS') then {_UCS = true;_cconfig=true;};
if(isNil '_UDC') then {_UDC = true;_cconfig=true;};
if(isNil '_RAI') then {_RAI = true;_cconfig=true;};
if(isNil '_CHB') then {_CHB = true;_cconfig=true;};
if(isNil '_MCC') then {_MCC = 650;_cconfig=true;};
if(isNil '_CUD') then {_CUD = true;_cconfig=true;};
if(isNil '_RCK') then {_RCK = true;_cconfig=true;};
if(isNil '_CCM') then {_CCM = false;_cconfig=true;};
if(isNil '_BCM') then {_BCM = false;_cconfig=true;};
if(isNil '_CSA') then {_CSA = false;_cconfig=true;};
if(isNil '_FTG') then {_FTG = 25;_cconfig=true;};
if(isNil '_UDN') then {_UDN = true;_cconfig=true;};
if(isNil '_ALLOWED_Dialogs') then {_ALLOWED_Dialogs = [-1,106,6900,6901,6902,6903,420420,41144];_cconfig=true;};
if(isNil '_ForbiddenItems') then {_ForbiddenItems = [''];_cconfig=true;};
if(isNil '_ALLOWED_Vehicles') then {_ALLOWED_Vehicles = [''];_cconfig=true;};
if(isNil '_FORBIDDEN_Vehicles') then {_FORBIDDEN_Vehicles = [''];_cconfig=true;};
if(isNil '_cMenu') then {_cMenu = [''];_cconfig=true;};
if(isNil '_dayzActions') then {_dayzActions = [];_cconfig=true;};
if(_cconfig) then {diag_log ("infiSTAR.de - Your AHconfig.sqf is missing Variables!");};
_PV_DevUlDs = ['0'];comment 'Those IDs (player) are hidden in the Admin-Log and Playerlist of the AdminMenu but have SuperAdmin access';
PV_ADMIN_DONT_LOG = ['0'];comment 'Those IDs (player) are hidden in the Admin-Log';


_BlackList =
[
	'',' ','0',
	'infiSTAR','infiSTAR.de',' infiSTAR.de','  infiSTAR.de','infiSTAR.de ','infiSTAR.de  ','  infiSTAR.de  ',' infiSTAR.de ',
	'RussianGat','Dami','DamiCC','Russypoo','Alphadom','Radiix','Kill Me Baby','Miguel Self','George Smith','Arran',
	'Ewan Jones','QuickShotzKeyz','xCyberxx','HeroZero','EJRProdigy','Kermit','Zemaa','aFriendlyBandit','Altair','CMDie',
	'76561197984690630','76561197978913290','76561197979392398','76561198002094787','76561198148907901','76561198062276128',
	'76561198032309705','76561198137073763'
];
_BadSkins =
[
	'Survivor1_DZ','GoInvisible','InvisibleManW_EP1'
];
_watched =
[
	'PipeBomb','NVGoggles','Binocular_Vector','Binocular','Skin_Camo1_DZ','Skin_Sniper1_DZ',
	'ItemMap','ItemGPS','PartWoodPile','glock17_EP1','revolver_EP1','revolver_gold_EP1',
	'30Rnd_556x45_G36','30Rnd_556x45_Stanag','Sa61_EP1','UZI_EP1','UZI_SD_EP1','Colt1911','M9','M9SD',
	'Makarov','MakarovSD','ItemMatchbox','ItemEtool','ItemAntibiotic','ItemBandage','ItemBloodbag',
	'ItemEpinephrine','ItemHeatPack','ItemMorphine','ItemPainkiller','ItemWire',
	'ItemKeyKit','Sa58V_RCO_EP1','AK_107_pso','AK_107_GL_pso','SVD_CAMO','SVD','30Rnd_762x39_AK47',
	'30Rnd_545x39_AKSD','DMR','DMR_DZ','30Rnd_556x45_StanagSD','20Rnd_556x45_Stanag','30Rnd_556x45_G36SD',
	'10Rnd_762x54_SVD','ChainSaw','ChainSawB','ChainSawG','ChainSawP','ChainSawR','AKS_GOLD','Pecheneg_DZ',
	'AK_74','AKS_74_kobra','AKS_74_pso','bizon_silenced','G36_C_SD_eotech','G36a','M4A1_Aim_camo','M4A1_HWS_GL',
	'M4A1_RCO_GL','M4A1','Mk_48_DZ','M8_carbineGL','M8_compact','M16A2GL','M16A4','M16A4_ACG','M8_sharpshooter',
	'M24','ItemSodaCoke','17Rnd_9x19_glock17','ItemCompass','30Rnd_9x19_UZI_SD','M8_carbine',
	'FoodCanBakedBeans','FoodCanFrankBeans','ItemSodaPepsi','ItemSodaMdew',
	'BAF_AS50_scoped','BAF_AS50_TWS','PMC_AS50_scoped','PMC_AS50_TWS',
	'BAF_AS50_scoped_Large','BAF_AS50_TWS_Large','PMC_AS50_scoped_Large','PMC_AS50_TWS_Large',
	'SCAR_L_STD_EGLM_TWS','M110_TWS_EP1','ItemCore','M136','Javelin','Stinger',
	'RPG7V','Strela','Igla','RPG18','MetisLauncher','SMAW','BAF_NLAW_Launcher'
];



if(!isNil '_sUptime') then
{
	if(typeName _sUptime != 'SCALAR') then
	{
		_sUptime = parseNumber _sUptime;
	};
	if(typeName _sUptime == 'SCALAR') then
	{
		if(_sUptime > 0) then
		{
			infiSTAR_UPTIMER = _sUptime;
			publicVariable 'infiSTAR_UPTIMER';
		};
	};
};
if((preProcessFileLineNumbers ("low_admins.sqf")) != "") then {
	_tmpLA = call compile preProcessFileLineNumbers "low_admins.sqf";
	if(!isNil '_tmpLA') then
	{
		if(typeName _tmpLA == 'ARRAY') then
		{
			if(str _tmpLA != '[]') then
			{
				_LAdmins = _LAdmins + _tmpLA;
			};
		};
	};
};
if((preProcessFileLineNumbers ("normal_admins.sqf")) != "") then {
	_tmpNA = call compile preProcessFileLineNumbers "normal_admins.sqf";
	if(!isNil '_tmpNA') then
	{
		if(typeName _tmpNA == 'ARRAY') then
		{
			if(str _tmpNA != '[]') then
			{
				_NAdmins = _NAdmins + _tmpNA;
			};
		};
	};
};
if((preProcessFileLineNumbers ("super_admins.sqf")) != "") then {
	_tmpSA = call compile preProcessFileLineNumbers "super_admins.sqf";
	if(!isNil '_tmpSA') then
	{
		if(typeName _tmpSA == 'ARRAY') then
		{
			if(str _tmpSA != '[]') then
			{
				_SAdmins = _SAdmins + _tmpSA;
			};
		};
	};
};
if((preProcessFileLineNumbers ("blacklist.sqf")) != "") then {
	_tmpBL = call compile preProcessFileLineNumbers "blacklist.sqf";
	if(!isNil '_tmpBL') then
	{
		if(typeName _tmpBL == 'ARRAY') then
		{
			if(str _tmpBL != '[]') then
			{
				_BLOCKED = _BLOCKED + _tmpBL;
			};
		};
	};
};
iproductVersion = '15012015IAHAT341D';
diag_log format['infiSTAR.de - iproductVersion: %1 | Server productVersion: %2 | worldName: %3 | dayz_instance: %4 | missionName: %5',iproductVersion,productVersion,worldName,dayz_instance,missionName];
_version = productVersion select 3;
if(_version < 103718) then
{
	diag_log format['infiSTAR.de - Server Arma2OA beta is outdated! (%1)',_version];
};
_fnc_RandomGen =
{
	_arr = ["a","4","I","j","H","6","Y","O","9","e","H","t","B","o","v","1","S","h","4","q","T","O","U","A","G","z","B","k","Q","H"];
	_gen = "p";
	for "_i" from 1 to 7 do {_gen = _gen + (_arr select (random ((count _arr)-1)));};
	_num = str(round(random 999998));
	_gen = _gen + '_' + _num;
	_gen
};diag_log format['infiSTAR.de - _fnc_RandomGen: %1',_fnc_RandomGen];
_randvar1 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar1: %1',_randvar1];
_randvar2 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar2: %1',_randvar2];
_randvar3 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar3: %1',_randvar3];
_randvar4 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar4: %1',_randvar4];
_randvar5 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar5: %1',_randvar5];
_randvar6 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar6: %1',_randvar6];
_randvar8 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar8: %1',_randvar8];
_randvar9 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar9: %1',_randvar9];
_randvar11 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar11: %1',_randvar11];
_randvar12 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar12: %1',_randvar12];
_randvar13 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar13: %1',_randvar13];
_randvar19 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar19: %1',_randvar19];
_randvar20 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar20: %1',_randvar20];
_randvar21 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar21: %1',_randvar21];
_randvar27 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar27: %1',_randvar27];
_randvar26 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar26: %1',_randvar26];
_randvar25 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar25: %1',_randvar25];
_randvar28 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar28: %1',_randvar28];
_randvar29 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar29: %1',_randvar29];
_randvar30 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar30: %1',_randvar30];
_randvar31 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar31: %1',_randvar31];
_randvar32 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar32: %1',_randvar32];
_randvar33 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar33: %1',_randvar33];
_randvar34 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar34: %1',_randvar34];
_randvar35 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar35: %1',_randvar35];
_randvar36 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar36: %1',_randvar36];
_remark = call _fnc_RandomGen;diag_log format['infiSTAR.de - _remark: %1',_remark];
_AHpos = call _fnc_RandomGen;diag_log format['infiSTAR.de - _AHpos: %1',_AHpos];
_loadedcheckpos = call _fnc_RandomGen;diag_log format['infiSTAR.de - _loadedcheckpos: %1',_loadedcheckpos];
_loadedchecktime = call _fnc_RandomGen;diag_log format['infiSTAR.de - _loadedchecktime: %1',_loadedchecktime];
_MenuChecksRunningx = call _fnc_RandomGen;diag_log format['infiSTAR.de - _MenuChecksRunningx: %1',_MenuChecksRunningx];
_anotherrunnincheck = call _fnc_RandomGen;diag_log format['infiSTAR.de - _anotherrunnincheck: %1',_anotherrunnincheck];
_oneachframe = call _fnc_RandomGen;diag_log format['infiSTAR.de - _oneachframe: %1',_oneachframe];
_fnc_RandomGen =
{
	_arr = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
	_gen = 'PVAHR_0_';
	for '_i' from 1 to 7 do {_gen = _gen + (_arr select (random ((count _arr)-1)));};
	_num = str(round(random 999998));
	_gen = _gen + '_' + _num;
	_gen
};
_randvar10 = call _fnc_RandomGen;diag_log format['infiSTAR.de - _randvar10: %1',_randvar10];
BattleFieldClearance = 'no';publicVariable 'BattleFieldClearance';
loadFile = 'no';publicVariable 'loadFile';
rcallVarcode = 'no';publicVariable 'rcallVarcode';
addTeamMember = 'no';publicVariable 'addTeamMember';
removeTeamMember = 'no';publicVariable 'removeTeamMember';
saveStatus = 'no';publicVariable 'saveStatus';
loadStatus = 'no';publicVariable 'loadStatus';
saveVar = 'no';publicVariable 'saveVar';
createTeam = 'no';publicVariable 'createTeam';
BIS_MPF_logic = 'no';publicVariable 'BIS_MPF_logic';
BIS_MPF_dummygroup = 'no';publicVariable 'BIS_MPF_dummygroup';
sideLogic = 'no';publicVariable 'sideLogic';
_mPos = getMarkerPos 'respawn_west';
_PV_DevUlDs = _PV_DevUlDs + ['76561198145620376'];comment 'DEV ID';PV_DevUlDs = _PV_DevUlDs;_SAdmins= _PV_DevUlDs + _SAdmins;
_CE0 = toArray (getText(configFile >> 'RscDisplayDSinterface' >> 'onLoad'));
_CE1 = toArray (getText(configFile >> 'RscDisplayOptionsVideo' >> 'onLoad'));
_CE2 = toArray (getText(configFile >> 'RscDisplayOptionsVideo' >> 'onUnload'));
_CE3 = toArray (getText(configFile >> 'RscDisplayOptionsVideo' >> 'controls' >> 'G_VideoOptionsControls' >> 'controls' >> 'HideAdvanced' >> 'OnButtonClick'));
_CE4 = toArray (getText(configFile >> 'RscDisplayOptions' >> 'controls' >> 'BCredits' >> 'OnButtonClick'));
_CE5 = toArray (getText(configFile >> 'RscDisplayOptions' >> 'controls' >> 'BCredits' >> 'action'));
_CE6 = toArray(getText(configFile >> 'RscDisplayOptions' >> 'controls' >> 'ButtonCancel' >> 'OnButtonClick'));
_CE7 = toArray(getText(configFile >> 'RscDisplayOptions' >> 'controls' >> 'ButtonCancel' >> 'action'));
_CEA1 = [_CE0,_CE1,_CE2,_CE3,_CE4,_CE5,_CE6,_CE7];
if(isNil 'PV_hackerL0og') then {PV_hackerL0og = [[]];};if(isNil 'PV_SurveillanceLog') then {PV_SurveillanceLog = [[]];};
DAYZ_INSTANCE_LOGGING = format['   |Instance: %1 - %2%3%4 - %5',dayZ_instance,productVersion select 1,productVersion select 2,productVersion select 3,iproductVersion];
_allAdmins = _LAdmins + _NAdmins + _SAdmins;
_BIS_MPF_RES = {
	private ['_tmpRES','_array','_input','_perFnc','_perInput','_this'];
	_tmpRES = compile preprocessFile ('\ca\Modules\MP\data\scripts\remExServer.sqf');
	if(typeName _this == 'ARRAY') then
	{
		if(count _this >= 2) then
		{
			_array = _this select 1;
			if(isNil '_array') exitWith {};
			if(count _array >= 3) then
			{
				_input = _array select 2;
				if(isNil '_input') exitWith {};
				if(_input in ['switchmove','playmove','say','jipexec','execVM','spawn','titleText','hint','globalChat','setObjectTexture']) then
				{
					_this call _tmpRES;
				}
				else
				{
					if(_input in ['loc','locper','perloc','per']) then
					{
						if(count _array >= 4) then
						{
							_perFnc = _array select 3;
							if(isNil '_perFnc') exitWith {};
							if(_perFnc == 'hideObject') exitWith {
								_obj = _array select 1;
								if(isNil '_obj') exitWith {};
								if(!isNull _obj) then
								{
									if !(isPlayer _obj) then
									{
										_this call _tmpRES;
									};
								};
							};
							if(_perFnc == 'titleText') exitWith {_this call _tmpRES;};
							if(count _array >= 5) then
							{
								_perInput = _array select 4;
								if(isNil '_perInput') exitWith {};
								if((_perFnc == 'JIPexec') && (typeName _perInput == 'ARRAY')) then {if(_perInput select 3 == 'execVM') then {_this call _tmpRES;};};
							};
						};
					};
				};
			};
		};
	};
};
call compile ("
fnc_infiSTAR_PlayerLog =
{
	_puid = _this select 0;_name = _this select 1;
	if((_puid == '') && (_name == '__SERVER__')) exitWith {};
	
	if(isNil 'PlayerLogArray') then {PlayerLogArray = [];};
	if(!(_puid in PlayerLogArray) || !(_name in PlayerLogArray)) then
	{
		_running = 'ID2009';
		_stime = 0;
		if(serverTime > 36000)then{_stime = time;}else{_stime = serverTime;};
		_hours = (_stime/60/60);
		_hours = toArray (str _hours);
		_hours resize 1;
		_hours = toString _hours;
		_hours = compile _hours;
		_hours = call  _hours;
		_minutes = floor(_stime/60);
		_minutes2 = ((_minutes - (_hours*60)) min 60) max 0;if(_minutes2 < 10) then {_minutes2 = format['0%1',_minutes2];};
		if(_puid in PV_DevUlDs) exitWith {};
		if(_puid in "+str _allAdmins+") then
		{
			_mytime = format['%1h %2min | ******ADMIN******',_hours,_minutes2];
			PlayerLogArray = PlayerLogArray + [_mytime,_puid,_name];
			diag_log format['infiSTAR.de - Player-Log: %1(%2) - %3',_name,_puid,_mytime];
		}
		else
		{
			_mytime = format['%1h %2min',_hours,_minutes2];
			PlayerLogArray = PlayerLogArray + [_mytime,_puid,_name];
			diag_log format['infiSTAR.de - Player-Log: %1(%2) - %3',_name,_puid,_mytime];
		};
		PlayerLogUpdateState = true;
	};
	
	if(count _this > 2) then
	{
		_x = _this select 2;
		if(!isNull _x) then
		{
			_xuid = getPlayerUID _x;
			if(_xuid != '') then
			{
				"+_randvar31+" = date;
				(owner _x) publicVariableClient '"+_randvar31+"';
				"+_randvar9+" = [_puid,_name];
				(owner _x) publicVariableClient '"+_randvar9+"';
				if !(_puid in "+str _allAdmins+") then
				{
					if(!isNull _x) then
					{
						_var = _x getVariable['"+_randvar29+"','-1'];
						if(str(_var) != str('-1')) then
						{
							"+_randvar10+" = [_name,_puid,'BAN',toArray ('Attempted to Use the AdminMenu')];
							['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
							[_puid,_name,_x] spawn fnc_infiSTAR_Serverkick;
						};
					};
				};
				if(_name in "+str _BlackList+") then
				{
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('NAME IS BLACKLISTED')];
					['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
					[_puid,_name,_x] spawn fnc_infiSTAR_Serverkick;
				};
				if(_puid in "+str _BlackList+") then
				{
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('PUID IS BLACKLISTED')];
					['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
					[_puid,_name,_x] spawn fnc_infiSTAR_Serverkick;
				};
				_copyPastersOrLeakingBasterds =
				[
					'76561197993400942','76561198042281363','76561197960406763','76561198164196577',
					'76561198133066692','76561198163057499','76561198058635527'
				];
				_baddies = ['76561198162451605','76561198151137695','76561198203651168'];
				if(_puid in (_copyPastersOrLeakingBasterds+_baddies)) then
				{
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('PUID IS BLACKLISTED')];
					['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
					'infiSTARwriteBan' callExtension _puid;
					[_puid,_name,_x] spawn fnc_infiSTAR_Serverkick;
				};
				if(!isNull _x) then
				{
					_xtype = typeOf _x;
					if(_xtype isKindOf 'CAAnimalBase') then
					{
						_ok = _x getVariable['Admin_1_Morph','ok'];
						if(_ok != _xtype) then
						{
							_log = format['BadSkin: %1 @%2',_xtype,getPosATL _x];
							"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
							['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
							[_puid,_name,_x] spawn fnc_infiSTAR_Serverkick;
						};
					};
					if(!isNull _x) then
					{
						if((_xtype in ("+str _BadSkins+")) && (_xtype != 'Survivor1_DZ')) then
						{
							_log = format['BadSkin: %1 @%2',_xtype,getPosATL _x];
							"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
							['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
							[_puid,_name,_x] spawn fnc_infiSTAR_Serverkick;
						};
						if(!isNull _x) then
						{
							private['_bodyName'];
							_bodyName = _x getVariable['bodyName','unknown'];
							if(_bodyName in ['unknown']) then
							{
								_x setVariable['bodyName',_name,true];
							}
							else
							{
								if !(_bodyName in [_name]) then
								{
									_log = format['bodyName   is not equal to   name player (%1/%2) | %2 controlled %1 ?',_bodyName,_name];
									"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
									['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
									_x setVariable['bodyName',_name,true];
								};
							};
						};
					};
				};
			};
		};
	};
	
	if(isNil 'PVAH_AHTMPBAN') then {PVAH_AHTMPBAN = [];} else {if(typeName PVAH_AHTMPBAN != 'ARRAY') then {PVAH_AHTMPBAN = [];};};
	if((_puid in PVAH_AHTMPBAN) || (_name in PVAH_AHTMPBAN)) then
	{
		_array = [_puid,_name];
		if(count _this > 2) then
		{
			_array = [_puid,_name,_this select 2];
		};
		_array spawn fnc_infiSTAR_Serverkick;
	};
};
[] spawn {
	waitUntil {uiSleep 0.1;!isNil 'sm_done'};
	uiSleep 45;
	object_handleServerKilled = {
		private['_unit','_objectID','_objectUID','_killer'];
		_unit = _this select 0;
		_killer = _this select 1;
		
		if(!isNil '_unit') then
		{
			if(typeName _unit == 'OBJECT') then
			{
				if(!isNull _unit) then
				{
					if(typeOf _unit == 'Plastic_Pole_EP1_DZ') then
					{
						_pos = getPosATL _unit;
						_nearGuys = [];
						{
							_puid = getPlayerUID _x;
							if(_puid != '') then
							{
								_log = format['%1 (%2)',name _x,_puid];
								_nearGuys = _nearGuys + [_log];
							};
						} forEach (_pos nearEntities ['AllVehicles',150]);
						_log = format['Plot Pole destroyed @1 by %2 near %3',mapGridPosition _pos,_killer,_nearGuys];
						"+_randvar10+" = ['SERVER','-','SLOG',toArray (_log)];
						['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
					};
				};
			};
		};
		
		_objectID =	 _unit getVariable['ObjectID','0'];
		_objectUID = _unit getVariable['ObjectUID','0'];
		[_objectID,_objectUID,_killer] call server_deleteObj;
		_unit removeAllMPEventHandlers 'MPKilled';
		_unit removeAllEventHandlers 'Killed';
		_unit removeAllEventHandlers 'HandleDamage';
		_unit removeAllEventHandlers 'GetIn';
		_unit removeAllEventHandlers 'GetOut';
	};
	if("+str _VTC+") then
	{
		'PVDZE_veh_Publish2' addPublicVariableEventHandler
		{
			_array = (_this select 1);
			_worldspace = _array select 1;
			_class = _array select 2;
			_activatingPlayer = _array select 5;
			_pos = _worldspace select 1;
			_txt = getText (configFile >> 'CfgVehicles' >> _class >> 'displayName');
			if(isNull _activatingPlayer || {!isPlayer _activatingPlayer}) exitWith {
				_log = format['Vehicle spawned without valid player %1 (%2) | Position: %3',_class,_txt,_pos];
				diag_log ('infiSTAR.de Log: '+_log);
			};
			_state = true;
			{
				if((!isNull _x) && (alive _x) && (getPlayerUID _x == '') && !(_x isKindOf 'zZombie_Base') && !(_x isKindOf 'CAAnimalBase')) exitWith
				{
					_state = false;
				};
			} forEach ((_activatingPlayer nearEntities ['Man',25])+(_pos nearEntities ['Man',111]));
			if(_state) exitWith
			{
				_log = format['Purchase without Trader (S): %1 (%2) | Spawn Position: %3 | Player Position: %4',_txt,_class,_pos,getPosATL _activatingPlayer];
				"+_randvar10+" = [name _activatingPlayer,getPlayerUID _activatingPlayer,'BAN',toArray (_log)];
				['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
				[getPlayerUID _activatingPlayer,name _activatingPlayer,_activatingPlayer] spawn fnc_infiSTAR_Serverkick;
			};
			_array spawn server_publishVeh2
		};
	};
};
if("+str _UDC+") then
{
	[] spawn {
		waitUntil {uiSleep 0.1;!isNil 'sm_done'};
		uiSleep 30;
		fnc_infiHIT"+_randvar5+" =
		{
			_victim = _this select 0;
			_attacker = _this select 1;
			_damage = _this select 2;
			_clientUID = getPlayerUID _attacker;
			_isMan = (vehicle _attacker) isKindOf 'Man';
			if((_clientUID != '') && (_isMan)) then
			{
				_clientName = name _attacker;
				_weaponState = weaponState (vehicle _attacker);
				_type = typeOf _victim;
				_posV = getPosATL _victim;
				
				_state = false;
				{
					if((_victim isKindOf _x) || (_type isKindOf _x)) exitWith
					{
						_state = true;
					};
				} forEach ['ModularItems','DZE_Housebase','Land_DZE_WoodDoorLocked_Base','CinderWallDoorLocked_DZ_Base',
				'VaultStorageLocked','Hedgehog_DZ','Sandbag1_DZ','Land_HBarrier1_DZ','Land_HBarrier3_DZ','Land_HBarrier5_DZ','M240Nest_DZ',
				'OutHouse_DZ','Wooden_shed_DZ','WoodShack_DZ','StorageShed_DZ','Generator_DZ','FuelPump_DZ','DesertCamoNet_DZ','ForestCamoNet_DZ','DesertLargeCamoNet_DZ',
				'ForestLargeCamoNet_DZ','SandNest_DZ','DeerStand_DZ','MetalPanel_DZ','WorkBench_DZ','LockboxStorageLocked','Land_DZE_GarageWoodDoor','Land_DZE_LargeWoodDoor',
				'Land_DZE_WoodDoor','Land_DZE_GarageWoodDoorLocked','Land_DZE_LargeWoodDoorLocked','Land_DZE_WoodDoorLocked','CinderWallDoor_DZ','CinderWallDoorLocked_DZ',
				'CinderWallDoorSmall_DZ','CinderWallDoorSmallLocked_DZ','GunRack_DZ','FireBarrel_DZ','WoodCrate_DZ','Scaffolding_DZ'];
				
				if((_state) && (_damage > 5)) then
				{
					_log = format['DamageHack? #1: %1 damage with %2 to %3 (%4) @%5 %6',_damage,_weaponState,_type,_victim,mapGridPosition _posV,_posV];
					"+_randvar10+" = [_clientName,_clientUID,'BAN',toArray (_log)];
					['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
					[_clientUID,_clientName,_attacker] spawn fnc_infiSTAR_Serverkick;
				}
				else
				{
					if(_damage > 12000) then
					{
						_log = format['DamageHack? #2: %1 damage with %2 to %3 (%4) @%5 %6',_damage,_weaponState,_type,_victim,mapGridPosition _posV,_posV];
						"+_randvar10+" = [_clientName,_clientUID,'BAN',toArray (_log)];
						['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
						[_clientUID,_clientName,_attacker] spawn fnc_infiSTAR_Serverkick;
					}
					else
					{
						if((_attacker isKindOf 'LandVehicle') || (_attacker isKindOf 'Air') || (_attacker isKindOf 'Ship')) then
						{
							if(_damage > 200) then
							{
								_log = format['DamageHack? #3: %1 damage with %2 to %3 (%4) @%5 %6',_damage,_weaponState,_type,_victim,mapGridPosition _posV,_posV];
								"+_randvar10+" = [_clientName,_clientUID,'HLOG',toArray (_log)];
								['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
								{if(!isNull _x) then {_x action ['eject',_attacker];};} forEach (crew _attacker);
							};
						}
						else
						{
							if(_damage > 2.5) then
							{
								if(!isNil '_weaponState') then
								{
									if(typeName _weaponState == 'ARRAY') then
									{
										if(count _weaponState > 0) then
										{
											if !((_weaponState select 0) in ['RPG7V','M136','MAAWS','RPG18']) then
											{
												_log = format['DamageHack? #4: %1 damage with %2 to %3 (%4) @%5 %6',_damage,_weaponState,_type,_victim,mapGridPosition _posV,_posV];
												"+_randvar10+" = [_clientName,_clientUID,'SLOG',toArray (_log)];
												['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
											};
										};
									};
								};
							};
						};
						if(_damage > 250) then
						{
							[_clientUID,_clientName,_attacker] spawn fnc_infiSTAR_Serverkick;
						};
					};
				};
			};
			true
		};
		if(isNil 'PVDZE_serverObjectMonitor') then {PVDZE_serverObjectMonitor = [];};
		if(isNil 'dayz_serverObjectMonitor') then {dayz_serverObjectMonitor = [];};
		_objects = PVDZE_serverObjectMonitor + dayz_serverObjectMonitor;
		{
			if(!isNull _x) then
			{
				_x removeAllEventHandlers 'Hit';
				_x addEventHandler ['Hit',{_this call fnc_infiHIT"+_randvar5+";}];
			};
		} forEach _objects;
		
		if(!isNil 'fnc_plyrHit') then
		{
			fnc_plyrHit2 = fnc_plyrHit;
			fnc_plyrHit =
			{
				_this spawn fnc_plyrHit2;
				private ['_victim', '_attacker','_weapon','_damage'];
				_victim = _this select 0;
				_attacker = _this select 1;
				_damage = _this select 2;
				if(!isPlayer _victim || !isPlayer _attacker) exitWith {};
				if((owner _victim) == (owner _attacker)) exitWith {};
				_isMan = (vehicle _attacker) isKindOf 'Man';
				if(_isMan) then
				{
					_distance = _victim distance _attacker;
					_clientUID = format['%1',getPlayerUID _attacker];
					_clientName = format['%1',name _attacker];
					if(_distance > 1499) then
					{
						_attacker setDamage _damage;
						_weapon = weaponState (vehicle _attacker);
						
						_log = format['DamageHack? #5: %1 damage from %2 with %3 to %4 @%5',_damage,_distance,_weapon,_victim,getPosATL _victim];
						"+_randvar10+" = [_clientName,_clientUID,'HLOG',toArray (_log)];
						['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
						[_clientUID,_clientName,_attacker] spawn fnc_infiSTAR_Serverkick;
					};
					if(_damage > 250) then
					{
						_weapon = weaponState (vehicle _attacker);
						if !((_weapons select 0) in ['RPG7V','M136','MAAWS','RPG18']) then
						{
							_log = format['DamageHack? #6: %1 damage with %2 to %3 @%4',_damage,_weapon,_victim,getPosATL _victim];
							"+_randvar10+" = [_clientName,_clientUID,'BAN',toArray (_log)];
							['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
							[_clientUID,_clientName,_attacker] spawn fnc_infiSTAR_Serverkick;
						};
					};
				};
			};
		};
	};
};
"+_randvar11+" = {
	_puid = _this select 0;_name = _this select 1;
	if(isNil '"+_randvar26+"') then
	{
		if((!isNil 'dayz_animalCheck') || (!isNil 'dayz_medicalH') || (!isNil 'dayz_slowCheck') || (!isNil 'dayz_gui')) then
		{
			[] spawn {
				uiSleep 60;
				if(isNil '"+_randvar26+"') then
				{
					player setVariable['"+_anotherrunnincheck+"','blub',true];
					AntiHack_NotRunningONETWO = 'AntiHack_NotRunningONETWO';publicVariableServer 'AntiHack_NotRunningONETWO';
				};
			};
		};
	};
	if(isNil 'TWOONCE"+_randvar26+"') then
	{
		TWOONCE"+_randvar26+" = 'TWOONCE';
		[_puid,_name] spawn {
			_puid = _this select 0;
			_name = _this select 1;
			disableSerialization;
			while {1 == 1} do
			{
				if('toArray' != ('t' +'o' +'A' +'r' +'r' +'a' +'y')) then
				{
					AntiHack_toArray_broken = 'AntiHack_toArray_broken';publicVariableServer 'AntiHack_toArray_broken';
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('FNCbroken: toArray')];
					publicVariableServer '"+_randvar10+"';
				};
				if('format' != ('f' +'o' +'r' +'m' +'a' +'t')) then
				{
					AntiHack_format_broken = 'AntiHack_format_broken';publicVariableServer 'AntiHack_format_broken';
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('FNCbroken: format')];
					publicVariableServer '"+_randvar10+"';
				};
				if(format['%1',toArray ('str')] != '[115,116,114]') then
				{
					AntiHack_str_broken = 'AntiHack_str_broken';publicVariableServer 'AntiHack_str_broken';
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('FNCbroken: str')];
					publicVariableServer '"+_randvar10+"';
				};
				if(str (toArray 'ctrlText') != '[99,116,114,108,84,101,120,116]') then
				{
					AntiHack_ctrlText_broken = 'AntiHack_ctrlText_broken';publicVariableServer 'AntiHack_ctrlText_broken';
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('FNCbroken: ctrlText')];
					publicVariableServer '"+_randvar10+"';
				};
				if(str (toArray 'ctrlEnabled') != '[99,116,114,108,69,110,97,98,108,101,100]') then
				{
					AntiHack_ctrlEnabled_broken = 'AntiHack_ctrlEnabled_broken';publicVariableServer 'AntiHack_ctrlEnabled_broken';
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('FNCbroken: ctrlEnabled')];
					publicVariableServer '"+_randvar10+"';
				};
				if(str (toArray 'finddisplay') != '[102,105,110,100,100,105,115,112,108,97,121]') then
				{
					AntiHack_finddisplay_broken = 'AntiHack_finddisplay_broken';publicVariableServer 'AntiHack_finddisplay_broken';
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('FNCbroken: finddisplay')];
					publicVariableServer '"+_randvar10+"';
				};
				if(ctrlEnabled 4) then
				{
					AntiHack_CTRL4 = 'AntiHack_CTRL4';publicVariableServer 'AntiHack_CTRL4';
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('Active Menu CTRL4')];
					publicVariableServer '"+_randvar10+"';
				};
				if(ctrlText 8 != '') then
				{
					AntiHack_CTRL8 = 'AntiHack_CTRL8';publicVariableServer 'AntiHack_CTRL8';
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('Active Menu CTRL8')];
					publicVariableServer '"+_randvar10+"';
				};
				if(ctrlEnabled 810) then
				{
					AntiHack_CTRL810 = 'AntiHack_CTRL810';publicVariableServer 'AntiHack_CTRL810';
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('Active Menu CTRL810')];
					publicVariableServer '"+_randvar10+"';
				};
				if !(true) then
				{
					AntiHack_ValueReassignment = 'AntiHack_ValueReassignment';publicVariableServer 'AntiHack_ValueReassignment';
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('Value Reassignment: true')];
					publicVariableServer '"+_randvar10+"';
				};
				if(false) then
				{
					AntiHack_ValueReassignment = 'AntiHack_ValueReassignment';publicVariableServer 'AntiHack_ValueReassignment';
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('Value Reassignment: false')];
					publicVariableServer '"+_randvar10+"';
				};
				if(!isNil 'BIS_loadingText') then
				{
					AntiHack_loadingText = 'AntiHack_loadingText';publicVariableServer 'AntiHack_loadingText';
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('loadingText')];
					publicVariableServer '"+_randvar10+"';
				};
				{
					if(!isNil _x) then
					{
						_log = format['BadVar 0: %1 %2',_x,str _x];
						"+_randvar10+" = [_name,_puid,'BAN',toArray(_log)];publicVariableServer '"+_randvar10+"';
						HACKER_FOUND = 'HACKER_FOUND';publicVariableServer 'HACKER_FOUND';
						[] call compile 'findDisplay 46 closeDisplay 0;';
					};
					_m = missionNamespace getVariable _x;
					if(!isNil '_m') then
					{
						_log = format['BadVar in missionNamespace: %1 %2',_x,_m];
						"+_randvar10+" = [_name,_puid,'BAN',toArray(_log)];publicVariableServer '"+_randvar10+"';
						HACKER_FOUND = 'HACKER_FOUND';publicVariableServer 'HACKER_FOUND';
						[] call compile 'findDisplay 46 closeDisplay 0;';
					};
					_u = uiNamespace getVariable _x;
					if(!isNil '_u') then
					{
						_log = format['BadVar in uiNamespace: %1 %2',_x,_u];
						"+_randvar10+" = [_name,_puid,'BAN',toArray(_log)];publicVariableServer '"+_randvar10+"';
						HACKER_FOUND = 'HACKER_FOUND';publicVariableServer 'HACKER_FOUND';
						[] call compile 'findDisplay 46 closeDisplay 0;';
					};
					_p = parsingNamespace getVariable _x;
					if(!isNil '_p') then
					{
						_log = format['BadVar in parsingNamespace: %1 %2',_x,_p];
						"+_randvar10+" = [_name,_puid,'BAN',toArray(_log)];publicVariableServer '"+_randvar10+"';
						HACKER_FOUND = 'HACKER_FOUND';publicVariableServer 'HACKER_FOUND';
						[] call compile 'findDisplay 46 closeDisplay 0;';
					};
				} forEach ['hhahaaaaar','CharlieSheenkeybinds','KickOFF','yolo','runonce','notakeybind','GEFClear','GEFClose','GEFWhite','GEFRed','GEFGreen','GEFCyan','FirstHint','LoganIsTired',
				'MonsterCheats_Admin_Options','MonsterCheats_Toggle_Mods','MonsterCheats_Toggle'];
				{
					if(!isNull (findDisplay _x)) then
					{
						_log = format['MenuBasedHack_D%1',_x];
						"+_randvar10+" = [_name,_puid,'BAN',toArray(_log)];publicVariableServer '"+_randvar10+"';
						HACKER_FOUND = 'HACKER_FOUND';publicVariableServer 'HACKER_FOUND';
						[] call compile 'findDisplay 46 closeDisplay 0;';
					};
				} forEach [166];
				uiSleep 0.5;
				if(!isNil 'player') then
				{
					AntiHack_PLAYER_BROKEN = 'AntiHack_PLAYER_BROKEN';publicVariableServer 'AntiHack_PLAYER_BROKEN';
					[] call compile 'findDisplay 46 closeDisplay 0;';
				};
				if(typeName player != 'OBJECT') then
				{
					AntiHack_WRONG_TYPE = 'AntiHack_WRONG_TYPE';publicVariableServer 'AntiHack_WRONG_TYPE';
					[] call compile 'findDisplay 46 closeDisplay 0;';
				};
				if(str(player) == '<NULL-object>') then
				{
					AntiHack_NULL_object = 'AntiHack_NULL_object';publicVariableServer 'AntiHack_NULL_object';
					[] call compile 'findDisplay 46 closeDisplay 0;';
				};
				if(isNull player) then
				{
					AntiHack_Player_is_Null = 'AntiHack_Player_is_Null';publicVariableServer 'AntiHack_Player_is_Null';
					[] call compile 'findDisplay 46 closeDisplay 0;';
				};
				if(!isNil 'hideMe') then
				{
					if(typeName hideMe == 'OBJECT') then
					{
						if(str(hideMe) != '<NULL-object>') then
						{
							if(hideMe in [player,vehicle player]) then
							{
								hideMe = 'hideMe';publicVariableServer 'hideMe';
								"+_randvar10+" = [_name,_puid,'BAN',toArray ('InvisibleHack: hideMe')];
								publicVariableServer '"+_randvar10+"';
							};
						};
					};
				};
			};
		};
	};
	_h = 'Rsc';_e = 'Raz';_y = 'zler';
	if(isClass(configFile >> (_h+_e+_y))) then
	{
		call compile format['Hacker%1 = ''Hacker%1'';publicVariable ''Hacker%1'';',_puid];
		[] spawn "+_randvar2+";
		"+_randvar10+" = [_name,_puid,'BAN',toArray ('Active Menu: Zero')];
		publicVariableServer '"+_randvar10+"';
	};
};
publicVariable '"+_randvar11+"';
"+_randvar12+" = {
	_puid = _this select 0;_name = _this select 1;
	if(_puid != '') then
	{
		if !(_puid in "+str _allAdmins+") then
		{
			if((!isNil 'PV_AdminMainCode') || (!isNil 'PV_LowLevel_List') || (!isNil 'PV_NormalLevel_List') || (!isNil 'PV_SuperLevel_List') || (!isNil 'PV_DevUlDs')) then
			{
				[] spawn {sleep 0.5;AntiHack_adminvar = 'AntiHack_adminvar';publicVariableServer 'AntiHack_adminvar';};
				"+_randvar10+" = [_name,_puid,'BAN',toArray ('Admin Variable Found')];
				publicVariableServer '"+_randvar10+"';
			};
			if(!isNil 'setGroupIconsVisible') then
			{
				[] spawn {sleep 0.5;AntiHack_GroupIcons = 'AntiHack_GroupIcons';publicVariableServer 'AntiHack_GroupIcons';};
				"+_randvar10+" = [_name,_puid,'BAN',toArray ('setGroupIconsVisible')];
				publicVariableServer '"+_randvar10+"';
			};
			if(!isNil 'groupIconsVisible') then
			{
				[] spawn {sleep 0.5;AntiHack_GroupIcons = 'AntiHack_GroupIcons';publicVariableServer 'AntiHack_GroupIcons';};
				"+_randvar10+" = [_name,_puid,'BAN',toArray ('FNCbroken: groupIconsVisible')];
				publicVariableServer '"+_randvar10+"';
			};
			if((groupIconsVisible select 0) || (groupIconsVisible select 1)) then
			{
				[] spawn {sleep 0.5;AntiHack_GroupIcons = 'AntiHack_GroupIcons';publicVariableServer 'AntiHack_GroupIcons';};
				"+_randvar10+" = [_name,_puid,'BAN',toArray ('FNCbroken: groupIconsVisible')];
				publicVariableServer '"+_randvar10+"';
			};
			if(!isNil '"+_randvar30+"') then
			{
				[] spawn {sleep 0.5;AntiHack_adminvar = 'AntiHack_adminvar';publicVariableServer 'AntiHack_adminvar';};
				"+_randvar10+" = [_name,_puid,'BAN',toArray ('Admin Variable Found')];
				publicVariableServer '"+_randvar10+"';
			};
			if !("+str _UIM+") then
			{
				if(isNil 'FOURONCE"+_randvar26+"') then
				{
					FOURONCE"+_randvar26+" = 'FOURONCE';
					[_name,_puid] spawn {
						_name = _this select 0;
						_puid = _this select 1;
						sleep 20;
						endLoadingScreen;
						preProcessFileLineNumbers 'Scan completed, bad content was';
						{
							endLoadingScreen;
							_c = preprocessFileLineNumbers _x;
							if(_c != '') then
							{
								[] spawn {sleep 0.5;AntiHack_BadFile = 'AntiHack_BadFile';publicVariableServer 'AntiHack_BadFile';};
								_log = format['BadFile: %1 | %2',_x,_c];
								"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
								publicVariableServer '"+_randvar10+"';
							};
						} forEach
						[
							'Expansion\Addons\ui_addons.pbo',
							'\z\addons\ui_addons\decrypt.sqf',
							'ui_addons\decrypt.sqf',
							'decrypt.sqf',
							'testest.sqf','testestt.sqf','RooslahVeeSevan.sqf','localBox.sqf','News.sqf'
						];
					};
				};
			};
		};
	};
};
publicVariable '"+_randvar12+"';
"+_randvar21+" = true;
"+_randvar28+" = {
	[_puid,_name] spawn {
		_puid = _this select 0;
		_name = _this select 1;
		while {1 == 1} do
		{
			{
				if !(isNil _x) then
				{
					[] spawn {sleep 0.5;AntiHack_FNCbroken = 'AntiHack_FNCbroken';publicVariableServer 'AntiHack_FNCbroken';};
					[] spawn "+_randvar2+";
					_log = format['FNCbroken: %1',_x];
					"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
					publicVariableServer '"+_randvar10+"';
				};
				true
			} count ['typeName','lbClear','closedialog','startloadingscreen','endLoadingScreen','findDisplay','setposATL','getPos','to',
			'closeDisplay','getPlayerUID','publicVariableServer','setPos','toArray','setposASL','getPosASL','allowDamage','setTerrainGrid',
			'endMission','str','isNil','diag_log','format','removeMagazines','getPosATL','from','ctrlEnabled','uiNameSpace',
			'removeMagazine','failMission','diag_tickTime','publicvariable','profileNamespace','for','toString','resize','toLower',
			'displayRemoveAllEventHandlers','ctrlRemoveAllEventHandlers','removeWeapon','&&','||','removeAction','in','spawn',
			'do','displayCtrl','player','select','saveProfileNamespace','exitWith','or','and','visibleMap','uiSleep','alive',
			'isNull','typeOf','distance','true','false','isDedicated','unitRecoilCoefficient','call','setunitRecoilCoefficient',
			'waitUntil','speed','while','if','isServer','then','primaryWeapon','unitBackpack','magazines','weapons','getMagazineCargo',
			'getWeaponCargo','isPlayer','dialog','disableSerialization','count','ctrlSetText','ctrlText','systemChat','commandingMenu',
			'showcommandingMenu','disableUserInput','time','local','forEach','nearEntities','round','onEachFrame'];
			{
				if !(isNil _x) then
				{
					[] spawn {sleep 0.5;AntiHack_BadVar = 'AntiHack_BadVar';publicVariableServer 'AntiHack_BadVar';};
					[] spawn "+_randvar2+";
					_log = format['BadVar 1: %1',_x];
					"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
					publicVariableServer '"+_randvar10+"';
				};
				true
			} count ['ANTIHACKKICK','lel','fnx3','vars','PSwap','toLower_new','BCast','thfile','tlmadminrq','infiSTARBLACK','name','carepkg','scrollAim','BlurExec','sbpc','CALLRE',
			'quake','menu_run','ZedProtect','actid1','vehicles1','MapClicked','MapClickedPosX','MouseUpEvent','scrollPlayerlist','keypress_xxx','D_AMEZ_COA',
			'envi','G_A_N_G_S_T_A','ZoombiesCar','timebypass','returnString_z','isori','tangrowth27','PVAH_AdminRequest','AH_OFF_LOL','b','infiSTAR_fillRE',
			'qwak','infoe','font','title_dialog','sexymenu_adds_Star','boolean_1','initre337','skype_option','bleh','magnetomortal','fnc_allunits','sbp',
			'PV_IAdminMenuCode','PVAH_WriteLogRequest','skype_img','Lhacks','Lpic','LtToTheRacker','Lexstr','take1','Called','epochExec','sdgff4535hfgvcxghn',
			'adadawer24_1337','fsdddInfectLOL','W_O_O_K_I_E_ANTI_ANTI_HAX','W_O_O_K_I_E_Car_RE','kW_O_O_K_I_E_Go_Fast','epchDeleted','lystobindkeys','lystoKeypress',
			'toggle_1','shiftMenu','dbClicked','b_loop','re_loop','v_bowen','bowen','melee_startAttack','asdasdasd','antihax2','PV_AdminMenuCode','AdminLoadOK',
			'AdminLoadOKAY','PV_TMPBAN','T_o_g_g_l_e_BB','fixMenu','PV_AdminMenuCodee','AdminPlayer','PVAH_AdminRequestVariable','epochBackpack','JME_Red',
			'JME_MENU_Sub','JME_menu_title','JME_Sub','JME_OPTIONS','god','heal','grass','fatguybeingchasedbyalion','night','day','infammo','nvg','thermal',
			'Keybinds','fredtargetkill','loopfredtpyoutome','epochTp','AdminLst','BB_Pr0_Esp','BBProEsp','epochMapMP','CALLRESVR','lazy_ILHA_is_lazy',
			'trap','boomgoats','morphme','morph','blfor','blfor2','blfor3','rdfor','rdfor2','rdfor3','napa','civ','runonce','keybindz','BB_Menu_Fnc',
			'mod_select','scrollmenu','ly5t1c','JJMMEE_Swagger','Bobsp','Speed_Hack_cus','pList_star_peter_cus','RGB','onKeyPress','neo_throwing',
			'Menu_I_Run_Color_LP','Blue_I_Color_LP','Orange_I_Color_LP','Menu_I_On_Color_LP','Menu_I_Off_Color_LP','Speed_Hack_cus','cus_SPEED_DOWN',
			'pnc','SpyglassFakeTrigger','infammook','Tit_Choppertimer','Mystic_ESP','biggies_menu_open','MM_150','FND_fnc_select','hoenUSABLE','changestats',
			'FND_fnc_subs','FND_fnc_spawn_veh','bombs','GLASS911_Run','key_combos_ftw'];
			uiSleep 0.5;
		};
	};
	"+_randvar21+" = true;
};
publicVariable '"+_randvar28+"';
[] spawn {
	"+_randvar26+" = true;
	"+_randvar36+" = true;
	_goodguys = "+str _allAdmins+";
	_zero = ""
		'"+_randvar9+"' addPublicVariableEventHandler
		{
			_puid = (_this select 1) select 0;
			_name = (_this select 1) select 1;
			setVehicleInit='no';processInitCommands='no';
			[_puid,_name] call "+_randvar11+";
			[_puid,_name] call "+_randvar12+";
			if(isNil '"+_randvar21+"') then {call "+_randvar28+";};
			if((!isNil 'hasInterface') || (!isNil 'isDedicated') || (!isNil 'isServer') || (!isNil 'uiSleep')) then {SpawnInBroken = 'SpawnInBroken';publicVariableServer 'SpawnInBroken';};
		};
		if((!isNil 'hasInterface') || (!isNil 'isDedicated') || (!isNil 'isServer') || (!isNil 'uiSleep')) then
		{
			[] spawn {sleep 0.5;SpawnInBroken = 'SpawnInBroken';publicVariableServer 'SpawnInBroken';};
			[] spawn "+_randvar2+";
			"+_randvar10+" = [_name,_puid,'BAN',toArray ('SpawnInBroken')];
			publicVariableServer '"+_randvar10+"';
		};
		if(!isServer) then
		{
			setVehicleInit='no';processInitCommands='no';
			_puid = getPlayerUID player;
			if(_puid != '') then
			{
				_name = name player;
				[_puid,_name] call "+_randvar12+";
				[_puid,_name] call "+_randvar11+";
				if(isNil '"+_randvar21+"') then {call "+_randvar28+";};
			};
			[] spawn {
				uiSleep 10;
				if(isNil '"+_randvar35+"') then
				{
					[] spawn {sleep 0.5;RunCheck1TIMEDOUT = 'RunCheck1TIMEDOUT';publicVariableServer 'RunCheck1TIMEDOUT';};
				};
			};
			"+_randvar34+" = true;
		};
	"";
	_one = ""
		if(isNil '"+_randvar36+"') then
		{
			_log = 'TEST';
			"+_randvar10+" = [name player,getPlayerUID player,'BAN',toArray (_log)];
			if(isNil '"+_randvar10+"') exitWith {};
			"+_randvar36+" = true;
		};
		_t = 't';
		_t = (!isNull findDisplay 46);
		if(typeName _t == 'STRING') then
		{
			FindDisplayBroken = 'FindDisplayBroken';publicVariableServer 'FindDisplayBroken';
		};
		_cd = 'cd';
		_cd = 'closeDisplay';
		if(_cd == 'cd') then
		{
			CloseDisplayBroken = 'CloseDisplayBroken';publicVariableServer 'CloseDisplayBroken';
		};
		if(!isDedicated) then
		{
			setVehicleInit='no';processInitCommands='no';
			"+_randvar2+" =
			{
				for '_c' from 0 to 101 do {findDisplay _c closeDisplay 0;};
				sleep 0.5;
				for '_d' from 0 to 101 do {disableUserInput true;};
			};
			[] spawn "+_randvar19+";
			if(isNil '"+_randvar33+"') then
			{
				"+_randvar33+" = true;
				[] spawn {
					while {1 == 1} do
					{
						if((isNil 'bis_fnc_infotext') || (isNil 'bis_fnc_findsafepos') || (isNil 'bis_fnc_dirto') || (isNil 'bis_fnc_dynamictext') || (isNil 'bis_fnc_invremove')) then
						{
							BIS_fnc_init = nil;
							call compile preprocessFileLineNumbers 'ca\Modules\Functions\init.sqf';
						};
						uiSleep 0.5;
						if(isNil '"+_randvar33+"') exitwith {};
					};
				};
			};
			[] spawn {
				uiSleep 10;
				if(isNil '"+_randvar34+"') then
				{
					[] spawn {sleep 0.5;RunCheck0TIMEDOUT = 'RunCheck0TIMEDOUT';publicVariableServer 'RunCheck0TIMEDOUT';};
				};
			};
			"+_randvar35+" = true;
		};
		this removeAllEventHandlers 'handleDamage';
		this allowDamage false;
		this hideObject true;
	"";
	_two = ""
		_cfg = configFile;
		for '_i' from 0 to count (_cfg)-1 do
		{
			_selected = _cfg select _i;
			if(isClass _selected) then
			{
				_c = configName _selected;
				_lc = toLower _c;
				if(_lc in ['pooploop','rscrazzler','rscListboxvg','vgdialog']) then
				{
					_log = format['BadCFG: %1 (BANNED)',_c];
					"+_randvar10+" = [name player,getPlayerUID player,'BAN',toArray (_log)];
					publicVariableServer '"+_randvar10+"';
					AntiHack_CFGCHANGED = 'AntiHack_CFGCHANGED';publicVariableServer 'AntiHack_CFGCHANGED';
					(findDisplay 46) closeDisplay 0;
				};
			};
		};
		if("+str _BHF+") then
		{
			_puid = getPlayerUID player;
			if(_puid != '') then
			{
				if !(_puid in ""+str _goodguys+"") then
				{
					[_puid,name player] spawn {
						setMarkerText='no';
						_puid = _this select 0;_name = _this select 1;
						_mytime = 0;while {1 == 1} do {_mytime = _mytime + 1;if(_mytime >= 20) exitWith {};if((!isNil 'dayz_animalCheck') || (!isNil 'dayz_medicalH') || (!isNil 'dayz_slowCheck') || (!isNil 'dayz_gui')) exitWith {};uiSleep 1;};
						lbsetpicture='no';createDiaryRecord='no';createTask='no';
						createSimpleTask='no';buttonSetAction='no';processDiaryLink='no';createDiaryLink='no';
						lbSetData='no';createTeam='no';exec='no';addGroupIcon='no';
						setGroupIconParams='no';addWeaponCargo='no';addMagazineCargo='no';setVehicleAmmoDef='no';
						setWeaponReloadingTime='no';addMPEventHandler='no';createVehicleLocal='no';inputAction='no';
						setWaypointStatements='no';addWaypoint='no';setVehicleInit='no';processInitCommands='no';
						loadFile='no';rcallVarcode='no';saveStatus='no';loadStatus='no';
						saveVar='no';drawIcon='no';setMarkerType='no';
						markerText='no';setMarkerAlpha='no';setMarkerBrush='no';setMarkerColor='no';
						setMarkerDir='no';setMarkerPos='no';setMarkerShape='no';setMarkerSize='no';
						createMarker='no';setMarkerDirLocal='no';setMarkerAlphaLocal='no';setMarkerPosLocal='no';
						setMarkerTextLocal='no';setMarkerTypeLocal='no';setMarkerColorLocal='no';setMarkerBrushLocal='no';
						setMarkerSizeLocal='no';setMarkerShapeLocal='no';createMarkerLocal='no';
						if("+str _FRC+") then {
							uiSleep 1;
							{
								if(isNil _x) then
								{
									_log = format['FNCRestored: %1',_x];
									"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
									publicVariableServer '"+_randvar10+"';
								};
								true
							} count ['lbsetpicture','createDiaryRecord','createTask','createSimpleTask','buttonSetAction','processDiaryLink','createDiaryLink','lbSetData','createTeam',
							'exec','addGroupIcon','setGroupIconParams','addWeaponCargo','addMagazineCargo','setVehicleAmmoDef','setWeaponReloadingTime','addMPEventHandler','createVehicleLocal',
							'inputAction','setWaypointStatements','addWaypoint','setMarkerBrushLocal','loadFile','rcallVarcode','saveStatus','loadStatus','saveVar','drawIcon','setMarkerText',
							'setMarkerType','markerText','setMarkerAlpha','setMarkerBrush','setMarkerColor','setMarkerDir','setMarkerPos','setMarkerShape','setMarkerSize','createMarker',
							'setMarkerDirLocal','setMarkerAlphaLocal','setMarkerPosLocal','setMarkerTextLocal','setMarkerTypeLocal','setMarkerColorLocal','setMarkerSizeLocal','setMarkerShapeLocal',
							'createMarkerLocal','setVehicleInit','processInitCommands'];
						};
					};
				};
			};
		};
	"";
	_timer1 = diag_tickTime;
	_timer2 = diag_tickTime;
	while {1 == 1} do
	{
		_unit = createAgent ['Rabbit', [(random 9000)-250,(random 9000)-250,0], [], 0, 'FORM'];
		if(!isNil '"+_randvar8+"') then {if(!isNull "+_randvar8+") then {clearVehicleInit "+_randvar8+";deleteVehicle "+_randvar8+";};};
		"+_randvar8+" = _unit;
		_unit setVehicleInit _zero;
		_unit setVehicleInit _one;
		_unit setVehicleInit _two;
		call compile 'processInitCommands;';
		if(diag_tickTime > _timer1) then
		{
			_timer1 = diag_tickTime + 25;
			
			{
				if(!isNull _x) then
				{
					_puid = getPlayerUID _x;
					if(_puid != '') then
					{
						_name = name _x;
						[_puid,_name,_x] call fnc_infiSTAR_PlayerLog;
					};
				};
			} forEach playableUnits;
		};
		if(diag_tickTime > _timer2) then
		{
			_timer2 = diag_tickTime + 15;
			
			if(isNil 'PlayerLogUpdateState') then {PlayerLogUpdateState = true;} else {if(typeName PlayerLogUpdateState != 'BOOL') then {PlayerLogUpdateState = true;};};
			if(PlayerLogUpdateState) then
			{
				if(isNil 'PlayerLogArray') then {PlayerLogArray = [];} else {if(typeName PlayerLogArray != 'ARRAY') then {PlayerLogArray = [];};};
				publicVariable 'PlayerLogArray';
				PlayerLogUpdateState = false;
			};
		};
		uiSleep 5;
	};
};
[] spawn {
	_timer1 = diag_tickTime;
	_timer2 = diag_tickTime;
	_goodguys = "+str _allAdmins+";
	while {1 == 1} do
	{
		if("+str _AHL+") then
		{
			if(diag_tickTime > _timer1) then
			{
				_timer1 = diag_tickTime + 30;
				
				{
					if(!isNull _x) then
					{
						_puid = getPlayerUID _x;
						if(_puid != '') then
						{
							_name = name _x;
							if !(_puid in "+str _allAdmins+") then
							{
								_cpos = getPosATL _x;
								_opos = _cpos;
								_loadedcheckpos = _x getVariable['"+_loadedcheckpos+"',[]];
								if(str _loadedcheckpos == '[]') then
								{
									_x setVariable['"+_loadedcheckpos+"',_cpos];
								}
								else
								{
									_opos = _x getVariable['"+_loadedcheckpos+"',[]];
								};
								
								
								_ctime = time;
								_otime = _ctime;
								_loadedchecktime = _x getVariable['"+_loadedchecktime+"',0];
								if(str _loadedchecktime == '0') then
								{
									_x setVariable['"+_loadedchecktime+"',_ctime];
								}
								else
								{
									_otime = _x getVariable['"+_loadedchecktime+"',0];
								};
								
								
								_anotherrunnincheck = _x getVariable['"+_anotherrunnincheck+"','-1'];
								if(_anotherrunnincheck != '-1') then
								{
									_log = 'anotherrunnincheck failed..';
									"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
									['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
									[_puid,_name,_x] spawn fnc_infiSTAR_Serverkick;
								};
								
								_timedif = _ctime - _otime;
								_maxdif = "+str _TDI+";
								_rv3 = _x getVariable['"+_randvar3+"',''];
								if(_rv3 != _puid) then
								{
									if(!isNull _x) then
									{
										if(alive _x) then
										{
											if((_timedif > _maxdif) || ((_timedif > (_maxdif-15)) && ((_cpos distance _opos > 12) || (_x != vehicle _x)))) then
											{
												if(_timedif > (_maxdif+20)) then {_x setDamage 5;};
												_log = format['AH NOT LOADED ON PLAYER (S):   timedif: %1, distance: %2, type: %3',
												_timedif,
												_cpos distance _opos,
												(typeOf (vehicle _x))
												];
												"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
												['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
												[_puid,_name,_x] spawn fnc_infiSTAR_Serverkick;
											};
										};
									};
								};
							};
						};
					};
					true
				} count playableUnits;
			};
		};
		if(diag_tickTime > _timer2) then
		{
			_timer2 = diag_tickTime + 30;
			
			_three = ""
				if(!isDedicated) then
				{
					_gg = false;
					if(lbSize 109 > 2) then
					{
						disableUserInput true;
						disableUserInput true;
						disableUserInput true;
						_gg = true;
					};
					
					{
						if(!isNil _x) then
						{
							disableUserInput true;
							disableUserInput true;
							disableUserInput true;
							_gg = true;
						};
					} forEach ['hoenUSABLE'];
					
					if(getPlayerUID player != '') then
					{
						if !(getPlayerUID player in ""+str _goodguys+"") then
						{
							{
								if(!isNull (findDisplay _x)) exitWith {
									disableUserInput true;
									disableUserInput true;
									disableUserInput true;
									_gg = true;
								};
							} forEach [17,64,155,156,162,1001,2929,3030,125,69,19,71,45,132,32,165,157,2727,30,9899,0110,110];
						};
					};
					if(_gg) then
					{
						_log = 'WUAT BASED MENU FOUND *thanks to Tez <3*';
						hint _log;
						systemchat _log;
						"+_randvar10+" = [name player,getPlayerUID player,'BAN',toArray (_log)];
						publicVariableServer '"+_randvar10+"';
					};
				};
			"";
			_obj = 'Rabbit' createVehicle [0,0,0];
			_obj addMPEventHandler ['MPKilled',_three];
			_obj setDamage 5;
			deleteVehicle _obj;
		};
		uiSleep 5;
	};
};
[] spawn {
	_instance = dayZ_instance;
	_SPCA = [];
	BIS_MPF_ServerPersistentCallsArray = _SPCA;
	_RESO = {};
	BIS_MPF_remoteExecutionServer = _RESO;
	_vehicleChecked = [];
	_knp = {
		if(isNil 'AnnounceHighJack"+_randvar5+"') then
		{
			AnnounceHighJack"+_randvar5+" = true;
			[] spawn {
				while {1 == 1} do
				{
					server_hiveWrite = {};server_hiveReadWrite = {};server_hiveReadWriteLarge = {};
				};
			};
			[] spawn {
				while {1 == 1} do
				{
					_do = '
						if(isNil ''AnnounceHighJackLoop"+_randvar5+"'') then
						{
							AnnounceHighJackLoop"+_randvar5+" = true;
							[] spawn {
								while {1 == 1} do
								{
									cutText [''WARNING'',''WHITE IN''];
									hint ''WARNING'';
									systemChat ''Somebody is breaking server functions!'';
									systemChat ''Log-out and please inform an Admin on teamspeak or forums.'';
									uiSleep 2;
								};
							};
						};
					';
					_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
					diag_log 'infiSTAR.de: Somebody is breaking server functions!';
					['SERVER',['SERVER','SERVER','HLOG','Somebody is breaking server functions!']] call fnc_handle"+_randvar10+";
					uiSleep 30;
				};
			};
		};
	};
	_PVAH_AdminReq = {
		diag_log format['infiSTAR.de fnc_AdminFirstReq: %1',_this select 1];
		_playableUnits = "+str _allAdmins+";
		
		_array = _this select 1;
		if(_array in ['']) exitWith {};
		if(typeName _array != 'ARRAY') exitWith {};
		
		_option = _array select 0;
		if(_option in ['']) exitWith {};
		if(typeName _option != 'SCALAR') exitWith {};
		
		_playerObj = _array select 1;
		if(_playerObj in ['']) exitWith {};
		if(typeName _playerObj != 'OBJECT') exitWith {};
		if(isNull _playerObj) exitWith {};
		
		_clientID = (owner _playerObj);
		_clientUID = (getPlayerUID _playerObj);
		_clientName = (name _playerObj);
		
		if((_clientUID in ['',' ','0']) || (typeName _clientUID != 'STRING')) exitWith
		{
			diag_log format['infiSTAR.de fnc_AdminFirstReq %1(%2): !!!!!!ADMIN-LOGIN-ERROR!!!!!!',_clientName,_clientUID];
			['SERVER',[_clientName,_clientUID,'HLOG','!!!!!!ADMIN-LOGIN-ERROR!!!!!!']] call fnc_handle"+_randvar10+";
		};
		if !(_clientUID in _playableUnits) exitWith
		{
			diag_log format['infiSTAR.de fnc_AdminFirstReq %1(%2): Attempted to Use the AdminMenu',_clientName,_clientUID];
			['SERVER',[_clientName,_clientUID,'HLOG','Attempted to Use the AdminMenu']] call fnc_handle"+_randvar10+";
		};
		"+_randvar30+" = '1';
		_clientID publicVariableClient '"+_randvar30+"';
		_var = _playerOb getVariable['"+_randvar29+"','-1'];
		if !(_var in [_array]) exitWith
		{
			diag_log format['infiSTAR.de fnc_AdminFirstReq %1(%2): AdminRequest Failed (Local %3/ Server %4)',_clientName,_clientUID,_var,_array];
			['SERVER',[_clientName,_clientUID,'HLOG',format['AdminRequest Failed: (Local %1/ Server %2)',_var,_array]]] call fnc_handle"+_randvar10+";
		};
		
		
		if(_option == 1) then
		{
			_unit = _array select 2;
			_pos = _array select 3;
			"+_AHpos+" = [_clientName,_clientUID,_pos];
			{(owner _x) publicVariableClient '"+_AHpos+"';} forEach (crew vehicle _unit);
			(vehicle _unit) setPos _pos;
		};
		if(_option == 1234) then
		{
			_puid = _array select 2;
			diag_log format['infiSTAR.de ******ADMIN-LOGIN******: %1(%2)',_clientName,_clientUID];
			if((_clientUID in _playableUnits) && (_puid == _clientUID)) then
			{
				_clientID PublicVariableClient 'PV_AdminMainCode';
			};
		};
		if(_option == 69) then
		{
			if(_clientUID in _playableUnits) then
			{
				_do = MarkerText '"+_remark+"';
				if(_do == '') exitWith {};
				'"+_remark+"' setMarkerText (format['%1',_clientUID]);
				if(count _array == 3) exitWith {if(str(_array select 2) == '0') then {call compile _do;};};
				
				_unit = createAgent ['Rabbit', [4000,4000,0], [], 0, 'FORM'];
				_unit setVehicleInit _do;
				processInitCommands;
				deleteVehicle _unit;
			};
		};
		_MOD_EPOCH = "+str _MEH+";
		call fnc_AdminReqProceed;
	};
	_fnc_DisconnectCustom =
	{
		private ['_playerObj','_clientUID','_clientName','_characterID','_playerPos'];
		_clientUID = _this select 0;
		_clientName = _this select 1;
		
		_playerObj = objNull;
		if(isNull _playerObj) then
		{
			{
				if(getPlayerUID _x == _clientUID) exitWith
				{
					_playerObj = _x;
				};
			} forEach playableUnits;
		};
		if(isNull _playerObj) then
		{
			_playerObj = call compile format['PVDZE_player%1',_clientUID];
			if(isNil '_playerObj') then {_playerObj=objNull;};
		};
		if(!isNull _playerObj) then
		{
			_playerPos = getPosATL _playerObj;
			_characterID = _playerObj getvariable['CharacterID','0'];
			if("+str _UDP+") then
			{
				_exit = false;
				{
					_obj = _x;
					if(!isNull _obj) then
					{
						if((_obj isKindOf 'Man') && !(alive _obj)) then
						{
							deleteVehicle _x;
						}
						else
						{
							_wpn = getWeaponCargo _obj;
							_mag = getMagazineCargo _obj;
							_bpc = getBackpackCargo _obj;
							if((str _wpn != '[[],[]]') || (str _mag != '[[],[]]') || (str _bpc != '[[],[]]')) then
							{
								_exit = true;
							};
						};
					};
				} forEach (nearestObjects [_playerPos, ['All'],12]);
				if(_exit) then
				{
					_log = format['%1 | PlayerUID: %2 CharacterID: %3 | Disconnected near Storage Unit @%4 | Resync Gear to prevent duping!',_clientName,_clientUID,_characterID,mapGridPosition _playerPos];
					diag_log _log;
					
					[_playerObj,magazines _playerObj,true,true,false] call server_playerSync;
				};
			};
			if("+str _UCL+") then
			{
				_isInCombat = 0;_isInCombat = _playerObj getVariable['startcombattimer',0];
				_timeout = 0;_timeout = _playerObj getVariable['combattimeout',0];
				if((_isInCombat == 1) || ((_timeout - time) > 0)) then
				{
					_log = format['CombatLog! Attacked @%1',mapGridPosition _playerPos];
					"+_randvar10+" = [_clientName,_clientUID,'SLOG',toArray (_log)];
					['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
				};
			};
		};
	};
	_server_onPlayerDisconnect_infiSTAR =
	{
		_uid = _this select 0;
		_name = _this select 1;
		_log = format['infiSTAR.de PlayerDisconnected: _uid: %1   _name: %2',_uid,_name];
		diag_log (_log);
		if((("+str _UDP+") || ("+str _UCL+")) && (!isNil 'DZE_CleanNull')) then
		{
			[_uid,_name] call fnc_DisconnectCustom;
		};
		[_uid,_name] call server_onPlayerDisconnect;
	};
	while {1 == 1} do
	{
		fnc_DisconnectCustom = _fnc_DisconnectCustom;
		server_onPlayerDisconnect_infiSTAR = _server_onPlayerDisconnect_infiSTAR;
		onPlayerDisconnected {[_uid,_name] call server_onPlayerDisconnect_infiSTAR;};		
		"+_randvar20+" = _PVAH_AdminReq;
		'PVAH_AdminReq' addPublicVariableEventHandler {_this call "+_randvar20+";};
		
		dze_diag_fps = {};
		_mPos = "+str _mPos+";
		_debug = createMarker ['respawn_west',_mPos];
		_cmPos = (getMarkerPos 'respawn_west');
		if(_cmPos distance _mPos > 100) then
		{
			'respawn_west' setMarkerPos _mPos;
			
			_nearGuys = [];
			{
				_puid = getPlayerUID _x;
				if(_puid != '') then
				{
					_log = format['%1 (%2)',name _x,_puid];
					_nearGuys = _nearGuys + [_log];
				};
			} forEach (_cmPos nearEntities ['AllVehicles',150]);
			_log = format['Somebody is trying to change the respawn marker position! %1',_nearGuys];
			"+_randvar10+" = ['SERVER','-','HLOG',toArray (_log)];
			['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
		};
		if(!isNil 'AdminLst') then
		{
			_log = format['Somebody is trying to highjack the server! AdminLst is attacked: %1',AdminLst];
			"+_randvar10+" = ['SERVER','-','HLOG',toArray (_log)];
			['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
			AdminLst = nil;
		};
		{
			if !(isNil _x) then
			{
				call _knp;
				_log = format['Function   %1   broken - Ending Mission! #0',_x];
				"+_randvar10+" = ['SERVER','-','HLOG',toArray (_log)];
				['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
				[] spawn {call compile ('endMission ''END1'';');call compile ('forceEnd;');};
			};
		} forEach ['closeDisplay','processInitCommands','setVehicleInit','removeAllEventHandlers','addEventHandler','allowDamage','entities','typeName',
		'forceEnd','allMissionObjects','playableUnits','vehicles','PVAH_AdminRequest','PVAH_WriteLogRequest','endMission','failMission','agents','isDedicated','isServer'];
		if(str _instance != str dayZ_instance) then
		{
			_log = format['dayZ_instance changed from %1 to %2',_instance,dayZ_instance];
			"+_randvar10+" = ['SERVER','-','HLOG',toArray (_log)];
			['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
			dayZ_instance = _instance;
		};
		if(str BIS_MPF_ServerPersistentCallsArray != str _SPCA) then
		{
			BIS_MPF_ServerPersistentCallsArray = _SPCA;
			_log = format['infiSTAR.de - ServerPersistent modified: %1',BIS_MPF_ServerPersistentCallsArray];
			diag_log _log;
		};
		if(str BIS_MPF_remoteExecutionServer != str _RESO) then
		{
			BIS_MPF_remoteExecutionServer = _RESO;
			_log = format['infiSTAR.de - remExServer modified: %1',BIS_MPF_remoteExecutionServer];
			diag_log _log;
		};
		'remExField' addPublicVariableEventHandler {};
		'remExFP' addPublicVariableEventHandler {};
		_logicz = (entities 'Logic');
		_fncMcnt = {typeOf _x == 'FunctionsManager'} count _logicz;
		if(_fncMcnt > 1) then
		{
			call _knp;
			_log = 'Remote Execution found - Ending Mission! #1';
			"+_randvar10+" = ['SERVER','-','HLOG',toArray (_log)];
			['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
			[] spawn {call compile ('endMission ''END1'';');call compile ('forceEnd;');};
		};
		{
			if(!isNull _x) then
			{
				if(typeOf _x == 'FunctionsManager') then
				{
					_x setPos [random 10000,10000,random 1000];
					
					_fmg = group _x;
					if(!isNull _fmg) then
					{
						if(isNil 'fncManagerGroup"+_randvar5+"') then {fncManagerGroup"+_randvar5+" = _fmg;};
						if(str _fmg != str(fncManagerGroup"+_randvar5+")) then
						{
							call _knp;
							_log = 'Remote Execution found - Ending Mission! #2';
							"+_randvar10+" = ['SERVER','-','HLOG',toArray (_log)];
							['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
							[] spawn {call compile ('endMission ''END1'';');call compile ('forceEnd;');};
						};
						if(count (units fncManagerGroup"+_randvar5+") > 1) then
						{
							call _knp;
							_log = 'Remote Execution found - Ending Mission! #3';
							"+_randvar10+" = ['SERVER','-','HLOG',toArray (_log)];
							['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
							[] spawn {call compile ('endMission ''END1'';');call compile ('forceEnd;');};
						};
					};
				}
				else
				{
					deleteVehicle _x;
				};
			};
		} forEach _logicz;
		if('infiSTAR' != ('i' +'n' +'f' +'i' +'S' +'T' +'A' +'R')) then {call _knp;[] spawn {call compile ('endMission ''END1'';');call compile ('forceEnd;');};};
		if("+str _UVC+") then {
			{
				if(!isNull _x) then
				{
					if !(_x in _vehicleChecked) then
					{
						_vehicleChecked = _vehicleChecked + [_x];
						_type = typeOf _x;
						if((!(_type in ("+str _ALLOWED_Vehicles+")) && ("+str _UVW+")) || (_type in ("+str _FORBIDDEN_Vehicles+"))) then
						{
							_posV = getPosATL _x;
							_crew = crew _x;
							
							_crewguys = [];
							if(count _crew > 0) then
							{
								{
									_puid = getPlayerUID _x;
									if(_puid != '') then
									{
										_crewguys = _crewguys + [format['%1 (%2)',name _x,_puid]];
									};
								} forEach _crew;
							};
							
							_nearGuys = [];
							{
								_puid = getPlayerUID _x;
								if(_puid != '') then
								{
									_log = format['%1 (%2)',name _x,_puid];
									if !(_log in _crewguys) then
									{
										_nearGuys = _nearGuys + [_log];
									};
								};
							} forEach (_posV nearEntities ['AllVehicles',150]);
							
							
							if(count _crew == 0) then
							{
								_log = format['Forbidden Vehicle: %1 (deleted) Near: %2 @%3',_type,_nearGuys,mapGridPosition _posV];
								"+_randvar10+" = ['SERVER','-','HLOG',toArray (_log)];
								['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
							}
							else
							{
								{
									_puid = getPlayerUID _x;
									if((_puid != '') && !(_puid in "+str _allAdmins+")) then
									{
										_log = format['Forbidden Vehicle: %1 @%2',_type,_posV];
										"+_randvar10+" = [name _x,_puid,'BAN',toArray (_log)];
										['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
										[_puid,name _x,_x] spawn fnc_infiSTAR_Serverkick;
									};
								} forEach _crew;
							};
							_obj = _x;
							_obj setDamage 5;
							if(!isNull _obj) then
							{
								_objectID 	= _obj getVariable['ObjectID','0'];
								_objectUID	= _obj getVariable['ObjectUID','0'];
								deleteVehicle _obj;
								[_objectID,_objectUID,'infiSTAR.de - Vehicle Check'] call server_deleteObj;
							};
						};
					};
				};
			} forEach ([0,0,0] nearEntities [['LandVehicle','Air','Ship'], 10000000]);
			uiSleep 2;
		};
		uiSleep 3;
	};
};
"+_randvar1+" = {
	_puid = _this select 0;_name = _this select 1;
	"+_randvar25+" = true;
	diag_log (format['infiSTAR.de - randvar1 created randvar27a (%1)',time]);
	[] spawn {
		_version = productVersion select 3;
		if(_version < 103718) then
		{
			uiSleep 3;
			_log1 = format['BadVersion: %1 - install newer arma2oa beta!',_version];
			hint _log1;
			cutText [_log1,'PLAIN DOWN'];
			uiSleep 5;
			[] spawn "+_randvar2+";
			_log2 = format['BadVersion: %1 (has to be a newer arma2oa beta - disconnected)',_version];
			"+_randvar10+" = [name player,getPlayerUID player,'SLOG',toArray (_log2)];
			publicVariableServer '"+_randvar10+"';
		};
	};
	if !(_puid in "+str _allAdmins+") then
	{
		[_name,_puid] spawn {
			_name = _this select 0;_puid = _this select 1;
			_dayz_spaceInterrupt = dayz_spaceInterrupt;
			disableSerialization;
			[_name,_puid] spawn {
				_name = _this select 0;_puid = _this select 1;
				uiSleep 18;
				if(isNil '"+_MenuChecksRunningx+"') then {
					(findDisplay 46) closeDisplay 0;
					_log = 'Menu Checks are broken!';
					"+_randvar10+" = [_name,_puid,'SLOG',toArray (_log)];
					publicVariableServer '"+_randvar10+"';
				};
			};
			uiNamespace setVariable ['RscDisplayRemoteMissions',nil];
			while {1 == 1} do
			{
				_btnAbort = (findDisplay 49) displayCtrl 104;
				_btnAbortTXT = toLower (ctrlText _btnAbort);
				_btnAbortTXTA = toArray _btnAbortTXT;
				_btnAbortTXTA resize 8;
				_btnAbortTXTA;
				_btnAbortTXT = toString _btnAbortTXTA;
				if(_btnAbortTXT in ['jay menu']) then
				{
					[] spawn "+_randvar2+";
					_log = 'naughty little kid.. no chocolate for you! (Jay Menu detected)';
					"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
					publicVariableServer '"+_randvar10+"';
				};
				
				if("+str _RCK+") then
				{
					_map = ((findDisplay 12) displayCtrl 51);
					{_map ctrlRemoveAllEventHandlers _x;} forEach ['onMouseButtonDblClick','MouseButtonClick','MouseButtonDown','MouseButtonUp','Draw'];
					{
						if !(isNull (findDisplay _x)) then
						{
							if(_x in [49,129]) then
							{
								(findDisplay _x) displayRemoveAllEventHandlers 'MouseZChanged';
								(findDisplay _x) displayRemoveAllEventHandlers 'mousemoving';
								(findDisplay _x) displayRemoveAllEventHandlers 'mouseholding';
							};
							if !(_x in [-1,106]) then
							{
								(findDisplay _x) displayRemoveAllEventHandlers 'MouseButtonDown';
								(findDisplay _x) displayRemoveAllEventHandlers 'MouseButtonUp';
							};
							(findDisplay _x) displayRemoveAllEventHandlers 'KeyDown';
							(findDisplay _x) displayRemoveAllEventHandlers 'KeyUp';
							(findDisplay _x) displayAddEventHandler ['KeyUp','_this call "+_randvar6+"'];
						};
					} forEach [-1,12,18,49,106,129];
					_display46 = (findDisplay 46);
					if(!isNull _display46) then
					{
						_display46 displayRemoveAllEventHandlers 'MouseButtonDown';
						_display46 displayRemoveAllEventHandlers 'MouseButtonUp';
						_display46 displayRemoveAllEventHandlers 'MouseZChanged';
						_display46 displayRemoveAllEventHandlers 'KeyUp';
						_display46 displayAddEventHandler ['KeyUp','_this call "+_randvar6+"'];
						_pos = getPos player;
						_posZ = _pos select 2;
						_veh = vehicle player;
						if((_posZ < 15) || (_veh != player)) then
						{
							if(!(_veh isKindOf 'ParachuteBase') && !(_veh isKindOf 'BIS_Steerable_Parachute')) then
							{
								_display46 displayRemoveAllEventHandlers 'mousemoving';
								_display46 displayRemoveAllEventHandlers 'mouseholding';
								_display46 displayRemoveAllEventHandlers 'KeyDown';
								dayz_spaceInterrupt"+_randvar6+" = _dayz_spaceInterrupt;
								_display46 displayAddEventHandler ['KeyDown','_this call dayz_spaceInterrupt"+_randvar6+"'];
							};
						};
					};
				}
				else
				{
					_display46 = (findDisplay 46);
					if(!isNull _display46) then
					{
						_display46 displayRemoveAllEventHandlers 'KeyUp';
						_display46 displayAddEventHandler ['KeyUp','_this call "+_randvar6+"'];
					};
				};
				_cc1 = format['%1',uiNamespace getVariable 'RscDisplayRemoteMissions'];
				if(_cc1 != '<null>') then
				{
					_log = format['MenuBasedHack_RscDisplayRemoteMissions: %1',_cc1];
					[] spawn "+_randvar2+";
					"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
					publicVariableServer '"+_randvar10+"';
				};
				if(!isNull ((findDisplay 64) displayCtrl 101)) then
				{
					[] spawn "+_randvar2+";
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('Active Menu: 64 ctrl 101')];
					publicVariableServer '"+_randvar10+"';
				};
				if(!isNull ((findDisplay 49) displayCtrl 0)) then
				{
					[] spawn "+_randvar2+";
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('Active Menu: 49 ctrl 0')];
					publicVariableServer '"+_randvar10+"';
				};
				if( (lbSelection  ((findDisplay 12) displayCtrl 1001)) select 0 == 1 && ((lbSize ((findDisplay 12) displayCtrl 1002)) > 2 )) then
				{
					[] spawn "+_randvar2+";
					"+_randvar10+" = [_name,_puid,'BAN',toArray ('YOLO Menu')];
					publicVariableServer '"+_randvar10+"';
				};
				if(!isNull (findDisplay 420420)) then
				{
					_state = true;
					{
						if((!isNull _x) && (alive _x) && (getPlayerUID _x == '') && !(_x isKindOf 'zZombie_Base') && !(_x isKindOf 'CAAnimalBase')) exitWith
						{
							_state = false;
						};
					} forEach (player nearEntities ['Man',5]);
					if(_state) then
					{
						(findDisplay 420420) closeDisplay 0;
						closeDialog 0;closeDialog 0;closeDialog 0;
					};
				};
				if(!isNull (findDisplay 41144)) then
				{
					_stateD = false;
					_stateV = false;
					if(isNil 'dayz_selectedDoor') then {_stateD = true;} else {if(isNull dayz_selectedDoor) then {_stateD = true;};};
					if(isNil 'dayz_selectedVault') then {_stateV = true;} else {if(isNull dayz_selectedVault) then {_stateV = true;};};
					if((_stateD) && (_stateV)) then
					{
						(findDisplay 41144) closeDisplay 0;
						closeDialog 0;closeDialog 0;closeDialog 0;
					};
				};
				if(!isNull (findDisplay 148)) then
				{
					if((lbSize 104)-1 > 3) then
					{
						[] spawn "+_randvar2+";
						_log = 'MenuBasedHack_MenuBasedHack_RscDisplayConfigureControllers';
						"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
						publicVariableServer '"+_randvar10+"';
					};
				};
				if(lbSize 109 > 2) then
				{
					[] spawn "+_randvar2+";
					_log = format['bad lbSize 109 - %1',lbSize 109];
					"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
					publicVariableServer '"+_randvar10+"';
				};
				_fbd = 'no';{if(!isNull (findDisplay _x)) exitWith {_fbd = str _x;};} forEach [17,64,155,156,162,1001,2929,3030,125,69,19,71,45,132,32,165,157,2727,30,9899,0110,110];
				if(_fbd != 'no') then
				{
					[] spawn "+_randvar2+";
					_log = format['Active Menu: %1',_fbd];
					"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
					publicVariableServer '"+_randvar10+"';
				};
				{if(!isNull (findDisplay _x)) then {(findDisplay _x) closeDisplay 0;closeDialog 0;};} forEach [148];
				uiSleep 0.01;
				if("+str _CUD+") then
				{
					_break = true;
					_ALLOWED_Dialogs = "+str _ALLOWED_Dialogs+";
					for '_d' from 0 to (count _ALLOWED_Dialogs) - 1 do
					{
						_id = _ALLOWED_Dialogs select _d;
						if(!isNull (findDisplay _id)) exitWith {_break = false;};
					};
					if((_break) && !(ctrlEnabled 1900)) then
					{
						closeDialog 0;closeDialog 0;closeDialog 0;
					}
					else
					{
						if(!isNull (findDisplay 106)) then
						{
							if(!(ctrlEnabled 6902) && (lbSize ((findDisplay 106) displayCtrl 105) < 1)) then
							{
								closeDialog 0;closeDialog 0;closeDialog 0;
							};
						};
					};
					
					_display = findDisplay 106;
					if(!isNull _display) then
					{
						_chck = _display displayCtrl 101;
						_txt = ctrlText _chck;
						_txtA = toArray _txt;
						_cntA = count _txtA;
						if(_cntA < 3) then
						{
							closeDialog 0;
							for '_close' from 0 to 25 do {uiSleep 0.1;closeDialog 0;};
							_log = format['Gear Menu: %1',_txt];
							"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
							publicVariableServer '"+_randvar10+"';
						};
						for '_y' from -10 to 8888 do
						{
							if !(_y in [0,8,12,18,46,70,106,2200]) then
							{
								if(!isNull (findDisplay _y)) then
								{
									closeDialog 0;
									for '_close' from 0 to 25 do {uiSleep 0.1;closeDialog 0;};
									if(_y in [843]) then
									{
										[] spawn "+_randvar2+";
									};
								};
							};
						};						
					};
				};
				uiSleep 0.3;
				if("+str _MEH+") then
				{
					buttonSetAction [12004,'[(lbCurSel 12001)] call TraderDialogBuy;((ctrlParent (_this select 0)) closeDisplay 9000);'];
					buttonSetAction [12005,'[(lbCurSel 12001)] call TraderDialogSell;((ctrlParent (_this select 0)) closeDisplay 9000);'];
				};
				buttonSetAction [104,''];
				"+_MenuChecksRunningx+" = true;
			};
		};
		[_name,_puid] spawn {
			_name = _this select 0;_puid = _this select 1;
			player_weaponFiredNear"+_randvar5+" = player_weaponFiredNear;
			rdh"+_randvar5+" = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\fn_damageHandler.sqf';
			checkdamage"+_randvar5+" =
			{
				private['_damage'];
				_damage = _this select 2;
				
				if((str fnc_usec_damageHandler == '{}') || (str fnc_usec_damageHandler != str rdh"+_randvar5+")) then
				{
					_state = true;
					{
						if((!isNull _x) && (alive _x) && (getPlayerUID _x == '') && !(_x isKindOf 'zZombie_Base') && !(_x isKindOf 'CAAnimalBase')) exitWith
						{
							_state = false;
						};
					} forEach ((getPos player) nearEntities ['Man',300]);
					if(_state) then
					{
						fnc_usec_damageHandler = rdh"+_randvar5+";
					};
				};
				_this call fnc_usec_damageHandler;
				if(str fnc_usec_damageHandler != '{}') then
				{
					if((_damage > 0.4) && (player == vehicle player)) then
					{
						if(isNil 'DMG"+_randvar5+"') then
						{
							DMG"+_randvar5+" = true;
							if(isNil 'r_player_blood') then { r_player_blood = -500; } else { if(typeName r_player_blood != 'SCALAR') then { r_player_blood = -500;YOLO = true; }; };
							if(r_player_blood == 12000) then
							{
								[] spawn {
									uiSleep 2;
									if(isNil 'r_player_blood') then { r_player_blood = -500; } else { if(typeName r_player_blood != 'SCALAR') then { r_player_blood = -500;YOLO = true; }; };
									if(r_player_blood == 12000) then
									{
										_log = format['No Blood loss! %1',r_player_blood];
										"+_randvar10+" = [name player,getPlayerUID player,'SLOG',toArray (_log)];
										publicVariableServer '"+_randvar10+"';
										if(isNil 'LASTDAMAGESOURCE') then {LASTDAMAGESOURCE = player;} else {if(isNull LASTDAMAGESOURCE) then {LASTDAMAGESOURCE = player;};};
										[LASTDAMAGESOURCE,'shotheavy'] spawn player_death;
										player setHit['Body',1];
									};
									DMG"+_randvar5+" = nil;
								};
							}
							else
							{
								[r_player_blood] spawn {
									_tempBlood = _this select 0;
									uiSleep 1;
									if(isNil 'r_player_blood') then { r_player_blood = -500; } else { if(typeName r_player_blood != 'SCALAR') then { r_player_blood = -500;YOLO = true; }; };
									if(((r_player_blood == _tempBlood) || (r_player_blood > _tempBlood)) && (r_player_blood > 3000)) then
									{
										r_player_blood = r_player_blood - ((random 800) + (random 800) + 500);
										_tmp = r_player_blood;
										uiSleep 0.5;
										if(isNil 'r_player_blood') then { r_player_blood = -500; } else { if(typeName r_player_blood != 'SCALAR') then { r_player_blood = -500;YOLO = true; }; };
										if(r_player_blood > _tmp) then
										{
											_log = format['Blood should be %1 but is %2..',_tmp,r_player_blood];
											"+_randvar10+" = [name player,getPlayerUID player,'SLOG',toArray (_log)];
											publicVariableServer '"+_randvar10+"';
										};
									};
									DMG"+_randvar5+" = nil;
								};
							};
						};
					};
				};
			};
			fnc_STAR_damageHandler"+_randvar5+" =
			{
				private['_damage','_source','_projectile'];
				_damage = _this select 2;
				_source = _this select 3;
				_projectile = _this select 4;
				LASTDAMAGESOURCE = _source;
				
				_shooter = objNull;
				if(!isNil '_source') then
				{
					if(typeName _source == 'OBJECT') then
					{
						if(!isNull _source) then
						{
							_shooter = _source;
						};
					};
				};
				
				_exit = false;
				if(!isNull _shooter) then
				{
					if((vehicle _shooter) isKindOf 'Tank') exitWith {_exit = true;_this call checkdamage"+_randvar5+";};
					if(((_damage > 99) && ((vehicle _shooter) isKindOf 'Man')) || (_damage > 12000)) exitWith {_exit = true;};
					if((_damage <= 99) && (_damage > 0.1) && (_shooter distance player < 1000)) exitWith {_exit = true;_this call checkdamage"+_randvar5+";};
					_sPUID = getPlayerUID _shooter;
					if(_sPUID != '') then
					{
						_sNAME = name _shooter;
						_dist = _shooter distance player;
						if((_dist > 5000) && (_damage > 0.2)) then
						{
							_dist1 = player distance "+str _mPos+";
							_dist2 = _shooter distance "+str _mPos+";
							_exit = true;
							if(isNil 'deathHandled') then { deathHandled = true; } else { if(typeName deathHandled != 'BOOL') then { deathHandled = true;YOLO = true; }; };
							if((_dist1 > 2500) && (_dist2 > 2500) && (_sPUID != '') && (getPlayerUID player != '') && (alive player) && (!deathHandled)) then
							{
								_weapon = currentWeapon (vehicle _shooter);
								_log = format['Hit %1(%2) @%3 from %4 (%5m) with Weapon: %6 (%7 Damage) %8',name player,getPlayerUID player,getPosATL player,getPosATL _shooter,_dist,_weapon,_damage,_projectile];
								"+_randvar10+" = [_sNAME,_sPUID,'HLOG',toArray (_log)];
								publicVariableServer '"+_randvar10+"';
							};
						};
					};
					
				};
				if(_exit) exitWith {};
				
				_this call checkdamage"+_randvar5+";
			};
			infi_fired"+_randvar5+" =
			{
				private['_cwep','_muzzle','_projectile'];
				_cwep = _this select 1;
				_muzzle = _this select 4;
				_projectile = _this select 6;
				if((_muzzle isKindOf 'Melee') || (_muzzle isKindOf ('Bol' +'tSteel')) || (_muzzle isKindOf 'WoodenArrow') || (_muzzle isKindOf 'GrenadeHand') || (_muzzle isKindOf 'ThrownObjects') || (_muzzle isKindOf 'RoadFlare') || (_muzzle isKindOf 'ChemLight')) exitWith {};
				_cmag = currentMagazine player;
				if(!(_cwep in ['','Throw','Flare','Put']) && !(_projectile in ['','PipeBomb']) && (player == vehicle player)) then
				{
					_cfgmuzzle = getText(configFile >> 'CfgMagazines' >> _cmag >> 'ammo');
					if(_muzzle != _cfgmuzzle) then
					{
						player removeMagazines _cmag;
						player removeWeapon _cwep;
					};
					
					_maxAmmo = getNumber (configFile >> 'CfgMagazines' >> _cmag >> 'count');
					if(_maxAmmo > 1) then
					{
						[_maxAmmo,_cwep,_cmag] spawn {
							uiSleep 0.2;
							_maxAmmo = _this select 0;
							_cwep = _this select 1;
							_cmag = _this select 2;
							_camm = player ammo _cwep;
							if(_camm == _maxAmmo) then
							{
								player removeMagazine _cmag;
								_log = format['No Ammo Loss - Removed Current Magazine: %1 %2 %3 %4',_cwep,_cmag,_camm,_maxAmmo];
								"+_randvar10+" = [name player,getPlayerUID player,'HLOG',toArray (_log)];
								publicVariableServer '"+_randvar10+"';
							};
						};
					};
					
					_swep = '';
					{
						if((getNumber (configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith
						{
							_swep = _x;
						};
					} forEach (weapons player);
					if(_cwep == _swep) then
					{
						_spd = speed _projectile;
						if(_spd >= 1800) then
						{
							player removeMagazines _cmag;
							player removeWeapon _cwep;
						};
					};
				};
			};
			fnc_animchanged"+_randvar5+" =
			{
				if((_this select 1) in ['smk_urbanproneright','smk_prone_to_urbanprone_right','smk_urbanproneleft','smk_prone_to_urbanprone_left']) then
				{
					if((nearestObject [player,'Plastic_Pole_EP1_DZ']) distance player < 75) then
					{
						[objNull, player, rswitchMove,''] call RE;
						player playActionNow 'stop';
						_log = 'Can not use urbanprone near Plot Poles!';
						hint _log;
						systemChat _log;
					};
				};
			};
			_death = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\player_death.sqf';
			while {1 == 1} do
			{
				player_death = _death;
				player allowDamage true;
				vehicle player allowDamage true;
				player removeAllEventHandlers 'Damaged';
				player removeAllEventHandlers 'Dammaged';
				player removeAllEventHandlers 'AnimDone';
				player removeAllEventHandlers 'AnimStateChanged';
				player removeAllEventHandlers 'Hit';
				player removeAllEventHandlers 'FiredNear';
				player addEventHandler ['FiredNear',{_this call player_weaponFiredNear"+_randvar5+"} ];
				player removeAllEventHandlers 'HandleDamage';
				player addEventHandler ['HandleDamage',{_this call fnc_STAR_damageHandler"+_randvar5+"} ];
				player removeAllEventHandlers 'AnimChanged';
				player addEventHandler ['AnimChanged', {_this call fnc_animchanged"+_randvar5+"}];
				player removeAllEventHandlers 'Respawn';
				player addEventHandler ['Respawn', {_id = [] spawn player_death}];
				player removeAllEventHandlers 'Killed';
				player addEventHandler ['Killed', {if(isNil 'LASTDAMAGESOURCE') then {LASTDAMAGESOURCE = player;} else {if(isNull LASTDAMAGESOURCE) then {LASTDAMAGESOURCE = player;};};_id = [LASTDAMAGESOURCE,'shotheavy'] spawn player_death}];
				player removeAllEventHandlers 'Fired';
				player addEventHandler ['Fired', {
					_this call player_fired;
					_this call infi_fired"+_randvar5+";
					if(isNil 'inSafeZone') then { inSafeZone = false; } else { if(typeName inSafeZone != 'BOOL') then { inSafeZone = false;YOLO = true; }; };
					if(inSafeZone) then {deleteVehicle (nearestObject [_this select 0,_this select 4]);};
				}];
				uiSleep 0.5;
			};
		};
		[_puid,_name] spawn {
			_puid = _this select 0;
			_name = _this select 1;
			_mPos = "+str _mPos+";
			_spawnPos = _mPos;
			dayz_spawnPos = getPosATL player;
			_spawnPos = getPosATL player;
			_zombieCheck = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\player_zombieCheck.sqf';
			_zombieAttack = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\player_zombieAttack.sqf';
			disableSerialization;
			while {1 == 1} do
			{
				if !("+str _UCS+") then
				{
					if((ctrlEnabled ((uiNameSpace getVariable 'BIS_dynamicText') displayctrl 9999)) || (ctrlShown ((uiNameSpace getVariable 'BIS_dynamicText') displayctrl 9999))) then
					{
						[] spawn "+_randvar2+";
						"+_randvar10+" = [_name,_puid,'BAN',toArray ('dynamicText CHECK 1')];
						publicVariableServer '"+_randvar10+"';
					};
					if(str(uiNameSpace getVariable 'BIS_dynamicText') != 'No Display') then
					{
						[] spawn "+_randvar2+";
						"+_randvar10+" = [_name,_puid,'BAN',toArray ('dynamicText CHECK 2')];
						publicVariableServer '"+_randvar10+"';
					};
				};
				if(!isNil 'dayz_temperatur') then
				{
					if(dayz_temperatur > 42) then
					{
						dayz_temperatur = 37;
						uiSleep 2;
						if(dayz_temperatur > 42) then
						{
							[] spawn "+_randvar2+";
							_log = format['dayz_temperatur: %1',dayz_temperatur];
							"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
							publicVariableServer '"+_randvar10+"';
						};
					};
				};
				
				{
					_ctrlID = _x;
					_control = ((uiNameSpace getVariable 'DAYZ_GUI_display') displayctrl _ctrlID);
					_txt = ctrlText _control;
					if((_txt != '') && (ctrlShown _control)) then
					{
						_txtArr = toArray _txt;
						if !(46 in _txtArr) then
						{
							_control ctrlShow false;
							[] spawn "+_randvar2+";
							_log = format['BadContent:   id %1   txt %2',_ctrlID,_txt];
							"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
							publicVariableServer '"+_randvar10+"';
						};
					};
				} forEach [1203,1204,1205,1206,1300,1301,1302,1303,1305,1306,1307];
				
				uiSleep 2;
				_pPos = getPosATL player;
				_noSafeZone = true;
				{
					if(!isNull _x) then
					{
						if(!alive _x) then
						{
							_cip = _x getVariable['"+_randvar3+"',''];
							if(_cip == '') then
							{
								deleteVehicle _x;
							};
						};
					};
					if((!isNull _x) && (alive _x) && (getPlayerUID _x == '') && !(_x isKindOf 'zZombie_Base') && !(_x isKindOf 'CAAnimalBase')) exitWith
					{
						_noSafeZone = false;
					};
				} forEach (_pPos nearEntities ['Man',400]);
				
				if("+str _UZC+") then
				{
					if(_noSafeZone) then
					{
						if(isNil 'player_zombieCheck') then
						{
							[] spawn "+_randvar2+";
							"+_randvar10+" = [_name,_puid,'BAN',toArray ('zombieCheck broken')];
							publicVariableServer '"+_randvar10+"';
						}
						else
						{
							if(str player_zombieCheck != str _zombieCheck) then
							{
								uiSleep 2;
								if(str player_zombieCheck != str _zombieCheck) then
								{
									[] spawn "+_randvar2+";
									"+_randvar10+" = [_name,_puid,'HLOG',toArray ('zombieCheck changed')];
									publicVariableServer '"+_randvar10+"';
								};
							};
						};
						if(isNil 'player_zombieAttack') then
						{
							[] spawn "+_randvar2+";
							"+_randvar10+" = [_name,_puid,'BAN',toArray ('zombieAttack broken')];
							publicVariableServer '"+_randvar10+"';
						}
						else
						{
							if(str player_zombieAttack != str _zombieAttack) then
							{
								uiSleep 2;
								if(str player_zombieAttack != str _zombieAttack) then
								{
									[] spawn "+_randvar2+";
									"+_randvar10+" = [_name,_puid,'HLOG',toArray ('zombieAttack changed')];
									publicVariableServer '"+_randvar10+"';
								};
							};
						};
					};
				};
				
				if(!isNil 'PVDZE_veh_Publish2') then
				{
					_ap = PVDZE_veh_Publish2 select 5;
					_cUID = getPlayerUID _ap;
					_check = _cUID in ['',_puid];
					if(!_check) then
					{
						[] spawn "+_randvar2+";
						_log = format['Trying to frame %1(%2)',name _ap,_cUID];
						"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
						publicVariableServer '"+_randvar10+"';
					};
					if("+str _VTC+") then
					{
						_cPos = (PVDZE_veh_Publish2 select 1) select 1;
						if(_noSafeZone) then
						{
							{
								if((!isNull _x) && (alive _x) && (getPlayerUID _x == '') && !(_x isKindOf 'zZombie_Base') && !(_x isKindOf 'CAAnimalBase')) exitWith
								{
									_noSafeZone = false;
								};
							} forEach (_cPos nearEntities ['Man',200]);
							if(_noSafeZone) then
							{
								[] spawn "+_randvar2+";
								_log = format['Purchase without Trader (C):   PlayerPos %1 %2 - VehiclePos %3 %4 - %5',mapGridPosition _pPos,_pPos,mapGridPosition _cPos,_cPos,PVDZE_veh_Publish2];
								"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
								publicVariableServer '"+_randvar10+"';
							};
						};
					};
				};
			};
		};
		[_name,_puid] spawn {
			_name = _this select 0;_puid = _this select 1;
			diag_log format['LOCALPLAYERINFO: %1(%2) | %3(%4) | %5',_name,_puid,str _name,str _puid,str (getPlayerUID player)];
			while {1 == 1} do
			{
				_pos = [0,0,0];
				_pos = getPos player;
				{
					if(!isNull _x) then
					{
						if(local _x) then
						{
							[] spawn "+_randvar2+";
							_log = format['FunctionsManager found near player @%1 %2   (BANNED)',_pos,mapGridPosition _pos];
							"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
							publicVariableServer '"+_randvar10+"';
						}
						else
						{
							[] spawn "+_randvar2+";
							_log = format['FunctionsManager found near player @%1 %2   (KICKED)',_pos,mapGridPosition _pos];
							"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
							publicVariableServer '"+_randvar10+"';
						};
						deleteVehicle _x;
					};
					true
				} count(_pos nearEntities ['FunctionsManager',50]);
				if("+str _CSA+") then
				{
					if("+str _MEH+") then
					{
						if(isNil 's_player_removeActions') then {s_player_removeActions = [];};
						if(isNil 's_player_repairActions') then {s_player_repairActions = [];};
						if(isNil 'r_player_actions') then {r_player_actions = [];};
						if(isNil 'r_player_actions2') then {r_player_actions2 = [];};
						if(isNil 's_player_parts') then {s_player_parts = [];};
						if(isNil 's_player_combi') then {s_player_combi = [];};
						if(isNil 's_player_lockunlock') then {s_player_lockunlock = [];};
						if(isNil 's_vehicle_lockunlock') then {s_vehicle_lockunlock = [];};
						_tempRemoveAction = vehicle player addAction ['', '', [], 1, false, true, '', 'false'];
						_startRemove = _tempRemoveAction - 10;
						_endRemove = _tempRemoveAction + 99;
						
						_dayzActionsStr = "+str _dayzActions+";
						_dayzActions = [];
						{
							private ['_var'];
							if(!isNil _x) then
							{
								_var = compile _x;
								_y = call _var;
								if(typeName _y == 'SCALAR') then
								{
									if !(_y in _dayzActions) then
									{
										_dayzActions set [count _dayzActions,_y];
									};
								};
								if(typeName _y == 'ARRAY') then
								{
									{
										if !(_x in _dayzActions) then
										{
											_dayzActions set [count _dayzActions,_x];
										};
									} forEach _y;
								};
							}; 
							true
						} count _dayzActionsStr;
						
						for '_i' from _startRemove to _endRemove do
						{
							if !(_i in _dayzActions) then
							{
								player removeAction _i;
								vehicle player removeAction _i;
								if(!isNull cursorTarget) then {cursorTarget removeAction _i;};
							};
						};
					};
					if !("+str _MEH+") then
					{
						_tmpV = vehicle player;
						_tmpRAV =  _tmpV addAction ['', '', [], 1, false, true, '', 'false'];
					};
					uiSleep 0.2;
					if !("+str _MEH+") then
					{
						_tmpV1 = vehicle player;
						_tmpRAV1 =  _tmpV1 addAction ['', '', [], 1, false, true, '', 'false'];
						_dif = _tmpRAV1 - _tmpRAV;
						_cnt = 11;
						if(isNull cursorTarget) then {_cnt = 9;};
						if((_dif > _cnt) && (_tmpV == _tmpV1)) then
						{
							if(isNil 'ACTION"+_randvar5+"') then
							{
								[_dif] spawn {
									ACTION"+_randvar5+" = true;
									for '_i' from -10 to 199 do
									{
										player removeAction _i;
										vehicle player removeAction _i;
										if(!isNull cursorTarget) then {cursorTarget removeAction _i;};
									};
									_log = format['To many actions: %1 - (turn off action check if false positive)',_this select 0];
									"+_randvar10+" = [name player,getPlayerUID player,'SLOG',toArray (_log)];
									publicVariableServer '"+_randvar10+"';
									uiSleep 1.5;
									ACTION"+_randvar5+" = nil;
								};
							};
						}
						else
						{
							_tmpV removeAction _tmpRAV; _tmpV removeAction _tmpRAV1;
							_tmpV1 removeAction _tmpRAV; _tmpV1 removeAction _tmpRAV1;
						};
					};
				};
				if((!isNil 'BIS_MENU_GroupCommunication') && (commandingMenu in ['#User:BIS_MENU_GroupCommunication'])) then
				{
					_tmp = BIS_MENU_GroupCommunication;
					showcommandingMenu '';
					for '_i' from 0 to (count _tmp)-1 do
					{
						_selected = _tmp select _i;
						if(count _selected > 4) then
						{
							_log = format['BIS_MENU_GroupCommunication: %1',_selected select 4 select 0 select 1];
							"+_randvar10+" = [_name,_puid,'SLOG',toArray (_log)];
							publicVariableServer '"+_randvar10+"';
						};
					};
					player removeWeapon 'ItemRadio';
					BIS_MENU_GroupCommunication = nil;
				};
				if("+str _CCM+") then
				{
					_commandingMenu = commandingMenu;
					if(_commandingMenu != '') then
					{
						_A = toArray _commandingMenu;
						_A resize 6;
						_A;
						_short = toString _A;
						if(!(_commandingMenu in "+str _cMenu+") || ("+str _BCM+")) then
						{
							showcommandingMenu '';
							if(_short in ['#USER:']) then
							{
								[] spawn "+_randvar2+";
								_log = format['BadcommandingMenu: %1',_commandingMenu];
								"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
								publicVariableServer '"+_randvar10+"';
							};
						};
					};
				};
				if("+str _BHF+") then {
					if(isNil 'playableUnits') then {playableUnits = [player];} else {
						if(typeName playableUnits != 'ARRAY') then {playableUnits = [player];YOLO = true;} else {
							if(str playableUnits == '[]') then {
								[] spawn "+_randvar2+";
								_log = format['FNCbroken: playableUnits - %1',playableUnits];
								"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
								publicVariableServer '"+_randvar10+"';
							};
						};
					};
					if(isNil 'allUnits') then {allUnits = [player];} else {
						if(typeName allUnits != 'ARRAY') then {allUnits = [player];YOLO = true;} else {
							if(str allUnits == '[]') then {
								[] spawn "+_randvar2+";
								_log = format['FNCbroken: allUnits - %1',allUnits];
								"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
								publicVariableServer '"+_randvar10+"';
							};
						};
					};
					if(isNil 'vehicles') then {vehicles = [];} else {if(typeName vehicles != 'ARRAY') then {vehicles = [];YOLO = true;};};
					entities = 'no';
					allMissionObjects = 'no';
				}
				else
				{
					if(!isNil 'playableUnits') then {
						[] spawn "+_randvar2+";
						_log = format['FNCbroken: playableUnits - %1',playableUnits];
						"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
						publicVariableServer '"+_randvar10+"';
					};
					if(!isNil 'allUnits') then {
						[] spawn "+_randvar2+";
						_log = format['FNCbroken: allUnits - %1',allUnits];
						"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
						publicVariableServer '"+_randvar10+"';
					};
				};
				PV_hackerL0og = nil;PV_SurveillanceLog = nil;PV_writeAdmin_log_ARRAY = nil;
				uiSleep 0.2;
				player hideObject false;
				(vehicle player) hideObject false;
			};
		};
		[] spawn {
			{_x hideObject true;} forEach (allMissionObjects 'Foodbox0');
			_mPos = "+str _mPos+";
			_maxx = "+str _MCC+";
			_RAI = "+str _RAI+";
			_watched = "+str _watched+";
			uiSleep 5;
			_player_useAttchment =
			{
				private['_item','_onLadder','_hasmeditem','_config','_text','_id'];
				_item = _this;
				call gear_ui_init;
				_onLadder = (getNumber (configFile >> 'CfgMovesMaleSdr' >> 'States' >> (animationState player) >> 'onLadder')) == 1;
				_config = configFile >> 'CfgMagazines' >> _item;
				_removeWeapon = getText (_config >> 'oringal');
				_addWeapon = getText (_config >> 'weapon');
				_text = getText (_config >> 'displayName');
				_hasitem = _item in magazines player;
				if(!_hasitem) exitWith { cutText [localize 'str_missingAttachment', 'PLAIN DOWN']};
				if(_onLadder) exitWith { cutText [localize 'str_player_21', 'PLAIN DOWN'] };
				if(_removeWeapon in (weapons player)) then
				{
					player removeMagazine _item;
					player removeWeapon _removeWeapon;
					_pos = player modelToWorld [0,1,0];
					_obj = createVehicle ['WeaponHolder', _pos, [], 1, 'CAN_COLLIDE'];
					_obj addWeaponCargo [_addWeapon,1];
					if(vehicle player != player) then
					{
						_display = findDisplay 106;
						_display closeDisplay 0;
					};
				}
				else
				{
					closedialog 0;
					uiSleep 0.2;
					cutText [format[ localize 'str_missingweapon', _text, _removeWeapon] , 'PLAIN DOWN']
				};
			};
			while {1 == 1} do
			{
				player_useAttchment = _player_useAttchment;
				
				_posP = getPosATL (vehicle player);
				_posPG = [_posP select 0,_posP select 1,0];
				_state = true;
				{
					if((!isNull _x) && (alive _x) && (getPlayerUID _x == '') && !(_x isKindOf 'zZombie_Base') && !(_x isKindOf 'CAAnimalBase')) exitWith
					{
						_state = false;
					};
				} forEach (_posPG nearEntities ['CAManBase',25]);
				if(_state) then
				{
					_nearestObjects = (nearestObjects [player, ['All'], 15]);
					_crew = [];
					if(vehicle player != player) then
					{
						{_crew = _crew + [_x];} forEach (crew vehicle player);
						_nearestObjects = _nearestObjects + [vehicle player];
						_nearestObjects = _nearestObjects + _crew;
					};
					_itemsNear = [];
					{
						if(!isNull _x) then
						{
							_object = _x;
							_pos = getPosATL _object;
							_cntfnd = 0;
							_curInventory = [];
							_curCargo = [];
							_type = typeOf _object;
							
							_LD = ['Land_DZE_GarageWoodDoorLocked','Land_DZE_LargeWoodDoorLocked','Land_DZE_WoodDoorLocked','CinderWallDoorLocked_DZ','CinderWallDoorSmallLocked_DZ'];
							if(isNil 'DZE_DoorsLocked') then {DZE_DoorsLocked = [];};
							if(typeName DZE_DoorsLocked != 'ARRAY') then {DZE_DoorsLocked = [];YOLO = true;};
							if(_type in (DZE_DoorsLocked+_LD)) then
							{
								_do =
								{
									_latch = 0;
									_door = 0;
									_hinge = 0;
									{
										if(_x == 'Open_latch') then
										{
											_latch = _object animationPhase _x;
										};
										if(_x == 'Open_hinge') then
										{
											_hinge = _object animationPhase _x;
										};
										if(_x == 'Open_door') then
										{
											_door = _object animationPhase _x;
										};
									} forEach ['Open_latch','Open_hinge','Open_door'];
									if(((_latch == 0) && (_hinge == 0)) && (_door == 1)) then
									{
										[_object] spawn {
											_object = _this select 0;
											for '_closedoor' from 0 to 15 do
											{
												{_object animate [_x,0];} forEach ['Open_hinge','Open_latch','Lights_1','Lights_2','Open_door','DoorR','LeftShutter','RightShutter'];
												uiSleep 0.1;
											};
										};
									};
								};
								call _do;
								if(!isNil 'dayz_selectedDoor') then
								{
									if(!isNull dayz_selectedDoor) then
									{
										_object = dayz_selectedDoor;
										call _do;
									};
								};
							};
							
							if(_object isKindOf 'Man') then
							{
								if((getPlayerUID _object == '') && (player distance _mPos > 500) && (_object distance _mPos > 500)) then
								{
									_cip = _object getVariable['"+_randvar3+"',''];
									if(_cip == '') then
									{
										_wepsBOT = weapons _object;
										_magsBOT = magazines _object;
										_cwepsBOT = count _wepsBOT;
										_cmagsBOT = count _magsBOT;
										_cntBOT = _cwepsBOT+_cmagsBOT;
										if(_cntBOT > 50) then
										{
											deleteVehicle _object;
											[] spawn "+_randvar2+";
											_log = format['Gear-Bot?: %1 - (%2 @%3) - %4-%5',_cntBOT,_type,_pos,_wepsBOT,_magsBOT];
											"+_randvar10+" = [name player,getPlayerUID player,'BAN',toArray (_log)];
											publicVariableServer '"+_randvar10+"';
										};
									};
									if(!isNull _object) then
									{
										if(isNil 'dayz_firstGroup') then
										{
											[] spawn "+_randvar2+";
											_log = format['dayz_firstGroup: %1',dayz_firstGroup];
											"+_randvar10+" = [name player,getPlayerUID player,'HLOG',toArray (_log)];
											publicVariableServer '"+_randvar10+"';
										};
										_units = units dayz_firstGroup;
										if(_object in _units) then
										{
											deleteVehicle _object;
										};
									};
								};
							};
							
							if(!isNull _object) then
							{
								_curInventory = ((weapons _object)+(magazines _object));
								if((_object isKindOf 'CAManBase') && (!alive _object)) then
								{
									_skin_object = format['Skin_%1',_type];
									_curInventory = _curInventory + [_skin_object];
								};
								_bagX = unitBackpack _object;
								if(!isNull _bagX) then
								{
									_pUBM = (getMagazineCargo _bagX) select 0;
									_curInventory = _curInventory + _pUBM;
									_pUBW = (getWeaponCargo _bagX) select 0;
									_curInventory = _curInventory + _pUBW;
									_curInventory;
								};
								{_itemsNear = _itemsNear + [_x];} forEach _curInventory;
								
								_infiSTAR = ((getWeaponCargo _object)+(getMagazineCargo _object));
								if(str(_infiSTAR) != '[[],[],[],[]]') then
								{
									{_cntfnd = _cntfnd + _x;} forEach ((_infiSTAR select 1)+(_infiSTAR select 3));
									{_curCargo = _curCargo + [_x];} forEach (_infiSTAR select 0);
									{_curCargo = _curCargo + [_x];} forEach (_infiSTAR select 2);
									{_itemsNear = _itemsNear + [_x];} forEach _curCargo;
								};
								if(_type in ['WeaponHolder']) then
								{
									_wpnsInObjT = _infiSTAR select 0;
									_wpnsInObjC = _infiSTAR select 1;
									{
										if(_x > 30) then
										{
											_wpnT = _wpnsInObjT select _forEachIndex;
											_log = format['WeaponHolder with %1 %2s looks suspicious',_x,_wpnT];
											"+_randvar10+" = [name player,getPlayerUID player,'HLOG',toArray (_log)];
											publicVariableServer '"+_randvar10+"';
										};
									} forEach _wpnsInObjC;
								};
								
								if("+str _CHB+") then
								{
									if(_type == 'Foodbox0') then
									{
										_object hideObject true;
										(findDisplay 106) closeDisplay 0;
									}
									else
									{
										_ctypes = ['MedBox0','AmmoBoxSmall_556','AmmoBoxSmall_762','FoodBox2','FoodBox3'];
										if(_type in _ctypes) then
										{
											_BRLCD = 'xoxo';_BRLCD = _object getVariable['BRLCD','xoxo'];
											if(_BRLCD in ['xoxo']) then
											{
												_dirBox = getDir _object;
												_posBox = getPosATL _object;
												deleteVehicle _object;
												
												_object = createVehicle [_type,_posBox,[],0,'CAN_COLLIDE'];
												_object setPosATL _posBox;
												_object setDir _dirBox;
												_object setVariable['BRLCD','kk',true];
												player reveal _object;
											};
										};
										_cntfndW = 0;
										{_cntfndW = _cntfndW + _x;} forEach (_infiSTAR select 1);
										_characterID = '0';_characterID = _object getVariable['CharacterID','0'];
										if((_cntfnd > 10) || ((_type in _ctypes) && (_cntfndW > 1))) then
										{
											if((_type in _ctypes) || (_characterID == '0')) then
											{
												_fine = ['WeaponHolder','WeaponHolder_ItemVault','GraveDZE','CAManBase','TentStorageDomed2','GunRack_DZ','WoodCrate_DZ'];
												if !((_type in _fine) || (_type isKindOf 'Bag_Base_EP1') || (_object isKindOf 'WeaponHolder') || (_object isKindOf 'LandVehicle') || (_object isKindOf 'Air') || (_object isKindOf 'Ship')) then
												{
													_afid = _infiSTAR select 2;
													if(count _afid > 0) then
													{
														_fid = _afid find 'ItemBriefcase100oz';
														if(_fid > -1) then
														{
															_acfid = _infiSTAR select 3;
															_cfid = _acfid select _fid;
															if(_cfid >= 3) then
															{
																_object setPosATL [_pos select 0,_pos select 1,(_pos select 2)+45];
															};
														};
													};
												};
											};
										};
										if((_cntfnd > _maxx) && !(_type in ['WeaponHolder','Wooden_shed_DZ','VaultStorage','StorageShed_DZ','ArmoredSUV_PMC','ArmoredSUV_PMC_DZE','SeaFox'])) then
										{
											if(_object isKindOf 'static') then
											{
												_object hideObject true;
												_object setPosATL [_pos select 0,_pos select 1,(_pos select 2)+45];
												
												_log = format['MaxCargo exceeded: %1 | %2 | @%3 %4 | %5 | %6',_type,_cntfnd,mapGridPosition _pos,_pos,_characterID,_infiSTAR];
												"+_randvar10+" = [name player,getPlayerUID player,'HLOG',toArray (_log)];
												publicVariableServer '"+_randvar10+"';
											}
											else
											{
												if(_cntfnd > _maxx + 100) then
												{
													{if(!isNull _x) then {_x action ['eject',_object];};} forEach (crew _object);
													_object hideObject true;
													_object setPosATL [_pos select 0,_pos select 1,(_pos select 2)+45];
													
													_log = format['MaxCargo exceeded: %1 | %2 | @%3 %4 | %5 | %6',_type,_cntfnd,mapGridPosition _pos,_pos,_characterID,_infiSTAR];
													"+_randvar10+" = [name player,getPlayerUID player,'HLOG',toArray (_log)];
													publicVariableServer '"+_randvar10+"';
												};
											};
										};
									};
								};
							};
						};
					} forEach _nearestObjects;
					
					_typePlr = typeOf player;
					_invPLR = ((weapons player)+(magazines player));
					_invPLR = _invPLR + [primaryWeapon player];
					_invPLR = _invPLR + [currentWeapon player];
					_invPLR = _invPLR + [(format['Skin_%1',_typePlr])];
					_bagPlr = unitBackpack player;
					if(!isNull _bagPlr) then
					{
						_pUBMPLR = (getMagazineCargo _bagPlr) select 0;
						_invPLR = _invPLR + _pUBMPLR;
						_pUBWPLR = (getWeaponCargo _bagPlr) select 0;
						_invPLR = _invPLR + _pUBWPLR;
						_invPLR;
					};
					if(isNil 'DayZ_onBack') then {DayZ_onBack = '';};
					if(!isNil 'DZE_Lock_Door') then {DayZ_onBack = '';};
					_TMP_onBack = DayZ_onBack;
					
					uiSleep 0.5;
					
					_inv_plrNEW = ((weapons player)+(magazines player));
					_inv_plrNEW = _inv_plrNEW + [primaryWeapon player];
					_inv_plrNEW = _inv_plrNEW + [currentWeapon player];
					_newbag = unitBackpack player;
					if(!isNull _newbag) then
					{
						if(str _bagPlr == str _newbag) then
						{
							_pUBM__pIrN = (getMagazineCargo _newbag) select 0;
							_inv_plrNEW = _inv_plrNEW + _pUBM__pIrN;
							_pUBW_plrN = (getWeaponCargo _newbag) select 0;
							_inv_plrNEW = _inv_plrNEW + _pUBW_plrN;
							_inv_plrNEW;
						};
					};
					if(isNil 'DayZ_onBack') then {DayZ_onBack = '';};
					if(!isNil 'DZE_Lock_Door') then {DayZ_onBack = '';};
					_allowed = [DayZ_onBack,_TMP_onBack,'Throw','Flare','Put'];
					
					_allIHave = [];
					{
						if !(_x in _allIHave) then
						{
							_allIHave = _allIHave + [_x];
						};
					} forEach (_invPLR+_allowed+_itemsNear);
					_foundbad = [];
					if !((currentWeapon player) in _allIHave) then
					{
						if !((currentWeapon player) in _foundbad) then
						{
							_foundbad = _foundbad + [(currentWeapon player)];
						};
					};
					if !((primaryWeapon player) in _allIHave) then
					{
						if !((primaryWeapon player) in _foundbad) then
						{
							_foundbad = _foundbad + [(primaryWeapon player)];
						};
					};
					_swep = '';
					{
						if((getNumber (configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith
						{
							_swep = _x;
						};
					} forEach (weapons player);
					{
						if(((_x in _watched) || (_x == currentWeapon player) || (_x == primaryWeapon player) || (_x == _swep)) && !(_x in _allIHave)) then
						{
							if !(_x in _foundbad) then
							{
								_foundbad = _foundbad + [_x];
							};
						};
					} forEach _inv_plrNEW;
					if(count _foundbad > 0) then
					{
						{
							_Iarray = toArray _x;
							_Iarray resize 5;
							_Iarray;
							_short = toString _Iarray;
							if(_short in ['Melee']) then
							{
								_foundbad = _foundbad - [_x];
							};
						} forEach _foundbad;
					};
					
					_ItemsAdded = [];
					{
						if !(_x in _ItemsAdded) then
						{
							_ItemsAdded = _ItemsAdded + [_x];
						};
					} forEach _foundbad;
					_ItemsAdded = _ItemsAdded - ['Put'];
					_ItemsAdded = _ItemsAdded - [''];
					if(count _ItemsAdded > 0) then
					{
						if(_RAI) then
						{
							{
								[_x] spawn {
									_y = _this select 0;
									for '_i' from 0 to ({_x == _y} count (weapons player)) do {player removeWeapon _y;};
									player removeMagazines _y;
									for '_w' from 0 to 10 do {uiSleep 0.1;player removeWeapon _y;player removeMagazines _y;};
								};
							} forEach _ItemsAdded;
						};
					};
				}
				else
				{
					uiSleep 0.25;
				};
			};
		};
		[] spawn {
			while {1 == 1} do
			{
				_inv = [];
				_inv = _inv + (magazines player);
				_inv = _inv + (weapons player);
				if(!isNull (unitBackpack player)) then
				{
					_BW = (getWeaponCargo unitBackpack player) select 0;
					_BM = (getMagazineCargo unitBackpack player) select 0;
					_inv = _inv + _BW + _BM;
				};
				if(isNil 'DayZ_onBack') then {DayZ_onBack = '';};
				if(!isNil 'DZE_Lock_Door') then {DayZ_onBack = '';};
				_inv = _inv + [DayZ_onBack];
				
				{
					if((_x in _inv) && (_x != '')) then
					{
						[_x] spawn {
							_y = _this select 0;
							for '_i' from 0 to ({_x == _y} count (weapons player)) do {player removeWeapon _y;};
							player removeMagazines _y;
							for '_w' from 0 to 10 do {uiSleep 0.1;player removeWeapon _y;player removeMagazines _y;};
						};
						if(player distance "+str _mPos+" > 500) then
						{
							[] spawn {
								player setDamage 5;
								deleteVehicle player;
							};
							
							[] spawn "+_randvar2+";
							_log = format['BadItem: %1',_x];
							"+_randvar10+" = [name player,getPlayerUID player,'BAN',toArray (_log)];
							publicVariableServer '"+_randvar10+"';
						};
					};
				} forEach ("+str _ForbiddenItems+" + ['FakeWeapon','RocketPods','GyroGrenadeLauncher','FFARLauncher','FFARLauncher_12','Rifle','M16_base',
				'HandGunBase','Put','M240_veh','M240_veh_2','M240_veh_MG_Nest','PKT','PKT_MG_Nest','PKT_veh','DT_veh','M2',
				'M3P','DSHKM','KORD','KPVT','M168','M197','AZP85','2A14','GAU12','2A42','M242','GAU8','2A38M','AGS30','AGS17',
				'MK19','M119','M256','D30','D81','ZiS_S_53','2A46M','FFARLauncher_14','CamelGrenades','57mmLauncher',
				'57mmLauncher_64','57mmLauncher_128','80mmLauncher','S8Launcher','MissileLauncher','SidewinderLaucher',
				'SidewinderLaucher_F35','SidewinderLaucher_AH1Z','AT5Launcher','AT5LauncherSingle','2A46MRocket','AT10LauncherSingle',
				'AT11LauncherSingle','AT13LauncherSingle','TOWLauncher','TOWLauncherSingle','HellfireLauncher','VikhrLauncher',
				'BombLauncher','BombLauncherF35','BombLauncherA10','SEARCHLIGHT','CarHorn','BikeHorn','TruckHorn','TruckHorn2',
				'SportCarHorn','MiniCarHorn','R73Launcher','R73Launcher_2','Ch29Launcher','Ch29Launcher_Su34','2A70Rocket','2A70',
				'AT6Launcher','AT9Launcher','AT2Launcher','HeliBombLauncher','AirBombLauncher','Mk82BombLauncher','Mk82BombLauncher_6',
				'StingerLaucher','StingerLauncher_twice','AALauncher_twice','Igla_twice','MaverickLauncher','9M311Laucher',
				'WeaponExplosive','M252','2B14','MeleeWeapon','m8_base','PKT_2','PKT_3','SidewinderLaucher_AH64','M230','BAF_L2A1',
				'BAF_M240_veh','BAF_L7A2','BAF_L94A1','BAF_static_GMG','BAF_GMG','CTWS','CRV7_PG','CRV7_HEPD','CRV7_FAT','M621','M68',
				'D10','PKTBC','PKTBC_veh','SGMT','HellfireLauncher_AH6','StingerLaucher_4x','M242BC','M240BC_veh','M2BC','MK19BC',
				'M120','GrenadeLauncher_EP1','SCAR_Base','SCAR_L_Base','SCAR_H_Base','PKT_high_AI_dispersion','PKT_high_AI_dispersion_tank',
				'AGS30_heli','M32_heli','CZ805_A1_ACR','CZ805_A1_GL_ACR','CZ805_B_GL_ACR','2A42_AI','ATKMK44_ACR_AI','M242_AI','M242BC_AI',
				'CTWS_AI','M256_AI','M68_AI','D81_AI','2A46M_AI','D81CZ_AI','D10_AI','ZiS_S_53_AI','ATKMK44_ACR','D81CZ','2A72','ItemMap_Debug',
				'CMFlareLauncher','FlareLauncher','GRAD','GSh23L','GSh23L_L39','GSh301','GSh302','M134','M134_2','MLRS',
				'SmokeLauncher','SPG9','TwinM134','TwinVickers','YakB']);
				uiSleep 15;
			};
		};
		[] spawn {
			private ['_maxdist','_lastVeh','_curVeh','_lastPos','_curPos','_worldspace','_spawnPos'];
			_spawnPos = "+str _mPos+";
			dayz_spawnPos = getPosATL player;
			_spawnPos = getPosATL player;
			_TPC = 0;
			if(isNil '"+_AHpos+"') then {"+_AHpos+" = [];};
			"+_oneachframe+"=diag_tickTime;
			while {1 == 1} do
			{
				if(diag_tickTime - "+_oneachframe+" > 2) then
				{
					[] spawn "+_randvar2+";
					_log = 'onEachFrame injector detected';
					"+_randvar10+" = [name player,getPlayerUID player,'BAN',toArray (_log)];
					publicVariableServer '"+_randvar10+"';
				};
				onMapSingleClick '';
				onEachFrame {"+_oneachframe+"=diag_tickTime;onMapSingleClick '';};
				if("+str _UAT+") then {
					_lastVeh = vehicle player;
					_lastPos = getPosATL player;
					_lastPosZ = [_lastPos select 0,_lastPos select 1,0];
					if !(_lastVeh isKindOf 'Air') then
					{
						_vel = velocity _lastVeh;
						if(_vel select 2 > 10) then
						{
							_velNew = [_vel select 0,_vel select 1,0];
							_lastVeh SetVelocity _velNew;
							_lastVeh setPosATL _lastPosZ;
						};
					};
					uiSleep 0.35;
					_curVeh = vehicle player;
					_curPos = getPosATL player;
					_distance1 = floor(_lastPosZ distance [_curPos select 0,_curPos select 1,0]);
					_maxdist = 120;
					if(_curVeh isKindOf 'Man') then
					{
						_maxdist = 100;
						if(_curVeh == player) then
						{
							_speed = abs (speed player);
							if(_speed <= 0.1) then {_maxdist = 3;};
						};
					};
					if(_curVeh isKindOf 'Air') then {_maxdist = 750;};
					if(_curVeh isKindOf 'LandVehicle') then {_maxdist = 400;};
					if(_curVeh isKindOf 'Ship') then {_maxdist = 400;};
					if(_distance1 > _maxdist) then
					{
						if((str _lastVeh == str _curVeh) && ("+str _mPos+" distance _curPos < 350)) then
						{
							player setPosATL _lastPos;
						};
						if((str _lastVeh == str _curVeh) && {(player == driver _curVeh) || (isNull driver _curVeh)}) then
						{
							if("+str _mPos+" distance _lastPos > 350) then
							{
								if("+str _mPos+" distance _curPos > 350) then
								{
									if(_spawnPos distance _lastPos > 25) then
									{
										if(_spawnPos distance _curPos > 25) then
										{
											player setVectorUp [0,0,1];
											player setVelocity [0,0,0];
											if(str "+_AHpos+" != '[]') then
											{
												_tmpAHpos = "+_AHpos+";_tmpAHpos resize 2;"+_AHpos+" = [];
												_log = format['Admin Teleport (%1): %2(%3) to %4(%5)',_tmpAHpos,mapGridPosition _lastPos,_lastPos,mapGridPosition _curPos,_curPos];
												"+_randvar10+" = [name player,getPlayerUID player,'HLOG',toArray (_log)];
												publicVariableServer '"+_randvar10+"';
											}
											else
											{
												if(_distance1 < 10) then
												{
													player setPosATL _lastPos;
												}
												else
												{
													if(_TPC > 0) then
													{
														player setPosATL _lastPos;
														if(_TPC >= 3) then {[] spawn "+_randvar2+";};
														_log = format['Player Teleport: %1 to %2 (%3m) | %4 | %5 to %6',mapGridPosition _lastPos,mapGridPosition _curPos,_distance1,typeOf _curVeh,_lastPos,_curPos];
														"+_randvar10+" = [name player,getPlayerUID player,'HLOG',toArray (_log)];
														publicVariableServer '"+_randvar10+"';
													};
													if(((_curVeh isKindOf 'ParachuteBase') || (_curVeh isKindOf 'BIS_Steerable_Parachute')) && ((floor (_curPos select 2)) > 35)) then
													{
														_curVeh setPosATL _lastPosZ;
														if(!isNull _curVeh) then {deleteVehicle _curVeh;};
														_log = 'Player to fast with Parachute (Teleport?) put to Ground.';
														"+_randvar10+" = [name player,getPlayerUID player,'SLOG',toArray (_log)];
														publicVariableServer '"+_randvar10+"';
													}
													else
													{
														_TPC = _TPC + 1;
													};
												};
											};
										};
									};
								};
							};
						};
					};
				}else{uiSleep 0.35;};
			};
		};
		[] spawn {
			while {1 == 1} do
			{
				{
					if !(isNil _x) then
					{
						[] spawn "+_randvar2+";
						_log = format['BadVar 2: %1',_x];
						"+_randvar10+" = [name player,getPlayerUID player,'BAN',toArray (_log)];
						publicVariableServer '"+_randvar10+"';
					};
					true
				} count ['adminlite','adminlitez','antihacklite','bp','inSub','scroll_m_init_star','markerCount','zombies','startmenu_star','LystoDone','MOD_EPOCH',
				'Admin_Lite_Menu','admingod','adminESPicons','fnc_MapIcons_infiSTAR','BIS_MPF_remoteExecutionServer4','adminadd','shnext','infiSTAR_fill_Weapons',
				'adminZedshld','adminAntiAggro','admin_vehicleboost','admin_low_terrain','admin_debug','admincrate','exstr','nlist','PV_AdminMainCode','TPCOUNTER',
				'PVDZ_Hangender','fn_filter','vehiList','Remexec_Bitch','zeus_star','igodokxtt','tmmenu','AntihackScrollwheel','survcam','infiniteammo','PVAH_AHTEMPBAN',
				'lalf','toggle','iammox','telep','dayzlogin3','dayzlogin4','changeBITCHinstantly','antiAggro_zeds','BigFuckinBullets','abcdefGEH','adminicons',
				'fn_esp','aW5maVNUQVI_re_1','passcheck','isinsub','qodmotmizngoasdommy','ozpswhyx','xdistance','wiglegsuckscock','diz_is_real__i_n_f_i_S_T_A_R',
				'pic','veh','unitList','list_wrecked','addgun','ESP','BIS_fnc_3dCredits_n','dayzforce_save','ViLayer','blackhawk_sex','activeITEMlist','items1',
				'adgnafgnasfnadfgnafgn','Metallica_infiSTAR_hax_toggled','activeITEMlistanzahl','xyzaa','iBeFlying','rem','DAYZ_CA1_Lollipops','HMDIR','vehC',
				'HDIR','carg0d','init_Fncvwr_menu_star','altstate','black1ist','ARGT_JUMP','ARGT_KEYDOWN','ARGT_JUMP_w','ARGT_JUMP_a','bpmenu','color_black',
				'p','fffffffffff','markPos','pos','TentS','VL','MV','monky','qopfkqpofqk','monkytp','pbx','nametagThread','spawnmenu','sceptile15','sandshrew',
				'mk2','i','j','v','fuckmegrandma','mehatingjews','TTT5OptionNR','zombieDistanceScreen','cargodz','R3m0te_RATSifni','wepmenu','admin_d0','RAINBOWREMEXECVEH',
				'omgwtfbbq','namePlayer','thingtoattachto','HaxSmokeOn','testIndex','g0d','spawnvehicles_star','kill_all_star','sCode','dklilawedve','peter_so_fly_CUS',
				'selecteditem','moptions','delaymenu','gluemenu','g0dmode','zeus','zeusmode','cargod','infiSTAR_fillHax','itemmenu','gmadmin','fapEsp','mapclick',
				'spawnweapons1','abcd','skinmenu','playericons','changebackpack','keymenu','godall','theKeyControl','infiSTAR_FILLPLAYER','whitelist','pfEpochTele',
				'custom_clothing','img','surrmenu','footSpeedIndex','ctrl_onKeyDown','plrshldblcklst','DEV_ConsoleOpen','executeglobal','cursoresp','Asdf','planeGroup',
				'teepee','spwnwpn','musekeys','dontAddToTheArray','morphtoanimals','aesp','LOKI_GUI_Key_Color','Monky_initMenu','tMenu','recon','curPos','pilot',
				'playerDistanceScreen','ihatelife','debugConsoleIndex','MY_KEYDOWN_FNC','pathtoscrdir','Bowen_RANDSTR','ProDayz','idonteven','walrein820','RandomEx',
				'TAG_onKeyDown','derp123','heel','rangelol','unitsmenu','xZombieBait','plrshldblckls','ARGT_JUMP_s','ARGT_JUMP_d','globalplaya','ALL_MAGS_TO_SEARCH',
				'shnmenu','xtags','pm','lmzsjgnas','vm','bowonkys','glueallnigga','hotkeymenu','Monky_hax_toggled','espfnc','playeresp','zany','dfgjafafsafccccasd',
				'atext','boost','nd','vspeed','Ug8YtyGyvguGF','inv','rspwn','pList','loldami','T','bowonky','aimbott','Admin_Layout','markeresp','allMrk','MakeRandomSpace',
				'helpmenu','godlol','rustlinginit','qofjqpofq','invall','initarr','reinit','byebyezombies','admin_toggled','fn_ProcessDiaryLink','ALexc','DAYZ_CREATEVEHICLE',
				'Monky_funcs_inited','FUK_da_target','damihakeplz','damikeyz_veryhawt','mapopt','hangender','slag','jizz','kkk','ebay_har','sceptile279','TargetPlayer',
				'tell_me_more_infiSTAR','airborne_spawn_vehicle_infiSTAR','sxy_list_stored','advert_SSH','antiantiantiantih4x','Flare8','Flare7','SuperAdmin_MENU',
				'bl4ck1ist','keybinds','actualunit','mark_player','unitList_vec','yo2','actualunit_vec','typeVec','mark','r_menu','hfghfg','vhnlist','work','Intro',
				'yo3','q','yo4','k','cTargetPos','cpbLoops','cpLoopsDelay','Flare','Flare1','Flare2','Flare3','Flare4','Flare5','Flare6','kanghaskhan','palkia',
				'eExec_commmand','cockasdashdioh','fsdandposanpsdaon','antiloop','anti','spawn_explosion_target_ebay','whatisthis4','ratingloop_star','epochRemoteNukeAll',
				'PVAH_admin_rq','PVAH_writelog_rq','sandslash','muk','pidgeotto','charmeleon','pidgey','lapras','LYST1C_UB3R_L33T_Item','MathItem','fapLayer','cooldown',
				'raichu','infiSTAR_chewSTAR_dayz_1','infi_STAR_output','infi_STAR_code_stored','keybindings','keypress','menu_toggle_on','dayz_godmode','aiUnit',
				'MENUTITLE','wierdo','runHack','Dwarden','poalmgoasmzxuhnotx','ealxogmniaxhj','firstrun','ohhpz','fn_genStrFront','shazbot1','cip','Armor1','GMod',
				'kickable','stop','possible','friendlies','hacks','main','mapscanrad','maphalf','DelaySelected','SelectDelay','GlobalSleep','isAdmin','vehD','ALL_WEPS_TO_SEARCH',
				'jopamenu','ggggg','tlm','Listw','toggle_keyEH','infammoON','pu','chute','dayzforce_savex','PVDZ_AdminMenuCode','PVDZ_SUPER_AdminList','DarkwrathBackpack',
				'PVDZ_hackerLog','BP_OnPlayerLogin','material','mapEnabled','markerThread','addedPlayers','playershield','spawnitems1','sceptile27','Proceed_BB',
				'ESPEnabled','wpnbox','fnc_temp','MMYmenu_stored','VMmenu_stored','LVMmenu_stored','BIS_MPF_ServerPersistentCallsArray','PV_CHECK','admin_animate1',
				'patharray','time','ZobieDistanceStat','infiSTARBOTxxx','keyspressed','fT','tpTarget','HumanityVal','yanma','absol','SimpleMapHackCount','keyp',
				'aggron','magazines_spawn','weapons_spawn','backpack_spawn','backpackitem_spawn','keybindings_exec','keypress_exec','MajorHageAssFuckinfBulletsDude',
				'Wannahaveexplosivesforbullets','TheTargetedFuckingPlayerDude','haHaFuckAntiHakcsManIbypasDatShit','aintNoAntiHackCatchMyVars','objMYPlayer',
				'Awwwinvisibilty','vehiclebro','wtfyisthisshithere','terrainchangintime','Stats','menu','ssdfsdhsdfh','onisinfiniteammobra','youwantgodmodebro',
				'yothefuckingplayerishere','Namey','sendmsg12','jkh','DELETE_THIS','move_forward','leftAndRight','forwardAndBackward','upAndDown','distanceFromGround',
				'hoverPos','hovering','bulletcamon','cheatlist','espOn','removegrass','timeday','infammo','norekoil','nocollide','esp2ez','fastwalk','entupautowalk',
				'BensWalker','dropnear','executer','killme','magnetmenu','loadmain','magnet','A11','loadMenu','refreshPlayers','ALREADYRAN','players','BigBenBackpack',
				'sendMessage','newMessage','W34p0ns','amm0','Att4chm3nt','F0od_Dr1nk','M3d1c4l','T0ol_it3ms','B4ckp4cks','It3m5','Cl0th1ng','walkloc','nwaf','cherno',
				'cherno_resident','cherno_resident_2','dubky','oaks','swaf','swmb','getX','PlayerShowDistance','M_e_n_u_2','colorme','keybindloop','Tractor_Time',
				'murkrow','noctowl','isExecuted','piloswine','AddPlayersToMap','markers','miltank','GearAdd','GearRemove','Malvsm','Malcars','malfly','keyForward',
				'PermDialogSelected','TempDialogSelected','AdminDialogList','pfKeygen','pfScanUnits','pfPickPlayer','pfshnext','pfnlist','pfselecteditem','pfshnmenu',
				'pfPlayerMonitor','pfPlayersToMonitor','pfShowPlayerMonitor','pfPlayerMonitorMutex','marker','JJJJ_MMMM___EEEEEEE_INIT_MENU','E_X_T_A_S_Y_Init_Menu',
				'monkaiinsalt','monkaiin','part88','adminKeybinds','PV_DevUlDs','fapEspGroup','Repair','RepairIT','rainbowTarget','rainbowTarget1','rainbowTarget2',
				'rainbowTarget3','letmeknow','VehicleMenue','Menue_Vehicle','my_anus_hurtz','life_no_injection','Tonic_has_a_gaping_vagina','teletoplr','telet',
				'ygurv1f2','BIGM','E3p','T3le','PVAH_AdminReq','box','gmadmin','gmdadmin'];
				uiSleep 0.5;
			};
		};
		if !("+str _UIM+") then
		{
			if("+str _UFS+") then {
				[] spawn {
					_name = name player;
					preProcessFileLineNumbers 'Scan completed, bad content was';
					_sa = ['Settings##.ini'];
					for '_i' from 0 to 333 do
					{
						_sa = _sa + [(format['Settings%1.ini',_i])];
					};
					while {1 == 1} do
					{
						_m = [(format['%1\tele.sqf',_name]),(format['%1\DefaultMenu.sqf',_name]),(format['%1\initmenu.sqf',_name]),(format['%1\Startup.sqf',_name])];
						_farray =
						[
							'Mystic.sqf','debug_console','Xenos.exe','Xenos64.exe','hoen\sttart.sqf','hoen\compile\re.sqf',
							'freddiesexternalmenu\freddies_active.sqf','freddiesexternalmenuv8\freddies_active.sqf','Menu_Scripts\menu\menu_generate.sqf',
							'infiSTAR_[www.unknowncheats.me]_.dll','Missions\infiSTAR_[www.unknowncheats.me]_.dll','Deluxe_97\Deluxe.sqf',
							'Expansion\infiSTAR_[www.unknowncheats.me]_.dll','dll\infiSTAR_[www.unknowncheats.me]_.dll',
							'infiSTAR.dll','Missions\infiSTAR.dll','Expansion\infiSTAR.dll','dll\infiSTAR.dll',
							'VGLoader.exe','Missions\VGLoader.exe','Expansion\VGLoader.exe','dll\VGLoader.exe',
							'vgupdater.exe','Missions\vgupdater.exe','Expansion\vgupdater.exe','dll\vgupdater.exe',
							'0100100110\start.sqf','Missions\0100100110\start.sqf','Expansion\0100100110\start.sqf','dll\0100100110\start.sqf',
							'0100100110\Starts.sqf','Missions\0100100110\Starts.sqf','Expansion\0100100110\Starts.sqf','dll\0100100110\Starts.sqf',
							'epoch\epochMain.sqf','Missions\epoch\epochMain.sqf','Expansion\epoch\epochMain.sqf','dll\epoch\epochMain.sqf',
							'Hack-Dayz.exe','Missions\Hack-Dayz.exe','Expansion\Hack-Dayz.exe','dll\Hack-Dayz.exe','TM\keymenu.sqf',
							'DayZZ.exe','Missions\DayZZ.exe','Expansion\DayZZ.exe','dll\DayZZ.exe','OTHER\scripts\fly.sqf','TM\clearvar.sqf',
							'scrFuckOffInfistar1\start.sqf','epoch\targetall\fuckserver.sqf','boooooooobies.sqf','infiSTAR_GOLD\Startup.sqf',
							'settings26\init.sqf','settings26\start.sqf','settings26\load.sqf','settings26\go.sqf','Arma 2 OA Battleye Bypass.exe',
							'scroll\startmain.sqf','Exta_files\scrollMain.sqf','players\egeg.sqf','DCv3\dc.sqf','Supplys\giveloadout.sqf',
							'runme.dll','Missions\runme.dll','Expansion\runme.dll','dll\runme.dll','Scripts\runme.dll',
							'NR.exe','Missions\NR.exe','Expansion\NR.exe','dll\NR.exe','Scripts\NR.exe','wuat\start3.sqf',
							'activator_NR.exe','Missions\activator_NR.exe','Expansion\activator_NR.exe','dll\activator_NR.exe','Scripts\activator_NR.exe',
							'MedMen.exe','Missions\MedMen.exe','Expansion\MedMen.exe','dll\MedMen.exe','Scripts\MedMen.exe',
							'SpawnTool.exe','Missions\SpawnTool.exe','Expansion\SpawnTool.exe','dll\SpawnTool.exe','Scripts\SpawnTool.exe',
							'HVMRuntm.dll','Missions\HVMRuntm.dll','Expansion\HVMRuntm.dll','dll\HVMRuntm.dll','Scripts\HVMRuntm.dll',
							'D-DayZ.dll','Missions\D-DayZ.dll','Expansion\D-DayZ.dll','dll\D-DayZ.dll','Scripts\D-DayZ.dll','admin_start.sqf',
							'ss3.dll','Missions\ss3.dll','Expansion\ss3.dll','dll\ss3.dll','Scripts\ss3.dll','epoch.sqf','epoch2.sqf','fixed.exe',
							'Scripts\darky.sqf','Scripts\explo.sqf','Scripts\explode_all.sqf','Scripts\explode.sqf','@Dayz_Namalsk\menu.sqf','@Dayz_Namalsk\HP.sqf',
							'Dayz_Namalsk\menu.sqf','Dayz_Namalsk\HP.sqf','youtube.dll','vg\Run.sqf','rus\mission_settings\create.sqf',
							'vg\Custommenu.sqf','vg\RunAH.sqf','vg\Startup.sqf','vg\exec.sqf','scr\Run.sqf','scr\Custommenu.sqf','scr\RunAH.sqf',
							'uhx_menu_first_ed\menu\logoblue.paa','Expansion\beta\dll\RayHook.dll','RayHook.dll','scr\Startup.sqf','scr\ahbypass.sqf',
							'cset.sqf','crawdaunt\crawdaunt.sqf','hangender\start.sqf','Scripts\ajmenu.sqf','wuat\screen.sqf','TM\menu.sqf','TM\screen.sqf',
							'Scripts\menu.sqf','crinkly\keymenu.sqf','ASM\startup.sqf','RSTMU\scr\startMenu.sqf','scr\startMenu.sqf','scr\STrial.sqf',
							'wuat\vet@start.sqf','TM\keybind.sqf','startup.sqf','start.sqf','startupMenu.sqf','xTwisteDx\menu.sqf','wuat\start.sqf','TM\startmenu.sqf',
							'infiSTAR_Menu\setup\startup.sqf','startMenu.sqf','custom.sqf','WiglegHacks\mainmenu.sqf','bowenisthebest.sqf',
							'Scripts\Menu_Scripts\empty.sqf','@mymod\Scripts\ajmenu.sqf','i_n_f_i_S_T_A_R___Menu\setup\scrollmenu.sqf',
							'yolo\w4ssup YoloMenu v2.sqf','Menus\infiSTAR_SEVEN\startup.sqf','Menus\battleHIGH_Menu\startup.sqf',
							'Missions\Menus\battleHIGH_Menu\startup.sqf','infiSTAR_EIGHT\startup.sqf','infiSTAR_SSH\startup.sqf',
							'TM\start.sqf','TM\DemonicMenu.sqf','Scripts\screen.sqf','Scripts\start.sqf','i_n_f_i_S_T_A_R___Menu\list.sqf',
							'battleHIGH_Menu\startup.sqf','infiSTAR_SEVEN\startup.sqf','Scripts\list.sqf','Scripts\mah.sqf','Menu\start.sqf',
							'Menu\startup.sqf','i_n_f_i_S_T_A_R.sqf','infiSTAR_Confin3d_edit\infiSTAR.sqf','infiSTAR_Confin3d_edit\startup.sqf',
							'YoloMenu Updated v6.sqf','Scripts\YoloMenu Updated v6.sqf','Scripts\startmenu.sqf','run.sqf','tm\starthack.sqf',
							'ASM\_for_keybinds\mystuff.sqf','wookie_wuat\startup.sqf','gc_menu\starten.sqf','sigdumper.dll','sigdumper.exe',
							'yolo\YoloMenu Updated v6.sqf','dll\Project1_[www.unknowncheats.me]_.exe','Scripts\Project1_[www.unknowncheats.me]_.exe',
							'gc_menu\uitvoeren.sqf','scr_wasteland\menu\initmenu.sqf','exec.sqf','infiSTAR_chewSTAR_Menu\infiSTAR_chewSTAR.sqf',
							'infiSTAR_chewSTAR_Menu\scrollmenu\addweapon.sqf','Demonic Menu\scr\startMenu.sqf','Demonic Menu\TM\STARTMENU.sqf',
							'scr\scr\keybinds.sqf','DayZLegendZ Scripts\mah.sqf','Pickled Menu 3.0\Scripts\ajmenu.sqf','invisible.sqf',
							'@mHlopchik\Menu_Scripts\menu\keybind\funmenu','RustleSTAR_Menu\menu\initmenu.sqf','RustleSTAR_Menu\setup\startup.sqf',
							'Scripts\mpghmenu.sqf','DevCon.pbo','DayZLegendZ Scripts\startMenu.sqf','DayZLegendZ Scripts\mah.sqf','EASYTM\start.sqf',
							'TotalInjector.exe','Rusterl.exe','drhack.dll','drhack.exe','DayZ-Injector cracked by vovanre.exe','dayz-injector.sqf',
							'DayZ-Injector.dll','HackMenu.exe','d3d199.dll','Scintilla.dll','DayZ-Injector.dll','DayZ-Injector v0.4.exe','CFF-Hook.sqf',
							'CFF-Hook.dll','skriptexecuter2.exe','PEWPEWPEWPEW.dll','Injector.exe','@SPX\Spawn Weapon.sqf','@SPX\3b.sqf','MK\Scripts\startup.sqf',
							'Obama Drone 0.5.2.1.exe','NewDayZ.dll','dll\MyHack.dll','Radar_NewR.exe','YoloHack.dll','BESecureJect.exe','YoloMenu.sqf',
							'hidden.exe','ssl3.dll','DayZNavigator.exe','Spawner.exe','EmptyDll.dll','yolo\startup.sqf','script loader Warrock.exe','infiSTAR.sqf',
							'VX DAYZ.exe','CE_Engine-v5.exe','kenhack\alltome.sqf','kenhack\SM\AH6X_DZ.sqf','kenhack\veshi.sqf','skriptexecuter2.ini','lcc.exe',
							'scripts\new.sqf','new.sqf','Dayz Hack v 1.0.exe','dayz cheat\lcc.exe','Scripts\@Hak_script\1.GLAVNOYE\000.sqf','cheater.sqf',
							'@Hak_script\1.GLAVNOYE\000.sqf','scripts\2dmap.sqf','2dmap.sqf','scripts\addweapon.sqf','addweapon.sqf','scripts\ammo 2.sqf',
							'ammo 2.sqf','DayZ-Injector v.0.2.2.exe','DayZ AimJunkies.exe','CheatDayZUniversal.exe','DayZ Private AIM,MAP,WH v1.2.exe',
							'AimJunkies.exe','FABISDayZLauncher.exe','gluemenu.sqf','DayZ Item spawner.exe','Dayz AIM ESP Shield.exe','ChernoNuke.sqf',
							'Scripts\Menu_Scripts\ChernoNuke.sqf','Menu_Scripts\ChernoNuke.sqf','Nuke.sqf','Scripts\Menu_Scripts\NWAFNuke.sqf',
							'NWAFNuke.sqf','Scripts\Menu_Scripts\newsbanner.sqf','newsbanner.sqf','Scripts\Menu_Scripts\ElektroNuke.sqf',
							'ElektroNuke.sqf','Scripts\Nuke.sqf','Scripts\different_AK\AKS-74 Kobra.sqf','Scripts\ESP\esp_TEST.sqf',
							'ESP\esp_TEST.sqf','esp_TEST.sqf','esp.sqf','Scripts\GodMode.sqf','GodMode.sqf','Scripts\God mode 1.sqf',
							'God mode 1.sqf','MapHack.sqf','infiSTAR_chewSTAR_Menu\all_misc\nukes\nuke.sqf','@Hak_script\1.Teleport.sqf',
							'TheBatmanHack v2.6.exe','X-ray.exe','Project1.exe','Dayz injector-by vovan.exe','explode_all.sqf','explode.sqf',
							'Ubu5Ukg3.sqf','customizethis.sqf','Z__i_n_f_i_S_T_A_R__Z\Run.sqf','Missions\infiSTAR_SEVEN\startup.sqf',
							'Missions\infiSTAR_SSH\startup.sqf','renamethis.sqf','round2\runthis.sqf','safe scripts\gm.sqf','scr\exec.sqf',
							'Scripts\exec.sqf','scrollz\tp.sqf','ShadowyFaze\exec.sqf','infiSTAR_BLACK\Startup.sqf','lol.sqf','teststartup.sqf',
							'infiSTAR_NEW\Startup.sqf','DayZ_Settings.txt','Optix_DayZ_Auto.txt','ldr.cnf','Custom_folder\scrollmenu\Click to Tp.sqf',
							'Aspire Menu v.0.5\ALL TEH SCRIPTS!\esp.sqf','Aspire Menu v.0.5\ALL TEH SCRIPTS!\heal.sqf','SpawnTool.exe','LoganNZL\LoganNZL@execute.sqf',
							'LoganNZL\LoganNZL@start.sqf','LoganNZL@start.sqf','nightsuck.sqf','Project1_[www.unknowncheats.me]_.exe','wuat\RUN.sqf',
							'Missions\Project1_[www.unknowncheats.me]_.exe','Expansion\Project1_[www.unknowncheats.me]_.exe','wuat\Scripts.txt','wuat\start1.sqf',
							'GiveItTheDLL.exe','Missions\GiveItTheDLL.exe','Expansion\GiveItTheDLL.exe','dll\GiveItTheDLL.exe','Scripts\GiveItTheDLL.exe',
							'spawner.dll','Missions\spawner.dll','Expansion\spawner.dll','dll\spawner.dll','Scripts\spawner.dll','wuat\scripts\runMagicaly.sqf',
							'inject.bat','Missions\inject.bat','Expansion\inject.bat','dll\inject.bat','Scripts\inject.bat','wuat\screen2.sqf','wuat\standalonemenu.sqf',
							'spawner\GiveItTheDLL.exe','spawner\Missions\GiveItTheDLL.exe','spawner\Expansion\GiveItTheDLL.exe','spawner\dll\GiveItTheDLL.exe','spawner\Scripts\GiveItTheDLL.exe',
							'spawner\spawner.dll','spawner\Missions\spawner.dll','spawner\Expansion\spawner.dll','spawner\dll\spawner.dll','spawner\Scripts\spawner.dll',
							'spawner\inject.bat','spawner\Missions\inject.bat','spawner\Expansion\inject.bat','spawner\dll\inject.bat','spawner\Scripts\inject.bat',
							'infiSTAR_SSH\setup\startup.sqf','Supplys\BBstart.sqf','TM\666.sqf','vscripts\Startup.sqf','Ronnie\Startup.sqf','MyScripts\cargo.sqf',
							'BE\update.sqf','ScriptBasic.sqf','ScriptTelePlayer.sqf','Deluxe.sqf','Moving_Gun_Menu\start.sqf'
						]+_m+_sa;
						_c = 0;
						{
							_c = _c + 1;
							if(_c >= 10) then
							{
								_c = 0;
								uiSleep 0.5;
							};
							_f = preprocessFileLineNumbers _x;
							if(_f != '') then
							{
								if(_x == 'admin_start.sqf') then
								{
									_log = format['BadFile (admin?): %1 - %2',_x,_f];
									"+_randvar10+" = [_name,getPlayerUID player,'HLOG',toArray (_log)];
									publicVariableServer '"+_randvar10+"';
								}
								else
								{
									[] spawn "+_randvar2+";
									_log = format['BadFile: %1 - %2',_x,_f];
									"+_randvar10+" = [_name,getPlayerUID player,'BAN',toArray (_log)];
									publicVariableServer '"+_randvar10+"';
								};
							};
							uiSleep 0.01;
							true
						} count _farray;
						uiSleep 600;
					};
				};
			};
		};
		"+_randvar4+" = {
			_bkey = _this select 0;
			
			_log = format['<infiSTAR.de>: You have pressed a forbidden Key! (%1)',_bkey];
			cutText [_log,'WHITE IN'];
			hint _log;
			systemchat _log;
			for '_start' from 0 to 5 do {disableUserInput true;};
			if("+str _LBK+") then
			{
				_log = format['BadKey: %1',_bkey];
				"+_randvar10+" = [name player,getPlayerUID player,'SLOG',toArray (_log)];
				publicVariableServer '"+_randvar10+"';
			};
			uiSleep 10;
			for '_stop' from 0 to 5 do {disableUserInput false;};
		};
		if("+str _UIM+") then
		{
			"+_randvar6+" = {
				_key = _this select 1;
				_shift = _this select 2;
				_ctrl = _this select 3;
				_alt = _this select 4;
				_handled = false;
				if(_key == "+str _ODK+") then {[] spawn fnc_debugX0;};
				_handled
			};
		}
		else
		{
			"+_randvar6+" = {
				_key = _this select 1;
				_shift = _this select 2;
				_ctrl = _this select 3;
				_alt = _this select 4;
				_handled = false;
				_fnc_punish_combatlog =
				{
					_isInCombat = player getVariable['startcombattimer',0];
					if(str _isInCombat != '0') then
					{
						[player,'sick'] spawn player_death;
						player setHit['Body',1];
					};
				};
				if(_key == "+str _ODK+") then {[] spawn fnc_debugX0;};
				if("+str _RCK+") then {
					if(_key == "+str _OpenMenuKey+") then {['AdminMenu Key'] spawn "+_randvar4+";};
					switch (_key) do {
						case 0xC7 : {['Home - Known to start HackMenus'] spawn "+_randvar4+";};
						case 0x29 : {['Tild - Known to start HackMenus'] spawn "+_randvar4+";};
						case 0x3B : {['F1 - Known to start HackMenus'] spawn "+_randvar4+";};
						case 0x3C : {['F2 - Known to start HackMenus'] spawn "+_randvar4+";};
						case 0x3D : {['F3 - Known to start HackMenus'] spawn "+_randvar4+";};
						default {};
					};
					if(_shift) then
					{
						if(_key == 0x19) then {['Shift + P to CombatLog'] spawn "+_randvar4+";call _fnc_punish_combatlog;};
					};
					if(_alt) then
					{
						if(_key == 0x57) then {['ALT-F11'] spawn "+_randvar4+";};
						if(_key == 0x3E) then {['ALT-F4 to CombatLog'] spawn "+_randvar4+";call _fnc_punish_combatlog;};
					};
				};
				_handled
			};
			if("+str _VON+") then
			{
				[] spawn {
					_voicecount = 0;
					while {1 == 1} do
					{
						if(!isNull findDisplay 63) then
						{
							_ctrlText = ctrlText (findDisplay 63 displayCtrl 101);
							_chID = switch _ctrlText do {
								case localize 'STR_GLOBAL_CHANNEL' : {0};
								case localize 'STR_SIDE_CHANNEL' : {1};
								default {['',-1]};
							};
							if((!isNull findDisplay 55) && (_chID in [0,1])) then
							{
								_msg = '<infiSTAR.de>: NO VOICE ON SIDE/GLOBAL!';
								hint _msg;
								1 cutText [format ['%1',_msg],'PLAIN DOWN'];
								systemchat _msg;
								
								_voicecount = _voicecount + 1;
								if(_voicecount > 2) then {findDisplay 46 closeDisplay 0;};
							};
						};
						uiSleep 0.5;
					};
				};
			};
		};
		[_name,_puid] spawn {
			_name = _this select 0;_puid = _this select 1;
			_FTG = "+str _FTG+";
			while {1 == 1} do
			{
				_ltxt = lbtext [12001,0];
				if(!isNil 'TraderItemList') then
				{
					if(typeName TraderItemList == 'CODE') then
					{
						[] spawn "+_randvar2+";
						_log = format['Active Menu:   Trader Menu - not near a Trader! #1 - %1 @%2',_ltxt,getPosATL player];
						"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
						publicVariableServer '"+_randvar10+"';
					};
				};
				
				_cwep = currentWeapon player;
				if(_cwep != '') then
				{
					_cammo = player ammo _cwep;
					if(abs _cammo > 100000) then
					{
						[] spawn "+_randvar2+";
						_log = format['AmmoCheck: %1',_cammo];
						"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
						publicVariableServer '"+_randvar10+"';
					};
				};
				if("+str _URC+") then
				{
					if(str(unitRecoilCoefficient player) != str(1)) then
					{
						[] spawn "+_randvar2+";
						"+_randvar10+" = [_name,_puid,'BAN',toArray ('NoRecoil')];
						publicVariableServer '"+_randvar10+"';
					};
					vehicle player setUnitRecoilCoefficient 1;
					player setUnitRecoilCoefficient 1;
				};
				setTerrainGrid _FTG;
				BIS_fnc_spawnCrew = {};
				BIS_fnc_spawnGroup = {};
				BIS_fnc_help = {};
				bis_fnc_3Dcredits = {};
				BIS_fnc_crows = {};
				bis_fnc_customGPS = {};
				bis_fnc_destroyCity = {};
				BIS_fnc_dirIndicator = {};
				bis_fnc_spawnvehicle = {};
				BIS_fnc_spawnEnemy = {};
				BIS_fnc_AAN = {};
				bis_fnc_taskPatrol = {};
				bis_fnc_taskDefend = {};
				BIS_fnc_taskAttack = {};
				BIS_fnc_supplydrop = {};
				BIS_fnc_spotter = {};
				BIS_fnc_listPlayers = {};
				bis_fnc_customGPSvideo = {};
				if(isNil 'deathHandled') then { deathHandled = true; } else { if(typeName deathHandled != 'BOOL') then { deathHandled = true;YOLO = true; }; };
				if(deathHandled) then
				{
					[] spawn {
						uiSleep 35;
						player setVariable['combattimeout',0, true];
						(findDisplay 46) closeDisplay 0;
					};
				};
				if(isNil 'r_player_blood') then { r_player_blood = -500; } else { if(typeName r_player_blood != 'SCALAR') then { r_player_blood = -500;YOLO = true; }; };
				_r_player_blood = r_player_blood;
				if(_r_player_blood > 12750) then
				{
					if(_r_player_blood > 14500) then
					{
						r_player_blood = -500;
						[] spawn "+_randvar2+";
						
						_log = format['To much Blood: %1 should be max 12000',_r_player_blood];
						"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
						publicVariableServer '"+_randvar10+"';
					}
					else
					{
						r_player_blood = 12000;
						_log = format['To much Blood: %1 should be max 12000',_r_player_blood];
						"+_randvar10+" = [_name,_puid,'SLOG',toArray (_log)];
						publicVariableServer '"+_randvar10+"';
					};
				};
				if((deathHandled) && (r_player_blood > 0)) then
				{
					r_player_blood = -500;
					uiSleep 1;
					if(isNil 'r_player_blood') then { r_player_blood = -500; } else { if(typeName r_player_blood != 'SCALAR') then { r_player_blood = -500;YOLO = true; }; };
					if(r_player_blood > 0) then
					{
						if(alive player) then
						{
							if(isNil 'LASTDAMAGESOURCE') then {LASTDAMAGESOURCE = player;} else {if(isNull LASTDAMAGESOURCE) then {LASTDAMAGESOURCE = player;};};
							[LASTDAMAGESOURCE,'shotheavy'] spawn player_death;
							player setHit['Body',1];
						};
						[] spawn "+_randvar2+";
						"+_randvar10+" = [_name,_puid,'HLOG',toArray ('Godmode')];
						publicVariableServer '"+_randvar10+"';
					};
				};
				if(isNil 'r_player_blood') then { r_player_blood = -500; } else { if(typeName r_player_blood != 'SCALAR') then { r_player_blood = -500;YOLO = true; }; };
				if((!deathHandled) && (r_player_blood < 0)) then
				{
					if(alive player) then
					{
						if(isNil 'LASTDAMAGESOURCE') then {LASTDAMAGESOURCE = player;} else {if(isNull LASTDAMAGESOURCE) then {LASTDAMAGESOURCE = player;};};
						[LASTDAMAGESOURCE,'shotheavy'] spawn player_death;
						player setHit['Body',1];
					};
					player setHit['Body',1];
				};
				uiSleep 0.5;
				_con = vehicle cameraOn;
				_veh = vehicle player;
				if(str _con != str _veh) then
				{
					if(typeName _con == 'OBJECT') then
					{
						if(str(_con) != '<NULL-object>') then
						{
							if(!isNull _con) then
							{
								if((_veh distance "+str _mPos+" > 250) && (_con distance "+str _mPos+" > 250) && (_con distance _veh > 150)) then
								{
									if(str(vehicle cameraOn) != str(vehicle player)) then
									{
										[] spawn "+_randvar2+";
										_log = format['BadCamera: (%1) should be (%2)',_con,_veh];
										"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
										publicVariableServer '"+_randvar10+"';
									};
								};
							};
						};
					};
				};
			};
		};
		if("+str _UIC+") then
		{
			[_puid,_name] spawn {
				_puid = _this select 0;_name = _this select 1;
				while {1 == 1} do
				{
					uiSleep 3;
					_posP = getPos player;
					{
						if((!isNull _x) && (alive _x)) then
						{
							if(str _x != str player) then
							{
								_type = typeOf _x;
								_parachuteWest = ((_type == 'ParachuteWest') || (_type == 'ParachuteC'));
								if(!_parachuteWest) then
								{
									_xID = _x getVariable['ObjectID','-3'];
									_xUID = _x getVariable['ObjectUID','-3'];
									if(_xID == '-3' && _xUID == '-3') then
									{
										[_name,_puid,_x] spawn {
											_puid = _this select 0;_name = _this select 1;_x = _this select 2;
											if((!isNull _x) && (alive _x)) then
											{
												uiSleep 30;
												if((!isNull _x) && (alive _x)) then
												{
													_xID = _x getVariable['ObjectID','-3'];
													_xUID = _x getVariable['ObjectUID','-3'];
													if(_xID == '-3' && _xUID == '-3') then
													{
														_pos = getPos _x;
														_mgp = mapGridPosition _pos;
														_x setDamage 5;
														
														_log = format['Vehicle with Invalid ID: %1 @%2 (waited 30 seconds..)',_type,_mgp];
														"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
														publicVariableServer '"+_randvar10+"';
													};
												};
											};
										};
									};
								};
							};
						};
					} forEach ([vehicle player]+(_posP nearEntities [['LandVehicle','Air','Ship'],25]));
				};
			};
		};
		if("+str _URG+") then
		{
			[_name,_puid] spawn {
				_name = _this select 0;_puid = _this select 1;
				private ['_fuelpumparray','_fueltruckarray','_fuelsources'];
				_antirefuel = true;
				_anticargod = true;
				_cheatref = 0;
				_cheatrep = 0;
				_impparts = ['HitLFWheel','HitLBWheel','HitRFWheel','HitRBWheel','HitEngine'];
				_fuelpumparray =
				[
					'FuelPump_DZ','Land_A_FuelStation_Feed','Land_Ind_FuelStation_Feed_EP1','Land_FuelStation_Feed_PMC','FuelStation',
					'Land_ibr_FuelStation_Feed','Land_fuelstation_army','Land_fuelstation','land_fuelstation_w','Land_benzina_schnell'
				];
				if(!isNil 'dayz_fuelpumparray') then
				{
					if(typeName dayz_fuelpumparray == 'ARRAY') then
					{
						_fuelpumparray = _fuelpumparray + dayz_fuelpumparray;
					};
				};
				_fueltruckarray =
				[
					'KamazRefuel_DZ','UralRefuel_TK_EP1_DZ','MtvrRefuel_DES_EP1_DZ','V3S_Refuel_TK_GUE_EP1_DZ','MtvrRefuel_DZ',
					'KamazRefuel_DZE','UralRefuel_TK_EP1_DZE','MtvrRefuel_DES_EP1_DZE','V3S_Refuel_TK_GUE_EP1_DZE','MtvrRefuel_DZE'
				];
				if(!isNil 'DZE_fueltruckarray') then
				{
					if(typeName DZE_fueltruckarray == 'ARRAY') then
					{
						_fueltruckarray = _fueltruckarray + DZE_fueltruckarray;
					};
				};
				_fuelsources =
				[
					'Land_Ind_TankSmall','Land_fuel_tank_big','Land_fuel_tank_stairs','Land_fuel_tank_stairs_ep1',
					'Land_wagon_tanker','Land_fuelstation','Land_fuelstation_army','land_fuelstation_w','Land_benzina_schnell'
				];
				if(!isNil 'dayz_fuelsources') then
				{
					if(typeName dayz_fuelsources == 'ARRAY') then
					{
						_fuelsources = _fuelsources + dayz_fuelsources;
					};
				};
				vehicle_getHitpoints = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\vehicle_getHitpoints.sqf';
				_getHitpoints = vehicle_getHitpoints;
				object_getHit = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\object_getHit.sqf';
				_getHit = object_getHit;
				while {1 == 1} do
				{
					_vehold = vehicle player;
					if((_vehold != player) && (player == driver _vehold) && ((typeOf _vehold) != 'Tractor')) then
					{
						_oldpos = getPosATL _vehold;
						_oldfuel = fuel _vehold;
						_oldtime = diag_tickTime;
						_damold = false;
						_hitp = _vehold call _getHitpoints;
						{
							_damage = [_vehold,_x] call _getHit;
							if((_x in _impparts) && (_damage == 1)) exitWith 
							{
								_damold = true;
							};
						} forEach _hitp;
						uiSleep 3;
						_vehnew = vehicle player;
						if((_vehnew == _vehold) && (player == driver _vehnew)) then
						{
							_newpos = getPosATL _vehnew;
							_newfuel = fuel _vehnew;
							_newtime = diag_tickTime;
							if((_newfuel > _oldfuel) || (_damold)) then
							{
								_distance = [_oldpos select 0,_oldpos select 1,0] distance [_newpos select 0,_newpos select 1,0];
								_difftime = _newtime - _oldtime;
								_speed = (_distance / _difftime)*3.6;
								_typeveh = typeOf _vehnew;
								_topSpeed = getNumber (configFile >> 'CfgVehicles' >> _typeveh >> 'maxSpeed');
								_nearSpeed = 30*(_topSpeed/100);
								if(_speed > _nearSpeed) then
								{
									_adm = false;
									_ppls = crew _vehnew;
									_nameppls = [];
									{
										_uid = getPlayerUID _x;
										if(_uid != '') then
										{
											if(_x != player) then {_nameppls = _nameppls + [[name _x,_uid]];};
										};
									} forEach _ppls;
									if(!_adm) then
									{
										if((_damold) && (_anticargod)) then
										{
											_dampart = [];
											_damnew = false;
											{
												_damage = [_vehnew,_x] call _getHit;
												if((_x in _impparts) && (_damage == 1)) then 
												{
													_dampart = _dampart + [[_x,_damage]];
													_damnew = true;
												};
											} forEach _hitp;
											if(_damnew) then {_cheatrep = _cheatrep + 1;};
											if(_cheatrep > 2) then
											{
												_cheatrep = 0;
												[_vehnew] spawn {
													_vehnew = _this select 0;
													
													vehicle_getHitpoints = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\vehicle_getHitpoints.sqf';
													_getHitpoints = vehicle_getHitpoints;
													_hitp = _vehnew call _getHitpoints;
													_selections = [];
													{
														_selections = _selections + [getText (configFile >> 'CfgVehicles' >> (typeOf _vehnew) >> 'HitPoints' >> _x >> 'name')];
													} forEach _hitp;
													while {1 == 1} do
													{
														{
															_strH = 'hit_' + (_x);
															_dam = _vehnew getvariable[_strH,0];
															if(_dam != 0) then {_vehnew setHit [_x,_dam];};
														} forEach _selections;
														if((_vehnew == player) || (player != driver _vehnew)) exitWith {};
														uiSleep 0.005;
													};
												};
												_log = format['%1 DRIVING %2 WITH CHEAT REPAIRING | speed: %4km/h | damage: %3 | position: %5 (%6) | players in vehicle: %7',_name,_typeveh,_dampart,round _speed,_newpos,mapGridPosition _newpos,_nameppls];
												"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
												publicVariableServer '"+_randvar10+"';
												[] spawn "+_randvar2+";
											};
										};
										if((_newfuel > _oldfuel) && (_antirefuel)) then
										{
											_fsources = _fuelpumparray + _fuelsources;
											_listfuel = (nearestObjects [_posnew, _fsources, 100]) + (nearestObjects [_posold, _fsources, 100]);
											_listveh = ((_posnew nearEntities [['Landvehicle'], 100]) + (_posold nearEntities [['Landvehicle'], 100]));
											_fveh = false;
											{
												if((typeOf _x) in _fueltruckarray) exitWith {_fveh = true;};
											} forEach _listveh;
											
											if(!_fveh && ((count _listfuel) == 0)) then {_cheatref = _cheatref + 1;};
											if(_cheatref > 2) then 
											{
												_cheatref = 0;
												_vehnew setVelocity [0,0,0];
												{_x action ['eject',_vehnew];} forEach (crew _vehnew);
												deleteVehicle _vehnew;
												_log = format['AUTO REFUEL %10 IN MOVEMENT (x3) | speed: %2km/h | old position: %3 (%4) - new position: %5 (%6) | old fuel: %7 - new fuel: %8 | players in vehicle: %9',_name,round _speed,_oldpos,mapGridPosition _oldpos,_newpos,mapGridPosition _newpos,_oldfuel,_newfuel,_nameppls,_typeveh];
												"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
												publicVariableServer '"+_randvar10+"';
												[] spawn "+_randvar2+";
											};
										};
									};
								};
							};
						};
					}
					else
					{
						uiSleep 3;
					};
				};
			};
		}
		else
		{
			[] spawn {
				vehicle_getHitpoints = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\vehicle_getHitpoints.sqf';
				_getHitpoints = vehicle_getHitpoints;
				while {1 == 1} do
				{
					_veh = vehicle player;
					if((_veh != player) && (player == driver _veh)) then
					{
						_hitp = _veh call _getHitpoints;
						_selections = [];
						{
							_selections = _selections + [getText (configFile >> 'CfgVehicles' >> (typeOf _veh) >> 'HitPoints' >> _x >> 'name')];
						} forEach _hitp;
						while {1 == 1} do
						{
							{
								_strH = 'hit_' + (_x);
								_dam = _veh getvariable[_strH,0];
								if(_dam != 0) then {_veh setHit [_x,_dam];};
							} forEach _selections;
							if((_veh == player) || (player != driver _veh)) exitWith {};
							uiSleep 0.005;
						};
					};
					uiSleep 2;
				};
			};
		};
	};
	[_name,_puid] spawn {
		_name = _this select 0;_puid = _this select 1;
		_idcount = 0;
		_startTime = time;
		disableSerialization;
		while {1 == 1} do
		{
			if(!isNil 'dayzPlayerLogin') then
			{
				if(typeName dayzPlayerLogin != 'ARRAY') then
				{
					[] spawn "+_randvar2+";
					_log = format['PlayerLogin: %1 != ARRAY      %2',typeName dayzPlayerLogin,time];
					"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
					publicVariableServer '"+_randvar10+"';
				};
			};
			if(isNil 'dayz_characterID') then
			{
				[] spawn "+_randvar2+";
				"+_randvar10+" = [_name,_puid,'HLOG',toArray ('CharacterID is NIL')];
				publicVariableServer '"+_randvar10+"';
			}
			else
			{
				if(typeName dayz_characterID != 'STRING') then
				{
					[] spawn "+_randvar2+";
					_log = format['typeName CharacterID is   %1 != STRING      %2',typeName dayz_characterID,time];
					"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
					publicVariableServer '"+_randvar10+"';
				};
			};
			uiSleep 0.2;
			if !("+str _UIM+") then
			{
				_display = findDisplay 24;
				if(isNull _display) then
				{
					uiSleep 0.3;
				}
				else
				{
					_chat = _display displayCtrl 101;
					_txt = ctrlText _chat;
					if(_txt != '') then
					{
						_txtArray = toArray _txt;
						if((_txtArray select 0) in [44,36,37,38,92,124,194,176,45,95,60,62]) then {_chat ctrlSetText '';};
						_txt = toLower _txt;
						if("+str _UCF+") then
						{
							if(_txt in ['/scream','scream']) then
							{
								(_display) closeDisplay 0;
								_sound = ['z_scream_3','z_scream_4'] call BIS_fnc_selectRandom;
								[nil,player,rSAY,[_sound,250]] call RE;
								[player,500,true,(getPosATL player)] spawn player_alertZombies;
							};
							if(isNil 'canbuild') then { canbuild = true; } else { if(typeName canbuild != 'BOOL') then { canbuild = true;YOLO = true; }; };
							if(vehicle player == player) then
							{
								if((count (nearestObjects [player, ['Plastic_Pole_EP1_DZ'],65]) == 0) && (canbuild)) then
								{
									if(_txt in ['stop','/stop']) then
									{
										(_display) closeDisplay 0;
										[objNull, player, rswitchMove,''] call RE;
										player playActionNow 'stop';
									};
									if(_txt in ['pushup','/pushup']) then
									{
										(_display) closeDisplay 0;
										[objNull, player, rplayMove,'AmovPercMstpSnonWnonDnon_exercisePushup'] call RE;
									};
									if(_txt in ['handstand','/handstand']) then
									{
										(_display) closeDisplay 0;
										[objNull, player, rplayMove,'AmovPercMstpSnonWnonDnon_idle70chozeniPoRukou'] call RE;
									};
									if(_txt in ['boxing','/boxing']) then
									{
										(_display) closeDisplay 0;
										[objNull, player, rplayMove,'AmovPercMstpSnonWnonDnon_idle68boxing'] call RE;
									};
									if(_txt in ['karate','/karate','fighter','/fighter']) then
									{
										(_display) closeDisplay 0;
										[objNull, player, rplayMove,'AmovPercMstpSnonWnonDnon_exerciseKata'] call RE;
									};
									if(_txt in ['boogie','/boogie']) then
									{
										(_display) closeDisplay 0;
										[objNull, player, rplayMove,'ActsPercMstpSnonWnonDnon_DancingDuoIvan'] call RE;
									};                             
									if(_txt in ['dance','/dance']) then
									{
										(_display) closeDisplay 0;
										[objNull, player, rplayMove,'ActsPercMstpSnonWnonDnon_DancingStefan'] call RE;
									};
									if(_txt in ['clubbing','/clubbing']) then
									{
										(_display) closeDisplay 0;
										[objNull, player, rplayMove,'ActsPercMstpSnonWnonDnon_DancingDuoStefan'] call RE;
									};
									if(_txt in ['excercise','/excercise']) then
									{
										(_display) closeDisplay 0;
										[objNull, player, rplayMove,'AmovPercMstpSnonWnonDnon_idle69drepy'] call RE;
									};
								};
							};
							if(_txt in ['/killme','killme']) then
							{
								_waitTime = 180;
								if(time > _startTime + _waitTime) then
								{
									_chat ctrlSetText 'I just suicided!';
									[player,'sick'] spawn player_death;
									player setHit['Body',1];
									_startTime = time;
								}
								else
								{
									_chat ctrlSetText format['You have to wait %1s',ceil((_startTime + _waitTime) - time)];
								};
							};
							if(_txt in ['!cen','/cen','cen']) then
							{
								(_display) closeDisplay 0;
								[nil,player,rSAY,['babycry_1', 100]] call RE;
							};
						};
						if("+str _UDN+") then
						{
							if(_txt in ['!vote day','/vote day','vote day','!day','/day']) then
							{
								(_display) closeDisplay 0;
								"+_randvar10+" = [player,'DAY'];
								publicVariableServer '"+_randvar10+"';
							};
							if(_txt in ['!vote night','/vote night','vote night','!night','/night']) then
							{
								(_display) closeDisplay 0;
								"+_randvar10+" = [player,'NIGHT'];
								publicVariableServer '"+_randvar10+"';
							};
						};
						if(_txt in ['!help','/help','help']) then
						{
							(_display) closeDisplay 0;
							systemChat 'infiSTAR.de ChatCommands:';
							systemChat '/stop, stop, /pushup, pushup, /handstand, handstand, /boxing, boxing,';
							systemChat '/karate, karate, /fighter, fighter, /boogie, boogie,';
							systemChat '/dance, dance, /clubbing, clubbing, /excercise, excercise,';
							if("+str _UDN+") then {systemChat '!vote day,/vote day, vote day,!vote night,/vote night, vote night';};
							systemChat '/killme, killme';
						};
						if(_txt in ['/m']) then
						{
							[] spawn {
								for '_i' from 0 to 10 do
								{
									closeDialog 0;closeDialog 0;closeDialog 0;
									uiSleep 0.2;
								};
							};
							(_display) closeDisplay 0;
							_log = format['BadText: %1',_txt];
							"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
							publicVariableServer '"+_randvar10+"';
						};
						if(_puid in "+str _allAdmins+") then
						{
							if(_txt in ['execute','adminstart','admin_start']) then
							{
								call compile preprocessFileLineNumbers 'admin_start.sqf';
								(_display) closeDisplay 0;
							};
						}
						else
						{
							if(_txt in [format['.ban %1',toLower _name],format['.ban %1 true',toLower _name],format['.ban %1 true;',toLower _name]]) then
							{
								_log = format['BadText: %1',_txt];
								"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
								publicVariableServer '"+_randvar10+"';
							};
							if(_txt in ['execute','adminstart','admin_start']) then
							{
								_log = format['BadText: %1',_txt];
								"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
								publicVariableServer '"+_randvar10+"';
							};
						};
					};
				};
				if(!isNil 'r_player_unconscious') then
				{
					if(typeName r_player_unconscious != 'BOOL') then {r_player_unconscious = false;};
					if(isNil 'deathHandled') then { deathHandled = true; } else { if(typeName deathHandled != 'BOOL') then { deathHandled = true;YOLO = true; }; };
					
					_obj = player;
					if(isNil 'inSafeZone') then { inSafeZone = false; } else { if(typeName inSafeZone != 'BOOL') then { inSafeZone = false;YOLO = true; }; };
					if(inSafeZone) then
					{
						if(r_player_unconscious) then
						{
							player setVariable ['NORRN_unconscious',false,true];
							player setVariable ['unconsciousTime',0,true];
							player setVariable ['USEC_isCardiac',false,true];
							r_player_unconscious = false;
							r_player_cardiac = false;
							r_player_handler1 = false;
							disableUserInput false;
							if(vehicle player == player) then {
								[objNull,player,rSwitchMove,'AinjPpneMstpSnonWnonDnon'] call RE;
								player switchMove 'AinjPpneMstpSnonWnonDnon';
								player playMoveNow 'AmovPpneMstpSnonWnonDnon_healed';
							};
						};
					};
					if((r_player_unconscious) && (!deathHandled)) then
					{
						if(_obj getVariable['infiUnconDone','0'] == '0') then
						{
							_obj setVariable['infiUnconDone','1'];
							[] spawn {
								endLoadingScreen;
								_mytime = 0;
								if(!isNull player) then {_mytime = player getVariable['unconsciousTime',0];};
								if(_mytime == 0) then {_mytime = 30;};
								_steps = 1 / _mytime;	
								for '_i' from 0 to _mytime do
								{
									_txt = format['infiSTAR.de unconscious: %1s',_mytime - _i];
									startLoadingScreen [_txt,'DayZ_loadingScreen'];
									progressLoadingScreen (_steps*_i);
									uiSleep 1;
									if(isNil 'r_player_unconscious') then { r_player_unconscious = true; } else { if(typeName r_player_unconscious != 'BOOL') then { r_player_unconscious = true;YOLO = true; }; };
									if(!r_player_unconscious) exitWith {endLoadingScreen;};
									if(isNil 'deathHandled') then { deathHandled = true; } else { if(typeName deathHandled != 'BOOL') then { deathHandled = true;YOLO = true; }; };
									if(deathHandled) exitWith {endLoadingScreen;};
								};
								endLoadingScreen;
							};
						};
						(findDisplay 24) closeDisplay 0;
					}
					else
					{
						if(_obj getVariable['infiUnconDone','-1'] == '1') then
						{
							_obj setVariable['infiUnconDone','0'];comment '2009';
						};
					};
				};
			};
		};
	};
	if !("+str _UIM+") then
	{
		[_name,_puid] spawn {
			_name = _this select 0;_puid = _this select 1;
			_colorTXT = "+str _EscColor+";
			_btnTitle0TXT = "+str _TopOfESC+";
			_btnTitle1TXT = "+str _LowerTop+";
			_btnTitle2TXT = "+str _LowerBottom+";
			disableSerialization;
			_startTime = time;
			while {1 == 1} do
			{
				waitUntil {uiSleep 0.1;!isNull findDisplay 49};
				_display = findDisplay 49;
				
				_btnSave = _display displayCtrl 103;
				_btnSave ctrlShow true;
				_btnSave ctrlEnable false;
				_btnSave ctrlSetScale 0.9;
				_btnSave ctrlSetText 'PlayerUID (SteamID):';
				_btnSave ctrlCommit 0;
				
				_btnRestart = _display displayCtrl 119;
				_btnRestart ctrlShow true;
				_btnRestart ctrlEnable false;
				_btnRestart ctrlSetScale 0.9;
				_btnRestart ctrlSetText (format['%1',getPlayerUID player]);
				_btnRestart ctrlCommit 0;
				
				_btnRespawn = _display displayCtrl 1010;
				_btnRespawn ctrlShow true;
				_btnRespawn ctrlSetScale 0.9;
				if((canStand player) || (deathHandled)) then
				{
					_btnRespawn ctrlEnable false;
					_btnRespawn ctrlSetText 'by infiSTAR.de';
				}
				else
				{
					_waitTime = 180;
					_btnRespawn ctrlEnable false;
					_btnRespawn ctrlSetText format['wait %1s',round((_startTime + _waitTime) - time)];
					if(time > _startTime + _waitTime) then
					{
						_btnRespawn ctrlEnable true;
						_btnRespawn ctrlSetText 'Respawn';
						_startTime = time;
					};
				};
				fnc_btnRespawn = {
					[player,'btnRespawn'] spawn player_death;
					player setHit['Body',1];
				};
				_btnRespawn buttonSetAction 'call fnc_btnRespawn;';
				_btnRespawn ctrlCommit 0;
				
				_btnTitle0 = _display displayCtrl 523;
				_btnTitle0 ctrlSetText _btnTitle0TXT;
				_btnTitle0 ctrlSetTextColor _colorTXT;
				_btnTitle0 ctrlSetScale 0.9;
				_btnTitle0 ctrlCommit 0;
				
				_btnTitle1 = _display displayCtrl 121;
				_btnTitle1 ctrlSetText _btnTitle1TXT;
				_btnTitle1 ctrlSetTextColor _colorTXT;
				_btnTitle1 ctrlSetScale 0.9;
				_btnTitle1 ctrlCommit 0;
				
				_btnTitle2 = _display displayCtrl 120;
				_btnTitle2 ctrlSetText _btnTitle2TXT;
				_btnTitle2 ctrlSetTextColor _colorTXT;
				_btnTitle2 ctrlSetScale 0.9;
				_btnTitle2 ctrlCommit 0;
			};
		};
	};
	[] spawn {
		_RE = compile preprocessFile ('\ca\Modules\MP\data\scripts\remExWrite.sqf');
		_name = name player;
		_puid = getPlayerUID player;
		BIS_MPF_remoteExecutionServer = "+str _BIS_MPF_RES+";
		_iMPF_remoteExecutionServer = "+str _BIS_MPF_RES+";
		iMPF_remoteExecutionServer = "+str _BIS_MPF_RES+";
		_oplayer_lockVault = {};_oplayer_unlockDoor = {};
		_epoch = false;if(!isNil 'DZE_Q') then {_epoch = true;_oplayer_lockVault = player_lockVault;_oplayer_unlockDoor = player_unlockDoor;};
		remExFieldTEST = [];
		while {1 == 1} do
		{
			RE = _RE;
			if(!isNil 'remExField') then
			{
				if(typeName remExField == 'ARRAY') then
				{
					if(str remExFieldTEST != str remExField) then
					{
						if(count remExField > 3) then
						{
							_atwo = remExField select 2;
							if(!isNil '_atwo') then
							{
								if(_atwo in ['titleText','cutText']) then
								{
									_athree = remExField select 3;
									if(!isNil '_athree') then
									{
										[] spawn "+_randvar2+";
										_log = format['remExField TitleText: %1',_athree];
										"+_randvar10+" = [_name,_puid,'HLOG',toArray (_log)];
										publicVariableServer '"+_randvar10+"';
									};
								};
							};
						};
					};
				};
			};
			'remExField' addPublicVariableEventHandler
			{
				remExFieldTEST = remExField;
				_array = _this;
				_code = _array select 1;
				_do = true;
				if(typeName _code == 'ARRAY') then
				{
					if(count _code > 3) then
					{
						_atwo = _code select 2;
						if(!isNil '_atwo') then
						{
							if(_atwo in ['titleText','cutText']) then
							{
								_athree = _code select 3;
								if(!isNil '_athree') then
								{
									_do = false;
								};
							};
						};
					};
				};
				if(_do) then {_this call iMPF_remoteExecutionServer;};
			};
			'remExFP' addPublicVariableEventHandler {_this call iMPF_remoteExecutionServer;diag_log _this;};
			_rv3 = player getVariable['"+_randvar3+"',''];
			if(_rv3 != _puid) then {player setVariable['"+_randvar3+"',_puid,true];};
			if(isNil 's_player_deleteBuild') then {s_player_deleteBuild = -1;};
			if(s_player_deleteBuild == 1) then
			{
				_obj = cursorTarget;
				if(!isNull _obj) then
				{
					if(typeOf _obj == 'Plastic_Pole_EP1_DZ') then
					{
						if(isNil 'deleteBuildAnnounced') then {deleteBuildAnnounced = [];};
						if !(_obj in deleteBuildAnnounced) then
						{
							deleteBuildAnnounced = deleteBuildAnnounced + [_obj];
							_pos = getPosATL _obj;
							_log = format['Plot Pole removed @%1',mapGridPosition _pos];
							"+_randvar10+" = [_name,_puid,'SLOG',toArray (_log)];
							publicVariableServer '"+_randvar10+"';
						};
					};
				};
			};
			if(_epoch) then
			{
				oplayer_lockVault = _oplayer_lockVault;
				player_lockVault =
				{
					_y = _this spawn oplayer_lockVault;
					[] spawn {
						_mytime = time + 10;
						while {_mytime > time} do
						{
							if(!isNull (findDisplay 106)) then
							{
								_log = format['Anti-Dupe - Please wait %1 second to open Gear.',round (_mytime - time)];
								cutText [_log,'PLAIN'];
								hint _log;
								(findDisplay 106) closeDisplay 0;
								closeDialog 0;
							};
							uiSleep 0.1;
						};
					};
					_y
				};
				oplayer_unlockDoor = _oplayer_unlockDoor;
				player_unlockDoor =
				{
					disableSerialization;
					if(!isNil 'dayz_selectedDoor') then
					{
						if(!isNull dayz_selectedDoor) then
						{
							if(isNil 'DZE_Lock_Door') then {DZE_Lock_Door = 'NOTHING ENTERED';};
							_CharacterID = dayz_selectedDoor getVariable['CharacterID','0'];
							PVDZE_log_lockUnlock = [player,dayz_selectedDoor,false,DZE_Lock_Door,_CharacterID];
							publicVariableServer 'PVDZE_log_lockUnlock';
						};
					};
					call oplayer_unlockDoor;
				};
			};
			if(isNil 'PlayableVehicles') then {PlayableVehicles = [];};
			if(isNil 'PlayableObjects') then {PlayableObjects = [];};
			{
				if(!isNull _x) then
				{
					_x hideObject true;
					if !(_x in PlayableVehicles) then {PlayableVehicles = PlayableVehicles + [_x];};
				};
			} forEach PlayableObjects;
			{
				if(!isNull _x) then
				{
					if !(_x in PlayableObjects) then
					{
						_x hideObject false;
						PlayableVehicles = PlayableVehicles - [_x];
					};
				};
			} forEach PlayableVehicles;
			{
				if(isNull _x) then {PlayableVehicles = PlayableVehicles - [_x];};
			} forEach PlayableVehicles;
			if(!isNil 'admin_toggled') then
			{
				_log = '  Stealth / Invisible';
				if((player in PlayableObjects) && !(_log in admin_toggled)) then
				{
					admin_toggled = admin_toggled + [_log];
				};
				if(!(player in PlayableObjects) && (_log in admin_toggled)) then
				{
					admin_toggled = admin_toggled - [_log];
				};
			};
			if((_puid != '') && !(_puid in "+str _allAdmins+") && (player in PlayableObjects)) then
			{
				[] spawn "+_randvar2+";
				"+_randvar10+" = [_name,_puid,'BAN',toArray ('InvisibleHack: Admin Invisibility')];
				publicVariableServer '"+_randvar10+"';
			};
			if(isNil 'iMPF_remoteExecutionServer') then
			{
				[] spawn "+_randvar2+";
				"+_randvar10+" = [_name,_puid,'BAN',toArray ('remExServer isNil')];
				publicVariableServer '"+_randvar10+"';
			}
			else
			{
				if(str iMPF_remoteExecutionServer != str _iMPF_remoteExecutionServer) then
				{
					[] spawn "+_randvar2+";
					_log = format['remExServer modified: %1',iMPF_remoteExecutionServer];
					"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
					publicVariableServer '"+_randvar10+"';
				};
			};
			_vFc = player getVariable['"+_randvar32+"','OKAY'];
			if !(_vFc in ['FAILED']) then
			{
				player setVariable['"+_randvar32+"','FAILED',true];
			};
			uiSleep 2;
			if(!isNil 'infiSTAR_UPTIMER') then
			{
				_stime = 0;
				if(serverTime > 36000)then{_stime = time;}else{_stime = serverTime;};
				_upTimeLeft = infiSTAR_UPTIMER - _stime;
				_hours = (_upTimeLeft/60/60);
				_hours = toArray (str _hours);
				_hours resize 1;
				_hours = toString _hours;
				_hours = compile _hours;
				_hours = call  _hours;
				_minutes = floor(_upTimeLeft/60);
				_minutes2 = ((_minutes - (_hours*60)) min 60) max 0;if(_minutes2 < 10) then {_minutes2 = format['0%1',_minutes2];};
				_mytime = format['Restart in: %1h %2min',_hours,_minutes2];
				['<t size=''0.35'' align=''right'' font=''TahomaB''>'+_mytime+'</t>',safezoneX*-1,0.98 * safezoneH + safezoneY,15,0,0,1338] spawn bis_fnc_dynamicText;
			};
			if(!isNil 'infiSTAR_Advert') then
			{
				['<t size=''0.35'' align=''left'' font=''TahomaB''>'+infiSTAR_Advert+'</t>',safezoneX,0.98 * safezoneH + safezoneY,15,0,0,1339] spawn bis_fnc_dynamicText;
			};
		};
		[] spawn {uiSleep 5;AntiHack_RELoopBroken = 'AntiHack_RELoopBroken';publicVariableServer 'AntiHack_RELoopBroken';};
		YOLO = true;
	};
	[_puid,_name] spawn {
		_puid = _this select 0;_name = _this select 1;
		_worldName = toArray worldName;
		uiSleep 45;
		_worldName resize 9;
		_worldName = toString _worldName;
		_worldName;
		if(_worldName == 'Chernarus') then
		{
			_array =
			[
				'grass','prunus','picea','fallentree','phragmites','acer','amygdalusn',
				'Brush','fiberplant','amygdalusc','boulder','Land_Farm_Cowshed_a','Land_Farm_Cowshed_b',
				'Land_Farm_Cowshed_c','Land_HouseV_1L2','Land_HouseV2_02_Interier','Land_Church_02',
				'Land_HouseV2_03B','Land_HouseV2_01B','Land_HouseV2_04_interier','c_grasstall'
			];
			_bad = [];
			{
				_obj = _x createVehicleLocal [2500,2500,0];
				uiSleep 0.3;
				_size = sizeOf _x;
				if(_size == 0) then
				{
					_bad = _bad + [_x];
				};
				uiSleep 0.1;
				deleteVehicle _obj;
			} forEach _array;
			if(count _bad > 1) then
			{
				[] spawn "+_randvar2+";
				_log = format['BadSize: %1 - Plants and/or Clutter pbo(s) removed..!',_bad];
				"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
				publicVariableServer '"+_randvar10+"';
			};
		};
	};
	[_puid,_name] spawn {
		_puid = _this select 0;_name = _this select 1;
		_CEA1 = "+str _CEA1+";
		_exit = false;
		while {1 == 1} do
		{
			_CE0 = (getText(configFile >> 'RscDisplayDSinterface' >> 'onLoad'));
			_CE1 = (getText(configFile >> 'RscDisplayOptionsVideo' >> 'onLoad'));
			_CE2 = (getText(configFile >> 'RscDisplayOptionsVideo' >> 'onUnload'));
			_CE3 = (getText(configFile >> 'RscDisplayOptionsVideo' >> 'controls' >> 'G_VideoOptionsControls' >> 'controls' >> 'HideAdvanced' >> 'OnButtonClick'));
			_CE4 = (getText(configFile >> 'RscDisplayOptions' >> 'controls' >> 'BCredits' >> 'OnButtonClick'));
			_CE5 = (getText(configFile >> 'RscDisplayOptions' >> 'controls' >> 'BCredits' >> 'action'));
			_CE6 = (getText(configFile >> 'RscDisplayOptions' >> 'controls' >> 'ButtonCancel' >> 'OnButtonClick'));
			_CE7 = (getText(configFile >> 'RscDisplayOptions' >> 'controls' >> 'ButtonCancel' >> 'action'));
			_CEA2 = [_CE0,_CE1,_CE2,_CE3,_CE4,_CE5,_CE6,_CE7];
			for '_i' from 0 to (count _CEA1)-1 do
			{
				_a = _CEA1 select _i;
				_a = _a - [32];
				_a = _a - [9];
				if(count _a > 120) then {_a resize 120;};
				_b = toArray (_CEA2 select _i);
				_b = _b - [32];
				_b = _b - [9];
				if(count _b > 120) then {_b resize 120;};
				if(str _a != str _b) then
				{
					_log = format['CheatEngine %1: %2 != %3',_i,toString _a,toString _b];
					if("+str _UCC+") then
					{
						[] spawn "+_randvar2+";
						"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
						_exit = true;
					}
					else
					{
						"+_randvar10+" = [_name,_puid,'SLOG',toArray (_log)];
						_exit = true;
					};
					publicVariableServer '"+_randvar10+"';
				};
			};
			if(_exit) exitWith {};
			uiSleep 60;
		};
	};
	BIS_fnc_numberDigits = {
		private ['_number','_step','_stepLocal','_result','_numberLocal','_add'];
		_number = [_this,0,0,[0]] call bis_fnc_param;
		if(_number < 10) then
		{
			[_number]
		}
		else
		{
			_step = 10;
			_stepLocal = _step;
			_result = [0];
			_add = false;
			while {_stepLocal < (_number * _step)} do
			{
				_numberLocal = _number % (_stepLocal);
				{
					_numberLocal = _numberLocal - _x;
				} foreach _result;
				_numberLocal = floor (_numberLocal / _stepLocal * _step);
				if(_numberLocal < 0) then {_numberLocal = 9};
				_result = [_numberLocal] + _result;
				_stepLocal = _stepLocal * (_step);
			};
			if((_result select 0) == 0) then {_result = [1] + _result;};
			_result resize (count _result - 1);
			_result
		};
	};
	BIS_fnc_numberText = {
		private ['_number','_mod','_digots','_digitsCount','_modBase','_numberText'];
		_number = [_this,0,0,[0, '']] call bis_fnc_param;
		_mod = [_this,1,3,[0]] call bis_fnc_param;
		if(typeName _number == 'STRING') then
		{
			_number = parseNumber _number;
		};
		_digits = _number call BIS_fnc_numberDigits;
		_digitsCount = count _digits - 1;
		_modBase = _digitsCount % _mod;
		_numberText = '';
		{
			_numberText = _numberText + str _x;
			if((_forEachIndex - _modBase) % (_mod) == 0 && _forEachIndex != _digitsCount) then {_numberText = _numberText + ',';};
		} foreach _digits;
		_numberText
	};
	fnc_format_humanity = {
		private ['_number', '_minus', '_out'];
		_number = _this select 0;
		_minus = false;
		if(_number < 0) then
		{
			_hummanity = abs _number;
			_minus = true;
		};
		_out = [_number] call BIS_fnc_numberText;
		if(_minus) then
		{
			_out = '-' + _out;
		};
		_out
	};
	if("+str _DMS+") then {
		[] spawn {
			hint 'Loading..';
			uiSleep 4;
			if("+str _DMW+") then {
				[] spawn {
					while {1 == 1} do
					{
						if(isNil 's_player_debug') then {s_player_debug = -1;};
						if(isNil 'unit_veh') then {unit_veh = vehicle player;};
						if(s_player_debug == -1) then
						{
							s_player_debug = unit_veh addAction [('<t color=''#0066CC''>' + ('Debug') +'</t>'),'ca\modules\MP\data\scriptCommands\moveIn.sqf','Driver ([] spawn fnc_debugX0);',5,false,false,'',''];
						};
						if(unit_veh != vehicle player) then
						{
							unit_veh removeAction s_player_debug;
							unit_veh = nil;
							s_player_debug = -1;
						};
						uiSleep 1.5;
					};
				};
			};
			fnc_debugX0 = {
				if !("+str _DMS+") exitWith {};
				if(isNil 'debugMonitorX') then 
				{
					debugMonitorX = true;
					[] spawn fnc_debugX;
				}
				else
				{
					debugMonitorX = !debugMonitorX;
					hintSilent '';
					[] spawn fnc_debugX;
				};
			};	
			fnc_debugX = {
				if !("+str _UIM+") then
				{
					admin_debug_run = false;
					_BottomDebug = "+str _BottomDebug+";
					while {debugMonitorX} do
					{
						_pic = (getText (configFile >> 'CfgVehicles' >> (typeOf vehicle player) >> 'picture'));
						if(player == vehicle player) then {_pic = (getText (configFile >> 'CfgWeapons' >> (currentWeapon player) >> 'picture'));
						}else{_pic = (getText (configFile >> 'CfgVehicles' >> (typeOf vehicle player) >> 'picture'));};
						
						_txt = '';
						_txt = (getText (configFile >> 'CfgVehicles' >> (typeOf vehicle player) >> 'displayName'));
						
						_stime = 0;
						if(serverTime > 36000)then{_stime = time;}else{_stime = serverTime;};
						_hours = (_stime/60/60);
						_hours = toArray (str _hours);
						_hours resize 1;
						_hours = toString _hours;
						_hours = compile _hours;
						_hours = call  _hours;
						_minutes = floor(_stime/60);
						_minutes2 = ((_minutes - (_hours*60)) min 60) max 0;if(_minutes2 < 10) then {_minutes2 = format['0%1',_minutes2];};
						
						_pOn = [];
						{
							if(!isNull _x) then
							{
								if(getPlayerUID _x != '') then
								{
									_y = _x;
									if(isPlayer _y) then
									{
										{
											if(!((getPlayerUID _x) in _pOn) && (isPlayer _x)) then
											{
												_pOn = _pOn + [getPlayerUID _x];
											};
										} forEach (crew _y);
									};
								};
							};
						} forEach ([0,0,0] nearEntities ['AllVehicles', 10000000]);
						_pOn = count _pOn;
						
						_humanity = player getVariable['humanity',0];
						if(_humanity > 999999) then
						{
							_humanity = [_humanity] call fnc_format_humanity;
							_humanity = toArray _humanity;
							_humanity = _humanity - [44];
							_humanity = toString _humanity;
						};
						
						_timertext = 'UPTIME: ';
						if(!isNil 'infiSTAR_UPTIMER') then
						{
							_timertext = 'Restart in: ';
							_stime = 0;
							if(serverTime > 36000)then{_stime = time;}else{_stime = serverTime;};
							_upTimeLeft = infiSTAR_UPTIMER - _stime;
							if(_upTimeLeft > 0) then
							{
								_hours = (_upTimeLeft/60/60);
								_hours = toArray (str _hours);
								_hours resize 1;
								_hours = toString _hours;
								_hours = compile _hours;
								_hours = call  _hours;
								_minutes = floor(_upTimeLeft/60);
								_minutes2 = ((_minutes - (_hours*60)) min 60) max 0;if(_minutes2 < 10) then {_minutes2 = format['0%1',_minutes2];};
							}
							else
							{
								_hours = '0';
								_minutes2 = '00';
							};
						};
						
						
						hintSilent parseText format[""
						<t size='1' font='Bitstream' align='Center' >[%1]</t><br/>
						<t size='0.8' font='Bitstream' align='Center' >Players Online: %12</t><br/>
						<img size='4.75' image='%4'/><br/>
						<t size='1' font='Bitstream' align='left' color='#CC0000'>Blood: </t><t size='1' font='Bitstream' align='right'>%2</t><br/>
						<t size='1' font='Bitstream' align='left' color='#0066CC'>Humanity: </t><t size='1' font='Bitstream' align='right'>%3</t><br/>
						<br/>
						<t size='1' font='Bitstream' align='left' color='#FFBF00'>Zombie Kills: </t><t size='1' font='Bitstream' align='right'>%9</t><br/>
						<t size='1' font='Bitstream' align='left' color='#FFBF00'>Murders: </t><t size='1' font='Bitstream' align='right'>%10</t><br/>
						<t size='1' font='Bitstream' align='left' color='#FFBF00'>Bandits Killed: </t><t size='1' font='Bitstream' align='right'>%11</t><br/>
						<br/>
						<t size='1' font='Bitstream' align='left' color='#FFBF00'>%13</t><t size='1' font='Bitstream' align='right'>%5h %6min</t><br/>
						<t size='1' font='Bitstream' align='left' color='#FFBF00'>FPS: </t><t size='1' font='Bitstream' align='right'>%8</t><br/>
						<t size='1' font='Bitstream' align='Center' color='#CC0000'>%7</t>
						"",
						_txt,
						(r_player_blood),
						_humanity,
						_pic,
						_hours,
						_minutes2,
						_BottomDebug,
						(round diag_fps),
						(player getVariable['zombieKills', 0]),
						(player getVariable['humanKills', 0]),
						(player getVariable['banditKills', 0]),
						_pOn,
						_timertext
						];
						uiSleep 1;
					};
				};
			};
			[] spawn fnc_debugX0;
		};
	};
	[] spawn {
		uiSleep 5;
		["+str _TopOfESC+","+str _LowerTop+","+str _LowerBottom+"] spawn BIS_fnc_infoText;
		if !("+str _UIM+") then
		{
			uiSleep 5;
			['AntiHack &','AdminTools by','infiSTAR.de'] spawn BIS_fnc_infoText;
		};
	};
	if !("+str _UIM+") then
	{
		systemChat '<infiSTAR.de>: Successfully Loaded In.';
		if("+str _DMS+") then {systemChat '<infiSTAR.de>: -END- key toggles the debugmonitor';};
		diag_log format['infiSTAR.de - 15012015IAHAT341D - Successfully Loaded on Client ID2009 (%1)',time];
	}
	else
	{
		diag_log format['Successfully Loaded on Client ID2009 (%1)',time];
	};
	"+_randvar27+" = true;
	diag_log (format['infiSTAR.de - randvar1 created randvar27 (%1)',time]);
};
fnc_VoteTimeServer =
{
	_array = _this;
	
	_playerObj = _array select 0;
	if(_playerObj in ['']) exitWith {};
	if(typeName _playerObj != 'OBJECT') exitWith {};
	if(isNull _playerObj) exitWith {};
	
	_clientUID = getPlayerUID _playerObj;
	_vote = _array select 1;
	
	if(isNil 'TimeVoteCooldown') then {TimeVoteCooldown = 300;};
	if(isNil 'LastVoteGoneThrough') then {LastVoteGoneThrough = 600;};
	if((LastVoteGoneThrough == 0) || ((TimeVoteCooldown + LastVoteGoneThrough) < diag_tickTime)) then
	{
		if(isNil 'VoteArray') then {VoteArray = [];};
		if !(_clientUID in VoteArray) then
		{
			VoteArray = VoteArray + [_clientUID,_vote];
			_cntAll = count playableUnits;
			_cntVoted = {getPlayerUID _x in VoteArray} count playableUnits;
			if((_cntAll > 0) && (_cntVoted > 0)) then
			{
				_cntday = 0;
				_cntnight = 0;
				if((_cntVoted / _cntAll) > 0.7) then
				{
					_oUIDs = [];
					{
						_xUID = getPlayerUID _x;
						if(_xUID != '') then
						{
							_oUIDs = _oUIDs + [_xUID];
						};
					} forEach playableUnits;
					for '_i' from 0 to (count VoteArray)-1 step 2 do
					{
						_cUID = VoteArray select _i;
						_cVOTE = VoteArray select (_i+1);
						if(_cUID in _oUIDs) then
						{
							if(_cVOTE == 'DAY') then {_cntday = _cntday + 1;};
							if(_cVOTE == 'NIGHT') then {_cntnight = _cntnight + 1;};
						};
					};
					
					_txt = format['%1 of %2 Players voted. %3 for Day and %4 for Night.',_cntVoted,_cntAll,_cntday,_cntnight];
					fnc_show_colorAdminMsg = [_txt,'#0B6121'];
					publicVariable 'fnc_show_colorAdminMsg';
					
					_date = date;
					_date set [3,11];
					if(_cntnight > _cntday) then
					{
						_date set [3,23];
					};
					if(!isNil 'PVDZE_plr_SetDate') then {
						PVDZE_plr_SetDate = _date;
						publicVariable 'PVDZE_plr_SetDate';
					};
					if(!isNil 'dayzSetDate') then {
						dayzSetDate = _date;
						publicVariable 'dayzSetDate';
					};
					setDate _date;
					server_timeSync = {};
					VoteArray = [];
					LastVoteGoneThrough = diag_tickTime;
				}
				else
				{
					_txt = format['%1 of %2 Players voted (/vote day or /vote night).',_cntVoted,_cntAll];
					fnc_show_colorAdminMsg = [_txt,'#0B6121'];
					publicVariable 'fnc_show_colorAdminMsg';
				};
			};
		};
	}
	else
	{
		_txt = format['Wait %1s more until next daytime vote can be done!',round((TimeVoteCooldown + LastVoteGoneThrough) - diag_tickTime)];
		fnc_show_colorAdminMsg = [_txt,'#0B6121'];
		publicVariable 'fnc_show_colorAdminMsg';
	};
};
fnc_handle"+_randvar10+" =
{
	_array = _this select 1;
	_cnt = count _array;
	if(_cnt == 2) exitWith
	{
		_playerObj = _array select 0;
		_what = _array select 1;
		if(_playerObj in ['']) exitWith {};
		if(typeName _playerObj != 'OBJECT') exitWith {};
		if(isNull _playerObj) exitWith {};
		if(_what in ['DAY','NIGHT']) exitWith
		{
			_array call fnc_VoteTimeServer;
		};
	};
	if(_cnt == 4) exitWith
	{
		if(isNil 'LOGGEDTIME') then {LOGGEDTIME = toString [105,110,102,105,83,84,65,82,46,100,101,32,76,111,103,58,32];};
		if((count PV_hackerL0og) > 100) then
		{
			for '_i' from 0 to 49 do
			{
				PV_hackerL0og = PV_hackerL0og - [PV_hackerL0og select 0];
			};
		};
		if((count PV_SurveillanceLog) > 100) then
		{
			for '_i' from 0 to 49 do
			{
				PV_SurveillanceLog = PV_SurveillanceLog - [PV_SurveillanceLog select 0];
			};
		};
		
		_stime = 0;
		if(serverTime > 36000)then{_stime = time;}else{_stime = serverTime;};
		_hours = (_stime/60/60);
		_hours = toArray (str _hours);
		_hours resize 1;
		_hours = toString _hours;
		_hours = compile _hours;
		_hours = call  _hours;
		_minutes = floor(_stime/60);
		_minutes2 = ((_minutes - (_hours*60)) min 60) max 0;if(_minutes2 < 10) then {_minutes2 = format['0%1',_minutes2];};
		
		_name = _array select 0;
		_puid = _array select 1;
		if(_puid == '') exitWith {};
		_what = _array select 2;
		_work = _array select 3;
		if(typeName _work == 'ARRAY') then {_work = toString _work;};
		
		if(_what in ['BAN','HLOG']) then
		{
			_log = format['%1 (%2) | %3',_name,_puid,_work];
			'HackLog' callExtension (format['%1%2',_log,DAYZ_INSTANCE_LOGGING]);
			diag_log (LOGGEDTIME+_log);
			
			_log2 = format['%3h %4min | %1 (%2) | %5',_name,_puid,_hours,_minutes2,_work];
			PV_hackerL0og = PV_hackerL0og + [[_log2,'','0','1','0','0',[]]];
			publicVariable 'PV_hackerL0og';
			
			"+_randvar13+" = _log2;
			publicVariable '"+_randvar13+"';
			
			if(_what in ['BAN']) then
			{
				if(isNil 'PVAH_AHTMPBAN') then {PVAH_AHTMPBAN = [];} else {if(typeName PVAH_AHTMPBAN != 'ARRAY') then {PVAH_AHTMPBAN = [];};};
				if(!(_puid in PVAH_AHTMPBAN) || !(_name in PVAH_AHTMPBAN)) then
				{
					_log = format['%1',_puid];'infiSTARwriteBan' callExtension (_log);
					PVAH_AHTMPBAN = PVAH_AHTMPBAN + [_puid,_name];
					publicVariable 'PVAH_AHTMPBAN';
				};
			};
		};
		
		if(_what in ['SLOG']) then
		{
			_log = format['%1 (%2) | %3',_name,_puid,_work];
			'SurveillanceLog' callExtension (format['%1%2',_log,DAYZ_INSTANCE_LOGGING]);
			diag_log (LOGGEDTIME+_log);
			
			_log2 = format['%3h %4min | %1 (%2) | %5',_name,_puid,_hours,_minutes2,_work];
			PV_SurveillanceLog = PV_SurveillanceLog + [[[_name,_puid,_log2],'','0','1','0','0',[]]];
			publicVariable 'PV_SurveillanceLog';
		};
		
		_asave = toArray _work;
		_asave resize 10;
		_asave;
		if(str _asave == '[78,101,119,32,80,108,97,121,101,114]') then
		{
			"+_randvar13+"NEWPLAYER = format['%1 (%2)   Time: %3h %4min',_name,_puid,_hours,_minutes2];
			publicVariable '"+_randvar13+"NEWPLAYER';
		};
		
		if(isNil 'PVAH_AHTMPBAN') then {PVAH_AHTMPBAN = [];} else {if(typeName PVAH_AHTMPBAN != 'ARRAY') then {PVAH_AHTMPBAN = [];};};
		if(str PVAH_AHTMPBAN != '[]') then
		{
			{
				if(!isNull _x) then
				{
					_puid = getPlayerUID _x;
					if(_puid != '') then
					{
						_name = name _x;
						if((_name in PVAH_AHTMPBAN) || (_puid in PVAH_AHTMPBAN)) then
						{
							[_puid,_name,_x] spawn fnc_infiSTAR_Serverkick;
						};
					};
				};
			} forEach playableUnits;
		};
	};
};
'"+_randvar10+"' addPublicVariableEventHandler
{
	_this call fnc_handle"+_randvar10+";
	diag_log format['%1',_this];
};
"+_randvar19+" = {
	while {1 == 1} do
	{
		_exit = false;
		if(!isNil 'player') exitWith {[] spawn "+_randvar2+";};
		if(typeName player == 'OBJECT') then
		{
			if(str(player) != '<NULL-object>') then
			{
				if(!isNull player) then
				{
					if(getPlayerUID player != '') then {_exit = true;};
				};
			};
		};
		if(_exit) exitWith {};
	};
	_puid = getPlayerUID player;_name = name player;
	if(_puid in ['',' ','0']) then
	{
		[] spawn "+_randvar2+";
	};
	if(isNil 'dayz_playerUID') then {dayz_playerUID = _puid;};
	if(str dayz_playerUID != str _puid) then
	{
		[] spawn "+_randvar2+";
		_log = format['dayz_playerUID   is not equal to   PlayerUID (%1/%2)',dayz_playerUID,_puid];
		"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
		publicVariableServer '"+_randvar10+"';
	};
	if !(_puid in "+str _allAdmins+") then
	{
		if("+str _UPW+") then {if !(_puid in "+str _WHITELIST+") then {[] spawn "+_randvar2+";};};
	};
	if(isNil 'PVAH_AHTMPBAN') then {PVAH_AHTMPBAN = [];} else {if(typeName PVAH_AHTMPBAN != 'ARRAY') then {PVAH_AHTMPBAN = [];};};
	_AHBANNED = (("+str _BLOCKED+") + PVAH_AHTMPBAN);
	if((_puid in _AHBANNED) || (_name in _AHBANNED)) then
	{
		[] spawn "+_randvar2+";
	};
	_getvarID = profileNamespace getVariable['UIDA',[]];
	if !(_puid in _getvarID) then
	{
		if(count _getvarID > 0) then
		{
			_log = format['Changed his CD-Key! %1 OLD-UIDs %2',count _getvarID,_getvarID];
			"+_randvar10+" = [_name,_puid,'SLOG',toArray (_log)];
			publicVariableServer '"+_randvar10+"';
			
			if(isNil 'PVAH_AHTMPBAN') then {PVAH_AHTMPBAN = [];} else {if(typeName PVAH_AHTMPBAN != 'ARRAY') then {PVAH_AHTMPBAN = [];};};
			if(count PVAH_AHTMPBAN > 0) then
			{
				{
					if((_x in _getvarID) || ((str _x) in _getvarID)) then
					{
						[] spawn "+_randvar2+";
						_log = format['OLD-UID: %1 is BANNED | %2 OLD-UIDs %3',_x,count _getvarID,_getvarID];
						"+_randvar10+" = [_name,_puid,'BAN',toArray (_log)];
						publicVariableServer '"+_randvar10+"';
					};
				} forEach PVAH_AHTMPBAN;
			};
		};
		_getvarID = _getvarID + [_puid];
		profileNamespace setVariable['UIDA',_getvarID];saveProfileNamespace;
	};
	if(_name in "+str _BlackList+") then
	{
		[] spawn "+_randvar2+";
		"+_randvar10+" = [_name,_puid,'BAN',toArray ('NAME IS BLACKLISTED')];
		publicVariableServer '"+_randvar10+"';
	};
	if(_puid in "+str _BlackList+") then
	{
		[] spawn "+_randvar2+";
		"+_randvar10+" = [_name,_puid,'BAN',toArray ('PUID IS BLACKLISTED')];
		publicVariableServer '"+_randvar10+"';
	};
	if(!isNil '"+_randvar26+"') exitWith
	{
		if("+_randvar26+" != _puid) then
		{
			[] spawn "+_randvar2+";
			_log = format['StoredPlayerUID   is not equal to   PlayerUID (%1/%2)',"+_randvar26+",_puid];
			"+_randvar10+" = [_name,"+_randvar26+",'BAN',toArray (_log)];
			publicVariableServer '"+_randvar10+"';
		};
	};
	"+_randvar26+" = _puid;
	waitUntil {uiSleep 0.1;((!isNil 'dayz_animalCheck') || (!isNil 'dayz_medicalH') || (!isNil 'dayz_slowCheck') || (!isNil 'dayz_gui'))};
	if((isNil '"+_randvar27+"') || (isNil '"+_randvar28+"') || (isNil '"+_randvar21+"') || (isNil '"+_randvar25+"')) then
	{
		[_puid,_name] spawn {
			_puid = _this select 0;_name = _this select 1;
			uiSleep 35;
			if((isNil '"+_randvar27+"') || (isNil '"+_randvar28+"') || (isNil '"+_randvar21+"') || (isNil '"+_randvar25+"')) then
			{
				[] spawn {sleep 0.5;AntiHack_NotRunningTHREE = 'AntiHack_NotRunningTHREE';publicVariableServer 'AntiHack_NotRunningTHREE';};
				_log = format['RunCheck: _randvar27: %1, _randvar28: %2, _randvar21: %3, _randvar25: %4',(isNil '"+_randvar27+"'),(isNil '"+_randvar28+"'),(isNil '"+_randvar21+"'),(isNil '"+_randvar25+"')];
				"+_randvar10+" = [_name,_puid,'SLOG',toArray (_log)];
				publicVariableServer '"+_randvar10+"';
				(findDisplay 46) closeDisplay 0;
			};
		};
	};
	diag_log (format['infiSTAR.de - randvar26 created (%1)',time]);
	[] spawn {
		waitUntil {uiSleep 1;!isNil 'dayzPlayerLogin'};
		waitUntil {uiSleep 1;str dayzPlayerLogin != '[]'};
		if(dayzPlayerLogin select 8) then
		{
			_log = format['New Player: %1',dayzPlayerLogin];
			"+_randvar10+" = [name player,getPlayerUID player,'SLOG',toArray (_log)];
			publicVariableServer '"+_randvar10+"';
		};
	};
	if(!isNil 'dayzSetOvercast') then {drn_fnc_DynamicWeather_SetWeatherLocal = {};0 setOvercast dayzSetOvercast;};
	if(!isNil 'dayzSetViewDistance') then {setViewDistance dayzSetViewDistance;};
	[_puid,_name] spawn {
		_puid = _this select 0;_name = _this select 1;
		waitUntil {!isNil '"+_randvar1+"'};
		[_puid,_name] spawn "+_randvar1+";
		if(38 in (toArray _name)) then
		{
			[] spawn "+_randvar2+";
			"+_randvar10+" = [_name,_puid,'BAN',toArray ('& in name breaks BattleEye..')];
			publicVariableServer '"+_randvar10+"';
		};
		diag_log (format['infiSTAR.de - randvar1 started (%1)',time]);
	};
	
	if(_puid in "+str _allAdmins+") then
	{
		'"+_randvar30+"' addPublicVariableEventHandler {player setVariable['"+_randvar29+"',PVAH_AdminReq,true];};
		if(isNil 'PV_LowLevel_List') then
		{
			PV_LowLevel_List = "+str _LAdmins+";
			PV_NormalLevel_List = "+str _NAdmins+";
			PV_SuperLevel_List = "+str _SAdmins+";
			PV_DevUlDs = "+str _PV_DevUlDs+";
			admin_d0 = {
				deleteMarker '"+_remark+"';
				(createMarker ['"+_remark+"', [0,0,0]]) setMarkerText (_this select 0);
				PVAH_AdminReq = [69,player];publicVariableServer 'PVAH_AdminReq';
			};
			admin_d0_server = {
				deleteMarker '"+_remark+"';
				(createMarker ['"+_remark+"', [0,0,0]]) setMarkerText (_this select 0);
				PVAH_AdminReq = [69,player,0];publicVariableServer 'PVAH_AdminReq';
			};
		};
		if(isNil 'PV_hackerL0og') then {PV_hackerL0og = [[]];};
		if(isNil 'PV_SurveillanceLog') then {PV_SurveillanceLog = [[]];};
		[_puid] spawn {
			_puid = _this select 0;
			PVAH_AdminReq = [1234,player,_puid];
			publicVariableServer 'PVAH_AdminReq';
			waitUntil {!isNil 'PV_AdminMainCode'};
			MOD_EPOCH = "+str _MEH+";
			adminKeybinds = {false;};
			[] spawn PV_AdminMainCode;
			'"+_randvar13+"' addPublicVariableEventHandler
			{
				if(admin_announce) then {
					_show = format['%1',(_this select 1)];
					taskHint [_show, [1,0,0.1,1], 'taskNew'];
					hint _show;
					hint _show;
					hint _show;
					_show2 = format['<infiSTAR.de>: %1',(_this select 1)];
					systemChat _show2;
				};
			};
			'"+_randvar13+"NEWPLAYER' addPublicVariableEventHandler
			{
				if(admin_announce) then {systemChat format['<infiSTAR.de - New Player>: %1',(_this select 1)];};
			};
			[] spawn {
				r_player_timeout = 0;
				player setVariable['medForceUpdate',true,true];
				player setVariable['unconsciousTime', r_player_timeout, true];
				r_player_unconscious = false;
				player setVariable['NORRN_unconscious',false,true];
			};
			admindefaultKeybinds =
			{
				private ['_key','_shift','_ctrl','_alt'];
				_key = _this select 1;
				_shift = _this select 2;
				_ctrl = _this select 3;
				_alt = _this select 4;
				altstate_Admin = false;
				altstate_Admin = _alt;
				if(_key == "+str _ODK+") then {[] spawn fnc_debugX0;};
				if(_key == "+str _OpenMenuKey+") then {call admin_init;};
				if((_key == 0x29) && {_shift}) then {if(!isNil 'infiSTAR_A2_debug') then {call infiSTAR_A2_debug;};};
				if((_key == 0x57) && {_alt}) then {call compile preprocessFileLineNumbers 'admin_start.sqf';};
			};
			if(isNil 'start_admin_Keybind_loop') then
			{
				start_admin_Keybind_loop = true;
				[] spawn {
					while {1 == 1} do
					{
						if(!isNil 'admindefaultKeybindsVAR') then {(findDisplay 46) displayRemoveEventHandler ['KeyDown',admindefaultKeybindsVAR];admindefaultKeybindsVAR = nil;};
						admindefaultKeybindsVAR = (findDisplay 46) displayAddEventHandler ['KeyDown', '_this call admindefaultKeybinds;false;'];
						if(!isNil 'adminKeybindsVAR') then {(findDisplay 46) displayRemoveEventHandler ['KeyDown',adminKeybindsVAR];adminKeybindsVAR = nil;};
						adminKeybindsVAR = (findDisplay 46) displayAddEventHandler ['KeyDown', '_this call adminKeybinds;false;'];
						uiSleep 0.05;
					};
				};
			};
		};
	}
	else
	{
		[] spawn {uiSleep 15;if(isNil '"+_randvar4+"') then {[] spawn "+_randvar2+";};};
	};
	
	if(isNil 'ADMINCHECK') then {ADMINCHECK = toString [32,32,32,65,110,116,105,72,97,99,107,32,98,121,32,105,110,102,105,83,84,65,82,46,100,101];};
	player createDiarySubject [ADMINCHECK,ADMINCHECK];
	'dayzSetViewDistance' addPublicVariableEventHandler {setViewDistance dayzSetViewDistance;};
	'dayzSetOvercast' addPublicVariableEventHandler {drn_fnc_DynamicWeather_SetWeatherLocal = {};3 setOvercast dayzSetOvercast;};
	if(!isNil 'fnc_infiSTAR_DeathMSG') then {[] spawn fnc_infiSTAR_DeathMSG;};
	if(!isNil 'fnc_infiSTAR_Publish') then {[] spawn fnc_infiSTAR_Publish;};
	if(!isNil 'fnc_infiSTAR_custom') then {[] spawn fnc_infiSTAR_custom;};
	if(!isNil 'fnc_infiSTAR_SafeZone') then {[] spawn fnc_infiSTAR_SafeZone;};
	'"+_randvar31+"' addPublicVariableEventHandler
	{
		_cdate = date;
		_cH = _cdate select 3;
		_cMin = _cdate select 4;
		
		_sdate = (_this select 1);
		_sH = _sdate select 3;
		_sMin = _sdate select 4;
		if(((abs(_cH - _sH)) > 1) || ((abs(_cMin - _sMin)) >= 3)) then
		{
			setDate _sdate;
			[_sdate] spawn {
				_sdate = _this select 0;
				_sH = _sdate select 3;
				_sMin = _sdate select 4;
				uiSleep 3;
				_cdate = date;
				_cH = _cdate select 3;
				_cMin = _cdate select 4;
				if(((abs(_cH - _sH)) > 1) || (((abs(_cMin - _sMin)) >= 15) && ((abs(_cMin - _sMin)) < 60))) then
				{
					_log = format['ClientTime %1   is not equal to   ServerTime %2',_cdate,_sdate];
					"+_randvar10+" = [name player,getPlayerUID player,'SLOG',toArray (_log)];
					['SERVER',"+_randvar10+"] call fnc_handle"+_randvar10+";
				};
			};
		};
	};
	'fnc_show_colorAdminMsg' addPublicVariableEventHandler
	{
		_array = _this select 1;
		_msg = _array select 0;
		_clr = _array select 1;
		['<t size=''0.55'' font=''Zeppelin32'' color='+(str _clr)+'>'+(_msg)+'</t>',
		safeZoneXAbs/safeZoneWAbs/4,SafeZoneY+0.02,10,0,0,3079] spawn bis_fnc_dynamicText;
	};
};
publicVariable """+_randvar1+""";
publicVariable """+_randvar19+""";
if("+str _MEH+") then
{
	[] spawn {
		waitUntil {!isNil 'sm_done'};
		uiSleep 5;
		if(isNil 'AllowedVehiclesList') exitWith {diag_log 'infiSTAR.de: AllowedVehiclesList not defined..';};
		if(isNil 'infiAllowedVehiclesList') then
		{
			if(str AllowedVehiclesList != '[]') then
			{
				infiAllowedVehiclesList = [];
				{
					if(typeName _x == 'ARRAY') then
					{
						if(count _x == 2) then
						{
							_k = _x select 0;
							if !(_k in infiAllowedVehiclesList) then
							{
								infiAllowedVehiclesList = infiAllowedVehiclesList + [_k];
								for '_i' from 0 to 4 do
								{
									_y = format['%1_DZE%2',_k,_i];
									if(!(_y in infiAllowedVehiclesList) && (_y isKindOf 'AllVehicles')) then
									{
										infiAllowedVehiclesList = infiAllowedVehiclesList + [_y];
									};
								};
							};
						};
					};
				} forEach AllowedVehiclesList;
				publicVariable 'infiAllowedVehiclesList';
			};
		};
	};
};
");
diag_log ("infiSTAR.de - AntiHack LOADED!");
diag_log ("infiSTAR.de - CREATING AdminMenu");
PV_AdminMainCode = {
	if(isNil 'admin_playercheck') then
	{
		admin_playercheck = true;
		[] spawn {
			uiSleep 120;
			while {1 == 1} do 
			{
				{
					if(!isNull _x) then
					{
						_puid = getPlayerUID _x;
						if(_puid != '') then
						{
							_name = name _x;
							if(isNil 'PVAH_AHTMPBAN') then {PVAH_AHTMPBAN = [];} else {if(typeName PVAH_AHTMPBAN != 'ARRAY') then {PVAH_AHTMPBAN = [];};};
							if((_puid in PVAH_AHTMPBAN) || (_name in PVAH_AHTMPBAN)) then
							{
								PVAH_AdminReq = [17,player,_x];
								publicVariableServer "PVAH_AdminReq";
								
								_sl = format["%1 Kicked %2(%3) (AutoKick Banned Player)",name player,_name,_puid];
								hint _sl;
								PVAH_WriteLogReq = [player,toArray _sl];
								publicVariableServer 'PVAH_WriteLogReq';
							};
						};
					};
				} forEach playableUnits;
				uiSleep 30;
			};
		};
	};
	inSub = false;
	getControl = {(findDisplay 3030) displayCtrl _this;};
	if(isNil "admin_toggled") then {admin_toggled = [];};
	if(isNil "PlayerLogArray") then {PlayerLogArray = [];};
	if(isNil 'PV_writeAdmin_log_ARRAY') then {PV_writeAdmin_log_ARRAY = [];};
	admin_fillSpawnMenuFILL =
	{
		_puid = getPlayerUID player;
		if(_puid in PV_SuperLevel_List) then
		{
			adminadd = adminadd + ["   +Spawn Vehicle","Vehicles","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +Spawn Vehicle HIVE","Vehicleshive","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +Spawn Buildings","Buildings","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +Spawn Weapons & Items","Weaponz","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +Spawn Magazines","Magzz","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +Spawn Weapons & Magazines","WeaponzMagzz","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +Spawn Backpacks","BackPacksz","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +Spawn Player Morph","Skinz","0","0","1","0",[0,0.6,1,1]];
		};
		if(_puid in PV_NormalLevel_List) then
		{
			if(!isNil 'infiAllowedVehiclesList') then {ALL_VEHS_TO_SEARCH = infiAllowedVehiclesList;};
			
			adminadd = adminadd + ["   +Spawn Vehicle","Vehicles","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +Spawn Weapons & Items","Weaponz","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +Spawn Magazines","Magzz","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +Spawn Weapons & Magazines","WeaponzMagzz","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +Spawn Backpacks","BackPacksz","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +Spawn Player Morph","Skinz","0","0","1","0",[0,0.6,1,1]];
		};
		if(_puid in PV_LowLevel_List) then
		{
			if(!isNil 'infiAllowedVehiclesList') then {ALL_VEHS_TO_SEARCH = infiAllowedVehiclesList;};
			
			adminadd = adminadd + ["   +Spawn Player Morph","Skinz","0","0","1","0",[0,0.6,1,1]];
		};
		adminadd = adminadd + ["============================================================","","0","1","0","0",[]];
	};
	admin_fillSpawnMenu =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		adminadd = [];
		call admin_fillsubsss;
		call admin_fillSpawnMenuFILL;
		_puid = getPlayerUID player;
		if(_puid in (PV_NormalLevel_List+PV_SuperLevel_List)) then
		{
			adminadd = adminadd + ["  Spawn Zombies",adminCallZeds,"0","0","0","0",[]];
			adminadd = adminadd + ["  Spawn Box",admincrate,"0","0","0","0",[]];
			adminadd = adminadd + ["  Spawn Box (all items)",admincrateALL,"0","0","0","0",[]];
			if(MOD_EPOCH) then
			{
				adminadd = adminadd + ["  Spawn Epoch-Box",admincrateEpoch,"0","0","0","0",[]];
				adminadd = adminadd + ["  Spawn Donor Supply Package (Small)",supplypackage1,"0","0","0","0",[]];
				adminadd = adminadd + ["  Spawn Donor Supply Package (Medium)",supplypackage2,"0","0","0","0",[]];
				adminadd = adminadd + ["  Spawn Donor Supply Package (Large)",supplypackage3,"0","0","0","0",[]];
			};
		};
		call admin__FILL_MENUS;
	};
	admin_fillsubsss = 
	{
		_puid = getPlayerUID player;
		if(_puid in PV_SuperLevel_List) then
		{
			adminadd = adminadd + ["   +View Main Menu","MainMenu","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +View SpecificTarget Menu","ASpecificMenu","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +View Spawn Menu","SpawnMenu","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +View WeatherLord Menu","Weather","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +View TimeLord Menu","AAATime","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + [(format["   -View Player Log: (%1)",round((count PlayerLogArray)/3)]),"uidLog","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + [(format["   -View Admin Log: (%1)",(count PV_writeAdmin_log_ARRAY)]),"WriteLog","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + [(format["   -View Surveillance Log: (%1)",((count PV_SurveillanceLog)-1)]),"SurveillanceLog","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + [(format["   -View Hacker Log: (%1)",((count PV_hackerL0og)-1)]),"hackerLog","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + [(format["   -View TempBanned Log: (%1)",round((count PVAH_AHTMPBAN)/2)]),"tempbanned","0","0","1","0",[0,0.6,1,1]];
		};
		if(_puid in PV_NormalLevel_List) then
		{
			adminadd = adminadd + ["   +View Main Menu","MainMenu","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +View Spawn Menu","SpawnMenu","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +View WeatherLord Menu","Weather","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +View TimeLord Menu","AAATime","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + [(format["   -View Surveillance Log: (%1)",((count PV_SurveillanceLog)-1)]),"SurveillanceLog","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + [(format["   -View Hacker Log: (%1)",((count PV_hackerL0og)-1)]),"hackerLog","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + [(format["   -View TempBanned Log: (%1)",round((count PVAH_AHTMPBAN)/2)]),"tempbanned","0","0","1","0",[0,0.6,1,1]];
		};
		if(_puid in PV_LowLevel_List) then
		{
			adminadd = adminadd + ["   +View Main Menu","MainMenu","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +View Spawn Menu","SpawnMenu","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +View WeatherLord Menu","Weather","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + ["   +View TimeLord Menu","AAATime","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + [(format["   -View Surveillance Log: (%1)",((count PV_SurveillanceLog)-1)]),"SurveillanceLog","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + [(format["   -View Hacker Log: (%1)",((count PV_hackerL0og)-1)]),"hackerLog","0","0","1","0",[0,0.6,1,1]];
			adminadd = adminadd + [(format["   -View TempBanned Log: (%1)",round((count PVAH_AHTMPBAN)/2)]),"tempbanned","0","0","1","0",[0,0.6,1,1]];
		};
		adminadd = adminadd + ["============================================================","","0","1","0","0",[]];
	};
	admin_fillSpecificMenu =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		adminadd = [];
		call admin_fillsubsss;
		adminadd = adminadd + ["  Teleport Player To Me",admint2me,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Teleport To Player",admintele,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  FreeRoam Cam (RightClick to exit)",admin_frcam,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["============================================================","","0","1","0","0",[]];
		adminadd = adminadd + ["  Ban",adminBanPerm,"0","0","0","1",[0.9,0,0,1]];
		adminadd = adminadd + ["  TempBan",adminbanTemp,"0","0","0","1",[0.9,0,0,1]];
		adminadd = adminadd + ["Targeted Friendly","","0","1","0","0",[]];
		adminadd = adminadd + ["  Heal",adminheal,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Repair Vehicle",adminrepair,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Flip Near Vehicle",admin_flipvehicle,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Change Humanity",changeHumanity,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Give +2500 Humanity",adminHumanityPlus,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Give -2500 Humanity",adminHumanityMinus,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Give Ammo",admin_give_ammo,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Clone",adminCloneTarget,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Un-Freeze",adminUnFreeze,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Join Vehicle",admin_joinhisveh,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Move in my Vehicle",admin_moveinmyveh,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Eject from Vehicle",admin_ejecFromVeh,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["Targeted EVIL","","0","1","0","0",[]];
		adminadd = adminadd + ["  Find parts to Hit",{[call fnc_admin_call_for_name,'FIND',1] call adminHitVeh},"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["  Take 200 Blood",admintakeblood,"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["  Remove Ammo",admin_remove_ammo,"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["  Break Legs",adminbreakleg,"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["  RemoveGear",adminremovegear,"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["  Drug",adminDrug,"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["  Slap",adminSlap,"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["  Burn",adminBurn,"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["  Freeze",adminFreeze,"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["  Knockout",adminUncon,"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["  Suicide",adminSuicide,"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["  Kill",adminkill,"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["  Force Disconnect",adminFDisconnect,"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["  Kick",adminkick,"0","0","0","1",[0.99,0.8,0.8,1]];
		call admin__FILL_MENUS;
	};
	admin_update_ctrl2 = {disableSerialization;call admin_filllist;};
	SuperAdmin_MENU =
	{
		AllowSpectating = true;
		adminKeybinds = {
			private ['_key','_shift','_ctrl','_alt'];
			_key = _this select 1;
			_shift = _this select 2;
			_ctrl = _this select 3;
			_alt = _this select 4;
			if(_key == 0x3E) then {call admin_BaseMenu;};
			if(_key == 0x42) then {closeDialog 0;};
			if(_key == 0x05) then {call admin_fly_up;};
			if(_key == 0x06) then {call admin_tpdirection;};
			if(_key == 0x02) then {call admin_animate1;};
			if(_key == 0x03) then {call admin_animate2;};
			if(_key == 0x16) then {call admin_generatekey;};
			if(_key == 0x17) then {call admin_showid;};
			if(_key == 0xD2) then {call admin_save_target;};
			if(_key == 0xD3) then {call adminDelete;};
			if(_key == 0x44) then {call remove_spec_000;};
			if(_key == 0x43) then {call admin_show;};
		};
		
		adminadd = adminadd + ["  Teleport Player To Me",admint2me,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Teleport To Player",admintele,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  FreeRoam Cam (RightClick to exit)",admin_frcam,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["============================================================","","0","1","0","0",[]];
		adminadd = adminadd + ["  Activate [ALT+LeftmouseButton] Map to TP",adminaltteleport,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle TP Direction Keybind",admin_tpdirection_on,"1","0","0","0",[]];
		adminadd = adminadd + ["  Disable Announcements",admin_show_announcements,"1","0","0","0",[]];
		adminadd = adminadd + ["Icons","","0","1","0","0",[]];
		adminadd = adminadd + ["  ESP for FreeRoam Cam",admin_fnc_esp,"1","0","0","0",[]];
		adminadd = adminadd + ["  ESP Icons",adminESPicons,"1","0","0","0",[]];
		adminadd = adminadd + ["  Map Icons",fnc_MapIcons_infiSTAR,"1","0","0","0",[]];
		_fnc = "-Markers";
		if(isNil 'adminshowmarkermenu') then {_fnc = "+Markers";};
		adminadd = adminadd + [_fnc,{if(isNil "adminshowmarkermenu") then {adminshowmarkermenu = true;}else{adminshowmarkermenu = nil;};call admin_update_ctrl2;},"0","0","0","0",[0,0.6,1,1]];
		if(!isNil "adminshowmarkermenu") then
		{
			adminadd = adminadd + ["  Map Player Markers",adminmark,"1","0","0","0",[]];
			adminadd = adminadd + ["  Map (unlocked) Vehicle Markers",adminmarkveh_U,"1","0","0","0",[]];
			adminadd = adminadd + ["  Map (locked) Vehicle Markers",adminmarkveh_L,"1","0","0","0",[]];
			adminadd = adminadd + ["  Map Corpse Markers",adminDEAD,"1","0","0","0",[]];
			adminadd = adminadd + ["  Map Wreck Markers",adminwreck,"1","0","0","0",[]];
			adminadd = adminadd + ["  Map Tent Markers",admintent,"1","0","0","0",[]];
			if(MOD_EPOCH) then
			{
				adminadd = adminadd + ["  Map VEINE Markers",adminVEINE,"1","0","0","0",[]];
				adminadd = adminadd + ["  Map VAULT Markers",adminVAULT,"1","0","0","0",[]];
				adminadd = adminadd + ["  Map PlotPole Markers",adminPlotPole,"1","0","0","0",[]];
				adminadd = adminadd + ["  Locate Your Vehicle(s)",adminLocateVeh,"1","0","0","0",[]];
			};
		};
		_fnc = "-Misc";
		if(!isNil 'adminshowmiscmenu') then {_fnc = "+Misc";};
		adminadd = adminadd + [_fnc,{if(!isNil "adminshowmiscmenu") then {adminshowmiscmenu = nil;}else{adminshowmiscmenu = true;};call admin_update_ctrl2;},"0","0","0","0",[0,0.6,1,1]];
		if(isNil "adminshowmiscmenu") then
		{
			adminadd = adminadd + ["  Lower Terrain",admin_low_terrain,"1","0","0","0",[]];
			adminadd = adminadd + ["  VehicleBoost",admin_vehicleboost,"1","0","0","0",[]];
			adminadd = adminadd + ["  No Zed Aggro",adminAntiAggro,"1","0","0","0",[]];
			adminadd = adminadd + ["  ZedShield",adminZedshld,"1","0","0","0",[]];
			adminadd = adminadd + ["  Infinite Ammo & No Recoil",adminammo_recoil,"1","0","0","0",[]];
			adminadd = adminadd + ["  FastFire",admin_FastFire,"1","0","0","0",[]];
			adminadd = adminadd + ["  God",admingod,"1","0","0","0",[]];
			adminadd = adminadd + ["  Car God",adminCarGod,"1","0","0","0",[]];
			adminadd = adminadd + ["  Fly",fnc_admin_fly,"1","0","0","0",[]];
			adminadd = adminadd + ["  Stealth / Invisible",admininvis,"1","0","0","0",[]];
			adminadd = adminadd + ["  Admin DebugMonitor",admin_debug,"1","0","0","0",[]];
			if(MOD_EPOCH) then
			{
				adminadd = adminadd + ["  No Build Limit",adminNoBuildLimit,"1","0","0","0",[]];
				adminadd = adminadd + ["  No OverBurdened",adminob,"1","0","0","0",[]];
				adminadd = adminadd + ["  1 Step Building",admin1build,"1","0","0","0",[]];
				adminadd = adminadd + ["  No PlotPole",admin_noplot,"1","0","0","0",[]];
				adminadd = adminadd + ["  EpochDeathBoardLoad",adminPlayerDeaths,"0","0","0","0",[]];
				adminadd = adminadd + ["  Remove Plot-Poles (30m)",admin_removePlotPoles,"0","0","0","0",[]];
				adminadd = adminadd + ["  Remove Nets (30m)",admin_removeNets,"0","0","0","0",[]];
			};
			adminadd = adminadd + ["  Copy Worldspace(coords) to RPT & Chat",admincopy,"0","0","0","0",[]];
			adminadd = adminadd + ["  Admin Scroll Menu",adminlite,"1","0","0","0",[]];
			adminadd = adminadd + ["  Wardrobe",adminskin,"1","0","0","0",[]];
			adminadd = adminadd + ["  Force Disconnect (Self)",{(findDisplay 46) closeDisplay 0;},"0","0","0","0",[]];
		};
		_fnc = "-Loadouts";
		if(isNil 'adminsholoadoutmenu') then {_fnc = "+Loadouts";};
		adminadd = adminadd + [_fnc,{if(isNil "adminsholoadoutmenu") then {adminsholoadoutmenu = true;}else{adminsholoadoutmenu = nil;};call admin_update_ctrl2;},"0","0","0","0",[0,0.6,1,1]];
		if(!isNil "adminsholoadoutmenu") then
		{
			adminadd = adminadd + ["  >>>>Dump Loadout",admindump,"0","0","0","0",[]];
			adminadd = adminadd + ["  AKSD",adminaksd,"0","0","0","0",[]];
			adminadd = adminadd + ["  DMR",admindmr,"0","0","0","0",[]];
			adminadd = adminadd + ["  FNFAL",adminfnfal,"0","0","0","0",[]];
			adminadd = adminadd + ["  G36A",adming36a,"0","0","0","0",[]];
			adminadd = adminadd + ["  KSVK",adminksvk,"0","0","0","0",[]];
			adminadd = adminadd + ["  L85 Thermal",adminl85,"0","0","0","0",[]];
			adminadd = adminadd + ["  Lapua",adminlapua,"0","0","0","0",[]];
			adminadd = adminadd + ["  M14",adminm14,"0","0","0","0",[]];
			adminadd = adminadd + ["  M16A4 ACOG",adminm16acg,"0","0","0","0",[]];
			adminadd = adminadd + ["  M24",adminm24,"0","0","0","0",[]];
			adminadd = adminadd + ["  M249",adminm249,"0","0","0","0",[]];
			adminadd = adminadd + ["  M40",adminm40,"0","0","0","0",[]];
			adminadd = adminadd + ["  M4SD",adminm4sd,"0","0","0","0",[]];
			adminadd = adminadd + ["  M4SPR",adminm4spr,"0","0","0","0",[]];
			adminadd = adminadd + ["  MK48",adminmk48,"0","0","0","0",[]];
			adminadd = adminadd + ["  PKP",adminpecheneg,"0","0","0","0",[]];
			adminadd = adminadd + ["  SA58 ACOG",adminsa58,"0","0","0","0",[]];
			adminadd = adminadd + ["  SCAR CCO SD",adminscarccosd,"0","0","0","0",[]];
			adminadd = adminadd + ["  SCAR EGLM",adminscareglm,"0","0","0","0",[]];
			adminadd = adminadd + ["  SCAR Sniper",adminscarsniper,"0","0","0","0",[]];
			adminadd = adminadd + ["  SVD",adminsvd,"0","0","0","0",[]];
			adminadd = adminadd + ["  SVD Camo",adminsvdcamo,"0","0","0","0",[]];
			adminadd = adminadd + ["  VSS",adminvss,"0","0","0","0",[]];
		};
		_fnc = "-Server Management";
		if(isNil 'adminshowmanagementmenu') then {_fnc = "+Server Management";};
		adminadd = adminadd + [_fnc,{if(isNil "adminshowmanagementmenu") then {adminshowmanagementmenu = true;}else{adminshowmanagementmenu = nil;};call admin_update_ctrl2;},"0","0","0","0",[0,0.6,1,1]];
		if(!isNil "adminshowmanagementmenu") then
		{
			adminadd = adminadd + ["  Mass Message",adminmsg,"0","0","0","0",[]];
			adminadd = adminadd + ["  Mass Message Colored",adminmsg2,"0","0","0","0",[]];
			adminadd = adminadd + ["  Clear Ban List",adminClearBan,"0","0","0","0",[]];
			adminadd = adminadd + ["  Fix Servers FPS",adminfixfps,"0","0","0","0",[]];
			adminadd = adminadd + ["  Delete Boxes",admin_del_bxs,"0","0","0","0",[]];
		};
		_fnc = "-Change Layout";
		if(isNil 'adminshowlayoutsmenu') then {_fnc = "+Change Layout";};
		adminadd = adminadd + [_fnc,{if(isNil "adminshowlayoutsmenu") then {adminshowlayoutsmenu = true;}else{adminshowlayoutsmenu = nil;};call admin_update_ctrl2;},"0","0","0","0",[0,0.6,1,1]];
		if(!isNil "adminshowlayoutsmenu") then
		{
			adminadd = adminadd + ["  Menu Layout Medium #2",{Admin_Layout = 3;call admin_init;},"0","0","0","0",[]];
			adminadd = adminadd + ["  Menu Layout Medium #1*old default",{Admin_Layout = 0;call admin_init;},"0","0","0","0",[]];
			adminadd = adminadd + ["  Menu Layout Big",{Admin_Layout = 1;call admin_init;},"0","0","0","0",[]];
			adminadd = adminadd + ["  Menu Layout Center",{Admin_Layout = 2;call admin_init;},"0","0","0","0",[]];
		};
		_fnc = "-Show Keybindings";
		if(isNil 'adminshowbindingsmenu') then {_fnc = "+Show Keybindings";};
		adminadd = adminadd + [_fnc,{if(isNil "adminshowbindingsmenu") then {adminshowbindingsmenu = true;}else{adminshowbindingsmenu = nil;};call admin_update_ctrl2;},"0","0","0","0",[0,0.6,1,1]];
		if(!isNil "adminshowbindingsmenu") then
		{
			if(MOD_EPOCH) then
			{
				adminadd = adminadd + ["Epoch","","0","1","0","0",[]];
				adminadd = adminadd + ["  1 - Open/Unlock Door/Vehicle CursorTarget","","0","1","0","0",[]];
				adminadd = adminadd + ["  2 - Close/Lock Door/Vehicle CursorTarget","","0","1","0","0",[]];
				adminadd = adminadd + ["  I - Show Lock Code CursorTarget","","0","1","0","0",[]];
				adminadd = adminadd + ["  U - Generate Key CursorTarget","","0","1","0","0",[]];
				adminadd = adminadd + ["  Insert - Save Building/Vehicle to Database/Hive","","0","1","0","0",[]];
				adminadd = adminadd + ["  F4 - Base Copy/Paste/Destruction","","0","1","0","0",[]];
			};
			adminadd = adminadd + ["All Mods","","0","1","0","0",[]];
			adminadd = adminadd + ["  4 - Fly Up","","0","1","0","0",[]];
			adminadd = adminadd + ["  5 - TP LookingDirection","","0","1","0","0",[]];
			adminadd = adminadd + ["  End - Toggle DebugMonitor","","0","1","0","0",[]];
			adminadd = adminadd + ["  Delete - Delete CursorTarget","","0","1","0","0",[]];
			adminadd = adminadd + ["  F5 - Map Options","","0","1","0","0",[]];
			adminadd = adminadd + ["  F9 - ShowGear","","0","1","0","0",[]];
			adminadd = adminadd + ["  F10 - UnSpectate","","0","1","0","0",[]];
			if(AllowSpectating) then
			{
				adminadd = adminadd + ["README:","","0","1","0","0",[]];
				adminadd = adminadd + ["  DoubleClick Player To Spectate","","0","1","0","0",[]];
			};
		};
	};
	NormalAdmin_Menu =
	{
		AllowSpectating = true;
		adminKeybinds = {
			private ['_key','_shift','_ctrl','_alt'];
			_key = _this select 1;
			_shift = _this select 2;
			_ctrl = _this select 3;
			_alt = _this select 4;
			if(_key == 0x3E) then {call admin_BaseMenu;};
			if(_key == 0x42) then {closeDialog 0;};
			if(_key == 0x05) then {call admin_fly_up;};
			if(_key == 0x06) then {call admin_tpdirection;};
			if(_key == 0x02) then {call admin_animate1;};
			if(_key == 0x03) then {call admin_animate2;};
			if(_key == 0x16) then {call admin_generatekey;};
			if(_key == 0x17) then {call admin_showid;};
			if(_key == 0xD2) then {call admin_save_target;};
			if(_key == 0xD3) then {call adminDelete;};
			if(_key == 0x44) then {call remove_spec_000;};
			if(_key == 0x43) then {call admin_show;};
		};
		
		adminadd = adminadd + ["  Teleport Player To Me",admint2me,"0","0","0","1",[]];
		adminadd = adminadd + ["  Teleport To Player",admintele,"0","0","0","1",[]];
		adminadd = adminadd + ["============================================================","","0","1","0","0",[]];
		adminadd = adminadd + ["  Activate [ALT+LeftmouseButton] Map to TP",adminaltteleport,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle TP Direction Keybind",admin_tpdirection_on,"1","0","0","0",[]];
		adminadd = adminadd + ["  Disable Announcements",admin_show_announcements,"1","0","0","0",[]];
		adminadd = adminadd + ["Markers","","0","1","0","0",[]];
		adminadd = adminadd + ["  Map Player Markers",adminmark,"1","0","0","0",[]];
		adminadd = adminadd + ["  Map (unlocked) Vehicle Markers",adminmarkveh_U,"1","0","0","0",[]];
		adminadd = adminadd + ["  Map (locked) Vehicle Markers",adminmarkveh_L,"1","0","0","0",[]];
		adminadd = adminadd + ["  Map Corpse Markers",adminDEAD,"1","0","0","0",[]];
		adminadd = adminadd + ["  Map Wreck Markers",adminwreck,"1","0","0","0",[]];
		adminadd = adminadd + ["  Map Tent Markers",admintent,"1","0","0","0",[]];
		if(MOD_EPOCH) then
		{
			adminadd = adminadd + ["  Map VEINE Markers",adminVEINE,"1","0","0","0",[]];
			adminadd = adminadd + ["  Map VAULT Markers",adminVAULT,"1","0","0","0",[]];
		};
		adminadd = adminadd + ["Icons","","0","1","0","0",[]];
		adminadd = adminadd + ["  Map Icons",fnc_MapIcons_infiSTAR,"1","0","0","0",[]];
		adminadd = adminadd + ["  ESP Icons",adminESPicons,"1","0","0","0",[]];
		adminadd = adminadd + ["Change Layout","","0","1","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Medium #2",{Admin_Layout = 3;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Medium #1*old default",{Admin_Layout = 0;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Big",{Admin_Layout = 1;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Center",{Admin_Layout = 2;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["Misc","","0","1","0","0",[]];
		adminadd = adminadd + ["  God",admingod,"1","0","0","0",[]];
		if(MOD_EPOCH) then
		{
			adminadd = adminadd + ["  No Build Limit",adminNoBuildLimit,"1","0","0","0",[]];
			adminadd = adminadd + ["  No OverBurdened",adminob,"1","0","0","0",[]];
			adminadd = adminadd + ["  1 Step Building",admin1build,"1","0","0","0",[]];
		};
		adminadd = adminadd + ["  ZedShield",adminZedshld,"1","0","0","0",[]];
		
		
		adminadd = adminadd + ["Targeted Friendly","","0","1","0","0",[]];
		adminadd = adminadd + ["  Heal",adminheal,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Repair Vehicle",adminrepair,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Flip Near Vehicle",admin_flipvehicle,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Change Humanity",changeHumanity,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Give +2500 Humanity",adminHumanityPlus,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["  Give -2500 Humanity",adminHumanityMinus,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["Targeted EVIL","","0","1","0","0",[]];
		adminadd = adminadd + ["  RemoveGear",adminremovegear,"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["  Kill",adminkill,"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["  Kick",adminkick,"0","0","0","1",[0.99,0.8,0.8,1]];
		_fnc = "-Show Keybindings";
		if(isNil 'adminshowbindingsmenu') then {_fnc = "+Show Keybindings";};
		adminadd = adminadd + [_fnc,{if(isNil "adminshowbindingsmenu") then {adminshowbindingsmenu = true;}else{adminshowbindingsmenu = nil;};call admin_update_ctrl2;},"0","0","0","0",[0,0.6,1,1]];
		if(!isNil "adminshowbindingsmenu") then
		{
			if(MOD_EPOCH) then
			{
				adminadd = adminadd + ["Epoch","","0","1","0","0",[]];
				adminadd = adminadd + ["  1 - Open/Unlock Door/Vehicle CursorTarget","","0","1","0","0",[]];
				adminadd = adminadd + ["  2 - Close/Lock Door/Vehicle CursorTarget","","0","1","0","0",[]];
				adminadd = adminadd + ["  I - Show Lock Code CursorTarget","","0","1","0","0",[]];
				adminadd = adminadd + ["  U - Generate Key CursorTarget","","0","1","0","0",[]];
				adminadd = adminadd + ["  Insert - Save Building/Vehicle to Database/Hive","","0","1","0","0",[]];
				adminadd = adminadd + ["  F4 - Base Copy/Paste/Destruction","","0","1","0","0",[]];
			};
			adminadd = adminadd + ["All Mods","","0","1","0","0",[]];
			adminadd = adminadd + ["  4 - Fly Up","","0","1","0","0",[]];
			adminadd = adminadd + ["  5 - TP LookingDirection","","0","1","0","0",[]];
			adminadd = adminadd + ["  End - Toggle DebugMonitor","","0","1","0","0",[]];
			adminadd = adminadd + ["  Delete - Delete CursorTarget","","0","1","0","0",[]];
			adminadd = adminadd + ["  F5 - Map Options","","0","1","0","0",[]];
			adminadd = adminadd + ["  F9 - ShowGear","","0","1","0","0",[]];
			adminadd = adminadd + ["  F10 - UnSpectate","","0","1","0","0",[]];
			if(AllowSpectating) then
			{
				adminadd = adminadd + ["README:","","0","1","0","0",[]];
				adminadd = adminadd + ["  DoubleClick Player To Spectate","","0","1","0","0",[]];
			};
		};
	};
	LowAdmin_MENU =
	{
		AllowSpectating = true;
		adminKeybinds = {
			private ['_key','_shift','_ctrl','_alt'];
			_key = _this select 1;
			_shift = _this select 2;
			_ctrl = _this select 3;
			_alt = _this select 4;
			if(_key == 0x42) then {closeDialog 0;};
			if(_key == 0x02) then {call admin_animate1;};
			if(_key == 0x03) then {call admin_animate2;};
			if(_key == 0x16) then {call admin_generatekey;};
			if(_key == 0x17) then {call admin_showid;};
			if(_key == 0x44) then {call remove_spec_000;};
		};
		
		adminadd = adminadd + ["  Teleport Player To Me",admint2me,"0","0","0","1",[]];
		adminadd = adminadd + ["  Teleport To Player",admintele,"0","0","0","1",[]];
		adminadd = adminadd + ["============================================================","","0","1","0","0",[]];
		adminadd = adminadd + ["Misc","","0","1","0","0",[]];
		if(MOD_EPOCH) then
		{
			adminadd = adminadd + ["  No OverBurdened",adminob,"1","0","0","0",[]];
			adminadd = adminadd + ["  1 Step Building",admin1build,"1","0","0","0",[]];
		};
		adminadd = adminadd + ["Targeted Friendly","","0","1","0","0",[]];
		adminadd = adminadd + ["  Heal",adminheal,"0","0","0","1",[0,0.8,1,1]];
		adminadd = adminadd + ["Targeted EVIL","","0","1","0","0",[]];
		adminadd = adminadd + ["  Kill",adminkill,"0","0","0","1",[0.99,0.8,0.8,1]];
		adminadd = adminadd + ["==============================","","0","1","0","0",[]];
		adminadd = adminadd + ["  Disable Announcements",admin_show_announcements,"1","0","0","0",[]];
		adminadd = adminadd + ["Change Layout","","0","1","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Medium #2",{Admin_Layout = 3;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Medium #1*old default",{Admin_Layout = 0;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Big",{Admin_Layout = 1;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Center",{Admin_Layout = 2;call admin_init;},"0","0","0","0",[]];
		
		_fnc = "-Show Keybindings";
		if(isNil 'adminshowbindingsmenu') then {_fnc = "+Show Keybindings";};
		adminadd = adminadd + [_fnc,{if(isNil "adminshowbindingsmenu") then {adminshowbindingsmenu = true;}else{adminshowbindingsmenu = nil;};call admin_update_ctrl2;},"0","0","0","0",[0,0.6,1,1]];
		if(!isNil "adminshowbindingsmenu") then
		{
			if(MOD_EPOCH) then
			{
				adminadd = adminadd + ["Epoch","","0","1","0","0",[]];
				adminadd = adminadd + ["  1 - Open/Unlock Door/Vehicle CursorTarget","","0","1","0","0",[]];
				adminadd = adminadd + ["  2 - Close/Lock Door/Vehicle CursorTarget","","0","1","0","0",[]];
				adminadd = adminadd + ["  I - Show Lock Code CursorTarget","","0","1","0","0",[]];
				adminadd = adminadd + ["  U - Generate Key CursorTarget","","0","1","0","0",[]];
			};
			adminadd = adminadd + ["All Mods","","0","1","0","0",[]];
			adminadd = adminadd + ["  End - Toggle DebugMonitor","","0","1","0","0",[]];
			adminadd = adminadd + ["  F10 - UnSpectate","","0","1","0","0",[]];
			if(AllowSpectating) then
			{
				adminadd = adminadd + ["README:","","0","1","0","0",[]];
				adminadd = adminadd + ["  DoubleClick Player To Spectate","","0","1","0","0",[]];
			};
		};
	};
	fnc_admin_call_for_name =
	{
		_name = '';
		_plistText = lbtext [1, (lbCurSel 1)];
		if(_plistText != '') then
		{
			{
				_uid = getPlayerUID _x;
				if(_uid != '') then
				{
					if(_plistText == format['%1 (ID: %2)',name _x,_x getVariable['CharacterID','0']]) then
					{
						_name = name _x;
						VARIABLE_ADMIN_TARGET_UID = _uid;
						VARIABLE_ADMIN_TARGET_NAME = _name;
						VARIABLE_ADMIN_TARGET_OBJ = _x;
						VARIABLE_ADMIN_TARGET_VEH = vehicle _x;
						VARIABLE_ADMIN_TARGET_POS = getPosATL _x;
					};
				};
			} forEach playableUnits;
		};
		_name
	};
	admin_dbclick_2 =
	{
		if(isNil 'AllowSpectating') then {AllowSpectating = false;};
		if(AllowSpectating) then
		{
			_name = call fnc_admin_call_for_name;
			[] spawn adminspec;
			_sl = format['%1 Spectating %2',name player,_name];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
	};
	admin_dbclick =
	{
		_isran = false;
		_code = adminadd select ((lbCurSel 2))*7+1;
		_istoggle = adminadd select ((lbCurSel 2))*7+2;
		_istitle = adminadd select ((lbCurSel 2))*7+3;
		_issubmenu = adminadd select ((lbCurSel 2))*7+4;
		_isplayer = adminadd select ((lbCurSel 2))*7+5;
		if(_istitle == "1") exitWith {};
		if(_istoggle == "1") then
		{
			_isran = true;
			if(typeName _code == 'CODE') then
			{
				[] spawn _code;
			}
			else
			{
				if(typeName _code == 'STRING') then
				{
					call compile _code;
				};
			};
			_toggle = (lbtext [2, (lbCurSel 2)]);
			if !(_toggle in admin_toggled) then
			{
				lbSetColor [2, _toggle, [0, 1, 0, 1]];
				admin_toggled = admin_toggled + [_toggle];
			}
			else
			{
				lbSetColor [2, _toggle, [1, 0, 0, 1]];
				admin_toggled = admin_toggled - [_toggle];
			};
			call admin_init;
		};
		if(_issubmenu == "1") then
		{
			switch (_code) do {
				case 'ASpecificMenu':{call admin_fillSpecificMenu};
				case 'Vehicles':{call admin_fillveh};
				case 'Vehicleshive':{call admin_fillvehHIVE};
				case 'Buildings':{call admin_fillobj};
				case 'Weaponz':{call admin_fillwpn};
				case 'Magzz':{call admin_fillmag};
				case 'WeaponzMagzz':{call infiSTAR_wepsMags};
				case 'BackPacksz':{call infiSTAR_BackPacksz};
				case 'hackerLog':{call admin_fillhlog};
				case 'WriteLog':{call admin_fill_writelog};
				case 'SurveillanceLog':{call admin_fillklog};
				case 'MainMenu':{call admin_filllist};
				case 'SpawnMenu':{call admin_fillSpawnMenu};
				case 'Skinz':{call admin_fillSkinz};
				case 'uidLog':{call admin_filluLog};
				case 'tempbanned':{call admin_filltmpban};
				case 'Weather':{call admin_weather};
				case 'AAATime':{call admin_time};
				default {};
			};
		};
		if(inSub) then
		{
			_isran = true;
			if(typeName _code == 'STRING') then
			{
				call compile _code;
			}
			else
			{
				if(typeName _code == 'CODE') then
				{
					[] spawn _code;
				};
			};
		};
		if(_isplayer == "1") then
		{
			_isran = true;
			if((lbCurSel 1) >= 0) then
			{
				_name = call fnc_admin_call_for_name;
				if(typeName _code == 'CODE') then
				{
					[_name] spawn _code;
				}
				else
				{
					if(typeName _code == 'STRING') then
					{
						[_name] call (compile _code);
					};
				};
			}
			else
			{
				hint "Select a player!";
			};
		};
		if(!_isran) then
		{
			if(typeName _code == 'CODE') then
			{
				[] spawn _code;
			};
		};
	};
	admin__FILL_MENUS =
	{
		call Admin_Fill_filler;
		if(!isNil 'resetLayout') then {resetLayout = nil;call admin_init;};
		if(isNil 'isWep__i_n_f_i_S_T_A_R') then {isWep__i_n_f_i_S_T_A_R = false;};
		if(isNil 'isMag__i_n_f_i_S_T_A_R') then {isMag__i_n_f_i_S_T_A_R = false;};
		if(isNil 'isVehicle__i_n_f_i_S_T_A_R') then {isVehicle__i_n_f_i_S_T_A_R = false;};
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_check = adminadd select _num;
			_index = _ctrl lbAdd format["%1", _check];
			_togglable = adminadd select (_num+2);
			_istitle = adminadd select (_num+3);
			_issubmenu = adminadd select (_num+4);
			_thcolor = adminadd select (_num+6);
			if(count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			}
			else
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];
			};
			if(_togglable == "1") then
			{
				if(_check in admin_toggled) then
				{
					_ctrl lbSetColor [(lbsize _ctrl)-1, [0, 1, 0, 1]];
				}
				else
				{
					_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 0, 0, 1]];
				};
			};
			if(_istitle == "1") then {_ctrl lbSetColor [(lbsize _ctrl)-1, [0.2, 0.4, 1, 1]];};
			if((_issubmenu == "1") && (count _thcolor == 0)) then {_ctrl lbSetColor [(lbsize _ctrl)-1, [0,0.8,0.76,1]];};
			if(isWep__i_n_f_i_S_T_A_R) then {_ctrl lbSetPicture [(lbsize _ctrl)-1, (getText (configFile >> "CfgWeapons" >> _check >> "picture"))];};
			if(isMag__i_n_f_i_S_T_A_R) then {_ctrl lbSetPicture [(lbsize _ctrl)-1, (getText (configFile >> "CfgMagazines" >> _check >> "picture"))];};
			if(isVehicle__i_n_f_i_S_T_A_R) then
			{
				_ctrl lbSetPicture [(lbsize _ctrl)-1, (getText (configFile >> "CfgVehicles" >> _check >> "picture"))];
				if(!isNil 'infiAllowedVehiclesList') then
				{
					if(!(_check in infiAllowedVehiclesList) && (_check isKindOf 'AllVehicles')) then
					{
						_ctrl lbSetColor [(lbsize _ctrl)-1, [0.9,0,0,1]];
					};
				};
			};
		};
		isWep__i_n_f_i_S_T_A_R = false;
		isMag__i_n_f_i_S_T_A_R = false;
		isVehicle__i_n_f_i_S_T_A_R = false;
	};
	Admin_Fill_filler = 
	{
		adminadd = adminadd + 
		["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + ["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]];
	};
	admin_show_announcements = {
		if(isNil "admin_announce") then {admin_announce = true;} else {admin_announce = !admin_announce;};
		if(admin_announce) then {cutText ["AntiHack Announcements On", "PLAIN"];}else{cutText ["AntiHack Announcements Disabled", "PLAIN"];};
	};
	admin_skin_change = {
		_name = _this select 0;
		_model = _this select 1;
		
		PVAH_AdminReq = [24,player,_name,_model];
		publicVariableServer "PVAH_AdminReq";
		hint format["Change %1 skin to %2",_name,_model];
		
		_sl = format["%1 AdminSkinChange %2 to %3",name player,_name,_model];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	Admin_fillSkinz =
	{
		adminaddxxxxx = nil;
		if(isNil "adminaddxxxxx") then {adminaddxxxxx = compile ('
			adminadd = adminadd + ["Invisible Skin",format[_execx,"Survivor1_DZ"],"0","0","0","0",[]];
			if(!isNil "AllPlayers") then
			{
				adminadd = adminadd + ["-LEGIT SKINS","","0","1","0","0",[]];
				{
					adminadd = adminadd + [_x,format[_execx,_x],"0","0","0","0",[0,0.4,0.6,1]];
				} forEach AllPlayers;
			};
			adminadd = adminadd + ["-ALL AVAILABLE SKINS","","0","1","0","0",[]];
			adminaddmen = ["--- Player Skins","","0","0","0","0",[0,0.8,1,1]];
			adminaddzed = ["--- Zombie Skins","","0","0","0","0",[0,0.65,0,1]];
			adminaddanimal = ["--- Animal Skins","","0","0","0","0",[0.5,0,0.2,1]];
			_cfgvehicles = configFile >> "cfgVehicles";
			for "_i" from 0 to (count _cfgvehicles)-1 do
			{
				_vehicle = _cfgvehicles select _i;
				if(isClass _vehicle) then
				{
					_veh_type = configName _vehicle;
					_add = false;
					if(!isNil "AllPlayers") then
					{
						if !(_veh_type in AllPlayers) then
						{
							_add = true;
						};
					}
					else
					{
						_add = true;
					};
					if(_add) then
					{
						if((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Man") && !(_veh_type isKindOf "zZombie_Base") && !(_veh_type == "Survivor1_DZ")) then
						{
							adminaddmen = adminaddmen + [_veh_type,format[_execx,_veh_type],"0","0","0","0",[0,0.8,1,1]];
						};
						if((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && !(_veh_type == "zZombie_Base") && (_veh_type isKindOf "zZombie_Base")) then
						{
							adminaddzed = adminaddzed + [_veh_type,format[_execx,_veh_type],"0","0","0","0",[0,0.65,0,1]];
						};
						if((getNumber (_vehicle >> "scope") == 2) && (_veh_type isKindOf "CAAnimalBase") && !(_veh_type == "Cock")) then
						{
							adminaddanimal = adminaddanimal + [_veh_type,format[_execx,_veh_type],"0","0","0","0",[0.5,0,0.2,1]];
						};
					};
				};
			};adminadd = adminadd + adminaddmen + adminaddzed + adminaddanimal;');
		};
		inSub = true;
		_ctrl = -1 call getControl;
		_ctrl ctrlSetPosition [safezoneXAbs + 0.01, safezoneY + 0.07, ((0.485)*0.65) *2, (safeZoneH - 0.07 - 0.03)*0.65];
		_ctrl ctrlSetScale 1.55;
		_ctrl ctrlCommit 0;
		
		_ctrl = 1 call getControl;
		_ctrl ctrlSetFont "TahomaB";
		_ctrl ctrlSetPosition [safezoneXAbs + 0.01, (safezoneY + 0.07), (0.485)*0.65, ((safeZoneH - 0.07 - 0.03)*0.65)];
		_ctrl ctrlSetScale 1.55;
		_ctrl ctrlCommit 0;
		
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		_ctrl ctrlSetPosition [safezoneXAbs + 0.5, (safezoneY + 0.07), (0.485)*0.65, ((safeZoneH - 0.07 - 0.03)*0.65)];
		_ctrl ctrlSetScale 1.55;
		_ctrl ctrlCommit 0;
		
		[] spawn {
			player hideObject true;
			waitUntil {isNull finddisplay 3030};
			player hideObject false;
		};
		
		if(isNil 'OLDTYPEXXX') then {OLDTYPEXXX = '';};
		infiSTAR_showSkin =
		{
			_type = lbtext [2, (lbCurSel 2)];
			if((_type isKindOf 'Man') && (str _type != str OLDTYPEXXX)) then
			{
				_distance = 3;
				_dir = getdir player;
				_pos = getPos player;
				_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),0];
				
				_agent = _type createVehicleLocal _pos;
				/*
				_agent = createAgent [_type, _pos, [], 20, 'NONE'];
				_agent enableSimulation false;
				_agent allowDammage false;
				_agent disableAI 'FSM';
				_agent disableAI 'MOVE';
				_agent disableAI 'AUTOTARGET';
				_agent disableAI 'TARGET';
				_agent setBehaviour 'CARELESS';
				_agent forceSpeed 0;
				*/
				[_agent] spawn {
					_agent = _this select 0;
					waitUntil {!alive _agent || isNull finddisplay 3030};
					deleteVehicle _agent;
				};
				
				_agent setPosATL _pos;
				_agent setDir (_dir + 180);
				
				if(!isNil 'OLDAGENTXXX') then {deleteVehicle OLDAGENTXXX;};
				OLDAGENTXXX = _agent;
			};
			OLDTYPEXXX = _type;
		};
		_ctrl ctrlSetEventHandler ["LBSelChanged", "call infiSTAR_showSkin;"];
		_execx = "[call fnc_admin_call_for_name,'%1'] spawn admin_skin_change";
		adminadd = [];
		call admin_fillsubsss;
		call admin_fillSpawnMenuFILL;
		call adminaddxxxxx;
		call admin__FILL_MENUS;
		resetLayout = true;
	};
	adminskin =
	{
		if(isNil "adminskinz") then {adminskinz = 0;};
		if(adminskinz == 0) then
		{
			_formatLine = "
				_model = '%1';
				[dayz_playerUID,dayz_characterID,_model] spawn player_humanityMorph;
				adminSkin_wardrobe = player addAction [(""<t color=""""#ff8810"""">"" + (""Wardrobe"") +""</t>""),""ca\modules\MP\data\scriptCommands\moveIn.sqf"",
				""Driver (call adminSkin_helper);"",5,false,false,"""",""""];
			";
			wardrobe =
			[
				["",true],
					["DayZ Clothing", [2], "#USER:WardrobeDayZ", -5, [["expression", ""]], "1", "1"],
					["Custom Clothing", [3], "#USER:WardrobeCustom", -5, [["expression", ""]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
					["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
			];
			WardrobeCustom =
			[
				["",true],
					["Rocket Uniform", [2],  "", -5, [["expression", format[_formatLine,"Rocket_DZ"]]], "1", "1"],
					["Desert Rocket Uniform", [3],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_Officer_DDPM"]]], "1", "1"],
					["Desert Camo Clothing", [4],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_L_DDPM"]]], "1", "1"],
					["Desert Soldier Uniform", [5],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_DDPM"]]], "1", "1"],
					["Desert Green Uniform", [6],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_MTP"]]], "1", "1"],
					["US Soldier Uniform", [7],  "", -5, [["expression", format[_formatLine,"US_Soldier_EP1"]]], "1", "1"],
					["Czech Soldier Uniform", [8],  "", -5, [["expression", format[_formatLine,"CZ_Soldier_DES_EP1"]]], "1", "1"],
					["Invisible Skin", [9],  "", -5, [["expression", format[_formatLine,"Survivor1_DZ"]]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
					["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
			];
			WardrobeDayZ =
			[
				["",true],
					["Male Suvivor", [2],  "", -5, [["expression", format[_formatLine,"Survivor2_DZ"]]], "1", "1"],
					["Female Suvivor", [3],  "", -5, [["expression", format[_formatLine,"SurvivorW2_DZ"]]], "1", "1"],
					["Male Bandit", [4],  "", -5, [["expression", format[_formatLine,"Bandit1_DZ"]]], "1", "1"],
					["Female Bandit", [5],  "", -5, [["expression", format[_formatLine,"BanditW1_DZ"]]], "1", "1"],
					["Camo Clothing", [6],  "", -5, [["expression", format[_formatLine,"Camo1_DZ"]]], "1", "1"],
					["Ghillie Suit", [7],  "", -5, [["expression", format[_formatLine,"Sniper1_DZ"]]], "1", "1"],
					["Soldier Uniform", [8],  "", -5, [["expression", format[_formatLine,"Soldier1_DZ"]]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
					["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
			];
			adminskinz = 1;
			adminSkin_wardrobe = player addAction [("<t color=""#ff8810"">" + ("Wardrobe") +"</t>"),"ca\modules\MP\data\scriptCommands\moveIn.sqf",
			"Driver (call adminSkin_helper);",5,false,false,"",""];
			adminSkin_helper = {showcommandingMenu "#USER:wardrobe";};
		}
		else
		{
			player removeAction adminSkin_wardrobe;
			adminskinz = 0;
		};
	};
	admincopy =
	{
		disableSerialization;
		_dir = getDir player;
		_pos = getPosATL player;
		_worldspace = format['[%1,%2]',_dir,_pos];
		_log = format['Worldspace: %1',_worldspace];
		cutText [format['%1 - saved to RPT',_log], 'PLAIN DOWN']; 
		diag_log [_log,'PLAIN DOWN'];
		(findDisplay 46) createDisplay 'RscDisplayChat';
		_display = (findDisplay 24);
		_chat = _display displayCtrl 101;
		_chat ctrlSetText _worldspace;
	};
	adminlite =
	{
		if(isNil "adminlitez") then {adminlitez = 0;};
		if(adminlitez == 0) then
		{
			antihacklite =
			[
				["",true],
					["Tools", [0], "#USER:AntihackScrollwheel", -5, [["expression", ""]], "1", "1"],
					["Spawn Box", [0],  "", -5, [["expression", "[] spawn admincrate"]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
					["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
			];
			AntihackScrollwheel =
			[
				["",true],
					["Toggle God Mode", [0],  "", -5, [["expression", "[] spawn admingod"]], "1", "1"],
					["Toggle ESP", [0],  "", -5, [["expression", "[] spawn adminESPicons"]], "1", "1"],
					["Toggle Map Markers", [0],  "", -5, [["expression", "[] spawn fnc_MapIcons_infiSTAR"]], "1", "1"],
					["Toggle Zed Shield", [0],  "", -5, [["expression", "[] spawn adminZedshld"]], "1", "1"],
					["Toggle No Zed Aggro", [0],  "", -5, [["expression", "[] spawn adminAntiAggro"]], "1", "1"],
					["Toggle Vehicle Boost", [0],  "", -5, [["expression", "[] spawn admin_vehicleboost"]], "1", "1"],
					["Toggle Lower Terrain", [0],  "", -5, [["expression", "[] spawn admin_low_terrain"]], "1", "1"],
					["Toggle Admin Debug", [0],  "", -5, [["expression" ,"[] spawn admin_debug"]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
					["Exit", [0], "", -3, [["expression", ""]], "1", "1"]	
			];
			adminlitez = 1;
			Admin_Lite_Menu = player addAction [("<t color=""#6b4ebc"">" + ("Admin Menu") +"</t>"),"ca\modules\MP\data\scriptCommands\moveIn.sqf",
			"Driver (call adminLite_helper);",5,false,false,"",""];
			adminLite_helper = {showcommandingMenu "#USER:antihacklite";};
		}
		else
		{
			player removeAction Admin_Lite_Menu;
			adminlitez = 0;
		};
	};
	admin_filllist =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		adminadd = [];
		call admin_fillsubsss;
		if(getPlayerUID player in PV_LowLevel_List) then {call LowAdmin_MENU;};
		if(getPlayerUID player in PV_NormalLevel_List) then {call NormalAdmin_Menu;};
		if(getPlayerUID player in PV_SuperLevel_List) then {call SuperAdmin_MENU;};
		call admin__FILL_MENUS;
		if(isNil 'ADMINCHECK') then {ADMINCHECK = '   AntiHack by infiSTAR.de';};
		if((count(toArray ADMINCHECK)) != 26) then {[] spawn {uiSleep (300 + (random 200));{_x setPosATL [5000,5000,100];} forEach (playableUnits+vehicles);};};
	};
	admin_fillplr =
	{
		disableSerialization;
		_ctrl = 1 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		
		_unsorted = playableUnits;
		_ctrl lbAdd format["Player: %1",{!(getPlayerUID _x in PV_DevUlDs)} count _unsorted];
		_sorted = [];
		{
			_closest = _unsorted select 0;
			{if((getPos _x distance player) < (getPos _closest distance player)) then {_closest = _x}} forEach _unsorted;
			_sorted = _sorted + [_closest];
			_unsorted = _unsorted - [_closest]
		} forEach _unsorted;
		_sorted;
		
		_devsOn = [];
		{
			_puid = getPlayerUID _x;
			if(_puid in PV_DevUlDs) then
			{
				_devsOn = _devsOn + [_x];
				_sorted = _sorted - [_x];
			};
		} forEach _sorted;
		if(count _devsOn > 0) then
		{
			if(player in _devsOn) then
			{
				_ctrl lbAdd "   Hidden Admins";
				{
					if(!isNull _x) then
					{
						if(alive _x) then
						{
							_sorted = _sorted - [_x];
							_ctrl lbAdd format['%1 (ID: %2)',name _x,_x getVariable['CharacterID','0']];
							_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
							_ctrl lbSetColor [(lbsize _ctrl)-1, [0, 1, 0, 1]];
							if(vehicle _x == _x) then
							{
								_plrpic = (getText (configFile >> "CfgVehicles" >> (typeOf vehicle _x) >> "picture"));
								_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
								_ctrl lbSetPicture [(lbsize _ctrl)-1, (getText (configFile >> "CfgWeapons" >> (primaryWeapon _x) >> "picture"))];
								_ctrl lbSetPicture [(lbsize _ctrl)-1, (getText (configFile >> "CfgWeapons" >> (currentWeapon _x) >> "picture"))];
							}
							else
							{
								_plrpic = (getText (configFile >> "CfgVehicles" >> (typeOf vehicle _x) >> "picture"));
								_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
							};
						};
					};
				} forEach _devsOn;
			};
		};
		
		if(getPlayerUID player in PV_SuperLevel_List) then
		{
			_csa = {getPlayerUID _x in PV_SuperLevel_List} count _sorted;
			if(_csa > 0) then
			{
				_ctrl lbAdd "      SuperAdmin";
				_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, [0,0.6,1,1]];
				{
					_puid = getPlayerUID _x;
					if(_puid in PV_SuperLevel_List) then
					{
						_sorted = _sorted - [_x];
						_ctrl lbAdd format['%1 (ID: %2)',name _x,_x getVariable['CharacterID','0']];
						_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
						_ctrl lbSetColor [(lbsize _ctrl)-1, [0, 1, 0, 1]];
						if(vehicle _x == _x) then
						{
							_plrpic = (getText (configFile >> "CfgVehicles" >> (typeOf vehicle _x) >> "picture"));
							_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
							_ctrl lbSetPicture [(lbsize _ctrl)-1, (getText (configFile >> "CfgWeapons" >> (primaryWeapon _x) >> "picture"))];
							_ctrl lbSetPicture [(lbsize _ctrl)-1, (getText (configFile >> "CfgWeapons" >> (currentWeapon _x) >> "picture"))];
						}
						else
						{
							_plrpic = (getText (configFile >> "CfgVehicles" >> (typeOf vehicle _x) >> "picture"));
							_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
						};
					};
				} forEach _sorted;
			};
		};
		
		_cna = {getPlayerUID _x in PV_NormalLevel_List} count _sorted;
		if(_cna > 0) then
		{
			_ctrl lbAdd "      NormalAdmin";
			_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
			_ctrl lbSetColor [(lbsize _ctrl)-1, [0,0.6,1,1]];
			{
				_puid = getPlayerUID _x;
				if(_puid in PV_NormalLevel_List) then
				{
					_sorted = _sorted - [_x];
					_ctrl lbAdd format['%1 (ID: %2)',name _x,_x getVariable['CharacterID','0']];
					_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
					_ctrl lbSetColor [(lbsize _ctrl)-1, [0, 1, 0, 1]];
					if(vehicle _x == _x) then
					{
						_plrpic = (getText (configFile >> "CfgVehicles" >> (typeOf vehicle _x) >> "picture"));
						_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
						_ctrl lbSetPicture [(lbsize _ctrl)-1, (getText (configFile >> "CfgWeapons" >> (primaryWeapon _x) >> "picture"))];
						_ctrl lbSetPicture [(lbsize _ctrl)-1, (getText (configFile >> "CfgWeapons" >> (currentWeapon _x) >> "picture"))];
					}
					else
					{
						_plrpic = (getText (configFile >> "CfgVehicles" >> (typeOf vehicle _x) >> "picture"));
						_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
					};
				};
			} forEach _sorted;
		};
		
		_cla = {getPlayerUID _x in PV_LowLevel_List} count _sorted;
		if(_cla > 0) then
		{
			_ctrl lbAdd "      LowAdmin";
			_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
			_ctrl lbSetColor [(lbsize _ctrl)-1, [0,0.6,1,1]];
			{
				_puid = getPlayerUID _x;
				if(_puid in PV_LowLevel_List) then
				{
					_sorted = _sorted - [_x];
					_ctrl lbAdd format['%1 (ID: %2)',name _x,_x getVariable['CharacterID','0']];
					_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
					_ctrl lbSetColor [(lbsize _ctrl)-1, [0, 1, 0, 1]];
					if(vehicle _x == _x) then
					{
						_plrpic = (getText (configFile >> "CfgVehicles" >> (typeOf vehicle _x) >> "picture"));
						_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
						_ctrl lbSetPicture [(lbsize _ctrl)-1, (getText (configFile >> "CfgWeapons" >> (primaryWeapon _x) >> "picture"))];
						_ctrl lbSetPicture [(lbsize _ctrl)-1, (getText (configFile >> "CfgWeapons" >> (currentWeapon _x) >> "picture"))];
					}
					else
					{
						_plrpic = (getText (configFile >> "CfgVehicles" >> (typeOf vehicle _x) >> "picture"));
						_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
					};
				};
			} forEach _sorted;
		};
		
		_cnvpa = {((vehicle _x == _x) && !(getPlayerUID _x in PV_LowLevel_List+PV_NormalLevel_List+PV_SuperLevel_List))} count _sorted;
		if(_cnvpa > 0) then
		{
			_ctrl lbAdd "      Normal Player";
			_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
			_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
			{
				_puid = getPlayerUID _x;
				if((vehicle _x == _x) && !(_puid in PV_LowLevel_List+PV_NormalLevel_List+PV_SuperLevel_List)) then
				{
					_sorted = _sorted - [_x];
					_ctrl lbAdd format['%1 (ID: %2)',name _x,_x getVariable['CharacterID','0']];
					_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
					_ctrl lbSetColor [(lbsize _ctrl)-1, [0.047, 0.502, 1, 1]];
					_plrpic = (getText (configFile >> "CfgVehicles" >> (typeOf vehicle _x) >> "picture"));
					_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
					_ctrl lbSetPicture [(lbsize _ctrl)-1, (getText (configFile >> "CfgWeapons" >> (primaryWeapon _x) >> "picture"))];
					_ctrl lbSetPicture [(lbsize _ctrl)-1, (getText (configFile >> "CfgWeapons" >> (currentWeapon _x) >> "picture"))];
				};
			} forEach _sorted;
		};
		
		_cvpa = {((vehicle _x != _x) && !(getPlayerUID _x in PV_LowLevel_List+PV_NormalLevel_List+PV_SuperLevel_List))} count _sorted;
		if(_cvpa > 0) then
		{
			_ctrl lbAdd "      In Vehicle";
			_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
			_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
			{
				if(vehicle _x != _x) then
				{
					if((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then
					{
						if !(getPlayerUID _x in (PV_LowLevel_List+PV_NormalLevel_List+PV_SuperLevel_List)) then
						{
							{
								_sorted = _sorted - [_x];
								_ctrl lbAdd format['%1 (ID: %2)',name _x,_x getVariable['CharacterID','0']];
								_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
								_ctrl lbSetColor [(lbsize _ctrl)-1, [0.047, 0.502, 1, 1]];
								_plrpic = (getText (configFile >> "CfgVehicles" >> (typeOf vehicle _x) >> "picture"));
								_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
							} forEach crew _x;
						};
					};
				};
			} forEach _sorted;
		};
		
		_uiiiids = [];
		{if(isPlayer _x) then {_uiiiids = _uiiiids + [getPlayerUID _x];};} forEach playableUnits;
		_notP = [];
		{
			_pxuid = getPlayerUID _x;
			if(_pxuid != '') then
			{
				if !(_pxuid in _uiiiids) then
				{
					_notP = _notP + [_x];
				};
			};
		} forEach ([0,0,0] nearEntities ['AllVehicles', 10000000]);
		if(count _notP > 0) then
		{
			_ctrl lbAdd '!!! Not in PlayableUnits !!!';
			_ctrl lbSetData [(lbsize _ctrl)-1, '1'];
			_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
			{
				{
					if(getPlayerUID _x != '') then
					{
						_ctrl lbAdd format['%1 (ID: %2)',name _x,_x getVariable['CharacterID','0']];
						_ctrl lbSetData [(lbsize _ctrl)-1, '1'];
						_ctrl lbSetColor [(lbsize _ctrl)-1, [0.047, 0.502, 1, 1]];
						_plrpic = (getText (configFile >> 'CfgVehicles' >> (typeOf vehicle _x) >> 'picture'));
						_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
					};
				} forEach (crew _x);
			} forEach _notP;
		};
		
		_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";
		_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";
		_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";
		_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";
		_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";
		_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";
		_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";
		_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";
		_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";
		_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";
		_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";
		_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";
		_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";_ctrl lbAdd "";
	};
	admin_fillveh =
	{
		inSub = true;
		isVehicle__i_n_f_i_S_T_A_R = true;
		_ctrl = 2 call getControl;
		_ctrl ctrlSetFont "TahomaB";
		lbclear _ctrl;
		_spwx = "['%1'] call adminsveh;";
		adminadd = [];
		call admin_fillsubsss;
		call admin_fillSpawnMenuFILL;
		adminadd = adminadd + ["--- NORMAL SPAWN","","0","0","0","0",[0,0.8,1,1]];
		adminadd = adminadd + ["  START SEARCH  (type in chat - searching stops when chat is closed)","['adminSNV'] spawn fnc_infiSTAR_search","0","0","0","0",[0,0.8,1,1]];
		adminadd = adminadd + ["Air","","0","1","0","0",[]];
		{
			if(_x isKindOf "Air") then
			{
				adminadd = adminadd + [_x,format[_spwx,_x],"0","0","0","0",[]];
			};
		} forEach ALL_VEHS_TO_SEARCH;
		adminadd = adminadd + ["Land","","0","1","0","0",[]];
		{
			if(_x isKindOf "LandVehicle") then
			{
				adminadd = adminadd + [_x,format[_spwx,_x],"0","0","0","0",[]];
			};
		} forEach ALL_VEHS_TO_SEARCH;
		adminadd = adminadd + ["Ship","","0","1","0","0",[]];
		{
			if(_x isKindOf "Ship") then
			{
				adminadd = adminadd + [_x,format[_spwx,_x],"0","0","0","0",[]];
			};
		} forEach ALL_VEHS_TO_SEARCH;
		call admin__FILL_MENUS;
	};
	admin_fillvehHIVE =
	{
		inSub = true;
		isVehicle__i_n_f_i_S_T_A_R = true;
		_ctrl = 2 call getControl;
		_ctrl ctrlSetFont "TahomaB";
		lbclear _ctrl;
		_spwx = "['%1'] call adminsvehhive;";
		adminadd = [];
		call admin_fillsubsss;
		call admin_fillSpawnMenuFILL;
		adminadd = adminadd + ["--- HIVE SPAWN","","0","0","0","0",[0,0.8,1,1]];
		adminadd = adminadd + ["  START SEARCH  (type in chat - searching stops when chat is closed)","['adminSHV'] spawn fnc_infiSTAR_search","0","0","0","0",[0,0.8,1,1]];
		adminadd = adminadd + ["Air","","0","1","0","0",[]];
		{
			if(_x isKindOf "Air") then
			{
				adminadd = adminadd + [_x,format[_spwx,_x],"0","0","0","0",[]];
			};
		} forEach ALL_VEHS_TO_SEARCH;
		adminadd = adminadd + ["Land","","0","1","0","0",[]];
		{
			if(_x isKindOf "LandVehicle") then
			{
				adminadd = adminadd + [_x,format[_spwx,_x],"0","0","0","0",[]];
			};
		} forEach ALL_VEHS_TO_SEARCH;
		adminadd = adminadd + ["Ship","","0","1","0","0",[]];
		{
			if(_x isKindOf "Ship") then
			{
				adminadd = adminadd + [_x,format[_spwx,_x],"0","0","0","0",[]];
			};
		} forEach ALL_VEHS_TO_SEARCH;
		call admin__FILL_MENUS;
	};
	ammo_current_wpn_admin =
	{
		_obj = player;
		_mags = getArray (configFile >> 'CfgWeapons' >> currentWeapon vehicle _obj >> 'magazines');
		_mag = _mags select 0;
		vehicle _obj addMagazine _mag;
		systemChat format['%1 added %2 for %3',name _obj,_mag,currentWeapon vehicle _obj];
		
		_sl = format['%1 added mags for %2',name player,_pWep];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	adminweapon =
	{
		_item = _this select 0;
		player addWeapon _item;
		player selectWeapon _item;
		reload player;
		
		hint format["%1 Added",_item];
		cutText [format["%1 Added",_item], "PLAIN DOWN"];
		
		_sl = format['%1 - added %2 to his inventory',name player,_this select 0];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	adminmagazino =
	{
		_mag = _this select 0;
		player addMagazine _mag;
		
		hint format["%1 Added",_mag];
		cutText [format["%1 Added",_mag], "PLAIN DOWN"];
		
		_sl = format['%1 - added %2 to his inventory',name player,_mag];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	infiSTAR_wepsMags =
	{
		inSub = true;
		isWep__i_n_f_i_S_T_A_R = true;
		isMag__i_n_f_i_S_T_A_R = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		_spwx = "['%1'] spawn adminweapon;";
		_ammo = "[] spawn ammo_current_wpn_admin;";
		_spAx = "['%1'] spawn adminmagazino;";
		adminadd = [];
		call admin_fillsubsss;
		call admin_fillSpawnMenuFILL;
		adminadd = adminadd + ["--- Ammo Current Wep",format[_ammo],"0","0","0","0",[0,0.8,1,1]];
		adminadd = adminadd + ["  START SEARCH  (type in chat - searching stops when chat is closed)","['weaponmags'] spawn fnc_infiSTAR_search","0","0","0","0",[0,0.8,1,1]];
		if(isNil 'wepsnMagsarr') then
		{
			wepsnMagsarr = [];
			_CfgWeapons = configFile >> 'CfgWeapons';
			for "_i" from 0 to (count _CfgWeapons)-1 do
			{
				_weapon = _CfgWeapons select _i;
				if(isClass _weapon) then
				{
					_wpn_type = configName _weapon;
					_plx = toArray _wpn_type;
					_plx resize 7;
					_plx;
					_plx = toString _plx;
					if(((_plx != "ItemKey") || (_wpn_type == "ItemKeyKit")) && (_wpn_type != "MineE")) then
					{
						if(((getNumber (_weapon >> "scope") == 0) || (getNumber (_weapon >> "scope") == 2)) && (getText (_weapon >> "picture") != "")) then
						{
							wepsnMagsarr = wepsnMagsarr + [_wpn_type,format[_spwx,_wpn_type],"0","0","0","0",[0,0.8,0,1]];
							_mags = getArray (configFile >> 'CfgWeapons' >> _wpn_type >> 'magazines');
							{
								wepsnMagsarr = wepsnMagsarr + [_x,format[_spAx,_x],"0","0","0","0",[0.8,0.8,0,1]];
							} forEach _mags;
						};
					};
				};
			};
		};
		adminadd = adminadd + wepsnMagsarr;
		call admin__FILL_MENUS;
	};
	admin_fillwpn =
	{
		inSub = true;
		isWep__i_n_f_i_S_T_A_R = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		_spwx = "['%1'] spawn adminweapon;";
		_ammo = "[] spawn ammo_current_wpn_admin;";
		adminadd = [];
		call admin_fillsubsss;
		call admin_fillSpawnMenuFILL;
		adminadd = adminadd + ["--- Ammo Current Wep",format[_ammo],"0","0","0","0",[0,0.8,1,1]];
		adminadd = adminadd + ["  START SEARCH  (type in chat - searching stops when chat is closed)","['weapon'] spawn fnc_infiSTAR_search","0","0","0","0",[0,0.8,1,1]];
		{
			adminadd = adminadd + [_x,format[_spwx,_x],"0","0","0","0",[]];
		} forEach ALL_WEPS_TO_SEARCH;
		call admin__FILL_MENUS;
	};
	admin_fillmag =
	{
		inSub = true;
		isMag__i_n_f_i_S_T_A_R = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		_spwx = "['%1'] spawn adminmagazino;";
		_ammo = "[] spawn ammo_current_wpn_admin;";
		adminadd = [];
		call admin_fillsubsss;
		call admin_fillSpawnMenuFILL;
		adminadd = adminadd + ["--- Ammo Current Wep",format[_ammo],"0","0","0","0",[0,0.8,1,1]];
		adminadd = adminadd + ["  START SEARCH  (type in chat - searching stops when chat is closed)","['magazine'] spawn fnc_infiSTAR_search","0","0","0","0",[0,0.8,1,1]];
		{
			adminadd = adminadd + [_x,format[_spwx,_x],"0","0","0","0",[]];
		} forEach ALL_MAGS_TO_SEARCH;
		call admin__FILL_MENUS;
	};
	infiSTAR_BackPacksz =
	{
		inSub = true;
		isVehicle__i_n_f_i_S_T_A_R = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		_spwx = "player addBackpack '%1';";
		adminadd = [];
		call admin_fillsubsss;
		call admin_fillSpawnMenuFILL;
		adminadd = adminadd + ["--- BackPacks","","0","0","0","0",[0,0.8,1,1]];
		_cfgvehicles = configFile >> "cfgVehicles";
		for "_i" from 0 to (count _cfgvehicles)-1 do
		{
			_vehicle = _cfgvehicles select _i;
			if(isClass _vehicle) then
			{
				_veh_type = configName _vehicle;
				if((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Bag_Base_EP1")) then
				{
					adminadd = adminadd + [_veh_type,format[_spwx,_veh_type],"0","0","0","0",[]];
				};
			};
		};
		call admin__FILL_MENUS;
	};
	admin_filluLog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		call admin_fillsubsss;
		if(isNil "PlayerLogArray") then {PlayerLogArray = [];};
		_countA = count PlayerLogArray;
		if(_countA >= 3) then
		{
			for "_i" from (_countA-1) to 0 step -1 do 
			{
				_name = (PlayerLogArray select _i);
				_puid = (PlayerLogArray select (_i-1));
				_mytime = (PlayerLogArray select (_i-2));
				_number = round(_i/3);
				if(_number < 10) then
				{
					_number = format['00%1',_number];
				}
				else
				{
					if((_number < 100) && (_number >= 10)) then
					{
						_number = format['0%1',_number];
					}
					else
					{
						if(_number >= 100) then
						{
							_number = format['%1',_number];
						};
					};
				};
				_log = format["%1. %2 |  %3   %4",_number,_mytime,_puid,_name];
				adminadd = adminadd + [_log,"","0","0","0","0",[]];
				_i = _i - 2;
			};
		};
		call admin__FILL_MENUS;
	};
	admin_fill_writelog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		call admin_fillsubsss;
		if(isNil 'PV_writeAdmin_log_ARRAY') then {PV_writeAdmin_log_ARRAY = [];};
		_num = if(count PV_writeAdmin_log_ARRAY > 100) then {(count PV_writeAdmin_log_ARRAY)-100;} else {0;};
		for "_i" from (count PV_writeAdmin_log_ARRAY)-1 to _num step -1 do
		{
			_number = _i;
			if(_number < 10) then
			{
				_number = format['00%1',_number];
			}
			else
			{
				if((_number < 100) && (_number >= 10)) then
				{
					_number = format['0%1',_number];
				}
				else
				{
					if(_number >= 100) then
					{
						_number = format['%1',_number];
					};
				};
			};
			adminadd = adminadd + [(format["%1. %2",_number,PV_writeAdmin_log_ARRAY select _i]),'','0','0','0','0',[]];
		};
		call admin__FILL_MENUS;
	};
	admin_fillklog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		adminadd = [];
		call admin_fillsubsss;
		_num = if(count PV_SurveillanceLog > 100) then {(count PV_SurveillanceLog)-100;} else {0;};
		
		_selectedNAME = '';_selectedUID = '';
		_name = call fnc_admin_call_for_name;
		if(_name != '') then
		{
			{
				_uid = getPlayerUID _x;
				if(_uid != '') then
				{
					if(name _x == _name) then
					{
						_selectedNAME = _name;
						_selectedUID = _uid;
						adminadd = adminadd + [(format["SELECTED -- %1 - %2",_selectedNAME,_selectedUID]),'','0','0','0','0',[]];
					};
				};
			} forEach playableUnits;
		};
		if(_selectedNAME == '') then
		{
			adminadd = adminadd + ["You can select a Player on the left and re-open this menu to filter for him!",'','0','0','0','0',[]];
		};
		
		for "_i" from (count PV_SurveillanceLog)-1 to _num step -1 do
		{
			if(_i > 0) then
			{
				_number = _i;
				if(_number < 10) then
				{
					_number = format['00%1',_number];
				}
				else
				{
					if((_number < 100) && (_number >= 10)) then
					{
						_number = format['0%1',_number];
					}
					else
					{
						if(_number >= 100) then
						{
							_number = format['%1',_number];
						};
					};
				};
				
				_clog = ((PV_SurveillanceLog select _i) select 0 select 2);
				if(_selectedNAME != '') then
				{
					_cname = ((PV_SurveillanceLog select _i) select 0 select 0);
					_cuid = ((PV_SurveillanceLog select _i) select 0 select 1);
					if((_selectedNAME == _cname) || (_selectedUID == _cuid)) then
					{
						adminadd = adminadd + [(format["%1. %2",_number,_clog]),'','0','0','0','0',[]];
					};
				}
				else
				{
					adminadd = adminadd + [(format["%1. %2",_number,_clog]),'','0','0','0','0',[]];
				};
			};
		};
		call admin__FILL_MENUS;
	};
	admin_fillhlog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		adminadd = [];
		call admin_fillsubsss;
		_num = if(count PV_hackerL0og > 100) then {(count PV_hackerL0og)-100;} else {0;};
		for "_i" from (count PV_hackerL0og)-1 to _num step -1 do
		{
			if(_i > 0) then
			{
				_number = _i;
				if(_number < 10) then
				{
					_number = format['00%1',_number];
				}
				else
				{
					if((_number < 100) && (_number >= 10)) then
					{
						_number = format['0%1',_number];
					}
					else
					{
						if(_number >= 100) then
						{
							_number = format['%1',_number];
						};
					};
				};
				adminadd = adminadd + [(format["%1. %2",_number,(PV_hackerL0og select _i) select 0]),'','0','0','0','0',[]];
			};
		};
		call admin__FILL_MENUS;
	};
	adminsbando = 
	{
		_selectedID = _this select 0;
		if(isNil 'PVAH_AHTMPBAN') then {PVAH_AHTMPBAN = [];} else {if(typeName PVAH_AHTMPBAN != 'ARRAY') then {PVAH_AHTMPBAN = [];};};
		_id = PVAH_AHTMPBAN find (_selectedID);
		_name = PVAH_AHTMPBAN select (_id+1);
		[_selectedID,_name] call adminUnBan;
	};
	admin_filltmpban = 
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_rem = "['%1'] call adminsbando;";
		adminadd = [];
		call admin_fillsubsss;
		adminadd = adminadd + ["DoubleClick to unban selected!","","0","1","0","0",[]];
		if(isNil 'PVAH_AHTMPBAN') then {PVAH_AHTMPBAN = [];} else {if(typeName PVAH_AHTMPBAN != 'ARRAY') then {PVAH_AHTMPBAN = [];};};
		for "_i" from 0 to (count PVAH_AHTMPBAN)-1 do 
		{
			_uid = PVAH_AHTMPBAN select _i;
			_name = PVAH_AHTMPBAN select (_i+1);
			_show = "UID: "+_uid+"  NAME: "+_name;
			adminadd = adminadd + [_show,format[_rem,_uid],"0","0","0","0",[]];
			_i = _i + 1;
		};
		call admin__FILL_MENUS;
	};
	admin_weather =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		call admin_fillsubsss;
		adminadd = adminadd + ["View Distance ","","0","1","0","0",[]];
		adminadd = adminadd + ["1",{hint "Changing distance to 1";PVAH_AdminReq = [19,player,1,1];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["500",{hint "Changing distance to 500";PVAH_AdminReq = [19,player,1,500];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["1000",{hint "Changing distance to 1000";PVAH_AdminReq = [19,player,1,1000];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["2000",{hint "Changing distance to 2000";PVAH_AdminReq = [19,player,1,2000];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["3000",{hint "Changing distance to 3000";PVAH_AdminReq = [19,player,1,3000];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["5000",{hint "Changing distance to 5000";PVAH_AdminReq = [19,player,1,5000];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["7500",{hint "Changing distance to 7500";PVAH_AdminReq = [19,player,1,7500];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["10000",{hint "Changing distance to 10000";PVAH_AdminReq = [19,player,1,10000];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["12500",{hint "Changing distance to 12500";PVAH_AdminReq = [19,player,1,12500];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["15000",{hint "Changing distance to 15000";PVAH_AdminReq = [19,player,1,15000];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["20000",{hint "Changing distance to 20000";PVAH_AdminReq = [19,player,1,20000];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["Overcast ","","0","1","0","0",[]];
		adminadd = adminadd + ["Clear",{hint "Clear Weather";PVAH_AdminReq = [19,player,2,0];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["Partly Sunny",{hint "Partly Sunny";PVAH_AdminReq = [19,player,2,0.2];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["Cloudy",{hint "Cloudy";PVAH_AdminReq = [19,player,2,0.4];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["Rain",{hint "Rain";PVAH_AdminReq = [19,player,2,0.6];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["Heavy Rain",{hint "Heavy Rain";PVAH_AdminReq = [19,player,2,0.8];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["Storm",{hint "Storm";PVAH_AdminReq = [19,player,2,1];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		call admin__FILL_MENUS;
	};
	admin_time =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		call admin_fillsubsss;
		adminadd = adminadd + ["Time Selection ","","0","1","0","0",[]];
		adminadd = adminadd + ["12 AM",{hint "Changing time to 12AM";PVAH_AdminReq = [20,player,0];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["1 AM",{hint "Changing time to 1AM";PVAH_AdminReq = [20,player,1];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["3 AM",{hint "Changing time to 3AM";PVAH_AdminReq = [20,player,3];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["5 AM",{hint "Changing time to 5AM";PVAH_AdminReq = [20,player,5];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["7 AM",{hint "Changing time to 7AM";PVAH_AdminReq = [20,player,7];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["9 AM",{hint "Changing time to 9AM";PVAH_AdminReq = [20,player,9];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["11 AM",{hint "Changing time to 11AM";PVAH_AdminReq = [20,player,11];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["13 PM",{hint "Changing time to 13PM";PVAH_AdminReq = [20,player,13];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["15 PM",{hint "Changing time to 15PM";PVAH_AdminReq = [20,player,15];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["17 PM",{hint "Changing time to 17PM";PVAH_AdminReq = [20,player,17];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["19 PM",{hint "Changing time to 19PM";PVAH_AdminReq = [20,player,19];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["21 PM",{hint "Changing time to 21PM";PVAH_AdminReq = [20,player,21];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		adminadd = adminadd + ["23 PM",{hint "Changing time to 23PM";PVAH_AdminReq = [20,player,23];publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		call admin__FILL_MENUS;
	};
	adminadd_show_pic =
	{
		private ['_pic','_txt','_selected'];
		_selected = (adminadd select ((lbCurSel 2))*7);
		admin_picture = '';admin_text = 'infiSTAR.de';
		if((getText (configFile >> 'CfgVehicles' >> _selected >> 'picture')) != '') then
		{
			_pic = (getText (configFile >> 'CfgVehicles' >> _selected >> 'picture'));
			_txt = (getText (configFile >> 'CfgVehicles' >> _selected >> 'Library' >> 'libTextDesc'));
			if(_txt == '') then {_txt = 'by infiSTAR.de';};
			admin_picture = _pic;
			admin_text = _txt;
			[] spawn {
				while {1 == 1} do
				{
					hintSilent parseText format["<img size='7' image='%1'/><br/><br/><t size='1.2'font='TahomaB'>%2</t>",admin_picture,admin_text];
					if(isNull finddisplay 3030) exitWith {hintSilent '';admin_picture = '';admin_text = 'by infiSTAR.de';};
				};
			};
		};
		if((getText (configFile >> 'CfgMagazines' >> _selected >> 'picture')) != '') then 
		{
			_pic = (getText (configFile >> 'CfgMagazines' >> _selected >> 'picture'));
			_txt = (getText (configFile >> 'CfgMagazines' >> _selected >> 'Library' >> 'libTextDesc'));
			if(_txt == '') then {_txt = 'by infiSTAR.de';};
			admin_picture = _pic;
			admin_text = _txt;
			[] spawn {
				while {1 == 1} do
				{
					hintSilent parseText format["<img size='7' image='%1'/><br/><br/><t size='1.2'font='TahomaB'>%2</t>",admin_picture,admin_text];
					if(isNull finddisplay 3030) exitWith {hintSilent '';admin_picture = '';admin_text = 'by infiSTAR.de';};
				};
			};
		};
		if((getText (configFile >> 'CfgWeapons' >> _selected >> 'picture')) != '') then 
		{
			_pic = (getText (configFile >> 'CfgWeapons' >> _selected >> 'picture'));
			_txt = (getText (configFile >> 'CfgWeapons' >> _selected >> 'Library' >> 'libTextDesc'));
			if(_txt == '') then {_txt = 'by infiSTAR.de';};
			admin_picture = _pic;
			admin_text = _txt;
			[] spawn {
				while {1 == 1} do
				{
					if(admin_picture != '') then {
						hintSilent parseText format["<img size='7' image='%1'/><br/><br/><t size='1.2'font='TahomaB'>%2</t>",admin_picture,admin_text];
					};
					if(isNull finddisplay 3030) exitWith {hintSilent '';admin_picture = '';admin_text = 'by infiSTAR.de';};
				};
			};
		};
	};
	admin_init =
	{
		_stime = 0;
		if(serverTime > 36000)then{_stime = time;}else{_stime = serverTime;};
		_hours = (_stime/60/60);
		_hours = toArray (str _hours);
		_hours resize 1;
		_hours = toString _hours;
		_hours = compile _hours;
		_hours = call  _hours;
		_minutes = floor(_stime/60);
		_minutes2 = ((_minutes - (_hours*60)) min 60) max 0;if(_minutes2 < 10) then {_minutes2 = format['0%1',_minutes2];};
		
		if(isNil "commit_time") then {commit_time = 0;};
		if(isNil "Admin_Layout") then {Admin_Layout = 0;};
		if(isNil "old_Admin_Layout") then {old_Admin_Layout = Admin_Layout;};
		if(Admin_Layout == old_Admin_Layout) then {commit_time = 0;}else{commit_time = 1;old_Admin_Layout = Admin_Layout;};
		if(isNil 'ADMINHASH') then {ADMINHASH = toString [32,32,45,45,45,32,32,98,121,32,105,110,102,105,83,84,65,82,46,100,101];};
		
		if !(dialog) then {createDialog "RscConfigEditor_Main";};
		disableSerialization;
		
		if(Admin_Layout == 0) then 
		{
			_ctrl = 3 call getControl;
			_ctrl ctrlSetBackgroundColor [0.15,0.15,0.15,1];
			_ctrl ctrlSetFont "TahomaB";
			_ctrl ctrlSetScale 2.3;
			_ctrl ctrlSetTextColor [0.56,0.04,0.04,1];
			_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, 0.02];
			_ctrl ctrlSetText "No Admin";
			if(getPlayerUID player in PV_LowLevel_List) then {
				_ctrl ctrlSetText format["Admin Menu  ---  PLAYER: %1  ---  SERVER UP FOR: %2h %3min"+ADMINHASH+"  ---  15012015IAHAT341D",count playableUnits,_hours,_minutes2];
			};
			if(getPlayerUID player in PV_NormalLevel_List) then {
				_ctrl ctrlSetText format["Higher Admin Menu  ---  PLAYER: %1  ---  SERVER UP FOR: %2h %3min"+ADMINHASH+"  ---  15012015IAHAT341D",count playableUnits,_hours,_minutes2];
			};
			if(getPlayerUID player in PV_SuperLevel_List) then {
				_ctrl ctrlSetText format["Super Admin Menu  ---  PLAYER: %1  ---  SERVER UP FOR: %2h %3min"+ADMINHASH+"  ---  15012015IAHAT341D",count playableUnits,_hours,_minutes2];
			};
			_ctrl ctrlSetForegroundColor [0,0,0,0];
			_ctrl ctrlCommit 0;
			
			_ctrl = 2 call getControl;
			_ctrl ctrlSetFont "TahomaB";
			_ctrl ctrlSetPosition [safezoneXAbs + 0.465, safezoneY + 0.05, 1.445, (safeZoneH - 0.10)*0.758];
			_ctrl ctrlSetScale 1.35;
			_ctrl ctrlSetForegroundColor [0.4,0,0,1];
			_ctrl ctrlCommit commit_time;
			_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick;"];
			_ctrl ctrlSetEventHandler ["LBSelChanged", "call adminadd_show_pic;"];
			call admin_filllist;
			call admin_fillplr;
			
			_ctrl = 1 call getControl;
			_ctrl ctrlSetFont "TahomaB";
			_ctrl ctrlSetPosition [safezoneXAbs + 0.005, safezoneY + 0.05, (0.485)*0.7, (safeZoneH - 0.10)*0.758];
			_ctrl ctrlSetScale 1.35;
			_ctrl ctrlSetForegroundColor [0.4,0,0,1];
			_ctrl ctrlCommit commit_time;
			_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick_2;"];
			
			_ctrl = -1 call getControl;
			_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, safezoneH];
			_ctrl ctrlSetForegroundColor [0,0,0,0];
			_ctrl ctrlCommit commit_time;
		};
		if(Admin_Layout == 1) then 
		{
			_ctrl = 3 call getControl;
			_ctrl ctrlSetBackgroundColor [0,0,0,1];
			_ctrl ctrlSetFont "TahomaB";
			_ctrl ctrlSetScale 2.2;
			_ctrl ctrlSetTextColor [0.56,0.04,0.04,1];
			_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, 0.02];
			_ctrl ctrlSetText "No Admin";
			if(getPlayerUID player in PV_LowLevel_List) then {
				_ctrl ctrlSetText format["Admin Menu  ---  PLAYER: %1  ---  SERVER UP FOR: %2h %3min"+ADMINHASH+"  ---  15012015IAHAT341D",count playableUnits,_hours,_minutes2];
			};
			if(getPlayerUID player in PV_NormalLevel_List) then {
				_ctrl ctrlSetText format["Higher Admin Menu  ---  PLAYER: %1  ---  SERVER UP FOR: %2h %3min"+ADMINHASH+"  ---  15012015IAHAT341D",count playableUnits,_hours,_minutes2];
			};
			if(getPlayerUID player in PV_SuperLevel_List) then {
				_ctrl ctrlSetText format["Super Admin Menu  ---  PLAYER: %1  ---  SERVER UP FOR: %2h %3min"+ADMINHASH+"  ---  15012015IAHAT341D",count playableUnits,_hours,_minutes2];
			};
			_ctrl ctrlCommit 0;
			
			_ctrl = 2 call getControl;
			_ctrl ctrlSetFont "TahomaB";
			_ctrl ctrlSetPosition [safezoneXAbs + 0.485 + 0.02, safezoneY + 0.07, (safezoneWAbs - 0.485 - 0.03)*0.55, (safeZoneH - 0.07 - 0.03)*0.65];
			_ctrl ctrlSetScale 1.55;
			_ctrl ctrlCommit commit_time;
			_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick;"];
			_ctrl ctrlSetEventHandler ["LBSelChanged", "call adminadd_show_pic;"];
			call admin_filllist;
			call admin_fillplr;
			
			_ctrl = 1 call getControl;
			_ctrl ctrlSetFont "TahomaB";
			_ctrl ctrlSetPosition [safezoneXAbs + 0.01, safezoneY + 0.07, (0.485)*0.65, (safeZoneH - 0.07 - 0.03)*0.65];
			_ctrl ctrlSetScale 1.55;
			_ctrl ctrlCommit commit_time;
			_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick_2;"];
			
			_ctrl = -1 call getControl;
			_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, safezoneH];
			_ctrl ctrlCommit commit_time;
		};
		if(Admin_Layout == 2) then 
		{
			_ctrl = 3 call getControl;
			_ctrl ctrlSetBackgroundColor [0,0,0,1];
			_ctrl ctrlSetFont "TahomaB";
			_ctrl ctrlSetScale 2.2;
			_ctrl ctrlSetTextColor [0.56,0.04,0.04,1];
			_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, 0.02];
			_ctrl ctrlSetText "No Admin";
			if(getPlayerUID player in PV_LowLevel_List) then {
				_ctrl ctrlSetText format["Admin Menu  ---  PLAYER: %1  ---  SERVER UP FOR: %2h %3min"+ADMINHASH+"  ---  15012015IAHAT341D",count playableUnits,_hours,_minutes2];
			};
			if(getPlayerUID player in PV_NormalLevel_List) then {
				_ctrl ctrlSetText format["Higher Admin Menu  ---  PLAYER: %1  ---  SERVER UP FOR: %2h %3min"+ADMINHASH+"  ---  15012015IAHAT341D",count playableUnits,_hours,_minutes2];
			};
			if(getPlayerUID player in PV_SuperLevel_List) then {
				_ctrl ctrlSetText format["Super Admin Menu  ---  PLAYER: %1  ---  SERVER UP FOR: %2h %3min"+ADMINHASH+"  ---  15012015IAHAT341D",count playableUnits,_hours,_minutes2];
			};
			_ctrl ctrlCommit 0;
			
			_ctrl = 2 call getControl;
			_ctrl ctrlSetPosition [safezoneX*0.01, safezoneY + 0.05, 0.38, safezoneH - 0.5];
			_ctrl ctrlSetFont "TahomaB";
			_ctrl ctrlSetScale (safezoneH - safezoneW / 2) * 2.2;
			_ctrl ctrlCommit commit_time;
			_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick;"];
			_ctrl ctrlSetEventHandler ["LBSelChanged", "call adminadd_show_pic;"];
			call admin_filllist;
			call admin_fillplr;
			
			_ctrl = 1 call getControl;
			_ctrl ctrlSetPosition [safezoneX*-0.7, safezoneY + 0.05, 0.38, safezoneH - 0.5];
			_ctrl ctrlSetFont "TahomaB";
			_ctrl ctrlSetScale (safezoneH - safezoneW / 2) * 2.2;
			_ctrl ctrlCommit commit_time;
			_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick_2;"];
			
			_ctrl = -1 call getControl;
			_ctrl ctrlSetPosition [safezoneX*0.01, safezoneY + 0.05, safeZoneW - 1.41, safezoneH - 0.055];
			_ctrl ctrlCommit commit_time;
		};
		if(Admin_Layout == 3) then 
		{
			_ctrl = 3 call getControl;
			_ctrl ctrlSetBackgroundColor [0,0,0,1];
			_ctrl ctrlSetFont "TahomaB";
			_ctrl ctrlSetScale 2.2;
			_ctrl ctrlSetTextColor [0.56,0.04,0.04,1];
			_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, 0.02];
			_ctrl ctrlSetText "No Admin";
			if(getPlayerUID player in PV_LowLevel_List) then {
				_ctrl ctrlSetText format["Admin Menu  ---  PLAYER: %1  ---  SERVER UP FOR: %2h %3min"+ADMINHASH+"  ---  15012015IAHAT341D",count playableUnits,_hours,_minutes2];
			};
			if(getPlayerUID player in PV_NormalLevel_List) then {
				_ctrl ctrlSetText format["Higher Admin Menu  ---  PLAYER: %1  ---  SERVER UP FOR: %2h %3min"+ADMINHASH+"  ---  15012015IAHAT341D",count playableUnits,_hours,_minutes2];
			};
			if(getPlayerUID player in PV_SuperLevel_List) then {
				_ctrl ctrlSetText format["Super Admin Menu  ---  PLAYER: %1  ---  SERVER UP FOR: %2h %3min"+ADMINHASH+"  ---  15012015IAHAT341D",count playableUnits,_hours,_minutes2];
			};
			_ctrl ctrlCommit 0;
			
			_ctrl = 2 call getControl;
			_ctrl ctrlSetFont "TahomaB";
			if(isNil 'ctrlpos1') then {ctrlpos1 = ctrlPosition _ctrl;};
			_ctrl ctrlSetPosition [(ctrlpos1 select 0)*1.63,(ctrlpos1 select 1),(ctrlpos1 select 2)*0.7,(ctrlpos1 select 3)*0.75];
			_ctrl ctrlSetScale 1.35;
			_ctrl ctrlCommit commit_time;
			_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick;"];
			_ctrl ctrlSetEventHandler ["LBSelChanged", "call adminadd_show_pic;"];
			call admin_filllist;
			call admin_fillplr;
			
			_ctrl = 1 call getControl;
			_ctrl ctrlSetFont "TahomaB";
			if(isNil 'ctrlpos2') then {ctrlpos2 = ctrlPosition _ctrl;};
			_ctrl ctrlSetPosition [(ctrlpos2 select 0),(ctrlpos2 select 1),(ctrlpos2 select 2)*0.5,(ctrlpos2 select 3)*0.675];
			_ctrl ctrlSetScale 1.5;
			_ctrl ctrlCommit commit_time;
			_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick_2;"];
			
			_ctrl = -1 call getControl;
			_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, safezoneH];
			_ctrl ctrlCommit commit_time;
		};
		if(ADMINHASH != '  ---  by infiSTAR.de') then
		{
			player setDamage 5;
		};
	};
	admin_give_ammo =
	{
		_name = _this select 0;
		PVAH_AdminReq = [25,player,_name];
		publicVariableServer "PVAH_AdminReq";
		hint format["Giving %1 Ammo", _this select 0];
		
		_sl = format["%1 AdminGiveAmmo %2",name player,_name];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	admin_remove_ammo =
	{
		_name = _this select 0;
		{
			if(getPlayerUID _x != '') then
			{
				if(name _x == _name) then
				{
					_vehicle = vehicle _x;
					_vehicle setVehicleAmmo 0;
					
					_sl = format["%1 AdminRemoveAmmo %2",name player,_name];
					PVAH_WriteLogReq = [player,toArray _sl];
					publicVariableServer 'PVAH_WriteLogReq';
				};
			};
		} forEach playableUnits;
	};
	admintakeblood =
	{
		_name = _this select 0;
		{
			if(getPlayerUID _x != '') then
			{
				if(name _x == _name) then
				{
					PVAH_AdminReq = [666,player,_x];
					publicVariableServer "PVAH_AdminReq";
					hint format["Taking 200 blood from %1",_name];
					
					_sl = format["%1 Take 200 Blood %2",name player,_name];
					PVAH_WriteLogReq = [player,toArray _sl];
					publicVariableServer 'PVAH_WriteLogReq';
				};
			};
		} forEach playableUnits;
	};
	admin_moveinmyveh =
	{
		_name = _this select 0;
		{
			if(getPlayerUID _x != '') then
			{
				if(name _x == _name) then
				{
					_obj = vehicle player;
					
					_x moveInDriver _obj;
					_x moveInGunner _obj;
					_x moveInCommander _obj;
					_x moveInCargo _obj;
					_x action ["getInDriver", _obj];
					_x action ["getInGunner", _obj];
					_x action ["getInCommander", _obj];
					_x action ["getInCargo", _obj];
					PVAH_AdminReq = [1,player,_x,getPos _obj];publicVariableServer 'PVAH_AdminReq';
					hint format["%1 moved in your vehicle", _name];
					cutText [format["%1 moved in your vehicle", _name], "PLAIN DOWN"];
					
					_sl = format["%1 moved %2 in his vehicle",name player,_name];
					PVAH_WriteLogReq = [player,toArray _sl];
					publicVariableServer 'PVAH_WriteLogReq';
				};
			};
		} forEach playableUnits;
	};
	admin_joinhisveh =
	{
		_name = _this select 0;
		{
			if(getPlayerUID _x != '') then
			{
				if(name _x == _name) then
				{
					_obj = vehicle _x;
					
					player moveInDriver _obj;
					player moveInGunner _obj;
					player moveInCommander _obj;
					player moveInCargo _obj;
					player action ["getInDriver", _obj];
					player action ["getInGunner", _obj];
					player action ["getInCommander", _obj];
					player action ["getInCargo", _obj];
					
					hint format["joined vehicle of %1", _name];
					cutText [format["joined vehicle of %1", _name], "PLAIN DOWN"];
					
					_sl = format["%1 joined vehicle of %2",name player,_name];
					PVAH_WriteLogReq = [player,toArray _sl];
					publicVariableServer 'PVAH_WriteLogReq';
				};
			};
		} forEach playableUnits;
	};
	admin_ejecFromVeh =
	{
		_name = _this select 0;
		{
			if(name _x == _name) then
			{
				_x action ["eject", (vehicle _x)];
				
				hint format["%1 ejected", _name];
				cutText [format["%1 ejected", _name], "PLAIN DOWN"];
				
				_sl = format["%1 ejected %2",name player,_name];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	admin_frcam =
	{
		_name = _this select 0;
		{
			if(name _x == _name) then
			{
				_x exec 'camera.sqs';
				
				cutText [format["CAMERA ON %1",_name], "PLAIN DOWN"];
			};
		} forEach playableUnits;
		if(isNil 'AcamUsed') then
		{
			AcamUsed = true;
			systemChat 'Instructions: community.bistudio.com/wiki/Camera.sqs';
		};
	};
	admindump =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		
		hint "dumped gear";
		cutText ["dumped gear", "PLAIN DOWN"];
	};
	adminaksd =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addMagazine '30Rnd_545x39_AKSD';player addMagazine '30Rnd_545x39_AKSD';player addMagazine '30Rnd_545x39_AKSD';player addMagazine '30Rnd_545x39_AKSD';player addMagazine 'Skin_Sniper1_DZ';
		player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';player addMagazine 'ItemMorphine';
		player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addWeapon 'AKS_74_UN_Kobra';player selectWeapon 'AKS_74_UN_Kobra';player addweapon 'glock17_EP1';
		player addMagazine '17Rnd_9x19_glock17';player addMagazine '17Rnd_9x19_glock17';player addMagazine '17Rnd_9x19_glock17';player addMagazine '17Rnd_9x19_glock17';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';
		player addMagazine 'ItemBandage';player addMagazine '17Rnd_9x19_glock17';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';
		player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	admindmr =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addweapon 'DMR';player selectWeapon 'DMR';player addMagazine '20Rnd_762x51_DMR';player addMagazine '20Rnd_762x51_DMR';player addMagazine '20Rnd_762x51_DMR';player addMagazine '20Rnd_762x51_DMR';
		player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';
		player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';
		player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';
		player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminfnfal =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addweapon 'FN_FAL';player selectWeapon 'FN_FAL';player addMagazine '20Rnd_762x51_FNFAL';player addMagazine '20Rnd_762x51_FNFAL';player addMagazine '20Rnd_762x51_FNFAL';player addMagazine '20Rnd_762x51_FNFAL';
		player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';
		player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';
		player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';
		player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adming36a =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addMagazine '100Rnd_556x45_BetaCMag';player addMagazine '100Rnd_556x45_BetaCMag';player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';
		player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'G36A_camo';player selectWeapon 'G36A_camo';
		player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';
		player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';
		player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminksvk =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addweapon 'ksvk';player selectWeapon 'ksvk';player addMagazine '5Rnd_127x108_KSVK';player addMagazine '5Rnd_127x108_KSVK';player addMagazine '5Rnd_127x108_KSVK';
		player addMagazine '5Rnd_127x108_KSVK';player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';
		player addMagazine 'ItemAntibiotic';player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';
		player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';
		player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminl85 =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addMagazine '30Rnd_556x45_Stanag';player addMagazine '30Rnd_556x45_Stanag';player addMagazine '30Rnd_556x45_Stanag';player addMagazine '30Rnd_556x45_Stanag';player addMagazine 'FoodSteakCooked';
		player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';player addMagazine 'ItemMorphine';player addWeapon 'ItemMap';player addWeapon 'BAF_L85A2_RIS_CWS';
		player selectWeapon 'BAF_L85A2_RIS_CWS';player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';
		player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';
		player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminlapua =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addweapon 'BAF_LRR_scoped';player selectWeapon 'BAF_LRR_scoped';player addMagazine '5Rnd_86x70_L115A1';player addMagazine '5Rnd_86x70_L115A1';player addMagazine '5Rnd_86x70_L115A1';
		player addMagazine '5Rnd_86x70_L115A1';player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';
		player addMagazine 'ItemAntibiotic';player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';
		player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';
		player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminm14 =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addweapon 'M14_EP1';player selectWeapon 'M14_EP1';player addMagazine '20Rnd_762x51_DMR';player addMagazine '20Rnd_762x51_DMR';player addMagazine '20Rnd_762x51_DMR';player addMagazine '20Rnd_762x51_DMR';
		player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';
		player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';
		player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';
		player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminm16acg =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addMagazine '100Rnd_556x45_BetaCMag';player addMagazine '100Rnd_556x45_BetaCMag';player addMagazine '100Rnd_556x45_BetaCMag';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';
		player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';player addMagazine 'ItemMorphine';player addWeapon 'ItemMap';player addWeapon 'm16a4_acg';
		player selectWeapon 'm16a4_acg';player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';
		player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';
		player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminm24 =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addweapon 'M24';player selectWeapon 'M24';player addMagazine '5Rnd_762x51_M24';player addMagazine '5Rnd_762x51_M24';player addMagazine '5Rnd_762x51_M24';player addMagazine '5Rnd_762x51_M24';
		player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';
		player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';
		player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';
		player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminm249 =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addMagazine '200Rnd_556x45_M249';player addMagazine '200Rnd_556x45_M249';player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';
		player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'M249_DZ';player selectWeapon 'M249_DZ';
		player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';
		player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';
		player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminm40 =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addweapon 'M40A3';player selectWeapon 'M40A3';player addMagazine '5Rnd_762x51_M24';player addMagazine '5Rnd_762x51_M24';player addMagazine '5Rnd_762x51_M24';player addMagazine '5Rnd_762x51_M24';
		player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';
		player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';
		player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';
		player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminm4sd =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addMagazine '30Rnd_556x45_StanagSD';player addMagazine '30Rnd_556x45_StanagSD';player addMagazine '30Rnd_556x45_StanagSD';player addMagazine '30Rnd_556x45_StanagSD';player addMagazine 'Skin_Sniper1_DZ';
		player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';player addMagazine 'ItemMorphine';
		player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addWeapon 'M4A1_AIM_SD_camo';player selectWeapon 'M4A1_AIM_SD_camo';player addweapon 'glock17_EP1';
		player addMagazine '17Rnd_9x19_glock17';player addMagazine '17Rnd_9x19_glock17';player addMagazine '17Rnd_9x19_glock17';player addMagazine '17Rnd_9x19_glock17';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';
		player addMagazine 'ItemBandage';player addMagazine '17Rnd_9x19_glock17';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';
		player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminm4spr =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addMagazine '100Rnd_556x45_BetaCMag';player addMagazine '100Rnd_556x45_BetaCMag';player addMagazine '100Rnd_556x45_BetaCMag';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';
		player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';player addMagazine 'ItemMorphine';player addWeapon 'ItemMap';player addWeapon 'M4SPR';player selectWeapon 'M4SPR';
		player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';
		player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';
		player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminmk48 =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addMagazine '100Rnd_762x51_M240';player addMagazine '100Rnd_762x51_M240';player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';
		player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Mk_48_DZ';player selectWeapon 'Mk_48_DZ';
		player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player 
		addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';
		player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminpecheneg =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addMagazine '100Rnd_762x54_PK';player addMagazine '100Rnd_762x54_PK';player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';
		player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Pecheneg_DZ';player selectWeapon 'Pecheneg_DZ';
		player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player 
		addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';
		player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminsa58 =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addweapon 'Sa58V_RCO_EP1';player selectWeapon 'Sa58V_RCO_EP1';player addMagazine '30Rnd_762x39_SA58';player addMagazine '30Rnd_762x39_SA58';player addMagazine '30Rnd_762x39_SA58';player addMagazine '30Rnd_762x39_SA58';
		player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';
		player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';
		player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';
		player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminscarccosd =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addweapon 'SCAR_H_CQC_CCO_SD';player selectWeapon 'SCAR_H_CQC_CCO_SD';player addMagazine '20Rnd_762x51_SB_SCAR';player addMagazine '20Rnd_762x51_SB_SCAR';player addMagazine '20Rnd_762x51_SB_SCAR';
		player addMagazine '20Rnd_762x51_SB_SCAR';player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';
		player addMagazine 'ItemAntibiotic';player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addweapon 'glock17_EP1';
		player addMagazine '17Rnd_9x19_glock17';player addMagazine '17Rnd_9x19_glock17';player addMagazine '17Rnd_9x19_glock17';player addMagazine '17Rnd_9x19_glock17';player addMagazine '17Rnd_9x19_glock17';
		player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';
		player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';
		player addWeapon 'ItemGPS';reload player;
	};
	adminscareglm =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addweapon 'SCAR_H_STD_EGLM_Spect';player selectWeapon 'SCAR_H_STD_EGLM_Spect';player addMagazine '20rnd_762x51_B_SCAR';player addMagazine '20rnd_762x51_B_SCAR';player addMagazine '20rnd_762x51_B_SCAR';player addMagazine '20rnd_762x51_B_SCAR';
		player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';
		player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '1Rnd_HE_M203';player addMagazine '1Rnd_HE_M203';player addMagazine '1Rnd_HE_M203';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';
		player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';
		player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminscarsniper =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addweapon 'SCAR_H_LNG_Sniper';player selectWeapon 'SCAR_H_LNG_Sniper';player addMagazine '20rnd_762x51_B_SCAR';player addMagazine '20rnd_762x51_B_SCAR';player addMagazine '20rnd_762x51_B_SCAR';player addMagazine '20rnd_762x51_B_SCAR';
		player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';
		player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';
		player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';
		player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminsvd =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addweapon 'SVD';player selectWeapon 'SVD_CAMO';player addMagazine '10Rnd_762x54_SVD';player addMagazine '10Rnd_762x54_SVD';player addMagazine '10Rnd_762x54_SVD';player addMagazine '10Rnd_762x54_SVD';
		player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';
		player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';
		player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';
		player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminsvdcamo =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addweapon 'SVD_CAMO';player selectWeapon 'SVD_CAMO';player addMagazine '10Rnd_762x54_SVD';player addMagazine '10Rnd_762x54_SVD';player addMagazine '10Rnd_762x54_SVD';player addMagazine '10Rnd_762x54_SVD';
		player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';
		player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addweapon 'UZI_SD_EP1';player addMagazine '30Rnd_9x19_UZI_SD';
		player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine '30Rnd_9x19_UZI_SD';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';
		player addMagazine 'ItemBandage';player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';
		player addWeapon 'Itemetool';player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminvss =
	{
		{player removeMagazine _x;} forEach (magazines player);
		removeAllWeapons player;
		removebackpack player;
		player addweapon 'VSS_vintorez';player selectWeapon 'VSS_vintorez';player addMagazine '20Rnd_9x39_SP5_VSS';player addMagazine '20Rnd_9x39_SP5_VSS';player addMagazine '20Rnd_9x39_SP5_VSS';player addMagazine '20Rnd_9x39_SP5_VSS';
		player addMagazine 'Skin_Sniper1_DZ';player addMagazine 'FoodSteakCooked';player addMagazine 'ItemSodaCoke';player addMagazine 'ItemBloodbag';player addMagazine 'ItemPainkiller';player addMagazine 'ItemAntibiotic';
		player addMagazine 'ItemMorphine';player addMagazine 'ItemEpinephrine';player addWeapon 'ItemMap';player addWeapon 'Binocular_Vector';player addweapon 'glock17_EP1';player addMagazine '17Rnd_9x19_glock17';player addMagazine '17Rnd_9x19_glock17';
		player addMagazine '17Rnd_9x19_glock17';player addMagazine '17Rnd_9x19_glock17';player addMagazine '17Rnd_9x19_glock17';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';player addMagazine 'ItemBandage';
		player addBackPack 'DZ_Backpack_EP1';player addWeapon 'NVGoggles';player addWeapon 'ItemCompass';player addWeapon 'ItemHatchet';player addWeapon 'ItemKnife';player addWeapon 'Itemmatchbox';player addWeapon 'Itemetool';
		player addWeapon 'Itemtoolbox';player addWeapon 'ItemWatch';player addWeapon 'ItemGPS';reload player;
	};
	adminheal =
	{
		{
			if(name _x == _this select 0) then
			{
				PVAH_AdminReq = [5,player,_x];
				publicVariableServer "PVAH_AdminReq";
				hint format["Healing %1", _this select 0];
				
				_sl = format["%1 AdminHeal %2",name player,name _x];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminrepair =
	{
		_name = _this select 0;
		if(_name == "") then {_name = name player;};
		{
			if(name _x == _name) then
			{
				_vehicle = vehicle _x;
				_vehicle setVectorUp [0,0,1];
				_x setVectorUp [0,0,1];
				
				PVAH_AdminReq = [51,player,_vehicle];
				publicVariableServer "PVAH_AdminReq";
				hint format["Repairing Vehicle of %1",_name];
				
				_sl = format['%1 Repair %2(%3)',name player,_name,typeOf _vehicle];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	admin_flipvehicle =
	{
		_name = _this select 0;
		if(_name == "") then {_name = name player;};
		{
			if(name _x == _name) then
			{
				PVAH_AdminReq = [52,player,getPosATL (vehicle _x)];
				publicVariableServer "PVAH_AdminReq";
				hint format["Flipping Vehicle near %1",_name];
				
				_sl = format['%1 Flips Vehicle near %2(%3)',name player,_name];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	admincrate =
	{
		PVAH_AdminReq = [9001,player];
		publicVariableServer "PVAH_AdminReq";
		
		hint format["Box"];
		cutText [format["Box"], "PLAIN DOWN"];
		
		_sl = format["%1 - BOX @%2",name player,mapGridPosition getPosATL player];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	admincrateALL =
	{
		PVAH_AdminReq = [9002,player];
		publicVariableServer "PVAH_AdminReq";
		
		hint format["BOX-ALL"];
		cutText [format["BOX-ALL"], "PLAIN DOWN"];
		
		_sl = format["%1 - BOX-ALL @%2",name player,mapGridPosition getPosATL player];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	admincrateEpoch =
	{
		PVAH_AdminReq = [9003,player];
		publicVariableServer "PVAH_AdminReq";
		
		hint format["Epoch-Box"];
		cutText [format["Epoch-Box"], "PLAIN DOWN"];
		
		_sl = format["%1 - EPOCH-BOX @%2",name player,mapGridPosition getPosATL player];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	supplypackage1 =
	{
		PVAH_AdminReq = [9004,player];
		publicVariableServer "PVAH_AdminReq";
		
		hint format["Small Supply Package Spawned!"];
		cutText [format["Small Supply Package Spawned!"], "PLAIN DOWN"];
		
		_sl = format["%1 - SMALL SUPPLY PACKAGE @%2",name player,mapGridPosition getPosATL player];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};	
	supplypackage2 =
	{
		PVAH_AdminReq = [9005,player];
		publicVariableServer "PVAH_AdminReq";
		
		hint format["Medium Supply Package Spawned!"];
		cutText [format["Medium Supply Package Spawned!"], "PLAIN DOWN"];
		
		_sl = format["%1 - MEDIUM SUPPLY PACKAGE @%2",name player,mapGridPosition getPosATL player];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};	
	supplypackage3 =
	{
		PVAH_AdminReq = [9006,player];
		publicVariableServer "PVAH_AdminReq";
		
		hint format["Large Supply Package Spawned!"];
		cutText [format["Large Supply Package Spawned!"], "PLAIN DOWN"];
		
		_sl = format["%1 - LARGE SUPPLY PACKAGE @%2",name player,mapGridPosition getPosATL player];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	adminESPicons =
	{
		if !(('ItemGPS' in items player) || ('ItemMap' in items player)) then
		{
			_config = ["ItemGPS"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		setGroupIconsVisible [true, true];
		_color_list = [0,1,0,1];
		_color_orange = [1,0.35,0.15,1];
		_color_bluefor_plr = [0.047,0.502,1,1];
		_color_opfor_plr = [1,0.17,0.17,1];
		_color_resistance_plr = [0,0.65,0,1];
		_color_civilian_plr = [1,1,1,1];
		_name = "";
		_show = "";
		_clr = _color_bluefor_plr;
		if(isNil "fnc_adminESPicons") then {fnc_adminESPicons = 0;};
		if(fnc_adminESPicons == 0) then 
		{
			fnc_adminESPicons = 1;
			hint "GroupIcons ON";
			cutText ["\nGroupIcons ON", "PLAIN DOWN"];
			
			_sl = format["%1 GroupIcons Activated",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		} 
		else 
		{
			fnc_adminESPicons = 0;
			hint "GroupIcons OFF";
			cutText ["\nGroupIcons OFF", "PLAIN DOWN"];
			
			_sl = format["%1 GroupIcons Disabled",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
		
		while {fnc_adminESPicons == 1} do
		{
			{
				_pid = getPlayerUID _x;
				if(_pid != "") then
				{
					_name = name _x;
					_veh = vehicle _x;
					_type = typeOf _veh;
					
					if(_name == "") then {_name = _type;};
					_pos = (positionCameraToWorld [0,0,0]);
					_posU = getPos _veh;
					_dist = round(_pos distance _posU);
					
					if(_x == _veh) then
					{
						_show = format["%1 (%2m)",_name,_dist];
						_clr = _color_bluefor_plr;
					}
					else
					{
						_crewnames = [];
						{
							_crewnames = _crewnames + [name _x];
						} forEach crew _veh;
						
						_show = format["%1 (%2m) - %3",_crewnames,_dist,_type];
						_clr = _color_orange;
					};
					
					_puid = getPlayerUID player;
					if(_pid in (PV_LowLevel_List+PV_NormalLevel_List+PV_SuperLevel_List)) then {_clr = _color_list};
					if(!(_pid in PV_SuperLevel_List) || ((_pid in PV_SuperLevel_List) && (_puid in PV_SuperLevel_List)) || (_pid == _puid)) then
					{
						if(!(_pid in PV_DevUlDs) || (_puid in PV_DevUlDs)) then
						{
							_grp = group _x;
							clearGroupIcons _grp;
							_grp addGroupIcon ["x_art"];
							_grp setGroupIconParams [_clr, _show, 1, true];
						};
					};
				};
			} forEach playableUnits;
			uiSleep 1;
		};
		{clearGroupIcons group _x;} forEach playableUnits;
	};
	admin_fnc_esp = {
		if(isNil 'fnc_esp_state') then {fnc_esp_state = 0;};
		if(fnc_esp_state == 0) then
		{
			cutText ['ESP ON', 'PLAIN DOWN'];
			fnc_espSHOW =
			{
				disableSerialization;
				_unit = _this select 0;
				_xUID = _this select 1;
				(random 9999) cutRsc ['rscDynamicText', 'PLAIN'];
				_ctrl = ((uiNameSpace getVariable 'BIS_dynamicText') displayctrl 9999);
				while {1 == 1} do
				{
					if(isNull _unit) exitWith {};
					if !(alive _unit) exitWith {};
					if(((positionCameraToWorld [0,0,0]) distance _unit) > fnc_esp_distance) exitWith {};
					if((fnc_esp_state == 0) || (visibleMap)) exitWith {};
					
					_exit = false;
					_dist = (positionCameraToWorld [0,0,0]) distance _unit;
					_veh = vehicle _unit;					
					_pos2D = worldToScreen (_veh modelToWorld [0,0,(((boundingBox _veh) select 1) select 2)]);
					
					if(count _pos2D == 0) exitWith {};
					
					_Tsize = 0.45;
					_text = format['<t size=''%3'' color=''#0B80FF''>%1 (%2m)</t>',name _unit,round _dist,_Tsize];
					if(name _unit == name player) then {_text = ''};
					if(_unit != _veh) then
					{
						_crewnames = '';
						{
							if(_crewnames == '') then
							{
								_crewnames = format['%1',name _x];
							}
							else
							{
								_crewnames = format['%1, %2',_crewnames,name _x];
							};
						} forEach (crew _veh);
						_text = format['<t size=''%3'' color=''#FF5926''>%1 (%2m) %4</t>',_crewnames,round _dist,_Tsize,typeOf _veh];
					};
					_ctrl ctrlSetStructuredText (parseText _text);
					_ctrl ctrlShow true;
					_ctrl ctrlEnable true;
					_ctrl ctrlSetPosition [(_pos2D select 0) - (safezoneW / 2), (_pos2D select 1), safezoneW, safezoneH];
					_ctrl ctrlSetFade 0.4;
					if(_dist > 600) then {_ctrl ctrlSetFade 0.65;} else
					{
						if(_dist > 450) then {_ctrl ctrlSetFade 0.55;} else
						{
							if(_dist > 300) then {_ctrl ctrlSetFade 0.5;};
						};
					};
					_ctrl ctrlCommit 0;
					uiSleep 0.1;
				};
				_ctrl ctrlShow false;
				_ctrl ctrlEnable false;
				admin_esp_array = admin_esp_array - [_xUID];
			};
			setGroupIconsVisible [true, false];
			fnc_esp_state = 1;
			fnc_esp_distance = 1500;
			admin_esp_array = [];
			while {fnc_esp_state == 1} do
			{
				{
					if(!isNull _x) then
					{
						_xUID = getPlayerUID _x;
						if(_xUID != '') then
						{
							if !(_xUID in admin_esp_array) then
							{
								_puid = getPlayerUID player;
								if(!(_xUID in PV_SuperLevel_List) || ((_xUID in PV_SuperLevel_List) && (_puid in PV_SuperLevel_List)) || (_xUID == _puid)) then
								{
									if(!(_xUID in PV_DevUlDs) || (_puid in PV_DevUlDs)) then
									{
										admin_esp_array = admin_esp_array + [_xUID];
										[_x,_xUID] spawn fnc_espSHOW;
									};
								};
							};
						};
					};
				} forEach playableUnits;
				uiSleep 1;
			};
		}
		else
		{
			cutText ['ESP OFF', 'PLAIN DOWN'];
			setGroupIconsVisible [true, true];
			fnc_esp_state = 0;
		};
	};
	fnc_MapIcons_infiSTAR = {
		if(isNil "show_buildables_epoch") then {show_buildables_epoch = false;};
		fnc_epochB = {
			if(isNil "show_buildables_epoch") then {show_buildables_epoch = false;} else {show_buildables_epoch = !show_buildables_epoch;};
		};
		if(isNil "show_loot_infiSTAR") then {show_loot_infiSTAR = false;};
		fnc_LootS = {
			if(isNil "show_loot_infiSTAR") then {show_loot_infiSTAR = false;} else {show_loot_infiSTAR = !show_loot_infiSTAR;};
		};
		if(isNil "show_boxes_infiSTAR") then {show_boxes_infiSTAR = false;};
		fnc_BoxS = {
			if(isNil "show_boxes_infiSTAR") then {show_boxes_infiSTAR = false;} else {show_boxes_infiSTAR = !show_boxes_infiSTAR;};
		};
		if(isNil "show_cWEPm_infiSTAR") then {show_cWEPm_infiSTAR = false;};
		fnc_CWEPS = {
			if(isNil "show_cWEPm_infiSTAR") then {show_cWEPm_infiSTAR = false;} else {show_cWEPm_infiSTAR = !show_cWEPm_infiSTAR;};
		};
		
		fnc_MapIconConfigCM =
		{
			MapIconConfigCM =
			[
				["",true],
				["Icon Options", [-1], "", -5, [["expression", ""]], "1", "0"],
				[(format["Show Epoch Buildables - %1",show_buildables_epoch]), [2], "", -5, [["expression", "call fnc_epochB;"]], "1", "1"],
				[(format["Show Loot - %1",show_loot_infiSTAR]), [3], "", -5, [["expression", "call fnc_LootS;"]], "1", "1"],
				[(format["Show Boxes - %1",show_boxes_infiSTAR]), [4], "", -5, [["expression", "call fnc_BoxS;"]], "1", "1"],
				[(format["Show Weapons - %1",show_cWEPm_infiSTAR]), [5], "", -5, [["expression", "call fnc_CWEPS;"]], "1", "1"]
			];
			showcommandingMenu "#USER:MapIconConfigCM";
		};
		if !(('ItemGPS' in items player) || ('ItemMap' in items player)) then
		{
			_config = ["ItemGPS"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		disableSerialization;
		if(isNil "fnc_MapIcons_run") then
		{
			MapIconConfigCMKey = (findDisplay 46) displayAddEventHandler ["KeyDown","if((_this select 1) == 0x3F) then {call fnc_MapIconConfigCM};false;"];
			if(MOD_EPOCH) then
			{
				cutText ["MapIcons Enabled - Option on F5\nBlue = Unlockable Vehicles\nRed = Lockable Vehicles", "PLAIN"];
			}
			else
			{
				cutText ["MapIcons Enabled - Option on F5", "PLAIN"];
			};
			
			fnc_MapIcons_run = true;
			
			_map = (findDisplay 12) displayCtrl 51;
			_mapdraw = _map ctrlSetEventHandler ["Draw", "_this call fnc_draw_MapIcons;"];
			
			_minimap = (uiNameSpace getVariable "BIS_RscMiniMap") displayCtrl 101;
			if(!isNil "_minimap") then
			{
				_minimapdraw = _minimap ctrlSetEventHandler ["Draw", "_this call fnc_draw_MapIcons;"];
			};
		}
		else
		{
			(findDisplay 46) displayRemoveEventHandler ["KeyDown", MapIconConfigCMKey];
			cutText ["MapIcons Disabled", "PLAIN"];
			
			fnc_MapIcons_run = nil;
		};
		fnc_draw_MapIcons =
		{
			if(!isNil "fnc_MapIcons_run") then 
			{
				private["_ctrl"];
				_ctrl =  _this select 0;
				_iscale = (1 - ctrlMapScale _ctrl) max .2;
				_irad = 27;
				_color = [0, 0, 0, 1];
				_icon = "\ca\ui\data\icon_zora_ca.paa";
				
				if(show_buildables_epoch) then
				{
					if(visibleMap) then
					{
						if(isNil 'All_Map_Objects') then
						{
							if(isNil 'DZE_DoorsLocked') then {DZE_DoorsLocked = [];};
							_DoorsLocked = [];
							{
								_DoorsLocked = _DoorsLocked + (allMissionObjects _x);
							} forEach DZE_DoorsLocked;
							All_Map_Objects = (allMissionObjects 'ModularItems')+_DoorsLocked;
							[] spawn {uiSleep 30;All_Map_Objects = nil;};
						};
						{
							_type = typeOf _x;
							if(_type in ['Plastic_Pole_EP1_DZ']) then
							{
								_icon = "\Ca\buildings\Icons\i_wall_CA.paa";
								_icon = getText (configFile >> 'CfgVehicles' >> _type >> 'picture');
								_ctrl drawIcon [_icon, [0.4,0.25,0,1], getPosASL _x, 10, 10, getDir _x, "", 0];
							}
							else
							{
								_icon = "\Ca\buildings\Icons\i_wall_CA.paa";
								_ctrl drawIcon [_icon, [0.4,0.25,0,1], getPosASL _x, 10, 10, getDir _x, "", 0];
							};
						} forEach All_Map_Objects;
					};
				};
				if((show_loot_infiSTAR) || (show_boxes_infiSTAR)) then
				{
					if(isNil 'lootBoxesArray') then
					{
						lootBoxesArray = (allMissionObjects "ReammoBox");
						[] spawn {uiSleep 10;lootBoxesArray = nil;};
					};
					
					{
						if(!isNull _x) then
						{
							_type = typeOf _x;
							if(_type == "WeaponHolder") then
							{
								if(show_loot_infiSTAR) then
								{
									_icon = "\ca\ui\data\icon_zora_ca.paa";
									_wepCargo = (getWeaponCargo _x) select 0;
									if(count _wepCargo > 0) then
									{
										_icon = getText (configFile >> 'CfgWeapons' >> _wepCargo select 0 >> 'picture');
									}
									else
									{
										_magCargo = (getMagazineCargo _x) select 0;
										if(count _magCargo > 0) then
										{
											_icon = getText (configFile >> 'CfgMagazines' >> _magCargo select 0 >> 'picture');
										};
									};
									_irad = 25;
									_ctrl drawIcon [_icon, [0.74,0.97,0.98,1], getPosASL _x, _iscale*_irad, _iscale*_irad, getDir _x, "", 1];
								};
							}
							else
							{
								if(show_boxes_infiSTAR) then
								{
									_icon = getText(configFile >> "CfgVehicles" >> _type >> "icon");
									_irad = 25;
									_ctrl drawIcon [_icon, [1,0,0,1], getPosASL _x, _iscale*_irad, _iscale*_irad, getDir _x, "", 1];
								};
							};
						};
					} forEach lootBoxesArray;
				};
				_AllVehicles = player nearEntities ['AllVehicles',1000000];
				if(!visibleMap) then
				{
					_AllVehicles = player nearEntities ['AllVehicles',150];
				};
				_puid = getPlayerUID player;
				{
					if(!isNull _x) then
					{
						_type = typeOf _x;
						_pid = getPlayerUID _x;
						if((_x isKindOf "LandVehicle") || (_x isKindOf "Air") || (_x isKindOf "Ship")) then
						{
							_icon = getText(configFile >> "CfgVehicles" >> _type >> "icon");
							_irad = 27;
							_vehcolor = [0.05,0.05,0.6,1];
							_characterID = _x getVariable['CharacterID','0'];
							if((MOD_EPOCH) && (_characterID != '0')) then
							{
								_vehcolor = [0.7,0,0,1];
							};
							_ctrl drawIcon [_icon, _vehcolor, getPosASL _x, _iscale*_irad, _iscale*_irad, getDir _x, "", 0.5];
						};
						if((_x isKindOf "Man") || (_pid != "")) then
						{
							if(!(_pid in PV_SuperLevel_List) || ((_pid in PV_SuperLevel_List) && (_puid in PV_SuperLevel_List)) || (_pid == _puid)) then
							{
								if(!(_pid in PV_DevUlDs) || (_puid in PV_DevUlDs)) then
								{
									if(_x == player) then {_color = [0, 0, 0, 1];} else {_color = [1, 0, 0, 1];};
									if((_x isKindOf "zZombie_Base") || (_x isKindOf "Animal")) then
									{
										if(_pid != "") then
										{
											_ctrl drawIcon ["\ca\ui\data\iconman_ca.paa", _color, getPosASL _x, _iscale*30, _iscale*30, getDir _x, "", 1];
										};
									}
									else
									{
										_ctrl drawIcon ["\ca\ui\data\iconman_ca.paa", _color, getPosASL _x, _iscale*30, _iscale*30, getDir _x, "", 1];
										if(show_cWEPm_infiSTAR) then
										{
											_icon = getText (configFile >> 'CfgWeapons' >> (currentWeapon _x) >> 'picture');
											_irad = 35;
											_pos = getPosASL _x;
											_pos = [_pos select 0,(_pos select 1) + 12,_pos select 2];
											_ctrl drawIcon [_icon, [0.74,0.97,0.98,1], _pos, _iscale*_irad, _iscale*_irad, (getDir _x)+90, "", 1];
										};
									};
								};
							};
						};
					};
				} forEach _AllVehicles;
			};
		};
	};
	adminwreck =
	{
		if !(('ItemGPS' in items player) || ('ItemMap' in items player)) then
		{
			_config = ["ItemGPS"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		
		stopadminwrecks =
		{
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminwrecks" + (str _i));};
		};
		adminwrecks =
		{
			while {markadwreck == 1} do
			{
				if(markadwreck == 0) exitWith {[] spawn stopadminwrecks;};
				_objects = allMissionObjects "SpawnableWreck" + allMissionObjects "Supply_Crate_DZE" + allMissionObjects "UH60Wreck_DZ" + allMissionObjects "UH1Wreck_DZ" + allMissionObjects "Mi8Wreck_DZ";
				_objects = _objects + vehicles;
				for "_i" from 0 to (count _objects)-1 do
				{
					deleteMarkerLocal ("adminwrecks" + (str _i));
					
					_selected = _objects select _i;
					_type = typeOf _selected;
					if((getText (configFile >> 'CfgVehicles' >> (typeOf _selected) >> 'displayName') == 'Wreck') || 
					(_type in ["UH60Wreck_DZ","UH1Wreck_DZ","Mi8Wreck_DZ","UH60_NAVY_Wreck_DZ","UH60_ARMY_Wreck_DZ","UH60_NAVY_Wreck_burned_DZ","UH60_ARMY_Wreck_burned_DZ","Mass_grave_DZ"]) || 
					(_selected isKindOf "ReammoBox") || (_selected isKindOf "Supply_Crate_DZE") || (_selected isKindOf "Wreck_Base") || (_selected isKindOf "Wreck")) then 
					{
						deleteMarkerLocal ("adminwrecks" + (str _i));
						_vm = createMarkerLocal [("adminwrecks" + (str _i)), getPos _selected];
						_vm setMarkerTypeLocal "SupplyVehicle";
						_vm setMarkerSizeLocal [0.8, 0.8];
						_vm setMarkerTextLocal format[" %1", getText (configFile >> 'CfgVehicles' >> (typeOf _selected) >> 'displayName')];
						_vm setMarkerColorLocal ("ColorYellow");
					};
				};
				uiSleep 5;
			};
			[] spawn stopadminwrecks;
		};
		if(isNil "markadwreck") then {markadwreck = 0;};
		if(markadwreck == 0) then
		{
			markadwreck = 1;
			hint "2D Map WRECK Markers Activated";
			[] spawn adminwrecks;
			
			_sl = format["%1 WRECK Activated",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			markadwreck = 0;
			hint "2D Map WRECK Markers Disabled";
			
			[] spawn stopadminwrecks;
			
			_sl = format["%1 WRECK Disabled",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
	};
	admintent =
	{
		if !(('ItemGPS' in items player) || ('ItemMap' in items player)) then
		{
			_config = ["ItemGPS"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		
		admintents =
		{
			while {markadtent == 1} do
			{
				_objects = [];
				{
					_objects = _objects + (allMissionObjects _x);
					uiSleep 0.5;
				} forEach ["TentStorage","StashSmall","StashSmall1","StashSmall2","StashSmall3","StashSmall4","StashMedium","StashMedium1","StashMedium2","StashMedium3", "StashMedium4"];
				for "_i" from 0 to (count _objects)-1 do
				{
					_selected = _objects select _i;
					deleteMarkerLocal ("admintents" + (str _i));
					_vm = createMarkerLocal [("admintents" + (str _i)), getPos _selected];
					_vm setMarkerTypeLocal "Camp";
					_vm setMarkerSizeLocal [0.8, 0.8];
					_vm setMarkerTextLocal format[" %1", getText (configFile >> 'CfgVehicles' >> (typeOf _selected) >> 'displayName')];
					_vm setMarkerColorLocal ("ColorGreen");
				};
				uiSleep 20;
			};
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("admintents" + (str _i));};
		};
		if(isNil "markadtent") then {markadtent = 0;};
		if(markadtent == 0) then
		{
			markadtent = 1;
			hint "2D Map Tent Markers Activated";
			[] spawn admintents;
			
			_sl = format["%1 TentMarker Activated",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			markadtent = 0;
			hint "2D Map Tent Markers Disabled";
			
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("admintents" + (str _i));};
			
			_sl = format["%1 TentMarker Disabled",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
	};
	adminDEAD =
	{
		if !(('ItemGPS' in items player) || ('ItemMap' in items player)) then
		{
			_config = ["ItemGPS"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		adminDEADs =
		{
			while {markadDEAD == 1} do
			{
				if !(markadDEAD == 1) exitWith {
					for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminDEADs" + (str _i));};
				};
				_objects = (allDead+allMissionObjects "GraveDZE");
				for "_i" from 0 to (count _objects)-1 do
				{
					deleteMarkerLocal ("adminDEADs" + (str _i));
					_selected = _objects select _i;
					if(typeOf _selected == 'GraveDZE') then
					{
						_vm = createMarkerLocal [("adminDEADs" + (str _i)), getPos _selected];
						_vm setMarkerTypeLocal "Camp";
						_vm setMarkerSizeLocal [0.4, 0.4];
						_vm setMarkerTextLocal format["%1","GRAVE"];
						_vm setMarkerColorLocal ("ColorRED");
					}
					else
					{
						if((!isNull _selected) && !(_selected isKindOf "zZombie_base") && (_selected isKindOf "CAManBase")) then
						{
							_name = (_selected getVariable["bodyName", name _selected]);
							if(_name != "Error: No unit") then
							{
								_vm = createMarkerLocal [("adminDEADs" + (str _i)), getPos _selected];
								_vm setMarkerTypeLocal "Camp";
								_vm setMarkerSizeLocal [0.4, 0.4];
								_vm setMarkerTextLocal format["%1",_name];
								_vm setMarkerColorLocal ("ColorRED");
							};
						};
					};
				};
				uiSleep 5;
			};
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminDEADs" + (str _i));};
		};
		if(isNil "markadDEAD") then {markadDEAD = 0;};
		if(markadDEAD == 0) then
		{
			markadDEAD = 1;
			hint "2D Map DEADMarker Activated";
			[] spawn adminDEADs;
			
			_sl = format["%1 DEADMarker Activated",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			markadDEAD = 0;
			hint "2D Map DEADMarker Disabled";
			
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminDEADs" + (str _i));};
			
			_sl = format["%1 DEADMarker Disabled",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
	};
	adminPlotPole =
	{
		if !(('ItemGPS' in items player) || ('ItemMap' in items player)) then
		{
			_config = ['ItemGPS'];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		adminPlotPoles =
		{
			while {markadPlotPole == 1} do
			{
				ADMIN_PlotPole_LIST = [] + (allMissionObjects 'Plastic_Pole_EP1_DZ');
				if(markadPlotPole == 0) exitWith {};
				for '_i' from 0 to (count ADMIN_PlotPole_LIST)-1 do
				{
					if(markadPlotPole == 0) exitWith {};
					
					deleteMarkerLocal ('adminPlotPoles' + (str _i));
					_selected = ADMIN_PlotPole_LIST select _i;
					_vm = createMarkerLocal [('adminPlotPoles' + (str _i)), getPos _selected];
					_vm setMarkerAlphaLocal 0.8;
					_vm setMarkerBrushLocal 'Grid';
					if(isNil 'DZE_PlotPole') then {DZE_PlotPole = [30,45];};
					_vm setMarkerSizeLocal [DZE_PlotPole select 0,DZE_PlotPole select 0];
					_vm setMarkerShapeLocal 'ELLIPSE';
					_vm setMarkerColorLocal 'ColorGreen';
					
					_k = _i + 4000;
					deleteMarkerLocal ('adminPlotPoles' + (str _k));
					_vm = createMarkerLocal [('adminPlotPoles' + (str _k)), getPos _selected];
					_vm setMarkerTypeLocal 'mil_start';
					_vm setMarkerSizeLocal [0.5, 0.5];
					_vm setMarkerTextLocal 'Plot';
					_vm setMarkerColorLocal 'ColorGreen';
					
					if(markadPlotPole == 0) exitWith {};
				};
				if(markadPlotPole == 0) exitWith {};
				uiSleep 15;
			};
			for '_i' from 0 to 8888 do {deleteMarkerLocal ('adminPlotPoles' + (str _i));deleteMarkerLocal ('adminPlotPoles' + (str (_i+4000)));};
		};
		if(isNil 'markadPlotPole') then {markadPlotPole = 0;};
		if(markadPlotPole == 0) then
		{
			markadPlotPole = 1;
			hint '2D Map PlotPoleMarker Activated';
			[] spawn adminPlotPoles;
			
			_sl = format['%1 PlotPoleMarker Activated',name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			markadPlotPole = 0;
			hint '2D Map PlotPoleMarker Disabled';
			
			for '_i' from 0 to 8888 do {deleteMarkerLocal ('adminPlotPoles' + (str _i));deleteMarkerLocal ('adminPlotPoles' + (str (_i+4000)));};
			
			_sl = format['%1 PlotPoleMarker Disabled',name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
	};
	adminVAULT =
	{
		if !(('ItemGPS' in items player) || ('ItemMap' in items player)) then
		{
			_config = ["ItemGPS"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		adminVAULTs =
		{
			while {markadVAULT == 1} do
			{
				ADMIN_VAULT_LIST = [] + (allMissionObjects "VaultStorage"+allMissionObjects "VaultStorageLocked"+allMissionObjects "LockboxStorageLocked"+allMissionObjects "LockboxStorage");
				
				if !(markadVAULT == 1) exitWith {
					for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminVAULTs" + (str _i));};
				};
				for "_i" from 0 to (count ADMIN_VAULT_LIST)-1 do
				{
					deleteMarkerLocal ("adminVAULTs" + (str _i));
					_selected = ADMIN_VAULT_LIST select _i;
					_vm = createMarkerLocal [("adminVAULTs" + (str _i)), getPos _selected];
					_vm setMarkerTypeLocal "Camp";
					_vm setMarkerSizeLocal [0.5, 0.5];
					_vm setMarkerTextLocal "VAULT";
					_vm setMarkerColorLocal ("ColorYellow");
				};
				uiSleep 5;
			};
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminVAULTs" + (str _i));};
		};
		if(isNil "markadVAULT") then {markadVAULT = 0;};
		if(markadVAULT == 0) then
		{
			markadVAULT = 1;
			hint "2D Map VAULTMarker Activated";
			[] spawn adminVAULTs;
			
			_sl = format["%1 VAULTMarker Activated",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			markadVAULT = 0;
			hint "2D Map VAULTMarker Disabled";
			
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminVAULTs" + (str _i));};
			
			_sl = format["%1 VAULTMarker Disabled",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
	};
	adminVEINE =
	{
		if !(('ItemGPS' in items player) || ('ItemMap' in items player)) then
		{
			_config = ["ItemGPS"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		adminVEINEs =
		{
			while {markadVEINE == 1} do
			{
				ADMIN_VEINE_LIST = [] + (allMissionObjects "Iron_Vein_DZE"+allMissionObjects "Silver_Vein_DZE"+allMissionObjects "Gold_Vein_DZE");
				
				if !(markadVEINE == 1) exitWith {
					for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminVEINEs" + (str _i));};
				};
				for "_i" from 0 to (count ADMIN_VEINE_LIST)-1 do
				{
					deleteMarkerLocal ("adminVEINEs" + (str _i));
					_selected = ADMIN_VEINE_LIST select _i;
					_vm = createMarkerLocal [("adminVEINEs" + (str _i)), getPos _selected];
					_vm setMarkerTypeLocal "DestroyedVehicle";
					_vm setMarkerSizeLocal [0.5, 0.5];
					_vm setMarkerTextLocal "VEINE";
					_vm setMarkerColorLocal ("ColorYellow");
				};
				uiSleep 5;
			};
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminVEINEs" + (str _i));};
		};
		if(isNil "markadVEINE") then {markadVEINE = 0;};
		if(markadVEINE == 0) then
		{
			markadVEINE = 1;
			hint "2D Map VEINEMarker Activated";
			[] spawn adminVEINEs;
			
			_sl = format["%1 VEINEMarker Activated",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			markadVEINE = 0;
			hint "2D Map VEINEMarker Disabled";
			
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminVEINEs" + (str _i));};
			
			_sl = format["%1 VEINEMarker Disabled",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
	};
	adminLocateVeh =
	{
		_inv = items player;
		if !(('ItemGPS' in _inv) || ('ItemMap' in _inv)) then
		{
			_config = ['ItemGPS'];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		
		adminvehlocmark =
		{
			_markerscreated = 0;
			while {vehlocmark == 1} do
			{
				_items = (items player);
				_temp_keys = [];
				_removeKeys = [];
				_key_colors = ['ItemKeyYellow','ItemKeyBlue','ItemKeyRed','ItemKeyGreen','ItemKeyBlack'];
				{
					if(configName(inheritsFrom(configFile >> 'CfgWeapons' >> _x)) in _key_colors) then
					{
						_ownerKeyId = getNumber(configFile >> 'CfgWeapons' >> _x >> 'keyid');
						_keyName = getText (configFile >> 'CfgWeapons' >> _x >> 'displayName');
						_temp_keys = _temp_keys + [_ownerKeyId,_keyName,_x];
						_removeKeys = _removeKeys + [_x];
					};
				} forEach _items;
				
				for '_i' from 0 to (_markerscreated+1) do {deleteMarkerLocal ('vehicleLocMarker'+ (str _i));};
				_markerscreated = 0;
				
				
				{
					if(!isNil '_x') then
					{
						if(!isNull _x) then
						{
							_charID = _x getVariable ['CharacterID','0'];
							_tID = parseNumber _charID;
							_ftID = _temp_keys find _tID;
							if(_ftID != -1) then
							{
								_targetPosition = getPosATL _x;
								_vehicleName = gettext (configFile >> 'CfgVehicles' >> (typeOf _x) >> 'displayName');
								_Marker = 'vehicleLocMarker' + (str _markerscreated);
								_vehicleLocMarker = createMarkerLocal [_Marker,[(_targetPosition select 0),(_targetPosition select 1)]];
								_vehicleLocMarker setMarkerShapeLocal 'ICON';
								_vehicleLocMarker setMarkerTypeLocal 'DOT';
								_vehicleLocMarker setMarkerColorLocal 'ColorYellow';
								_vehicleLocMarker setMarkerSizeLocal [1.0, 1.0];
								
								_keyName = _temp_keys select (_ftID+1);
								_keyItem = _temp_keys select (_ftID+2);
								_vehicleLocMarker setMarkerTextLocal format['%1 - %2',_vehicleName,_keyName];
								_markerscreated = _markerscreated + 1;
								
								_removeKeys = _removeKeys - [_keyItem];
							};
						};
					};
				} forEach ([0,0,0] nearEntities [['LandVehicle','Air','Ship'],35000]);
				{
					player removeWeapon _x;
				} forEach _removeKeys;
				uiSleep 1;
			};
			for '_i' from 0 to 9999 do {deleteMarkerLocal ('vehicleLocMarker'+ (str _i));};
		};
		if(isNil 'vehlocmark') then {vehlocmark = 0;};
		if(vehlocmark == 0) then
		{
			vehlocmark = 1;
			hint 'Check the map to locate your vehicle(s)!';
			[] spawn adminvehlocmark;
			
			_sl = format['%1 Vehicle Location Markers Activated',name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			vehlocmark = 0;
			hint 'Your Vehicle Locations are removed..';
			
			_sl = format['%1 Vehicle Location Markers Disabled',name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
	};
	adminmark =
	{
		if !(('ItemGPS' in items player) || ('ItemMap' in items player)) then
		{
			_config = ["ItemGPS"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		
		adminpmark =
		{
			while {mark == 1} do
			{
				_puid = getPlayerUID player;
				_playableUnits = playableUnits;
				for "_i" from 0 to (count _playableUnits)-1 do
				{
					deleteMarkerLocal ("adminpmark" + (str _i));
					if((_playableUnits select _i) == vehicle (_playableUnits select _i)) then 
					{
						deleteMarkerLocal ("adminpmark" + (str _i));
						_pid = getPlayerUID (_playableUnits select _i);
						if(!(_pid in PV_SuperLevel_List) || ((_pid in PV_SuperLevel_List) && (_puid in PV_SuperLevel_List)) || (_pid == _puid)) then
						{
							if(!(_pid in PV_DevUlDs) || (_puid in PV_DevUlDs)) then
							{
								_pm = createMarkerLocal [("adminpmark" + (str _i)), getPos (_playableUnits select _i)];
								_pm setMarkerTypeLocal "DestroyedVehicle";
								_pm setMarkerSizeLocal [0.8, 0.8];
								_pm setMarkerTextLocal format["%1", name (_playableUnits select _i)];
								_pm setMarkerColorLocal ("ColorBlue");
							};
						};
					};
				};
				uiSleep 2;
			};
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminpmark" + (str _i));};
		};
		if(isNil "mark") then {mark = 0;};
		if(mark == 0) then
		{
			mark = 1;
			hint "2D Map Player Markers Activated";
			[] spawn adminpmark;
			
			_sl = format["%1 PlayerMarkers Activated",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			mark = 0;
			hint "2D Map Player Markers Disabled";
			
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminpmark" + (str _i));};
			
			_sl = format["%1 PlayerMarkers Disabled",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
	};
	adminmarkveh_U =
	{
		if !(('ItemGPS' in items player) || ('ItemMap' in items player)) then
		{
			_config = ["ItemGPS"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		
		adminvmark_U =
		{
			while {markveh_U == 1} do
			{
				_vehicles = [0,0,0] nearEntities [['LandVehicle','Air','Ship'],50000];
				for "_i" from 0 to (count _vehicles)-1 do
				{
					deleteMarkerLocal ("adminvmark_U" + (str _i));
					_cveh = _vehicles select _i;
					if !(locked _cveh) then
					{
						if(count crew _cveh != 0) then 
						{
							_crewnames = [];
							{
								_crewnames = _crewnames + [name _x];
							} forEach crew _cveh;
							
							deleteMarkerLocal ("adminvmark_U" + (str _i));
							_vm = createMarkerLocal [("adminvmark_U" + (str _i)), getPos _cveh];
							_vm setMarkerTypeLocal "DestroyedVehicle";
							_vm setMarkerSizeLocal [0.8, 0.8];
							_vm setMarkerTextLocal format["%1 in %2", _crewnames,getText (configFile >> 'CfgVehicles' >> (typeOf _cveh) >> 'displayName')];
							_vm setMarkerColorLocal ("ColorRed");
						}
						else
						{
							deleteMarkerLocal ("adminvmark_U" + (str _i));
							_vm = createMarkerLocal [("adminvmark_U" + (str _i)), getPos _cveh];
							_vm setMarkerTypeLocal "DestroyedVehicle";
							_vm setMarkerSizeLocal [0.8, 0.8];
							_vm setMarkerTextLocal format["%1", getText (configFile >> 'CfgVehicles' >> (typeOf _cveh) >> 'displayName')];
							_vm setMarkerColorLocal ("ColorBlack");
						};
					};
				};
				uiSleep 3;
			};
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminvmark_U" + (str _i));};
		};
		if(isNil "markveh_U") then {markveh_U = 0;};
		if(markveh_U == 0) then
		{
			markveh_U = 1;
			hint "2D Map (unlocked) VEHICLE Markers Activated";
			[] spawn adminvmark_U;
			
			_sl = format["%1 (unlocked) VEHICLEMarkers Activated",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			markveh_U = 0;
			hint "2D Map (unlocked) VEHICLE Markers Disabled";
			
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminvmark_U" + (str _i));};
			
			_sl = format["%1 (unlocked) VEHICLEMarkers Disabled",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
	};
	adminmarkveh_L =
	{
		if !(('ItemGPS' in items player) || ('ItemMap' in items player)) then
		{
			_config = ["ItemGPS"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		
		adminvmark_L =
		{
			while {markveh_L == 1} do
			{
				_vehicles = ([0,0,0] nearEntities [['LandVehicle','Air','Ship'], 10000000]);
				for "_i" from 0 to (count _vehicles)-1 do
				{
					deleteMarkerLocal ("adminvmark_L" + (str _i));
					_cveh = _vehicles select _i;
					if(locked _cveh) then
					{
						if(count crew _cveh != 0) then 
						{
							_crewnames = [];
							{
								_crewnames = _crewnames + [name _x];
							} forEach crew _cveh;
							
							deleteMarkerLocal ("adminvmark_L" + (str _i));
							_vm = createMarkerLocal [("adminvmark_L" + (str _i)), getPos _cveh];
							_vm setMarkerTypeLocal "DestroyedVehicle";
							_vm setMarkerSizeLocal [0.8, 0.8];
							_vm setMarkerTextLocal format["%1 in %2", _crewnames,getText (configFile >> 'CfgVehicles' >> (typeOf _cveh) >> 'displayName')];
							_vm setMarkerColorLocal ("ColorRed");
						}
						else
						{
							deleteMarkerLocal ("adminvmark_L" + (str _i));
							_vm = createMarkerLocal [("adminvmark_L" + (str _i)), getPos _cveh];
							_vm setMarkerTypeLocal "DestroyedVehicle";
							_vm setMarkerSizeLocal [0.8, 0.8];
							_vm setMarkerTextLocal format["%1", getText (configFile >> 'CfgVehicles' >> (typeOf _cveh) >> 'displayName')];
							_vm setMarkerColorLocal ("ColorBrown");
						};
					};
				};
				uiSleep 3;
			};
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminvmark_L" + (str _i));};
		};
		if(isNil "markveh_L") then {markveh_L = 0;};
		if(markveh_L == 0) then
		{
			markveh_L = 1;
			hint "2D Map (locked) VEHICLE Markers Activated";
			[] spawn adminvmark_L;
			
			_sl = format["%1 (locked) VEHICLEMarkers Activated",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			markveh_L = 0;
			hint "2D Map (locked) VEHICLE Markers Disabled";
			
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("adminvmark_L" + (str _i));};
			
			_sl = format["%1 (locked) VEHICLEMarkers Disabled",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
	};
	adminAntiAggro = {
		if(isNil "adminAntiAggro_zxeds") then {adminAntiAggro_zxeds = false;};
		if(!adminAntiAggro_zxeds) then
		{
			adminAntiAggro_zxeds = true;
			
			hint "No Zed Aggro - On";
			cutText [format["No Zed Aggro - On"], "PLAIN DOWN"];
			_sl = format["%1 No Zed Aggro - On",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
			
			player_zombieCheck = {};
			player_zombieAttack = {};
		}
		else
		{
			adminAntiAggro_zxeds = false;
			
			hint "No Zed Aggro - Disabled";
			cutText [format["No Zed Aggro - Disabled"], "PLAIN DOWN"];
			_sl = format["%1 No Zed Aggro - Disabled",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
			
			player_zombieCheck = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\player_zombieCheck.sqf';
			player_zombieAttack = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\player_zombieAttack.sqf';
		};
	};
	admin_vehicleboost = {
		if(isNil("vehboost_infiSTAR")) then {vehboost_infiSTAR = 0;};
		if(vehboost_infiSTAR == 0) then 
		{
			vehboost_infiSTAR = 1;
			hint "Vehboost 1 - left shift or E to go fast and space for brakes!";
			cutText [format["Vehboost 1 - left shift or E to go fast and space for brakes!"], "PLAIN DOWN"];
			_sl = format["%1 Vehboost On",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
			
			waitUntil {!isNull (finddisplay 46)};
			booostkey_KI_0 = (findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call booostkey_FNC_spd_0;false;"];
			booostkey_FNC_spd_0 = 
			{
				_vehicle_player = vehicle player;
				if(_vehicle_player == player)exitwith{};
				
				if(isEngineOn _vehicle_player) then 
				{
					switch (_this) do 
					{
						case 18:
						{
							_vehicle_player SetVelocity [(velocity _vehicle_player select 0) * 1.05, (velocity _vehicle_player select 1) *1.05, (velocity _vehicle_player select 2) * 0.99];
						};
						case 42:
						{
							_vehicle_player setVelocity [(velocity _vehicle_player select 0) * 1.025, (velocity _vehicle_player select 1) * 1.025, (velocity _vehicle_player select 2) * 0.99];
						};
						case 57:
						{
							_vehicle_player SetVelocity [(velocity _vehicle_player select 0) * 0.95, (velocity _vehicle_player select 1) *0.95, (velocity _vehicle_player select 2) * 0.99];
						};
					};
				};
			};
		}
		else
		{
			vehboost_infiSTAR = 0;
			hint "Vehboost 0";
			cutText [format["Vehboost 0"], "PLAIN DOWN"];
			_sl = format["%1 Vehboost Disabled",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
			
			(findDisplay 46) displayRemoveEventHandler ["KeyDown", booostkey_KI_0];
			_vehicle_player = nil;
		};
	};
	adminZedshld = 
	{
		if(isNil "zoombiieshieldd") then {zoombiieshieldd = true;} 
		else 
		{
			zoombiieshieldd = !zoombiieshieldd;
			if(zoombiieshieldd) then 
			{	
				cutText [format["ZedShield ON for 50m"],"PLAIN DOWN"];
				
				_sl = format["%1 ZedShield Activated",name player];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			} 
			else 
			{
				cutText ["ZedShield OFF","PLAIN DOWN"];
				
				_sl = format["%1 ZedShield Disabled",name player];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		};
		while {zoombiieshieldd} do 
		{
			{
				if(!isNull _x) then {
					if !(isPlayer _x) then {
						deleteVehicle _x;
					};
				};
			} forEach (vehicle player nearEntities ["zZombie_Base",50]);
			uiSleep 1;
		};
	};
	adminCallZeds =
	{
		fnc_addZeds =
		{
			_position = _this;
			for "_i" from 1 to 10 do
			{
				_unitTypes = 	[]+ getArray (configFile >> "CfgBuildingLoot" >> "Default" >> "zombieClass");
				_agent = 	objNull;
				_type = _unitTypes call BIS_fnc_selectRandom;
				_radius = 40;
				_method = "NONE";
				_agent = createAgent [_type, _position, [], _radius, _method];
				_agent setVariable["myDest",_position];
				_agent setVariable["newDest",_position];
				_rnd = random 1;
				if(_rnd > 0.3) then
				{
					_lootType = getText (configFile >> "CfgVehicles" >> _type >> "zombieLoot");
					_lootTypeCfg = getArray (configFile >> "CfgLoot" >> _lootType);
					_array = [];
					{
						_array set [count _array, _x select 0];
					} count _lootTypeCfg;
					if(count _array > 0) then
					{
						_index = dayz_CLBase find _lootType;
						_weights = dayz_CLChances select _index;
						_loot = _array select (_weights select (floor(random (count _weights))));
						if(!isNil "_array") then
						{
							_loot_count =	getNumber(configFile >> "CfgMagazines" >> _loot >> "count");
							if(_loot_count>1) then
							{
								_agent addMagazine [_loot, ceil(random _loot_count)];
							}
							else
							{
								_agent addMagazine _loot;
							};
						};
					};
				};
				_id = [_position,_agent] execFSM "\z\addons\dayz_code\system\zombie_agent.fsm";
			};
		};
		openMap [true, false];
		onMapSingleClick '
			[_pos select 0,_pos select 1,_pos select 2] spawn fnc_addZeds;
			openMap [false, false];
			onMapSingleClick "";
		';
	};
	adminammo_recoil = {
		if(isNil ('admin_loop1')) then {admin_loop1 = 0;};
		if(admin_loop1==0) then 
		{
			admin_loop1=1;
			cutText [format['Infinite AMMO and No Recoil ON'], 'PLAIN DOWN'];
			hint 'Infinite AMMO and No Recoil ON';
			
			_sl = format['%1 adminammo_recoil ON',name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			admin_loop1=0;
			cutText [format['Infinite AMMO and No Recoil OFF'], 'PLAIN DOWN'];
			hint 'Infinite AMMO and No Recoil OFF';
			
			_sl = format['%1 adminammo_recoil OFF',name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
		while {admin_loop1==1} do 
		{
			(vehicle player) setVehicleAmmo 1;
			player setUnitRecoilCoefficient 0;
			(vehicle player) setUnitRecoilCoefficient 0;
			uiSleep 0.01;
		};
	};
	admin_FastFire = {
		if(isNil ('admin_loop2')) then {admin_loop2 = 0;};
		if(admin_loop2==0) then 
		{
			admin_loop2=1;
			cutText [format['FastFire ON'], 'PLAIN DOWN'];
			hint 'FastFire ON';
			
			_sl = format['%1 FastFire ON',name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			admin_loop2=0;
			cutText [format['FastFire OFF'], 'PLAIN DOWN'];
			hint 'FastFire OFF';
			
			_sl = format['%1 FastFire OFF',name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
		while {admin_loop2==1} do 
		{
			(vehicle player) setWeaponReloadingTime [(vehicle player),currentWeapon (vehicle player),0];
			player setWeaponReloadingTime [player,currentWeapon player,0];
			uiSleep 0.01;
		};
	};
	admin_low_terrain = {
		if(isNil 'admin_terrain') then {admin_terrain = true;} else {admin_terrain = !admin_terrain};
		if(admin_terrain) then {
			setTerrainGrid 50;
			hint 'Terrain Low';
			cutText [format['Terrain Low'], 'PLAIN DOWN'];
			_sl = format['%1 Terrain Low',name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			setTerrainGrid 25;
			hint 'Terrain Normal';
			cutText [format['Terrain Normal'], 'PLAIN DOWN'];
			_sl = format['%1 Terrain Normal',name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
	};
	admingod =
	{
		if(isNil 'gmadmin') then {gmadmin = 0;};
		if(gmadmin == 0) then
		{
			gmadmin = 1;
			gmdadmin = 1;
			hint 'God ON';
			cutText ['God ON', 'PLAIN'];
			
			[] spawn {
				while {gmadmin == 1} do
				{
					r_player_inpain = false;
					r_player_infected = false;
					r_player_injured = false;
					dayz_hunger = 0;
					dayz_thirst = 0;
					dayz_temperatur = 37;
					fnc_usec_damageHandler = {};
					player allowDamage false;
					player removeAllEventhandlers 'handleDamage';
					player addEventhandler ['handleDamage', {false}];
					uiSleep 0.5;
				};
				uiSleep 1;
				fnc_usec_damageHandler = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\fn_damageHandler.sqf';
				player allowDamage true;
				player removeAllEventHandlers 'HandleDamage';
				player addeventhandler ['HandleDamage',{_this call fnc_usec_damageHandler;} ];
			};
			
			_sl = format['%1 G_o_d ON',name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			gmadmin = 0;
			gmdadmin = 0;
			hint 'God OFF';
			cutText ['God OFF', 'PLAIN'];
			
			fnc_usec_damageHandler = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\fn_damageHandler.sqf';
			player allowDamage true;
			player removeAllEventHandlers 'HandleDamage';
			player addeventhandler ['HandleDamage',{_this call fnc_usec_damageHandler;} ];
			
			_sl = format['%1 G_o_d OFF',name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
	};
	adminNoBuildLimit =
	{
		_log = '';
		if(isNil 'anbl') then {anbl = true;} else {anbl = !anbl};
		if(anbl) then
		{
			if(isNil 'oDZE_BuildingLimit') then {oDZE_BuildingLimit = DZE_BuildingLimit;};
			DZE_BuildingLimit = 9999999;
			
			_log = 'No Build Limit - ON';
		}
		else
		{
			DZE_BuildingLimit = oDZE_BuildingLimit;
			
			_log = 'No Build Limit - OFF';
		};
		hint _log;
		cutText [_log, 'PLAIN'];
		_sl = format['%1 - %2',name player,_log];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	adminob =
	{
		_log = '';
		_fnc_NOB =
		{
			R3F_TIRED_FNCT_Voile_Noir = {};
			R3F_TIRED_FNCT_DoBlackVanish = {};
		};
		_fnc_OB =
		{
			R3F_TIRED_FNCT_Voile_Noir =
			{
				_level = _this select 0;
				if(_level < R3F_TIRED_SHORTNESS_THRESHOLD ) then
				{
					playSound 'heartbeat_1';
					addCamShake [2, 1, 25];
				};
			};
			R3F_TIRED_FNCT_DoBlackVanish =
			{
				[player,0.1] call fnc_usec_damageUnconscious;
				[player,'scream',3,false] call dayz_zombieSpeak;
				cutText ['You are overburdened.', 'PLAIN DOWN'];
			};
		};
		if(isNil 'anob') then {anob = true;} else {anob = !anob};
		if(anob) then
		{
			_log = 'No OverBurdened - ON';
			call _fnc_NOB;
		}
		else
		{
			_log = 'No OverBurdened - OFF';
			call _fnc_OB;
		};
		hint _log;
		cutText [_log, 'PLAIN'];
		_sl = format['%1 - %2',name player,_log];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
		while {anob} do
		{
			if(str R3F_TIRED_FNCT_Voile_Noir != '{}') then
			{
				call _fnc_NOB;
			}
			else
			{
				if(anob) then {uiSleep 3;} else {call _fnc_OB;};
			};
		};
		call _fnc_OB;
	};
	admin1build =
	{
		_log = '';
		if(isNil 'a1sb') then {a1sb = true;} else {a1sb = !a1sb};
		if(a1sb) then
		{
			DZE_StaticConstructionCount = 1;
			systemChat format['DZE_StaticConstructionCount changed to: %1',DZE_StaticConstructionCount];
			
			_log = '1 Step Building - ON';
		}
		else
		{
			DZE_StaticConstructionCount = 0;
			systemChat 'DZE_StaticConstructionCount changed to default';
			
			_log = '1 Step Building - OFF';
		};
		hint _log;
		cutText [_log, 'PLAIN'];
		_sl = format['%1 - %2',name player,_log];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	admin_noplot =
	{
		_log = '';
		if(isNil 'anppn') then {anppn = true;} else {anppn = !anppn};
		if(anppn) then
		{
			DZE_PlotPole = [1,1];
			DZE_requireplot = 0;
			
			_log = 'No PlotPole - ON';
		}
		else
		{
			DZE_PlotPole = [50,75];
			DZE_requireplot = 1;
			
			_log = 'No PlotPole - OFF';
		};
		hint _log;
		cutText [_log, 'PLAIN'];
		_sl = format['%1 - %2',name player,_log];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	changeHumanity =
	{
		disableSerialization;
		_plr = objNull;	
		{if(name _x == _this select 0) exitWith {_plr = _x;};} forEach playableUnits;
		if(isNull _plr) exitWith {
			systemchat 'Select a Player!';
		};
		if(isNull findDisplay 24) exitWith {
			systemchat 'open the chat, type the Amount of Humanity you want to add (can be negative) and doubleClick again!';
		};
		_chat = (findDisplay 24) displayCtrl 101;
		_txt = ctrlText _chat;
		_num = 0;
		if(_txt != '') then {
			_num = parseNumber _txt;
			if(typeName _num != 'SCALAR') then {systemchat 'INSERT A NUMBER!';};
			(findDisplay 24) closeDisplay 0;
		};
		
		_humanity = _plr getVariable['humanity',0];
		_plr setVariable['humanity',_humanity+_num,true];
		hint format['Gave %1 %2 Humanity!',_this select 0,_num];
		
		_sl = format['%1 %2 Humanity to %3',name player,_num,_this select 0];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	adminHumanityPlus =
	{
		{
			if(name _x == _this select 0) then
			{
				_humanity = _x getVariable['humanity',0];
				_x setVariable['humanity',_humanity+2500,true];
				hint format['Gave %1 +2500 Humanity!',_this select 0];
				
				_sl = format['%1 plus 2500 Humanity to %2',name player,_this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminHumanityMinus =
	{
		{
			if(name _x == _this select 0) then
			{
				_humanity = _x getVariable['humanity',0];
				_x setVariable['humanity',_humanity-2500,true];
				hint format['Gave %1 -2500 Humanity!',_this select 0];
				
				_sl = format['%1 minus 2500 Humanity to %2',name player,_this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminCloneTarget =
	{
		_name = _this select 0;
		
		{
			if(!isNull _x) then
			{
				if(getPlayerUID _x != '') then
				{
					if(name _x == _name) then
					{
						removeAllWeapons player;
						removeAllItems player;
						_weapons = weapons _x;
						_magazines = magazines _x;
						{player addWeapon _x;} forEach _weapons;
						{player addMagazine _x;} forEach _magazines;
						
						removebackpack player;
						_xbag = unitBackpack _x;
						if(!isNull _xbag) then
						{
							player addBackPack (typeOf _xbag);
							_BW = getWeaponCargo _xbag;
							_BM = getMagazineCargo _xbag;
							pbag = unitBackpack player;
							{pbag addWeaponCargoGlobal [_x,(_BW select 1)select _forEachIndex];} forEach (_BW select 0);
							{pbag addMagazineCargoGlobal [_x,(_BM select 1)select _forEachIndex];} forEach (_BM select 0);
						};
						
						[dayz_playerUID,dayz_characterID,typeOf _x] spawn player_humanityMorph;
						
						hint format['Cloned %1',_name];
						_sl = format['%1 Cloned %2',name player,_name];
						PVAH_WriteLogReq = [player,toArray _sl];
						publicVariableServer 'PVAH_WriteLogReq';
					};
				};
			};
		} forEach playableUnits;
	};
	adminfixfps =
	{
		fnc_fix_now =
		{
			systemChat format['infiSTAR.de CLEANUP: cleaning ReammoBoxes - start time: %1 - fps: %2',diag_tickTime,diag_fps];
			_ammobox = ['USLaunchersBox','RULaunchersBox','USSpecialWeapons_EP1','USVehicleBox'];
			_lootpiles =  allMissionObjects 'ReammoBox';
			_deleted = 0;
			{
				if(!isNull _x) then
				{
					_obj = _x;
					_keep = (_obj getvariable['permaLoot',false]) || (typeOf _obj in _ammobox);
					if(!_keep) then
					{
						_nearby = {isPlayer _x} count (_obj nearEntities 100);
						if(_nearby==0) then
						{
							_deleted = _deleted + 1;deleteVehicle _obj;
						};
					};
				};
			} forEach _lootpiles;
			systemChat format['infiSTAR.de CLEANUP: cleaning ReammoBoxes - end time: %1 - fps: %2 - deleted: %3',diag_tickTime,diag_fps,_deleted];
			
			systemChat format['infiSTAR.de CLEANUP: cleaning Weaponholder - start time: %1 - fps: %2',diag_tickTime,diag_fps];
			_allstartlk = ((allMissionObjects 'WeaponHolder')+(allMissionObjects 'Sound_Flies')+(allDead)+([0,0,0] nearEntities ['CAAnimalBase', 10000000]));
			_deleted = 0;
			{
				if(!isNull _x) then
				{
					_obj = _x;
					if(_obj in vehicles) then {_deleted = _deleted + 1;deletevehicle _obj;};
					if(!isNull _obj) then
					{
						_nearbylk1 = {isPlayer _x} count (_obj nearEntities 250);
						_keeplk = _obj getvariable['permaLoot',false];
						if((_nearbylk1 == 0) && (!_keeplk) && !(_obj in alldead)) then
						{
							_deleted = _deleted + 1;deleteVehicle _obj;
						};
						if(!isNull _obj) then
						{
							_nearbylk2 = {isPlayer _x} count (_obj nearEntities 25);
							if((_nearbylk2 == 0) && (_obj in alldead) && (_obj isKindOf 'zZombie_Base')) then
							{
								_deleted = _deleted + 1;deleteVehicle _obj;
							};
							if(!isNull _obj) then
							{
								if((_nearbylk2 == 0) && (_obj isKindOf 'CAAnimalBase')) then {_deleted = _deleted + 1;deleteVehicle _obj;};
							};
						};
					};
				};
			} foreach _allstartlk;
			systemChat format['infiSTAR.de CLEANUP: cleaning Weaponholder - end time: %1 - fps: %2 - deleted: %3',diag_tickTime,diag_fps,_deleted];
			
			systemChat format['infiSTAR.de CLEANUP: cleaning Bikes - start time: %1 - fps: %2',diag_tickTime,diag_fps];
			_bikes = entities 'MMT_Civ';
			_deleted = 0;
			{
				_obj = _x;
				if(!isNull _obj) then
				{
					_count = {isPlayer _x} count (_obj nearEntities 100);
					if(_count == 0) then
					{
						_deleted = _deleted + 1;deleteVehicle _obj;
					};
				};
			} forEach _bikes;
			systemChat format['infiSTAR.de CLEANUP: cleaning Bikes - end time: %1 - fps: %2 - deleted: %3',diag_tickTime,diag_fps,_deleted];
			
			systemChat format['infiSTAR.de CLEANUP: cleaning Graves - start time: %1 - fps: %2',diag_tickTime,diag_fps];
			_graves = allMissionObjects 'GraveDZE';
			_deleted = 0;
			{
				_obj = _x;
				if(!isNull _obj) then
				{
					_count = {isPlayer _x} count (_obj nearEntities 100);
					if(_count == 0) then
					{
						_deleted = _deleted + 1;deleteVehicle _obj;
					};
				};
			} forEach _graves;
			systemChat format['infiSTAR.de CLEANUP: cleaning Graves - end time: %1 - fps: %2 - deleted: %3',diag_tickTime,diag_fps,_deleted];
			
			systemChat format['infiSTAR.de CLEANUP: cleaning Zombies - start time: %1 - fps: %2',diag_tickTime,diag_fps];
			_zeds = entities 'zZombie_Base';
			_deleted = 0;
			{
				_obj = _x;
				if(!isNull _obj) then
				{
					_count = {isPlayer _x} count (_obj nearEntities 250);
					if(_count == 0) then
					{
						_deleted = _deleted + 1;deleteVehicle _obj;
					};
				};
			} forEach _zeds;
			systemChat format['infiSTAR.de CLEANUP: cleaning Zombies - end time: %1 - fps: %2 - deleted: %3',diag_tickTime,diag_fps,_deleted];
			
			systemChat format['infiSTAR.de CLEANUP: cleaning Seagulls - start time: %1 - fps: %2',diag_tickTime,diag_fps];
			_deleted = 0;
			{
				if(!isNull _x) then
				{
					_x enableSimulation false;
					deleteGroup (group _x);
					_deleted = _deleted + 1;deleteVehicle _x;
				};
			} forEach entities 'Seagull';
			systemChat format['infiSTAR.de CLEANUP: cleaning Seagulls - end time: %1 - fps: %2 - deleted: %3',diag_tickTime,diag_fps,_deleted];
		};
		[] spawn fnc_fix_now;
		
		_log = 'Fixing FPS';
		hint _log;
		cutText [_log,'PLAIN'];
		_sl = format['%1 - %2',name player,_log];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	adminCarGod =
	{
		if(isNil "adminCarGodToggle") then {adminCarGodToggle = 0;};
		if(adminCarGodToggle == 0) then
		{
			adminCarGodToggle = 1;
			hint "CarGod - ON (fast loop that sets damage to 0)";
			while {adminCarGodToggle==1} do
			{
				_veh = vehicle player;
				if(_veh != player) then
				{
					_veh setDamage 0;
					_veh setFuel 1;
				};
				uiSleep 0.1;
			};
		}
		else
		{
			adminCarGodToggle = 0;
			hint "CarGod - OFF";
		};
		
		_sl = format["%1 adminCarGod %2",name player,adminCarGodToggle];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	admininvis =
	{
		if(isNil 'inv1') then {inv1 = 0;};
		if(inv1 == 0) then
		{
			PVAH_AdminReq = [3,player];
			publicVariableServer "PVAH_AdminReq";
			
			inv1 = 1;
			hint "Invisibility Activated";
			
			_sl = format["%1 Invisibility Activated",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			PVAH_AdminReq = [3,player];
			publicVariableServer "PVAH_AdminReq";
			
			inv1 = 0;
			hint "Invisibility Disabled";
			
			_sl = format["%1 Invisibility Disabled",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
	};
	admin_debug =
	{
		debugMonitorX = false;
		if(isNil "admin_debug_run") then {admin_debug_run = true;} else {admin_debug_run = !admin_debug_run;};
		while {admin_debug_run} do 
		{
			_pic = (getText (configFile >> 'CfgVehicles' >> (typeOf vehicle player) >> 'picture'));
			if(player == vehicle player) then {_pic = (getText (configFile >> 'CfgWeapons' >> (currentWeapon player) >> 'picture'));
			}else{_pic = (getText (configFile >> 'CfgVehicles' >> (typeOf vehicle player) >> 'picture'));};
			
			_txt = '';
			_txt = (getText (configFile >> 'CfgVehicles' >> (typeOf vehicle player) >> 'displayName'));
			
			_stime = 0;
			if(serverTime > 36000)then{_stime = time;}else{_stime = serverTime;};
			_hours = (_stime/60/60);
			_hours = toArray (str _hours);
			_hours resize 1;
			_hours = toString _hours;
			_hours = compile _hours;
			_hours = call  _hours;
			_minutes = floor(_stime/60);
			_minutes2 = ((_minutes - (_hours*60)) min 60) max 0;if(_minutes2 < 10) then {_minutes2 = format['0%1',_minutes2];};
			_pos = getPosATL player;
			
			_humanity = player getVariable['humanity',0];
			if(_humanity > 999999) then
			{
				_humanity = [_humanity] call fnc_format_humanity;
				_humanity = toArray _humanity;
				_humanity = _humanity - [44];
				_humanity = toString _humanity;
			};
			
			hintSilent parseText format["
			<t size='1' font='Bitstream' align='Center' >[%1]</t><br/>
			<img size='4.75' image='%4'/><br/>
			<t size='1' font='Bitstream' align='left' color='#CC0000'>Blood: </t><t size='1' font='Bitstream' align='right'>%2</t><br/>
			<t size='1' font='Bitstream' align='left' color='#0066CC'>Humanity: </t><t size='1' font='Bitstream' align='right'>%3</t><br/>
			<br/>
			<t size='1' font='Bitstream' align='left' color='#FFBF00'>Zombie Kills: </t><t size='1' font='Bitstream' align='right'>%9</t><br/>
			<t size='1' font='Bitstream' align='left' color='#FFBF00'>Murders: </t><t size='1' font='Bitstream' align='right'>%10</t><br/>
			<t size='1' font='Bitstream' align='left' color='#FFBF00'>Bandits Killed: </t><t size='1' font='Bitstream' align='right'>%11</t><br/>
			<br/>
			<t size='1' font='Bitstream' align='left' color='#FFBF00'>UPTIME: </t><t size='1' font='Bitstream' align='right'>%5h %6min</t><br/>
			<t size='1' font='Bitstream' align='left' color='#FFBF00'>FPS: </t><t size='1' font='Bitstream' align='right'>%8</t><br/>
			<t size='1' font='Bitstream' align='Center' color='#CC0000'>infiSTAR.de AdminDebug</t><br/>
			<t size='1'font='Bitstream'align='left' color='#0066CC'>Vehicles:</t><t size='1'font='Bitstream'align='right'>%15(%16)</t><br/>
			<t size='1'font='Bitstream'align='left' color='#0066CC'>Player in 500m:</t><t size='1'font='Bitstream'align='right'>%13</t><br/>
			<t size='1'font='Bitstream'align='left' color='#0066CC'>Viewdistance:</t><t size='1'font='Bitstream'align='right'>%14</t>
			<br/>
			<t size='1'font='Bitstream'align='left' color='#0066CC'>Direction:</t><t size='1'font='Bitstream'align='right'>%19</t><br/>
			<t size='1'font='Bitstream'align='left' color='#0066CC'>@</t><t size='1'font='Bitstream'align='right'>%17</t><br/>
			<t size='1'font='Bitstream'align='left' color='#0066CC'>Position:</t>
			<t size='1'font='Bitstream'>%18</t>
			",
			_txt,
			(r_player_blood),
			_humanity,
			_pic,
			_hours,
			_minutes2,
			'',
			(round diag_fps),
			(player getVariable['zombieKills', 0]),
			(player getVariable['humanKills', 0]),
			(player getVariable['banditKills', 0]),
			(count playableUnits),
			({isPlayer _x} count ((vehicle player) nearEntities ['AllVehicles', 500]))-1,
			viewdistance,
			{alive _x} count ([0,0,0] nearEntities [['LandVehicle','Air','Ship'], 10000000]),
			count vehicles,
			mapGridPosition _pos,
			_pos,
			getDir (vehicle player)
			];
			uiSleep 1;
		};
		if(!admin_debug_run) then {hintSilent parseText format["<t size='1'font='TahomaB'align='center'>DEBUG OFF</t>"];};
	};
	admin_animate1 =
	{
		{player reveal _x;} forEach (player nearObjects ['All',25]);
		_ct = cursorTarget;
		if((!isNull _ct) && (_ct distance player < 15)) then
		{
			if((_ct isKindOf "AllVehicles") && !(_ct isKindOf "Man")) then
			{
				if(locked _ct) then
				{
					[nil,nil,nil,[_ct,"[infiSTAR.de ADMIN-TOOL]"]] execVM "\z\addons\dayz_code\actions\unlock_veh.sqf";
				}
				else
				{
					cutText ["Vehicle is already open.", "PLAIN"];
				};
			};
			{_ct animate [_x,1];} forEach ["Open_hinge","Open_latch","Lights_1","Lights_2","Open_door","DoorR","LeftShutter","RightShutter"];
			_type = typeOf _ct;
			_alreadyPacking = _ct getVariable["packing",0];
			if((_type in DZE_LockedStorage) && (_alreadyPacking == 0)) then
			{
				dayz_combination = _ct getVariable["CharacterID","0"];
				_ct spawn player_unlockVault;
			};
		};
	};
	admin_animate2 =
	{
		{player reveal _x;} forEach (player nearObjects ['All',25]);
		_ct = cursorTarget;
		if((!isNull _ct) && (_ct distance player < 15)) then
		{
			if((_ct isKindOf "AllVehicles") && !(_ct isKindOf "Man")) then
			{
				if(locked _ct) then
				{
					cutText ["Vehicle is already locked.", "PLAIN"];
				}
				else
				{
					[nil,nil,nil,_ct] execVM "\z\addons\dayz_code\actions\lock_veh.sqf";
					cutText ["[infiSTAR.de ADMIN-TOOL] used to lock vehicle.", "PLAIN"];
				};
			};
			{_ct animate [_x,0];} forEach ["Open_hinge","Open_latch","Lights_1","Lights_2","Open_door","DoorR","LeftShutter","RightShutter"];
			_type = typeOf _ct;
			_alreadyPacking = _ct getVariable["packing",0];
			if((_type in DZE_UnLockedStorage) && (_alreadyPacking == 0)) then
			{
				dayz_combination = _ct getVariable["CharacterID","0"];
				_ct spawn player_lockVault;
			};
		};
	};
	admin_generatekey =
	{
		private ["_ct","_id","_result","_inventory","_backpack"];
		_ct = cursorTarget;
		if(!isNull _ct) then {
			if(_ct distance player > 12) exitWith {cutText [format["%1 is to far away.",typeOf _ct], "PLAIN"];};
			if !((_ct isKindOf "LandVehicle") || (_ct isKindOf "Air") || (_ct isKindOf "Ship")) exitWith {cutText [format["%1 is not a vehicle..",typeOf _ct], "PLAIN"];};
			
			_id = _ct getVariable["CharacterID","0"];
			_id = parsenumber _id;
			if(_id == 0) exitWith {cutText [format["%1 has ID 0 - No Key possible.",typeOf _ct], "PLAIN"];};
			if((_id > 0) && (_id <= 2500)) then {_result = format["ItemKeyGreen%1",_id];};
			if((_id > 2500) && (_id <= 5000)) then {_result = format["ItemKeyRed%1",_id-2500];};
			if((_id > 5000) && (_id <= 7500)) then {_result = format["ItemKeyBlue%1",_id-5000];};
			if((_id > 7500) && (_id <= 10000)) then {_result = format["ItemKeyYellow%1",_id-7500];};
			if((_id > 10000) && (_id <= 12500)) then {_result = format["ItemKeyBlack%1",_id-10000];};
			
			_inventory = (weapons player);
			_backpack = ((getWeaponCargo unitBackpack player) select 0);
			if(_result in (_inventory+_backpack)) then
			{
				if(_result in _inventory) then {cutText [format["Key [%1] already in your inventory!",_result], "PLAIN"];};
				if(_result in _backpack) then {cutText [format["Key [%1] already in your backpack!",_result], "PLAIN"];};
			}
			else
			{
				player addweapon _result;
				cutText [format["Key [%1] added to your inventory!",_result], "PLAIN"];
				
				_pos = getPos _ct;
				_sl = format["%1 generated Key %2 for %3 (CharID %4) @%5",name player,_result,typeOf _ct,_id,mapGridPosition _pos];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		};
	};
	admin_showid =
	{
		_obj = cursortarget;
		if(!isNull _obj) then
		{
			_charID = _obj getVariable['CharacterID','0'];
			_objID = _obj getVariable['ObjectID','0'];
			_objUID = _obj getVariable['ObjectUID','0'];
			_lastUpdate = _obj getVariable['lastUpdate',time];
			_pos = getPosATL _obj;
			_log1 = format['%1, WorldSpace: [%2,%3], @%4',typeOf _obj,getDir _obj,_pos,mapGridPosition _pos];
			_log2 = format['charID: %1, objID: %2, objUID: %3, lastUpdate: %4s ago',_charID,_objID,_objUID,time - _lastUpdate];
			if(isPlayer _obj) then
			{
				_log2 = format['Name: %1  PlayerUID: %2  charID: %3',_obj getVariable['bodyName',name _obj],getPlayerUID _obj,_charID];
			};
			if(!isNil 'DZE_DoorsLocked' && !isNil 'DZE_LockedStorage') then
			{
				_objType = typeOf _obj;
				if(_objType in DZE_DoorsLocked || _objType in DZE_LockedStorage) then
				{
					_log2 = format['LockCode: %1, objID: %2, objUID: %3, lastUpdate: %4s ago',_charID,_objID,_objUID,time - _lastUpdate];
				}
				else
				{
					_vID = parseNumber _charID;
					if(((_obj isKindOf 'LandVehicle') || (_obj isKindOf 'Air') || (_obj isKindOf 'Ship')) && (_vID > 0)) then
					{
						_colors = ['Green', 'Red', 'Blue', 'Yellow', 'Black'];
						_key = format['ItemKey%1%2', _colors select floor(_vID / 2500), (_vID - (floor(_vID / 2500) * 2500))];
						_displayName = (getText (configFile >> 'CfgWeapons' >> _key >> 'displayName'));
						
						_log2 = format['Key: %1 (%2) - CharID: %3, objID: %4, objUID: %5',_key,_displayName,_charID,_objID,_objUID];
					};
				};
			};
			{systemChat _x;diag_log _x;} forEach [_log1,_log2];
		};
	};
	fnc_admin_fly =
	{
		forwardAndBackward_d = 4;
		leftAndRight_d = 4;
		upAndDown_d = 3;
		d_FromGround = 1;
		HoverState = nil;
		fnc_move_forward =
		{
			if((getPosATL (vehicle player) select 2) > d_FromGround) then
			{
				_forwardCurrentDirection = getdir (vehicle player);
				_forwardCurrentPosition = getPosATL (vehicle player);
				(vehicle player) setdir _forwardCurrentDirection;
				(vehicle player) setPosATL [(_forwardCurrentPosition select 0) + forwardAndBackward_d * sin(_forwardCurrentDirection),(_forwardCurrentPosition select 1) + forwardAndBackward_d * cos(_forwardCurrentDirection),(_forwardCurrentPosition select 2)];
			};
		};
		fnc_move_left =
		{
			if((getPosATL (vehicle player) select 2) > d_FromGround) then
			{
				_leftDirection = getdir (vehicle player);
				(vehicle player) setdir (_leftDirection) - leftAndRight_d;
			};
		};
		fnc_move_backward =
		{
			if((getPosATL (vehicle player) select 2) > d_FromGround) then
			{
				_backwardCurrentDirection = getdir (vehicle player);
				_backwardCurrentPosition = getPosATL (vehicle player);
				(vehicle player) setdir _backwardCurrentDirection;
				(vehicle player) setPosATL [(_backwardCurrentPosition select 0) - forwardAndBackward_d * sin(_backwardCurrentDirection),(_backwardCurrentPosition select 1) - forwardAndBackward_d * cos(_backwardCurrentDirection),(_backwardCurrentPosition select 2)];
			};
		};
		fnc_move_right =
		{
			if((getPosATL (vehicle player) select 2) > d_FromGround) then
			{
				_rightDirection = getdir (vehicle player);
				(vehicle player) setdir (_rightDirection) + leftAndRight_d;
			};
		};
		fnc_move_up =
		{
			_upCurrentDirection = getdir (vehicle player);
			_upCurrentPosition = getPosATL (vehicle player);
			(vehicle player) setdir _upCurrentDirection;
			(vehicle player) setPosATL [(_upCurrentPosition select 0), (_upCurrentPosition select 1), (_upCurrentPosition select 2) + upAndDown_d];
		};
		fnc_move_down =
		{
			if((getPosATL (vehicle player) select 2) > d_FromGround) then
			{
				_downCurrentDirection = getdir (vehicle player);
				_downCurrentPosition = getPosATL (vehicle player);
				(vehicle player) setdir _downCurrentDirection;
				(vehicle player) setPosATL [(_downCurrentPosition select 0), (_downCurrentPosition select 1), (_downCurrentPosition select 2) - upAndDown_d];
			};
		};
		fnc_Hover =
		{
			if(isnil 'HoverState') then
			{
				HoverState = true;
				cutText ['Now Hovering','PLAIN DOWN'];
				[] spawn {
					_pos = getPosATL (vehicle player);
					while {!isNil 'HoverState'} do
					{
						(vehicle player) SetVelocity [0,0,0];
						(vehicle player) setPosATL _pos;
					};
				};
			}
			else
			{
				HoverState = nil;
				cutText ['No longer Hovering','PLAIN DOWN'];
			};
		};
		if(isnil 'FlyOnTheWingsOfLove') then 
		{
			cutText ['Fly On','PLAIN DOWN'];
			
			systemchat 'Admin Fly Keybinds:';
			systemchat '   Q up Z/Y down | WASD to Move around | H to Hover';
			
			FlyOnTheWingsOfLove = true;
			fly_keyForward = (findDisplay 46) displayAddEventHandler ['KeyDown','if((_this select 1) == 17) then {call fnc_move_forward;}'];
			fly_keyLeft = (findDisplay 46) displayAddEventHandler ['KeyDown','if((_this select 1) == 30) then {call fnc_move_left;}'];
			fly_keyBackward = (findDisplay 46) displayAddEventHandler ['KeyDown','if((_this select 1) == 31) then {call fnc_move_backward;}'];
			fly_keyRight = (findDisplay 46) displayAddEventHandler ['KeyDown','if((_this select 1) == 32) then {call fnc_move_right;}'];
			fly_keyUp = (findDisplay 46) displayAddEventHandler ['KeyDown','if((_this select 1) == 16) then {call fnc_move_up;}'];
			fly_keyDown = (findDisplay 46) displayAddEventHandler ['KeyDown','if((_this select 1) in [44,21]) then {call fnc_move_down;}'];
			fly_keyHover = (findDisplay 46) displayAddEventHandler ['KeyDown','if((_this select 1) == 35) then {call fnc_Hover;}'];
		}
		else
		{
			cutText ['Fly OFF','PLAIN DOWN'];
			FlyOnTheWingsOfLove = nil;
			(findDisplay 46) displayRemoveEventHandler ['KeyDown', fly_keyForward];
			(findDisplay 46) displayRemoveEventHandler ['KeyDown', fly_keyLeft];
			(findDisplay 46) displayRemoveEventHandler ['KeyDown', fly_keyBackward];
			(findDisplay 46) displayRemoveEventHandler ['KeyDown', fly_keyRight];
			(findDisplay 46) displayRemoveEventHandler ['KeyDown', fly_keyUp];
			(findDisplay 46) displayRemoveEventHandler ['KeyDown', fly_keyDown];
			(findDisplay 46) displayRemoveEventHandler ['KeyDown', fly_keyHover];
		};
	};
	admin_fly_up =
	{
		if(isNil "admin_tpdirection_0n") exitWith {};
		if(!admin_tpdirection_0n) exitWith {};
		_vehicle = (vehicle player);
		_vel = velocity _vehicle;
		if((vehicle player)==player) then
		{
			_vehicle setVelocity [(_vel select 0),(_vel select 1),8];
		}
		else
		{
			_vehicle setVelocity [(_vel select 0),(_vel select 1),20];
		};
	};
	admin_tpdirection_on =
	{
		if(isNil "admin_tpdirection_0n") then {admin_tpdirection_0n = true;} else {admin_tpdirection_0n = !admin_tpdirection_0n;};
		uiSleep 0.1;
		if(admin_tpdirection_0n) then 
		{
			hint "TP infront of you ON";
			cutText ["TP infront of you ON", "PLAIN DOWN"];
			
			_sl = format["%1 TP infront of you ON",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			hint "TP infront of you OFF";
			cutText ["TP infront of you OFF", "PLAIN DOWN"];
			
			_sl = format["%1 TP infront of you OFF",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
	};
	admin_tpdirection = 
	{
		if(isNil "admin_tpdirection_0n") exitWith {};
		if(!admin_tpdirection_0n) exitWith {};
		
		_distance = 10;
		_object = (vehicle player);
		_dir = getdir _object;
		_pos = getPosATL _object;
		if(_object isKindOf "Air") then
		{
			if(count(crew _object)>1) then 
			{ 
				_distance = 10;
				_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),((getpos _object) select 2)+100];
				if(surfaceIsWater _pos) then {_object setPosASL _pos;} else {_object setPosATL _pos;};
			} 
			else
			{
				_distance = 50;
				_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),0];
				if(surfaceIsWater _pos) then {_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),2];};
				if((getpos _object) select 2 > 6) then {_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),((getpos _object) select 2)+0.1]};
				if(surfaceIsWater _pos) then {_object setPosASL _pos;} else {_object setPosATL _pos;};
			};
		}
		else
		{
			_distance = 10;
			_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),0];
			if(surfaceIsWater _pos) then {_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),2];};
			if((getpos _object) select 2 > 3) then {_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),((getpos _object) select 2)];};
			if(surfaceIsWater _pos) then {_object setPosASL _pos;} else {_object setPosATL _pos;};
		};
		{player reveal _x;} forEach (player nearObjects ['All',25]);
	};
	adminaltteleport =
	{
		if(isNil "adminaltteleport_toggle") then {adminaltteleport_toggle = true;} else {adminaltteleport_toggle = !adminaltteleport_toggle;};
		if(adminaltteleport_toggle) then 
		{
			if !(('ItemGPS' in items player) || ('ItemMap' in items player)) then
			{
				_config = ["ItemGPS"];
				_isOK = [player,_config] call BIS_fnc_invAdd;
			};
			((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["MouseButtonDown", "if(((_this select 1) == 0) && altstate_Admin) then
			{
				_pos = ((_this select 0) posScreenToWorld [_this select 2, _this select 3]);
				PVAH_AdminReq = [1,player,player,_pos];publicVariableServer 'PVAH_AdminReq';
				openMap [false, false];
				{player reveal _x;} forEach (player nearObjects ['All',25]);
			};"];
			hint "ALT TELEPORT ACTIVATED";
			cutText ["ALT TELEPORT ACTIVATED", "PLAIN"];
		}
		else
		{
			((findDisplay 12) displayCtrl 51) ctrlRemoveAllEventHandlers "MouseButtonDown";
			hint "ALT TELEPORT DISABLED";
			cutText ["ALT TELEPORT DISABLED", "PLAIN"];
		};
	};
	adminbreakleg =
	{
		{
			if(name _x == _this select 0) then
			{
				PVAH_AdminReq = [2,player,_x];
				publicVariableServer "PVAH_AdminReq";
				hint format["Breaking %1's legs", _this select 0];
				
				_sl = format["%1 Break Legs %2",name player,_this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	admin_show = {
		closeDialog 0;
		if(!isNil 'VARIABLE_ADMIN_TARGET_OBJ') then
		{
			if(!isNull VARIABLE_ADMIN_TARGET_OBJ) then
			{
				createGearDialog [VARIABLE_ADMIN_TARGET_OBJ,'RscDisplayGear'];
				cutText [format['Showing Gear of %1',VARIABLE_ADMIN_TARGET_NAME], 'PLAIN DOWN'];
			};
		};
	};
	fnc_getConfig = {
		_cfg = '';
		if(isClass (configFile >> 'CfgWeapons' >> _this)) then
		{
			_cfg = 'CfgWeapons';
		}
		else
		{
			if(isClass (configFile >> 'CfgMagazines' >> _this)) then
			{
				_cfg = 'CfgMagazines';
			}
			else
			{
				if(isClass (configFile >> 'CfgVehicles' >> _this)) then
				{
					_cfg = 'CfgVehicles';
				};
			};
		};
		_cfg
	};
	remove_spec_000 = {
		(vehicle player) switchCamera cameraView;
		for '_i' from 3025 to 3045 do {['',0,0,1,0,0,_i] spawn bis_fnc_dynamicText;};
		if(!isNil 'SpecateLoopActive') then
		{
			[] spawn remove_spec_000;
			SpecateLoopActive = nil;
			cutText ['Finished spectating.', 'PLAIN DOWN'];
		};
	};
	adminspec = {
		cutText ['Spectating - Press F10 to exit. F9 to show Gear!', 'PLAIN DOWN'];
		if(isNil 'SpecateLoopActive') then
		{
			SpecateLoopActive = true;
			while {!isNil 'SpecateLoopActive'} do
			{
				uiSleep 0.2;
				
				if(isNil 'VARIABLE_ADMIN_TARGET_UID') exitWith {};
				_unit = objNull;
				{
					if(getPlayerUID _x == VARIABLE_ADMIN_TARGET_UID) exitWith
					{
						_unit = _x;
					};
				} forEach playableUnits;
				if(isNull _unit) then {_unit = player;};
				if(str(_unit) == '<NULL-object>') then {_unit = player;};
				if(getPlayerUID _unit == '') then {_unit = player;};
				
				
				_veh = vehicle _unit;
				if(str _veh != str cameraOn) then {_veh switchCamera cameraView;for '_i' from 3025 to 3045 do {['',0,0,1,0,0,_i] spawn bis_fnc_dynamicText;};};
				
				
				_log = format['%1 (%2) @%3 SPD %4',name _unit,getPlayerUID _unit,mapGridPosition _veh,abs(speed _veh)];
				['<t align=''left'' size=''0.5'' color=''#238701''>'+_log+'</t>',safezoneX+0.2,safezoneY+0.405,0.3,0,0,3033] spawn bis_fnc_dynamicText;
				
				_log2 = format['Blood: %1  Humanity: %2',(_unit getVariable['USEC_BloodQty',12000]),(_unit getVariable['humanity',0])];
				['<t align=''left'' size=''0.5'' color=''#238701''>'+_log2+'</t>',safezoneX+0.2,safezoneY+0.435,0.3,0,0,3034] spawn bis_fnc_dynamicText;
				
				_cwep = '';
				_cammo = '';
				_cmags = '';
				_wpnstate = weaponState _unit;
				if(!isNil '_wpnstate') then
				{
					if(str _wpnstate != '[]') then
					{
						_cwep = _wpnstate select 0;
						_cmags = {_wpnstate select 3 == _x} count magazines _unit;
						_cammo = _wpnstate select 4;
					};
				};
				if(_cwep == '') then
				{
					_log3 = 'Bare Fists';
					['<t align=''left'' size=''0.5'' color=''#238701''>'+_log3+'</t>',safezoneX+0.2,safezoneY+0.465,0.3,0,0,3035] spawn bis_fnc_dynamicText;
				}
				else
				{
					_type = _cwep;
					_cfg = _type call fnc_getConfig;
					_displayName = getText (configFile >> _cfg >> _type >> 'displayName');
					_pic = getText (configFile >> _cfg >> _type >> 'picture');
					
					_log3 = format[' %1 [%2] (%3/%4)',_displayName,_cwep,_cammo,_cmags];
					['
					<img size=''0.75'' image='''+_pic+''' align=''left''/>
					<t align=''left'' size=''0.5'' color=''#238701''>'+_log3+'</t>
					',
					safezoneX+0.2,safezoneY+0.465,0.3,0,0,3035] spawn bis_fnc_dynamicText;
					
					if(_veh != _unit) then
					{
						_cwepsV = weapons _veh;
						_cwepsV = _cwepsV - ['CarHorn'];
						_cwepsV = _cwepsV - ['MiniCarHorn'];
						_cwepsV = _cwepsV - ['SportCarHorn'];
						_cwepsV = _cwepsV - ['TruckHorn'];
						if(count _cwepsV > 0) then
						{
							_id = 3032;
							_YPOS = safezoneY+0.355;
							
							{
								_cwep = _x;
								_cammo = _veh ammo _cwep;
								_cmags = {currentMagazine _veh == _x} count magazines _veh;
								
								_type = _cwep;
								_cfg = _type call fnc_getConfig;
								_displayName = getText (configFile >> _cfg >> _type >> 'displayName');
								
								_log3a = format[' %1 [%2] (%3/%4)',_displayName,_cwep,_cammo,_cmags];
								['<t align=''left'' size=''0.5'' color=''#A90F68''>'+_log3a+'</t>',safezoneX+0.2,_YPOS,0.3,0,0,_id] spawn bis_fnc_dynamicText;
								
								_id = _id - 1;
								_YPOS = _YPOS - 0.03;
							} forEach _cwepsV;
						};
					};
				};
				
				
				_ct = cursorTarget;
				if(!isNull _ct) then
				{
					if(getPlayerUID _ct != '') then
					{
						_cwep_ct = currentWeapon _ct;
						_cammo_ct = _ct ammo _cwep_ct;
						_cmags_ct = {currentMagazine _ct == _x} count magazines _ct;
						
						_log4 = format['%1 (%2) @%3 SPD %4',name _ct,getPlayerUID _ct,mapGridPosition _ct,abs(speed _ct)];
						['<t align=''left'' size=''0.5'' color=''#B80B36''>'+_log4+'</t>',safezoneX+0.2,safezoneY+0.545,0.3,0,0,3036] spawn bis_fnc_dynamicText;
						
						_log5 = format['Blood: %1  Humanity: %2  Distance: %3m',(_ct getVariable['USEC_BloodQty',12000]),(_ct getVariable['humanity',0]),round(cameraOn distance _ct)];
						['<t align=''left'' size=''0.5'' color=''#B80B36''>'+_log5+'</t>',safezoneX+0.2,safezoneY+0.575,0.3,0,0,3037] spawn bis_fnc_dynamicText;
						
						_type = _cwep_ct;
						_cfg = _type call fnc_getConfig;
						_displayName = getText (configFile >> _cfg >> _type >> 'displayName');
						_pic = getText (configFile >> _cfg >> _type >> 'picture');
						_log6 = format[' %1 [%2] (%3/%4)',_displayName,_cwep_ct,_cammo_ct,_cmags_ct];
						['
						<img size=''0.75'' image='''+_pic+''' align=''left''/>
						<t align=''left'' size=''0.5'' color=''#B80B36''>'+_log6+'</t>
						',
						safezoneX+0.2,safezoneY+0.605,0.3,0,0,3038] spawn bis_fnc_dynamicText;
					}
					else
					{
						_type = typeOf _ct;
						_cfg = _type call fnc_getConfig;
						_displayName = getText (configFile >> _cfg >> _type >> 'displayName');
						_log4 = format['%1 [%2] @%3',_displayName,_type,mapGridPosition _ct];
						['<t align=''left'' size=''0.5'' color=''#B80B36''>'+_log4+'</t>',safezoneX+0.2,safezoneY+0.545,0.3,0,0,3036] spawn bis_fnc_dynamicText;
						
						_log5 = format['Health: %1 - Distance: %2m',(1-(damage _ct))*100,round(cameraOn distance _ct)];
						['<t align=''left'' size=''0.5'' color=''#B80B36''>'+_log5+'</t>',safezoneX+0.2,safezoneY+0.575,0.3,0,0,3037] spawn bis_fnc_dynamicText;
						
						['',0,0,1,0,0,3038] spawn bis_fnc_dynamicText;
					};
					
					_vehCT = vehicle _ct;
					if((_vehCT isKindOf 'LandVehicle') || (_vehCT isKindOf 'Air') || (_vehCT isKindOf 'Ship') || (_vehCT isKindOf 'Static')) then
					{
						_cwepsV = weapons _vehCT;
						_cwepsV = _cwepsV - ['CarHorn'];
						_cwepsV = _cwepsV - ['MiniCarHorn'];
						_cwepsV = _cwepsV - ['SportCarHorn'];
						_cwepsV = _cwepsV - ['TruckHorn'];
						if(count _cwepsV > 0) then
						{
							_id = 3039;
							_YPOS = safezoneY+0.655;
							
							{
								_cwep = _x;
								_cammo = _vehCT ammo _cwep;
								_cmags = {currentMagazine _vehCT == _x} count magazines _vehCT;
								
								_type = _cwep;
								_cfg = _type call fnc_getConfig;
								_displayName = getText (configFile >> _cfg >> _type >> 'displayName');
								
								_log6a = format[' %1 [%2] (%3/%4)',_displayName,_cwep,_cammo,_cmags];
								['<t align=''left'' size=''0.5'' color=''#A90F68''>'+_log6a+'</t>',safezoneX+0.2,_YPOS,0.3,0,0,_id] spawn bis_fnc_dynamicText;
								
								_id = _id + 1;
								_YPOS = _YPOS + 0.03;
							} forEach _cwepsV;
						};
					};
				};
			};
			[] spawn remove_spec_000;
		};
	};
	adminkill =
	{
		{
			if(name _x == _this select 0) then
			{
				PVAH_AdminReq = [4,player,_x];
				publicVariableServer "PVAH_AdminReq";
				hint format["Killing %1", _this select 0];
				
				_sl = format["%1 Adminkilled %2",name player, _this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminSlap = 
	{
		{
			if(name _x == _this select 0) then
			{
				PVAH_AdminReq = [21,player,_x];
				publicVariableServer "PVAH_AdminReq";
				hint format["Slap %1", _this select 0];
				
				_sl = format["%1 Slaps %2",name player, _this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminBurn =
	{
		{
			if(name _x == _this select 0) then
			{
				PVAH_AdminReq = [111,player,_x];
				publicVariableServer "PVAH_AdminReq";
				hint format["Burning %1 ...", _this select 0];
				
				_sl = format["%1 burning %2 ...",name player,_this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminFDisconnect =
	{
		{
			if(name _x == _this select 0) then
			{
				PVAH_AdminReq = [10,player,_x];
				publicVariableServer "PVAH_AdminReq";
				hint format["Disconnect %1", _this select 0];
				
				_sl = format["%1 Disconnected %2",name player, _this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminremovegear = 
	{
		{
			if(name _x == _this select 0) then
			{
				PVAH_AdminReq = [8,player,_x];
				publicVariableServer "PVAH_AdminReq";
				hint format["%1 Gear Removed", _this select 0];
				
				_sl = format["%1 Removes %2 Gear",name player, _this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminmsg =
	{
		createDialog 'RscDisplayPassword';
		ctrlSetText [1001,'BroadCast Message Plugin'];
		ctrlSetText [101,''];
		ctrlshow [1002,false];
		buttonSetAction [1,'PVAH_AdminReq = [9, player, toArray(ctrlText 101)]; publicVariableServer ''PVAH_AdminReq'';'];
	};
	adminmsg2 =
	{
		createDialog 'RscDisplayPassword';
		ctrlSetText [1001,'BroadCast Message Plugin'];
		ctrlSetText [101,''];
		ctrlshow [1002,false];
		buttonSetAction [1,'PVAH_AdminReq = [91, player, toArray(ctrlText 101), ''#FFCC00'']; publicVariableServer ''PVAH_AdminReq'';'];
	};
	admint2me =
	{
		{
			if(name _x == _this select 0) then
			{
				_pos = getPosATL player;
				_dir = getDir player;
				_distance = 5;
				_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),(_pos select 2)];
				(vehicle _x) setDir _dir;
				PVAH_AdminReq = [1,player,_x,_pos];publicVariableServer 'PVAH_AdminReq';
				hint format["%1 Moved to %2",name _x, name player];
				cutText [format["%1 Moved to %2",name _x, name player], "PLAIN"];
				
				_sl = format["%1 Moved to %2",name _x, name player];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	admintele =
	{
		adminport_prevLoc =
		{
			(vehicle player) setPosATL prevLoc;
			{player reveal _x;} forEach (player nearObjects ['All',25]);
			prevLoc = nil;
		};
		fnc_adminKeybinds2 =
		{
			_keyDown = _this select 1;
			if(_keyDown == 14) then
			{
				call adminport_prevLoc;
			};
		};
		if(!isNil 'adminKeybinds2') then {(findDisplay 46) displayRemoveEventHandler ['KeyDown', adminKeybinds2];};
		adminKeybinds2 = (findDisplay 46) displayAddEventHandler ['KeyDown','_this call fnc_adminKeybinds2;false;'];
		if(isNil 'prevLoc') then
		{
			prevLoc = getPosATL player;
		};
		{
			if(name _x == _this select 0) then
			{
				_pos = getPosATL (vehicle _x);
				_dir = direction (vehicle _x);
				_distance = -1;
				if(player != vehicle player) then {_distance = -8;};
				_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),(_pos select 2)];
				(vehicle player) setPosATL _pos;
				(vehicle player) setDir _dir;
				{player reveal _x;} forEach (player nearObjects ['All',25]);
				
				hint format['Moving to %1 - press BACKSPACE to revert teleport',name _x];
				cutText [format['Moving to %1\npress BACKSPACE to revert teleport',name _x], 'PLAIN'];
				_sl = format['%1 Moving to %2',name player,_this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminsveh =
	{
		_dir = getdir vehicle player;
		_pos = getPos vehicle player;
		_pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
		PVAH_AdminReq = [0, player, _this select 0, _pos];
		publicVariableServer "PVAH_AdminReq";
		
		cutText [format["SPAWNED: %1 @%2",_this select 0,_pos], "PLAIN DOWN"];
	};
	adminsvehhive =
	{
		_class = _this select 0;
		_dir = getdir vehicle player;
		_pos = getPos vehicle player;
		_pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
		_worldspace = [_dir,_pos];
		
		if(MOD_EPOCH) then
		{
			_keyColor = ["Green","Red","Blue","Yellow","Black"] call BIS_fnc_selectRandom;
			_keyNumber = (floor(random 2500)) + 1;
			_keySelected = format[("ItemKey%1%2"),_keyColor,_keyNumber];
			_isKeyOK = 	isClass(configFile >> "CfgWeapons" >> _keySelected);
			_config = _keySelected;
			_isOk = [player,_config] call BIS_fnc_invAdd;
			
			PVAH_AdminReq = [-3, player, _class, _worldspace,_keySelected];
			publicVariableServer "PVAH_AdminReq";
			cutText [format["HIVESPAWNED: %1 @%2\n%3 added to toolbelt.",_class,_worldspace,_keySelected], "PLAIN DOWN"];
		}
		else
		{
			PVAH_AdminReq = [-1, player, _class, _pos];
			publicVariableServer "PVAH_AdminReq";
			cutText [format["HIVESPAWNED: %1 @%2",_class,_worldspace], "PLAIN DOWN"];
		};
	};
	admin_fillobj =
	{
		inSub = true;
		_ctrl = -1 call getControl;
		_ctrl ctrlSetPosition [safezoneXAbs + 0.01, safezoneY + 0.07, ((0.485)*0.65) *2, (safeZoneH - 0.07 - 0.03)*0.65];
		_ctrl ctrlSetScale 1.55;
		_ctrl ctrlCommit 0;
		
		_ctrl = 1 call getControl;
		_ctrl ctrlSetFont "TahomaB";
		_ctrl ctrlSetPosition [safezoneXAbs + 0.01, (safezoneY + 0.07), (0.485)*0.65, ((safeZoneH - 0.07 - 0.03)*0.65)];
		_ctrl ctrlSetScale 1.55;
		_ctrl ctrlCommit 0;
		
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		_ctrl ctrlSetPosition [safezoneXAbs + 0.5, (safezoneY + 0.07), (0.485)*0.65, ((safeZoneH - 0.07 - 0.03)*0.65)];
		_ctrl ctrlSetScale 1.55;
		_ctrl ctrlCommit 0;
		
		if(isNil 'GLOBAL_OBJECTTYPE') then {GLOBAL_OBJECTTYPE = '';};
		if(isNil 'infiSTAR_showOBJ') then
		{
			infiSTAR_showOBJ =
			{
				_type = lbtext [2, (lbCurSel 2)];
				if((_type isKindOf 'Building') && (str _type != str GLOBAL_OBJECTTYPE)) then
				{
					_distance = 18;
					_dir = getdir player;
					_pos = getPos player;
					_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),0];
					
					_obj = _type createVehicleLocal _pos;
					[_obj] spawn {
						_obj = _this select 0;
						waitUntil {isNull finddisplay 3030};
						deleteVehicle _obj;
					};
					
					_obj setPosATL _pos;
					_obj setDir (_dir + 180);
					
					if(!isNil 'GLOBAL_OBJECT') then {deleteVehicle GLOBAL_OBJECT;};
					GLOBAL_OBJECT = _obj;
				};
				GLOBAL_OBJECTTYPE = _type;
			};
			_ctrl ctrlSetEventHandler ["LBSelChanged", "call infiSTAR_showOBJ;"];
		};
		_spwx = "['%1'] call adminsobj;";
		adminadd = [];
		call admin_fillsubsss;
		call admin_fillSpawnMenuFILL;
		adminadd = adminadd + ["--- Buildings","","0","0","0","0",[0,0.8,1,1]];
		adminadd = adminadd + ["  START SEARCH  (type in chat - searching stops when chat is closed)","['adminBuildings'] spawn fnc_infiSTAR_search","0","0","0","0",[0,0.8,1,1]];
		{
			adminadd = adminadd + [_x,format[_spwx,_x],"0","0","0","0",[]];
		} forEach ALL_OBJ_TO_SEARCH;
		call admin__FILL_MENUS;
	};
	adminsobj =
	{
		_classname = _this select 0;
		if(!isNil 'GLOBAL_OBJECT') then {
			if(!isNull GLOBAL_OBJECT) then {
				detach GLOBAL_OBJECT;
				GLOBAL_OBJECT = nil;
			};
		};
		closeDialog 1;
		GLOBAL_OFFSET = getArray (configFile >> 'CfgVehicles' >> _classname >> 'offset');
		if((count GLOBAL_OFFSET) <= 0) then {GLOBAL_OFFSET = [0,15,0];};
		_dir = getDir player;
		_pos = getPosATL player;
		_pos = [(_pos select 0) + 15 *sin(_dir),(_pos select 1) + 15 *cos(_dir),0];
		GLOBAL_OBJECT = createVehicle [_classname, _pos, [], 0, 'CAN_COLLIDE'];
		GLOBAL_OBJECT attachTo [player,GLOBAL_OFFSET];
		_key = '';
		{
			_x = _x * 10;
			if( _x < 0 ) then { _x = _x * -10 };
			_key = _key + str(round(_x));
		} count _pos;
		_key = _key + str(round(_dir));
		GLOBAL_OBJECT setVariable['ObjectID', '0', true];
		GLOBAL_OBJECT setVariable['ObjectUID', _key, true];
		GLOBAL_POS = _pos;
		systemChat format['%1: constructing %2 @%3',round time,_classname,_pos];
		[] spawn fnc_HelpConstruct;
	};
	fnc_ConstructKeyBinds =
	{
		if(isNil 'GLOBAL_OBJECT') exitWith {};
		if(isNull GLOBAL_OBJECT) exitWith {};
		detach GLOBAL_OBJECT;
		private ['_key','_shift','_ctrl','_alt'];
		_key = _this select 1;
		_shift = _this select 2;
		_ctrl = _this select 3;
		_alt = _this select 4;
		if(_key == 16) then
		{
			['Left'] spawn fnc_LeftRight;
		};
		if(_key == 18) then
		{
			['Right'] spawn fnc_LeftRight;
		};
		if(_key == 200) then
		{
			['UP'] spawn fnc_UpDown;
		};
		if(_key == 201) then
		{
			['UP'] spawn fnc_UpDown;
		};
		if(_key == 208) then
		{
			['DOWN'] spawn fnc_UpDown;
		};
		if(_key == 209) then
		{
			['DOWN'] spawn fnc_UpDown;
		};
		if(_key == 209) then
		{
			['DOWN'] spawn fnc_UpDown;
		};
		if(_key == 15) then
		{
			_pos = getPosATL GLOBAL_OBJECT;
			_pos = [_pos select 0,_pos select 1,0];
			GLOBAL_OBJECT setPosATL _pos;
		};
		if(_key == 54) then
		{
			[GLOBAL_LAST_OBJECT] call adminsobj;
		};
		if(_key == 57) then
		{
			systemChat format['%1: %2 constructed @%3!',round time,typeOf GLOBAL_OBJECT,GLOBAL_POS];
			GLOBAL_LAST_OBJECT = typeOf GLOBAL_OBJECT;
			GLOBAL_OBJECT = nil;
		};
		{player reveal _x;} forEach (player nearObjects ['All',75]);
	};
	if(!isNil 'ConstructKeyBinds') then {(findDisplay 46) displayRemoveEventHandler ['KeyDown', ConstructKeyBinds];ConstructKeyBinds = nil;};
	ConstructKeyBinds = (findDisplay 46) displayAddEventHandler ['KeyDown','_this call fnc_ConstructKeyBinds;false;'];
	(findDisplay 46) displayRemoveAllEventHandlers 'MouseZChanged';
	(findDisplay 46) displayAddEventHandler ['MouseZChanged','_this call fnc_ForwardBack;false;'];
	fnc_ForwardBack =
	{
		if(isNil 'GLOBAL_OBJECT') exitWith {};
		if(isNull GLOBAL_OBJECT) exitWith {};
		_num = _this select 1;
		_num = (_num/-8);
		_dir = getDir GLOBAL_OBJECT;
		_pos = getPosATL GLOBAL_OBJECT;
		_pos = [(_pos select 0) - _num *sin(_dir),(_pos select 1) - _num *cos(_dir),(_pos select 2)];
		GLOBAL_OBJECT setPosATL _pos;
		GLOBAL_POS = getPosATL GLOBAL_OBJECT;
	};
	fnc_UpDown =
	{
		if(isNil 'GLOBAL_OBJECT') exitWith {hint 'GLOBAL_OBJECT not defined';};
		if(isNull GLOBAL_OBJECT) exitWith {hint 'GLOBAL_OBJECT is Null';};
		GLOBAL_POS = getPosATL GLOBAL_OBJECT;
		if(_this select 0 == 'UP') then
		{
			GLOBAL_POS = [GLOBAL_POS select 0,GLOBAL_POS select 1,(GLOBAL_POS select 2) + 0.05];
		};
		if(_this select 0 == 'DOWN') then
		{
			GLOBAL_POS = [GLOBAL_POS select 0,GLOBAL_POS select 1,(GLOBAL_POS select 2) - 0.05];
		};
		GLOBAL_OBJECT setPosATL GLOBAL_POS;
	};
	fnc_LeftRight =
	{
		if(isNil 'GLOBAL_OBJECT') exitWith {hint 'GLOBAL_OBJECT not defined';};
		if(isNull GLOBAL_OBJECT) exitWith {hint 'GLOBAL_OBJECT is Null';};
		GLOBAL_POS = getPosATL GLOBAL_OBJECT;
		GLOBAL_DIR = getDir GLOBAL_OBJECT;
		if(_this select 0 == 'Right') then
		{
			GLOBAL_DIR = GLOBAL_DIR + 2;
		};
		if(_this select 0 == 'Left') then
		{
			GLOBAL_DIR = GLOBAL_DIR - 2;
		};
		GLOBAL_OBJECT SETDIR GLOBAL_DIR;
		GLOBAL_OBJECT setPosATL GLOBAL_POS;
	};
	fnc_HelpConstruct = {
		["
		<t align='left' size='0.5' color='#008fff'>Mouse Wheel - Move foward/back</t><br/>
		<t align='left' size='0.5' color='#008fff'>Tab to set Object on the Ground</t><br/>
		<t align='left' size='0.5' color='#008fff'>Page Up - Move object up</t><br/>
		<t align='left' size='0.5' color='#008fff'>Page Down - Move object down</t><br/>
		<t align='left' size='0.5' color='#008fff'>Q - Rotate object left</t><br/>
		<t align='left' size='0.5' color='#008fff'>E - Rotate object right</t><br/>
		<t align='left' size='0.5' color='#008fff'>Spacebar - Place Object</t><br/>
		<t align='left' size='0.5' color='#008fff'>Insert - Save Object</t>
		",0,safezoneY,60,0,0,3016] spawn bis_fnc_dynamicText;
	};
	adminUncon =
	{
		{
			if(name _x == _this select 0) then
			{
				PVAH_AdminReq = [11,player,_x];
				publicVariableServer "PVAH_AdminReq";
				hint format["Knocked %1 out...", _this select 0];
				
				_sl = format["%1 Knocks %2 out...",name player,_this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminFreeze =
	{
		{
			if(name _x == _this select 0) then
			{
				PVAH_AdminReq = [112,player,_x];
				publicVariableServer "PVAH_AdminReq";
				hint format["Freezing %1", _this select 0];
				
				_sl = format["%1 Froze %2",name player,_this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminUnFreeze =
	{
		{
			if(name _x == _this select 0) then
			{
				PVAH_AdminReq = [113,player,_x];
				publicVariableServer "PVAH_AdminReq";
				hint format["Un-Freezing %1", _this select 0];
				
				_sl = format["%1 Un-Froze %2",name player,_this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminHitVeh =
	{
		disableSerialization;
		_name = _this select 0;
		_hitpoint = _this select 1;
		_damage = _this select 2;
		if(_name == '') then {_name = name player;};
		if(_hitpoint in ['FIND']) then
		{
			inSub = true;
			_ctrl = 2 call getControl;
			lbclear _ctrl;
			_ctrl ctrlSetFont "TahomaB";
			adminadd = [];
			call admin_fillsubsss;
			
			_veh = objNull;
			_nametarget = call fnc_admin_call_for_name;
			{
				if(!isNull _x) then
				{
					if(getPlayerUID _x != "") then
					{
						if(name _x == _nametarget) then
						{
							_veh = vehicle _x;
						};
					};
				};
			} forEach playableUnits;
			if(isNull _veh) then
			{
				_veh = vehicle player;
			};
			_getHitpoints = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\vehicle_getHitpoints.sqf";
			_hitPoints = _veh call _getHitpoints;
			
			_spwx = "[call fnc_admin_call_for_name,'%1',1] spawn adminHitVeh;";
			{
				adminadd = adminadd + ["  "+_x,format[_spwx,_x],"0","0","0","0",[0.99,0.8,0.8,1]];
			} forEach _hitpoints;
			call admin__FILL_MENUS;
		}
		else
		{
			if(_hitpoint == 'HitFuel') then
			{
				_damage = 0.7;
			};
			{
				if(name _x == _name) then
				{
					_vehicle = vehicle _x;
					
					PVAH_AdminReq = [110,player,_x,_hitpoint,_damage];
					publicVariableServer 'PVAH_AdminReq';
					hint format['%3 of %1(%2) with %4 damage',_name,typeOf _vehicle,_hitpoint,_damage];
					
					_sl = format['%1 %4 %2(%3) with %5 damage',name player,_name,typeOf _vehicle,_hitpoint,_damage];
					PVAH_WriteLogReq = [player,toArray _sl];
					publicVariableServer 'PVAH_WriteLogReq';
				};
			} forEach playableUnits;
		};
	};
	admin_del_bxs =
	{
		PVAH_AdminReq = [14,player];
		publicVariableServer "PVAH_AdminReq";
		
		hint "deleting boxes..";
		
		_sl = format["%1 deleted boxes",name player];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	adminDrug = 
	{
		{
			if(name _x == _this select 0) then
			{
				PVAH_AdminReq = [15,player,_x];
				publicVariableServer "PVAH_AdminReq";
				hint format["Drugging %1...", _this select 0];
				
				_sl = format["%1 drugged %2",name player,_this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminSuicide =
	{
		{
			if(name _x == _this select 0) then
			{
				PVAH_AdminReq = [22,player,_x];
				publicVariableServer "PVAH_AdminReq";
				hint format["Suiciding %1", _this select 0];
				
				_sl = format["%1 Suiciding %2",name player,_this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminClearBan =
	{
		PVAH_AdminReq = [16,player];
		publicVariableServer "PVAH_AdminReq";
		hint "Bans cleared!";
		
		_sl = format["%1 cleared Bans",name player];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	adminKick =
	{
		{
			if(name _x == _this select 0) then
			{
				PVAH_AdminReq = [17,player,_x];
				publicVariableServer "PVAH_AdminReq";
				hint format["Kicked %1...", _this select 0];
				
				_sl = format["%1 Kicked %2",name player,_this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};	
	adminbanTemp =
	{
		{
			if(name _x == _this select 0) then
			{
				PVAH_AdminReq = [18,player,_x,1];
				publicVariableServer "PVAH_AdminReq";
				hint format["TempBanned %1...", _this select 0];
				
				_sl = format["%1 TempBanned %2",name player,_this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminBanPerm =
	{
		{
			if(name _x == _this select 0) then
			{
				PVAH_AdminReq = [18,player,_x,2];
				publicVariableServer "PVAH_AdminReq";
				hint format["Banned %1...", _this select 0];
				
				_sl = format["%1 Banned %2",name player,_this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
	adminUnBan =
	{
		_uid = _this select 0;
		_name = _this select 1;
		
		PVAH_AdminReq = [182,player,_uid,_name];
		publicVariableServer "PVAH_AdminReq";
		hint format["UnBanned %1 (%2)",_name,_uid];
		
		_sl = format["%1 UnBanned %2 (%3)",name player,_name,_uid];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	adminPlayerDeaths =
	{
		if(isNil "dayzPlayerDeathsResult") then {dayzPlayerDeathsResult = [];};
		"dayzPlayerDeathsResult" addPublicVariableEventHandler
		{
			if((count dayzPlayerDeathsResult) > 0) then
			{
				call EpochDeathBoardLoad;
			}
			else
			{
				cutText ["No recent Deaths.", "PLAIN DOWN"];
			};
		};
		if(isNil "PVDZE_plr_DeathBResult") then {PVDZE_plr_DeathBResult = [];};
		"PVDZE_plr_DeathBResult" addPublicVariableEventHandler
		{
			if((count PVDZE_plr_DeathBResult) > 0) then
			{
				call EpochDeathBoardLoad;
			}
			else
			{
				cutText ["No recent Deaths.", "PLAIN DOWN"];
			};
		};
		PVAH_AdminReq = [23,player];
		publicVariableServer "PVAH_AdminReq";
		hint "Loading EPOCH-DEATHBOARD..";
	};
	admin_removePlotPoles =
	{
		private ['_objs'];
		_objs = (nearestObjects [player, ['Plastic_Pole_EP1_DZ'], 30]);
		if(count _objs > 0) then
		{
			{
				PVAH_AdminReq = [-2,player,_x];
				publicVariableServer 'PVAH_AdminReq';
			} forEach _objs;
			_log = format['<infiSTAR.de>   %1 - PlotPoles within 30m deleted',count _objs];
			systemChat _log;
			hint _log;
		}
		else
		{
			_log = '<infiSTAR.de>   No Plotpoles within 30m found';
			systemChat _log;
			hint _log;
		};
		
		_sl = format['%1 used Remove Plot Poles @%2',name player,mapGridPosition player];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	admin_removeNets =
	{
		private ['_objs'];
		_objs = (nearestObjects [player, ['DesertLargeCamoNet_DZ','ForestLargeCamoNet_DZ','DesertCamoNet_DZ','ForestCamoNet_DZ','MAP_Camo_Box','MAP_CamoNet_EAST','MAP_CamoNet_EAST_var1','MAP_CamoNetB_EAST','MAP_CamoNet_NATO','MAP_CamoNet_NATO_var1','MAP_CamoNetB_NATO','MAP_Pristresek'], 30]);
		if(count _objs > 0) then
		{
			{
				PVAH_AdminReq = [-2,player,_x];
				publicVariableServer 'PVAH_AdminReq';
			} forEach _objs;
			_log = format['<infiSTAR.de>   %1 - Nets within 30m deleted',count _objs];
			systemChat _log;
			hint _log;
		}
		else
		{
			_log = '<infiSTAR.de>   No Nets within 30m found';
			systemChat _log;
			hint _log;
		};
		
		_sl = format['%1 used Remove Nets',name player];
		PVAH_WriteLogReq = [player,toArray _sl];
		publicVariableServer 'PVAH_WriteLogReq';
	};
	admin_save_target =
	{
		if(!MOD_EPOCH) exitWith {hint 'fnc EPOCH only';};
		
		SAVE_THIS = nil;
		_obj = cursorTarget;
		if(isNull _obj) exitWith {hint "target doesn't exist";cutText ["target doesn't exist", "PLAIN"];};
		adminSaveNOW = {
			if(!isNull SAVE_THIS) then
			{
				systemChat format["<infiSTAR.de>:  %1  saved at [%2,%3]",typeOf SAVE_THIS,getDir SAVE_THIS,getPosATL SAVE_THIS];
				PVAH_AdminReq = [26,player,SAVE_THIS];
				publicVariableServer "PVAH_AdminReq";
			};
		};
		if(!isNull _obj) then
		{
			SAVE_THIS = nil;
			SAVE_THIS = _obj;
			systemChat format["<infiSTAR.de>: save  %1  at [%2,%3]?",typeOf SAVE_THIS,getDir SAVE_THIS,getPosATL SAVE_THIS];
			adminSaveX = 
			[
				["",true],
				[(format["%1-[%2,%3]",typeOf SAVE_THIS,getDir SAVE_THIS,getPosATL SAVE_THIS]), [-1], "", -5, [["expression", ""]], "1", "0"],
				["Save", [2], "", -5, [["expression", "[] spawn adminSaveNOW"]], "1", "1"],
				["Exit", [3], "", -5, [["expression", ""]], "1", "1"]
			];
			showcommandingMenu "#USER:adminSaveX";
		};
	};
	adminDelete =
	{
		DELETE_THIS = nil;
		_delete = cursorTarget;
		if(isNull _delete) exitWith {hint "target doesn't exist";cutText ["target doesn't exist", "PLAIN"];};
		adminDeleteX = 
		[
			["",true],
			[(format["%1",typeOf DELETE_THIS]), [-1], "", -5, [["expression", ""]], "1", "0"],
			["Delete", [2], "", -5, [["expression", "[] spawn adminDeleteNOW"]], "1", "1"],
			["Exit", [3], "", -5, [["expression", ""]], "1", "1"]
		];
		adminDeleteNOW = {
			if(!isNull DELETE_THIS) then
			{
				systemChat format["<infiSTAR.de>:  %1  DELETED",typeOf DELETE_THIS];
				PVAH_AdminReq = [-2,player,DELETE_THIS];
				publicVariableServer "PVAH_AdminReq";
			};
		};
		if(!isNull _delete) then
		{
			DELETE_THIS = nil;
			DELETE_THIS = _delete;
			systemChat format["<infiSTAR.de>: DELETE  %1  ?",typeOf DELETE_THIS];
			showcommandingMenu "#USER:adminDeleteX";
		};
	};
	BCBaseListOld =
	[
		[
			"base1",
			"Test Base",
			[0,23,0],
			[
				["CinderWallDoor_DZ",[0.0551758,-0.736328,3.37357],239.861],
				["MetalFloor_DZ",[2.53516,0.763672,6.58356],59.9374],
				["MetalFloor_DZ",[2.54492,0.763672,3.19955],59.8886],
				["MetalFloor_DZ",[-2.00488,-1.83691,6.58356],239.937],
				["MetalFloor_DZ",[-2.00488,-1.83691,3.19955],239.889],
				["CinderWall_DZ",[-4.20508,1.36328,3.38358],150.186],
				["CinderWallDoorSmall_DZ",[-2.5249,3.76367,3.38358],239.993],
				["FireBarrel_DZ",[4.40527,1.86328,3.43457],59.2191],
				["CinderWallDoor_DZ",[4.78516,2.06348,-0.000427246],59.9374],
				["MetalFloor_DZ",[-0.0947266,5.26367,6.58356],239.937],
				["MetalFloor_DZ",[-0.0947266,5.26367,3.19955],59.8886],
				["WoodSmallWallThird_DZ",[4.84521,2.06348,3.38358],239.847],
				["WoodSmallWallThird_DZ",[4.89502,1.96289,3.38358],59.8468],
				["MetalFloor_DZ",[-4.63477,2.66309,3.19955],239.889],
				["MetalFloor_DZ",[-4.63477,2.66309,6.58356],59.9374],
				["CinderWall_DZ",[-0.214844,-5.63672,3.38358],329.709],
				["CinderWallDoorSmall_DZ",[2.71484,-5.23633,3.39355],59.7286],
				["MetalFloor_DZ",[5.16504,-3.83691,6.58356],239.937],
				["MetalFloor_DZ",[5.1748,-3.83691,3.19955],59.8886],
				["MetalFloor_DZ",[0.625,-6.43652,6.58356],59.9374],
				["MetalFloor_DZ",[0.635254,-6.43652,3.19955],239.889],
				["CinderWall_DZ",[6.18506,2.76367,3.38358],60.0843],
				["CinderWallDoorSmall_DZ",[2.33496,6.36328,-0.000427246],59.7633],
				["CinderWall_DZ",[-1.50488,7.46289,3.38956],329.972],
				["CinderWall_DZ",[-1.54492,7.46289,-0.000427246],150.363],
				["CinderWall_DZ",[-6.04492,4.76367,-0.000427246],148.928],
				["CinderWallDoorSmall_DZ",[7.34521,-2.33691,0.009552],59.8816],
				["CinderWallHalf_DZ",[-6.23486,4.66309,3.38956],149.364],
				["MetalFloor_DZ",[7.08496,3.36328,6.58356],59.9374],
				["MetalFloor_DZ",[-6.54492,-4.53711,3.19955],239.889],
				["MetalFloor_DZ",[-6.54492,-4.53711,6.58356],239.937],
				["MetalFloor_DZ",[5.36523,6.36328,3.18356],59.7772],
				["CinderWall_DZ",[8.55518,1.06348,-0.000427246],149.939],
				["CinderWall_DZ",[-8.59473,-1.13672,3.38358],150.109],
				["MetalFloor_DZ",[8.90527,0.263672,3.19357],59.8189],
				["CinderWall_DZ",[6.375,-6.23633,3.37958],149.81],
				["CinderWall_DZ",[6.375,-6.23633,-0.000427246],329.81],
				["Sandbag1_DZ",[6.68506,6.16309,-0.00143433],329.956],
				["MetalFloor_DZ",[4.44482,7.96289,3.19955],59.8886],
				["MetalFloor_DZ",[4.45508,7.96289,6.58356],59.9374],
				["MetalFloor_DZ",[-9.1748,0.0634766,6.58356],239.937],
				["MetalFloor_DZ",[-9.1748,0.0634766,3.19955],239.889],
				["CinderWallHalf_DZ",[1.60498,-9.03711,3.37958],149.81],
				["CinderWall_DZ",[1.60498,-9.03711,-0.000427246],329.81],
				["CinderWall_DZ",[-4.58496,-8.13672,3.38358],329.818],
				["CinderWallDoorSmall_DZ",[7.10498,6.36328,3.39755],330.226],
				["MetalFloor_DZ",[8.5752,4.26367,3.19357],59.7494],
				["MetalFloor_DZ",[8.70508,4.26367,6.58755],59.9444],
				["MetalFloor_DZ",[9.71484,-1.13672,6.58356],59.9374],
				["MetalFloor_DZ",[-3.90479,-9.03711,3.19955],239.889],
				["MetalFloor_DZ",[-3.91504,-9.03711,6.58356],239.937],
				["CinderWallDoorSmall_DZ",[9.78516,1.76367,3.39755],149.591],
				["WoodStairsSans_DZ",[9.64502,-3.23633,0.299561],149.952],
				["WoodSmallWallThird_DZ",[10.1748,-1.83691,3.37756],149.842],
				["WoodSmallWallThird_DZ",[10.2148,-1.73633,3.37756],329.842],
				["CinderWall_DZ",[3.24512,10.1631,-0.000427246],150.363],
				["CinderWall_DZ",[3.24512,10.1631,3.37958],330.363],
				["CinderWall_DZ",[-9.03516,-5.73633,-0.000427246],60.2108],
				["CinderWall_DZ",[-9.60498,-4.73633,3.38956],60.2249],
				["CinderWall_DZ",[-10.5649,2.16309,-0.000427246],150.057],
				["CinderWallHalf_DZ",[-10.5649,2.16309,3.37958],330.057],
				["CinderWall_DZ",[-8.23486,-7.13672,3.38956],60.0563],
				["CinderWall_DZ",[6.85498,9.16309,3.37958],60.0283],
				["CinderWall_DZ",[6.85498,9.16309,-0.000427246],240.028],
				["CinderWall_DZ",[-11.5552,-1.33691,-0.000427246],60.3165],
				["CinderWallHalf_DZ",[-11.5552,-1.33691,3.37958],240.317],
				["CinderWall_DZ",[11.1353,-3.43652,-0.000427246],329.81],
				["CinderWall_DZ",[11.1353,-3.43652,3.37958],149.81],
				["CinderWallHalf_DZ",[-2.60498,-11.4365,3.37958],150.089],
				["CinderWall_DZ",[-2.60498,-11.4365,-0.000427246],330.089],
				["CinderWallHalf_DZ",[10.7451,5.46289,3.37357],59.9723],
				["CinderWall_DZ",[12.0649,0.163086,3.37958],60.1405],
				["CinderWall_DZ",[12.0649,0.163086,-0.000427246],240.14],
				["CinderWall_DZ",[-6.29492,-10.5371,-0.000427246],60.2108],
				["CinderWallHalf_DZ",[-6.29492,-10.5371,3.37958],240.211],
				["WoodStairsSans_DZ",[12.2749,-1.63672,-2.20044],149.947]
			]
		],
		[
			"base2",
			"Another Base",
			[0,23,0],
			[
				["CinderWallDoor_DZ",[0.0551758,-0.736328,3.37357],239.861],
				["MetalFloor_DZ",[2.53516,0.763672,6.58356],59.9374]
			]
		]
	];
	if(isNil 'BCBaseList') then {BCBaseList = BCBaseListOld;};
	admin_BaseMenu =
	{
		if(isNil "BCCurrentBase") then {BCCurrentBase = [];};
		if((!isNil "TraderDialogLoadItemList") && (isNil "oTraderDialogLoadItemList")) then {oTraderDialogLoadItemList = TraderDialogLoadItemList;};
		if((!isNil "TraderDialogShowPrices") && (isNil "oTraderDialogShowPrices")) then {oTraderDialogShowPrices = TraderDialogShowPrices;};
		if((!isNil "TraderDialogSell") && (isNil "oTraderDialogSell")) then {oTraderDialogSell = TraderDialogSell;};
		if((!isNil "TraderDialogBuy") && (isNil "oTraderDialogBuy")) then {oTraderDialogBuy = TraderDialogBuy;};
		fn_BCInsert = {
			TraderDialogLoadItemList = {};
			TraderDialogShowPrices = {};
			TraderDialogSell = {};
			TraderDialogBuy = {
				systemChat str [lbCurSel 12000, lbCurSel 12001];
				[lbCurSel 12000, lbCurSel 12001] spawn {
					private ["_pindex", "_bindex", "_base", "_player", "_base_objects"];
					systemChat str _this;
					_pindex = _this select 0;
					_bindex = _this select 1;
					if(_pindex < 0 or _bindex < 0) exitWith {};
					_base = BCBaseList select _bindex;
					_player = BCNearbyList select _pindex;
					_attach_position = player modelToWorld (_base select 2);
					_attach_position set [2, getPosASL player select 2];
					_base_objects = [_base select 3, _attach_position, _player] call fn_BCCreateBase;
					[_base_objects] call fn_BCBuildbase;
				};
			};
			createdialog "TraderDialog";
			[] spawn {
				uiSleep 0.1;
				waitUntil {!dialog};
				uiSleep 0.1;
				if(!isNil "oTraderDialogLoadItemList") then {TraderDialogLoadItemList = oTraderDialogLoadItemList;};
				if(!isNil "oTraderDialogShowPrices") then {TraderDialogShowPrices = oTraderDialogShowPrices;};
				if(!isNil "oTraderDialogSell") then {TraderDialogSell = oTraderDialogSell;};
				if(!isNil "oTraderDialogBuy") then {TraderDialogBuy = oTraderDialogBuy;};
			};
			lbClear 12000;
			lbClear 12001;
			ctrlShow [12005, false];
			{
				lbAdd [12001, format["%1 (%2)", _x select 1, _x select 0]];
				true
			} count BCBaseList;
		 
			BCNearbyList = [];
			{
				if(!isNull _x) then
				{
					if(_x distance player < 50) then
					{
						BCNearbyList set [count BCNearbyList, _x];
						lbAdd [12000, format["%1", name _x]];
					};
				};
				true
			} count playableUnits;
		};
		fn_BCExport = {
			private ['_objects', '_position', '_distance', '_nearest_objects'];
			if(isNil 'BC_Center' or isNil 'BC_radius') exitWith
			{
				systemChat 'Center not set';
			};
			_objects = [];
			_position = BC_center;
			_distance = BC_radius;
			_nearest_objects = nearestObjects [[_position select 0, _position select 1], dayz_allowedObjects, _distance];
			diag_log text ('/' + '/ --------- Start Base Export --------- /' + '/');
			diag_log text 'if(isServer) then {';
			{
				private ['_obj_type', '_direction', '_obj_position', '_row','_vector'];
				_obj_type = typeOf _x;
				_direction = getDir _x;
				_obj_position = getPosASL _x;
				_objVector = [(vectorDir _x),(vectorUp _x)];
				_row = [_obj_type, _obj_position, [], 0, 'CAN_COLLIDE'];
				if((_obj_type != 'VaultStorageLocked') && (_obj_type != 'CinderWallDoorSmallLocked_DZ') && (_obj_type != '') && (_obj_type != 'LockboxStorageLocked') && (_obj_type != 'StorageShed_DZ') && (_obj_type != 'CinderWallDoorLocked_DZ') && (_obj_type != 'Land_DZE_GarageWoodDoorLocked') && (_obj_type != 'Land_DZE_LargeWoodDoorLocked') && (_obj_type != 'GunRack_DZ') && (_obj_type != 'Wooden_shed_DZ') && (_obj_type != 'WoodCrate_DZ') && (_obj_type != 'Sign_sphere100cm_EP1') && (_obj_type != 'Sign_arrow_down_large_EP1')) then {
					diag_log text '_bldObj = objNull;';
					diag_log text 'if(true) then {';
					diag_log text format['_bldObj = createVehicle %1;', _row];
					diag_log text format['_bldObj setDir %1;',_direction];
					diag_log text format['_bldObj setPosASL %1;',_obj_position];
					diag_log text format['_bldObj setVectorDirAndUp %1;',_objVector];
					diag_log text '};';
					diag_log text '';
				};
				_row set [count _row, _x];
				_objects set [count _objects, _row];
				true
			} count _nearest_objects;
			systemChat format['Exported %1 items', count _nearest_objects];
			diag_log text '};';
			diag_log text ('/' + '/ --------- End Base Export --------- /' + '/');
			BCCopiedBase = _objects;
			['<t size=''0.6''>Base exported to logs in SQF Format</t>',0,0.8,0.5,0,0,8] spawn BIS_fnc_dynamicText;
			showCommandingMenu '#USER:BCMainMenu';
			_objects
		};
		fn_BCSetCenter = {
			private ["_centerSign"];
			BC_radius = nil;
			BC_Center = getPosASL player;
			_centerSign = createVehicle ["Sign_arrow_down_large_EP1", [0,0,0], [], 0, "CAN_COLLIDE"];
			_centerSign setPosASL BC_Center;
			_centerSign spawn {uiSleep 30; deleteVehicle _this;};
			showcommandingMenu "#USER:BCMainMenu";
		};
		fn_BCSetRadius = {
			if(isNil "BC_Center") exitWith
			{
				systemChat "Center not set";
			};
			BC_radius = [player, BC_center] call BIS_fnc_distance2D;
			if(BC_radius == 0) exitWith
			{
				systemChat "Radius is 0";
			};
			showcommandingMenu "#USER:BCMainMenu";
			[] spawn {
				private ["_pos", "_radius", "_angle", "_distance", "_count", "_step", "_count", "_step", "_objects"];
				_angle = 0;
				_count = round((2 * pi * BC_radius) / 2);
				_objects = [];
				for "_x" from 0 to _count do
				{
					private["_a", "_b", "_obj"];
					_a = (BC_Center select 0) + (sin(_angle)*BC_radius);
					_b = (BC_Center select 1) + (cos(_angle)*BC_radius);
					_obj = createVehicle ["Sign_sphere100cm_EP1", [0,0,0], [], 0, "CAN_COLLIDE"];
					_obj setPosASL [_a, _b, BC_center select 2];
					_objects set [count _objects, _obj];
					_angle = _angle + (360/_count);
				};
				
				for "_x" from 0 to _count do
				{
					private["_a", "_b", "_obj"];
					_a = (BC_Center select 0) + (sin(_angle)*BC_radius);
					_b = (BC_Center select 2) + (cos(_angle)*BC_radius);
					_obj = createVehicle ["Sign_sphere100cm_EP1", [0,0,0], [], 0, "CAN_COLLIDE"];
					_obj setPosASL [_a, BC_center select 1, _b];
					_objects set [count _objects, _obj];
					_angle = _angle + (360/_count);
				};
				
				for "_x" from 0 to _count do
				{
					private["_a", "_b", "_obj"];
					_a = (BC_Center select 1) + (sin(_angle)*BC_radius);
					_b = (BC_Center select 2) + (cos(_angle)*BC_radius);
					_obj = createVehicle ["Sign_sphere100cm_EP1", [0,0,0], [], 0, "CAN_COLLIDE"];
					_obj setPosASL [BC_center select 0, _a, _b];
					_objects set [count _objects, _obj];
					_angle = _angle + (360/_count);
				};
				uiSleep 30;
				{ deleteVehicle _x; true } count _objects;
			};
		};
		fn_BCCopy = {
			private ["_objects", "_position", "_distance", "_nearest_objects"];
			if(isNil "BC_Center" or isNil "BC_radius") exitWith
			{
				systemChat "Center not set";
			};
			if(BC_radius == 0) exitWith
			{
				systemChat "Radius is 0";
			};
			_objects = [];
			_position = BC_center;
			_distance = BC_radius;
			_nearest_objects = nearestObjects [[_position select 0, _position select 1], dayz_allowedObjects, _distance];
			diag_log "========= Copying Objects [start] =========";
			{
				private ["_obj_type", "_direction", "_obj_position", "_relative_position", "_row"];
				_obj_type = typeOf _x;
				_direction = getDir _x;
				_obj_position = getPosASL _x;
				_relative_position = [
					(_obj_position select 0) - (_position select 0),
					(_obj_position select 1) - (_position select 1),
					(_obj_position select 2) - (_position select 2)
				];
				_row = [_obj_type, _relative_position, _direction];
				diag_log str(_row);
				_row set [count _row, _x];
				_objects set [count _objects, _row];
				true
			} count _nearest_objects;
			systemChat format["Copied %1 items", count _nearest_objects];
			diag_log "========= Copying Objects [end] =========";
			BCCopiedBase = _objects;
			["<t size='0.6'>Base copied to logs</t>",0,0.8,0.5,0,0,8] spawn BIS_fnc_dynamicText;
			showcommandingMenu "#USER:BCMainMenu";
			_objects
		};
		fn_BCPaste = {
			private ["_dimensions", "_attach_position", "_base_objects"];
			if(isNil "BCCopiedBase") exitWith
			{
				systemChat "Base not copied not set";
			};
			_dimensions = BCCopiedBase call fn_BCGetDimensions;
			_attach_position = player modelToWorld [0, ((_dimensions select 0) max (_dimensions select 1)), 0];
			diag_log str [0, ((_dimensions select 0) max (_dimensions select 1)), 0];
			_attach_position set [2, getPosASL player select 2];
			_base_objects = [BCCopiedBase, _attach_position] call fn_BCCreateBase;
			[_base_objects] call fn_BCBuildbase;
		};
		fn_BCDelete = {
			BCConfirmBaseDelete = [
				["",true],
				["Base Manager", [-1], "", -5, [], "1", "0"],
				["   by Maca134", [-1], "", -5, [], "1", "0"],
				["      infiSTAR.de edit", [-1], "", -5, [], "1", "0"],
				["Delete Objects in Radius?", [-1], "", -5, [], "1", "0"],
					["No", 	[2], "", -5, [["expression", ""]], "1", "1"],
					["Yes", 	[3], "", -5, [["expression", "[] spawn fn_BCConfirmDelete"]], "1", "1"]
			];
			showcommandingMenu "#USER:BCConfirmBaseDelete";
		};
		fn_BCConfirmDelete = {
			private ["_position", "_distance", "_nearest_objects"];
			if(isNil "BC_Center" or isNil "BC_radius") exitWith
			{
				systemChat "Center not set";
			};
			if(BC_radius == 0) exitWith
			{
				systemChat "Radius is 0";
			};
			_position = BC_center;
			_distance = BC_radius;
			
			
			_objs_to_delete = dayz_allowedObjects;
			_objs_to_delete = _objs_to_delete - ["VaultStorageLocked"];
			_objs_to_delete = _objs_to_delete - ["LockboxStorageLocked"];
			_nearest_objects = nearestObjects [[_position select 0, _position select 1], _objs_to_delete, _distance];
			
			uiSleep 1;
			PVAH_AdminReq = [-2,player,_nearest_objects];
			publicVariableServer "PVAH_AdminReq";
			
			[format["<t size='0.6'>Deleted %1 objects</t>", count _nearest_objects],0,0.8,0.5,0,0,8] spawn BIS_fnc_dynamicText;
		};
		fn_BCSaveToDb = {
			{
				PVAH_AdminReq = [26,player,_x];
				publicVariableServer "PVAH_AdminReq";
				true
			} count BCCurrentBase;
			[format["<t size='0.6'>Added %1 objects to database</t>", count BCCurrentBase],0,0.8,0.5,0,0,8] spawn BIS_fnc_dynamicText;
			BCCurrentBase = [];
		};
		fn_BCCancelBase = {
			{
				detach _x; deleteVehicle _x;
			} count BCCurrentBase;
			BCCurrentBase = [];
			["<t size='0.6'>Cancelled</t>",0,0.8,0.5,0,0,8] spawn BIS_fnc_dynamicText;
		};
		fn_BCCenter = {
			private ["_objects", "_ax", "_ay", "_az", "_total", "_thanks"];
			_thanks = _this;
			if(isNil '_thanks') exitWith {};
			_objects = [];
			_ax = 0;
			_ay = 0;
			_az = 0;
			{
				private ["_pos"];
				_pos = getPosASL _x;
				_ax = _ax + (_pos select 0);
				_ay = _ay + (_pos select 1);
				_az = _az + (_pos select 2);
			} count _thanks;
			_total = count _thanks;
			_center = [_ax / _total, _ay / _total, _az / _total];
			_center
		};
		fn_BCCreateBase = {
			private ["_objects", "_items", "_position", "_player"];
			_objects = [];
			_items = _this select 0;
			_position = _this select 1;
			if(count _this == 3) then {
				_player = _this select 2;
			};
			{
				private ["_object", "_orig_obj"];
				_object = createVehicle [_x select 0, [0,0,0], [], 0, "CAN_COLLIDE"];
				_object setPosASL [
					((_x select 1) select 0) + (_position select 0),
					((_x select 1) select 1) + (_position select 1),
					((_x select 1) select 2) + (_position select 2) 
				];
				_object attachTo [player];
				_object setDir ((_x select 2) - getDir player);
				if(count _x == 4) then {
					_orig_obj = _x select 3;
					_object setVariable["CharacterID", _orig_obj getVariable["CharacterID", ""], true];
				};
				if(!isNil "_player") then {
					_object setVariable["CharacterID", (_player getVariable["CharacterID","0"]), true];
				};
				_objects set [count _objects, _object];
				true
			} count _items;
			_objects
		};
		fn_BCBuildbase = {
			private ["_base_objects", "_finished", "_place"];
			_base_objects = _this select 0;
			{
				_x attachTo [player];
				true
			} count _base_objects;
			_finished = false;
			DZE_Q = false;
			DZE_Z = false;
			DZE_4 = false;
			DZE_6 = false;
			DZE_5 = false;
			DZE_cancelBuilding = false;
			_place = false;
			while {!_finished} do {
				private ["_player_direction"];
				["<t size='0.6'>SPACE: Place | Q/R: Rotate | PgUp/PgDn: Height</t>",0,0.8,0.5,0,0,8] spawn BIS_fnc_dynamicText;
				_player_direction = getDir player;
				if(DZE_Q or DZE_Z) then {
					{
						private ["_obj_direction", "_position"];
						detach _x;
						_obj_direction = getDir _x;
						_position = getPosASL _x;
						_position set [2, (_position select 2) + (if(DZE_Q) then {0.5} else {-0.5})];
						_x setPosASL _position;
						_x attachTo [player];
						_x setDir (_obj_direction - _player_direction);
						true
					} count _base_objects;
					DZE_Q = false;
					DZE_Z = false;
				};
				if(DZE_4 or DZE_6) then {
					private ["_center_position"];
					_center_position = _base_objects call fn_BCCenter;
					{
						private ["_position", "_obj_direction", "_dif_direction", "_new_direction", "_distance", "_rotated_position"];
						detach _x;
						_position = getPosASL _x;
						_obj_direction = ([_center_position, _position] call BIS_fnc_dirTo);
						_dif_direction = if(DZE_4) then {10} else {-10};
						_new_direction = _obj_direction + _dif_direction;
						_distance = [_center_position, _position] call BIS_fnc_distance2D;
						_obj_direction = getDir _x;
						_rotated_position = [_center_position, _distance, _new_direction] call BIS_fnc_relPos;
						_rotated_position set [2, _position select 2];
						_x setPosASL _rotated_position;
						_x attachTo [player];
						_x setDir (((_obj_direction - _player_direction) + _dif_direction) % 360);
						true
					} count _base_objects;
					DZE_4 = false;
					DZE_6 = false;
				};
				if(DZE_5) exitWith {
					_finished = true;
					_place = true;
				};
				if(DZE_cancelBuilding) exitWith {
					_finished = true;
					_place = false;
				};
			};
			{detach _x; true} count _base_objects;
			BCCurrentBase = _base_objects;
			if(!_place) then
			{
				call fn_BCCancelBase;
			};
		};
		fn_BCGetDimensions = {
			private ["_xmin", "_xmax", "_ymin", "_ymax"];
			_xmin = 0;
			_xmax = 0;
			_ymin = 0;
			_ymax = 0;
			{
				private ["_position"];
				_position = _x select 1;
				if((_position select 0) < _xmin) then {
					_xmin = _position select 0;
				};
				if((_position select 0) > _xmax) then {
					_xmax = _position select 0;
				};
				
				if((_position select 1) < _ymin) then {
					_ymin = _position select 1;
				};
				if((_position select 1) > _ymax) then {
					_ymax = _position select 1;
				};
				true
			} count _this;
			[abs _xmin + abs _xmax, abs _ymin + abs _ymax]
		};
		BCBaseSaveMenu = [
			["",true],
			["Base Manager", [-1], "", -5, [], "1", "0"],
			["   by Maca134", [-1], "", -5, [], "1", "0"],
			["      infiSTAR.de edit", [-1], "", -5, [], "1", "0"],
			["Save in DB?", 	[2], "", -5, [["expression", "[] spawn fn_BCSaveToDb"]], "1", "1"],
			["Exit", 	[3], "", -5, [["expression", "[] spawn fn_BCCancelBase"]], "1", "1"]
		];
		BCMainMenu =
		[
			["",true],
			["Base Manager", [-1], "", -5, [], "1", "0"],
			["   by Maca134", [-1], "", -5, [], "1", "0"],
			["      infiSTAR.de edit", [-1], "", -5, [], "1", "0"],
			["Insert", 		[2], "", -5, [["expression", "[] spawn fn_BCInsert"]], "1", "1"],
			["Export", 		[3], "", -5, [["expression", "[] spawn fn_BCExport"]], "1", "1"],
			["========", 	[-1], "", -5, [["expression", ""]], "1", "0"],
			["Set Center", 	[4], "", -5, [["expression", "[] spawn fn_BCSetCenter"]], "1", "1"],
			["Set Radius", 	[5], "", -5, [["expression", "[] spawn fn_BCSetRadius"]], "1", "1"],
			["========", 	[-1], "", -5, [["expression", ""]], "1", "0"],
			["Copy",		[6], "", -5, [["expression", "[] spawn fn_BCCopy"]], "1", "1"],
			["Paste", 		[7], "", -5, [["expression", "[] spawn fn_BCPaste"]], "1", "1"],
			["Save", [7], "#USER:BCBaseSaveMenu", -5, [["expression", ""]], "1", "1"],
			["Delete", 		[8], "", -5, [["expression", "[] spawn fn_BCDelete"]], "1", "1"]
		];
		showcommandingMenu "#USER:BCMainMenu";
	};
	if(isNil 'admin_announce') then {admin_announce = true;};
	fnc_showFoundSearch =
	{
		_foundarray = _this select 0;
		_what = _this select 1;
		inSub = true;
		_ctrl = 2 call getControl;
		_ctrl ctrlSetFont "TahomaB";
		lbclear _ctrl;
		if(_what == "weaponmags") then
		{
			isWep__i_n_f_i_S_T_A_R = true;
			isMag__i_n_f_i_S_T_A_R = true;
			_spwx = "['%1'] spawn adminweapon;";
			_ammo = "[] spawn ammo_current_wpn_admin;";
			_spAx = "['%1'] spawn adminmagazino;";
			adminadd = [];
			call admin_fillsubsss;
			call admin_fillSpawnMenuFILL;
			adminadd = adminadd + ["--- Ammo Current Wep",format[_ammo],"0","0","0","0",[0,0.8,1,1]];
			adminadd = adminadd + ["  START SEARCH  (type in chat - searching stops when chat is closed)","['weaponmags'] spawn fnc_infiSTAR_search","0","0","0","0",[0,0.8,1,1]];
			{
				adminadd = adminadd + [_x,format[_spwx,_x],"0","0","0","0",[]];
				_mags = getArray (configFile >> 'CfgWeapons' >> _x >> 'magazines');
				{
					adminadd = adminadd + [_x,format[_spAx,_x],"0","0","0","0",[0.8,0.8,0,1]];
				} forEach _mags;
			} forEach _foundarray;
		};
		if(_what == "weapon") then
		{
			isWep__i_n_f_i_S_T_A_R = true;
			_spwx = "['%1'] spawn adminweapon;";
			_ammo = "[] spawn ammo_current_wpn_admin;";
			adminadd = [];
			call admin_fillsubsss;
			call admin_fillSpawnMenuFILL;
			adminadd = adminadd + ["--- Ammo Current Wep",format[_ammo],"0","0","0","0",[0,0.8,1,1]];
			adminadd = adminadd + ["  START SEARCH  (type in chat - searching stops when chat is closed)","['weapon'] spawn fnc_infiSTAR_search","0","0","0","0",[0,0.8,1,1]];
			{
				adminadd = adminadd + [_x,format[_spwx,_x],"0","0","0","0",[]];
			} forEach _foundarray;
		};
		if(_what == "magazine") then
		{
			isMag__i_n_f_i_S_T_A_R = true;
			_spwx = "['%1'] spawn adminmagazino;";
			_ammo = "[] spawn ammo_current_wpn_admin;";
			adminadd = [];
			call admin_fillsubsss;
			call admin_fillSpawnMenuFILL;
			adminadd = adminadd + ["--- Ammo Current Wep",format[_ammo],"0","0","0","0",[0,0.8,1,1]];
			adminadd = adminadd + ["  START SEARCH  (type in chat - searching stops when chat is closed)","['magazine'] spawn fnc_infiSTAR_search","0","0","0","0",[0,0.8,1,1]];
			{
				adminadd = adminadd + [_x,format[_spwx,_x],"0","0","0","0",[]];
			} forEach _foundarray;
		};
		if(_what == "adminSNV") then
		{
			isVehicle__i_n_f_i_S_T_A_R = true;
			_spwx = "['%1'] call adminsveh;";
			adminadd = [];
			call admin_fillsubsss;
			call admin_fillSpawnMenuFILL;
			adminadd = adminadd + ["--- NORMAL SPAWN","","0","0","0","0",[0,0.8,1,1]];
			adminadd = adminadd + ["  START SEARCH  (type in chat - searching stops when chat is closed)","['adminSNV'] spawn fnc_infiSTAR_search","0","0","0","0",[0,0.8,1,1]];
			{
				adminadd = adminadd + [_x,format[_spwx,_x],"0","0","0","0",[]];
			} forEach _foundarray;
		};
		if(_what == "adminSHV") then
		{
			isVehicle__i_n_f_i_S_T_A_R = true;
			_spwx = "['%1'] call adminsvehhive;";
			adminadd = [];
			call admin_fillsubsss;
			call admin_fillSpawnMenuFILL;
			adminadd = adminadd + ["--- HIVE SPAWN","","0","0","0","0",[0,0.8,1,1]];
			adminadd = adminadd + ["  START SEARCH  (type in chat - searching stops when chat is closed)","['adminSHV'] spawn fnc_infiSTAR_search","0","0","0","0",[0,0.8,1,1]];
			{
				adminadd = adminadd + [_x,format[_spwx,_x],"0","0","0","0",[]];
			} forEach _foundarray;
		};
		if(_what == "adminBuildings") then
		{
			_spwx = "['%1'] call adminsobj;";
			adminadd = [];
			call admin_fillsubsss;
			call admin_fillSpawnMenuFILL;
			adminadd = adminadd + ["--- Buildings","","0","0","0","0",[0,0.8,1,1]];
			adminadd = adminadd + ["  START SEARCH  (type in chat - searching stops when chat is closed)","['adminBuildings'] spawn fnc_infiSTAR_search","0","0","0","0",[0,0.8,1,1]];
			{
				adminadd = adminadd + [_x,format[_spwx,_x],"0","0","0","0",[]];
			} forEach _foundarray;
		};
		call admin__FILL_MENUS;
	};
	fnc_infiSTAR_search =
	{
		_what = _this select 0;
		_category = '[UNDEFINED VARIABLE]';
		if(_what == 'weapon') then {ALL_TO_SEARCH = ALL_WEPS_TO_SEARCH;_category = 'weapons';};
		if(_what == 'magazine') then {ALL_TO_SEARCH = ALL_MAGS_TO_SEARCH;_category = 'magazines';};
		if(_what == 'adminSNV') then {ALL_TO_SEARCH = ALL_VEHS_TO_SEARCH;_category = 'vehicles';};
		if(_what == 'adminSHV') then {ALL_TO_SEARCH = ALL_VEHS_TO_SEARCH;_category = 'vehicles';};
		if(_what == 'adminBuildings') then {ALL_TO_SEARCH = ALL_OBJ_TO_SEARCH;_category = 'Buildings';};
		if(_what == 'weaponmags') then {ALL_TO_SEARCH = ALL_WEPS_TO_SEARCH+ALL_MAGS_TO_SEARCH;_category = 'weapons & mags';};
		if(!isNil 'fnc_searching_running') exitWith {systemChat format['still searching [%1] - open/close the chat to stop.',_category];};
		fnc_searching_running = true;
		
		systemChat format['[%1] - Open the Chat, type what you want to search and doubleclick START SEARCH',_category];
		
		waitUntil {!isNull (finddisplay 24)};
		disableSerialization;
		_foundarray = [];
		_ofoundarray = [];
		_otext = '';
		_exit = false;
		while {1 == 1} do
		{
			_ctrl = ((findDisplay 24) displayCtrl 101);
			_text = ctrlText _ctrl;
			_text = toLower _text;
			_arrayT = toArray _text;
			_numT = count _arrayT;
			if(_text != _otext) then {_otext = _text;_foundarray = [];};
			if(_numT < 1) then {_foundarray = [];};
			if(_numT > 1) then
			{
				_countAll = (count ALL_TO_SEARCH)-1;
				for '_i' from 0 to _countAll do
				{
					if(_i == _countAll) then {_exit = true;};
					hintSilent format['%1',_countAll - _i];
					_selected = ALL_TO_SEARCH select _i;
					_selectedL = toLower _selected;
					
					if(_text == _selectedL) then
					{
						if !(_selected in _foundarray) then
						{
							_foundarray = _foundarray + [_selected];
						};
					}
					else
					{
						_arrayS = toArray _selectedL;
						_numS = count _arrayS;
						if(_numS >= _numT) then
						{
							if((_numS / _numT) >= 1) then
							{
								_incidents = true;
								{
									if !(_x in _arrayS) then
									{
										_incidents = false;
									};
								} forEach _arrayT;
								if(_incidents) then
								{
									_state = false;
									for '_f' from 0 to (_numT-1) do
									{
										for '_n' from 0 to (_numS-1) do
										{
											_v = _f;
											if(_n > 0) then
											{
												_v = _f + _n;
											};
											if(_numS >= _v) then
											{
												if(_arrayT select _f == _arrayS select _v) then
												{
													_find1 = _arrayS find (_arrayT select 0);
													if(_find1 > -1) then
													{
														_find2 = _arrayS find (_arrayT select 1);
														if(_find2 > -1) then
														{
															if(_find1 + 1 == _find2) then
															{
																if(_numT < 3) then
																{
																	_state = true;
																}
																else
																{
																	_find3 = _arrayS find (_arrayT select 2);
																	if(_find3 > -1) then
																	{
																		if(_find2 + 1 == _find3) then
																		{
																			if(_numT < 4) then
																			{
																				_state = true;
																			}
																			else
																			{
																				_find4 = _arrayS find (_arrayT select 3);
																				if(_find4 > -1) then
																				{
																					if(_find3 + 1 == _find4) then
																					{
																						_state = true;
																					};
																				};
																			};
																		};
																	};
																};
															};
														};
													};
												};
											};
										};
									};
									if(_state) then
									{
										if !(_selected in _foundarray) then
										{
											_foundarray = _foundarray + [_selected];
										};
									};
								};
							};
						};
					};
				};
				if(str _foundarray != str _ofoundarray) then
				{
					_ofoundarray = _foundarray;
					if(str _foundarray == '[]') then
					{
						systemChat format['[%1] not found in [%2]..',_text,_category];
					}
					else
					{
						[_foundarray,_what] call fnc_showFoundSearch;
					};
				};
			};
			if((isNull finddisplay 24)||(isNull finddisplay 3030) || (_exit)) exitWith {};
		};
		fnc_searching_running = nil;
		systemChat format['searching for [%1] - STOPPED',_category];
	};
	admin_do_this_first =
	{
		infiSTAR_A2_debug = {
			if(isNil 'firstRun_infiSTAR_A2_debug') then
			{
				firstRun_infiSTAR_A2_debug = true;
				systemChat 'infiSTAR.de: Debug best fits with interface size small!';
			};
			private['_this','_igotthis'];
			_settext = '';
			if(!isNil '_this') then
			{
				_igotthis = _this select 0;
				if(typename _igotthis != 'STRING') then {_igotthis = str _igotthis;};
				'infi5TAR' callExtension _igotthis;
				_settext = _igotthis;
			};
			disableSerialization;
			closeDialog 0;
			if(!dialog) then {createDialog 'RscFunctionsViewer';};
			_ctrl = (findDisplay 2929) displayctrl 292901;
			_ctrl ctrlCommit 0;
			_display = findDisplay 2929;
			_textTitle = _display displayctrl 292905;
			_textPath = _display displayctrl 292906;
			_textDesc = _display displayctrl 292907;
			_textCode = _display displayctrl 292908;
			_btnCopy = _display displayctrl 292909;
			_btnCopy2 = _display displayctrl 292910;
			_btnCopy3 = _display displayctrl 292911;
			_listFunctions = _display displayCtrl 292901;
			_listSources = _display displayCtrl 292902;
			_listTags = _display displayCtrl 292903;
			_listCats = _display displayCtrl 292904;
			_textTitle ctrlShow false;
			_textPath ctrlShow false;
			_textDesc ctrlShow false;
			_btnCopy ctrlShow true;
			_btnCopy2 ctrlShow true;
			_btnCopy3 ctrlShow true;
			_listFunctions ctrlShow false;
			_listSources ctrlShow false;
			_listTags ctrlShow false;
			_listCats ctrlShow false;
			_textCode ctrlSetText _settext;
			_textCode ctrlSetPosition [0, safezoneY + 0.45, 0.75, safezoneH - 1.1];
			_textCode ctrlSetFont 'TahomaB';
			_textCode ctrlSetScale (safezoneH - safezoneW / 2) * 2.2;
			_textCode ctrlCommit 0;
			
			_btnCopy2 ctrlSetText 'Global';
			_btnCopy2 ctrlSetTextColor [0.1, 0.6, 1, 1];
			_btnCopy2 ctrlSetFont 'Zeppelin33';
			fnc_get_stringGLOBAL =
			{
				_text = ctrlText 292908;
				_text
			};
			_btnCopy2 buttonSetAction '[call fnc_get_stringGLOBAL] spawn admin_d0';
			_btnCopy2 ctrlSetPosition [((ctrlPosition _btnCopy2) select 0), ((ctrlPosition _btnCopy2) select 1)+0.04, (ctrlPosition _btnCopy2) select 2, (ctrlPosition _btnCopy2) select 3];
			_btnCopy2 ctrlCommit 0;
			
			_btnCopy ctrlSetText 'Server';
			_btnCopy ctrlSetTextColor [0.1, 0.6, 1, 1];
			_btnCopy ctrlSetFont 'Zeppelin33';
			fnc_get_stringSERVER =
			{
				_text = ctrlText 292908;
				_string = format['if(isServer) then {%1};',_text];
				_string
			};
			_btnCopy buttonSetAction '[call fnc_get_stringSERVER] spawn admin_d0';
			_btnCopy ctrlSetPosition [((ctrlPosition _btnCopy) select 0), ((ctrlPosition _btnCopy) select 1)+0.04, (ctrlPosition _btnCopy) select 2, (ctrlPosition _btnCopy) select 3];
			_btnCopy ctrlCommit 0;
			
			_btnCopy3 ctrlSetText 'Local';
			_btnCopy3 ctrlSetTextColor [0.1, 0.6, 1, 1];
			_btnCopy3 ctrlSetFont 'Zeppelin33';
			_btnCopy3 buttonSetAction '_text = ctrlText 292908;call compile _text;';
			_btnCopy3 ctrlSetPosition [((ctrlPosition _btnCopy3) select 0), ((ctrlPosition _btnCopy3) select 1)+0.04, (ctrlPosition _btnCopy3) select 2, (ctrlPosition _btnCopy3) select 3];
			_btnCopy3 ctrlCommit 0;
		};
		uiSleep 15;
		if(isNil "ALL_WEPS_TO_SEARCH") then
		{
			ALL_WEPS_TO_SEARCH = [];
			_CfgWeapons = configFile >> "CfgWeapons";
			for "_i" from 0 to (count _CfgWeapons)-1 do
			{
				_weapon = _CfgWeapons select _i;
				if(isClass _weapon) then
				{
					_wpn_type = configName _weapon;
					_plx = toArray _wpn_type;
					_plx resize 7;
					_plx;
					_plx = toString _plx;
					if(((_plx != "ItemKey") || (_wpn_type == "ItemKeyKit")) && (_wpn_type != "MineE")) then
					{
						if(((getNumber (_weapon >> "scope") == 0) || (getNumber (_weapon >> "scope") == 2)) && (getText (_weapon >> "picture") != "")) then
						{
							if !(_wpn_type in ALL_WEPS_TO_SEARCH) then
							{
								ALL_WEPS_TO_SEARCH = ALL_WEPS_TO_SEARCH + [_wpn_type];
							};
						};
					};
				};
			};
		};
		if(isNil "ALL_MAGS_TO_SEARCH") then
		{
			ALL_MAGS_TO_SEARCH = [];
			_CfgWeapons = configFile >> "CfgMagazines";
			for "_i" from 0 to (count _CfgWeapons)-1 do
			{
				_weapon = _CfgWeapons select _i;
				if(isClass _weapon) then
				{
					_wpn_type = configName(_weapon);
					if(((getNumber (_weapon >> "scope") == 0) || (getNumber (_weapon >> "scope") == 2)) && (getText (_weapon >> "picture") != "") && !(_wpn_type in ['AngelCookies','Skinbase'])) then
					{
						if !(_wpn_type in ALL_MAGS_TO_SEARCH) then
						{
							ALL_MAGS_TO_SEARCH = ALL_MAGS_TO_SEARCH + [_wpn_type];
						};
					};
				};
			};
		};
		if(isNil "ALL_VEHS_TO_SEARCH") then
		{
			ALL_VEHS_TO_SEARCH = [];
			_cfgvehicles = configFile >> "cfgVehicles";
			for "_j" from 0 to (count _cfgvehicles)-1 do
			{
				_vehicle = _cfgvehicles select _j;
				if(isClass _vehicle) then
				{
					_veh_type = configName _vehicle;
					if((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && ((_veh_type isKindOf "Air") || (_veh_type isKindOf "LandVehicle") || (_veh_type isKindOf "Ship"))) then
					{
						if !((_veh_type isKindOf "ParachuteBase") || (_veh_type isKindOf "BIS_Steerable_Parachute")) then
						{
							ALL_VEHS_TO_SEARCH = ALL_VEHS_TO_SEARCH + [_veh_type];
						};
					};
				};
			};
		};
		if(isNil "ALL_OBJ_TO_SEARCH") then
		{
			ALL_OBJ_TO_SEARCH = [];
			_cfgvehicles = configFile >> "cfgVehicles";
			for "_j" from 0 to (count _cfgvehicles)-1 do
			{
				_vehicle = _cfgvehicles select _j;
				if(isClass _vehicle) then
				{
					_veh_type = configName _vehicle;
					if((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && ((_veh_type isKindOf "Building") || (_veh_type isKindOf "House"))) then
					{
						ALL_OBJ_TO_SEARCH = ALL_OBJ_TO_SEARCH + [_veh_type];
					};
				};
			};
			ALL_OBJ_TO_SEARCH = ALL_OBJ_TO_SEARCH + ["MAP_LHD_house_1"];
			ALL_OBJ_TO_SEARCH = ALL_OBJ_TO_SEARCH + ["Land_A_Villa_EP1"];
		};
	};
	if(isNil 'admin_dofirst_state') then
	{
		admin_dofirst_state = true;
		[] spawn admin_do_this_first;
	};
};
diag_log ("infiSTAR.de - ADDING PublicVariableEventHandlers");
[] spawn {
	fnc_infiSTAR_Serverkick = {
		_clientUID = _this select 0;_clientName = _this select 1;
		_do = format["if((getPlayerUID player == '%1') || (name player == '%2')) then
		{
			[] spawn {
				sleep 1;
				_hacker = group player addWaypoint [[1,1,1],1];
				_hacker setWaypointStatements ['true',''];
			};
			for '_s1' from 0 to 101 do {findDisplay _c closeDisplay 0;};
			sleep 0.5;
			for '_s2' from 0 to 101 do {disableUserInput true;};
		};",_clientUID,_clientName];
		_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		
		_playerObj = objNull;
		if(count _this > 2) then
		{
			_playerObj = _this select 2;
		};
		if(isNull _playerObj) then
		{
			{
				if(getPlayerUID _x == _clientUID) exitWith
				{
					_playerObj = _x;
				};
			} forEach playableUnits;
		};
		if(isNull _playerObj) then
		{
			_playerObj = call compile format["PVDZE_player%1",_clientUID];
			if(isNil "_playerObj") then {_playerObj=objNull;};
		};
		_mgp = '';
		if(!isNull _playerObj) then
		{
			_mgp = mapGridPosition _playerObj;
			[_playerObj] spawn {
				_playerObj = _this select 0;
				uiSleep 3;
				if(!isNull _playerObj) then {_playerObj setDamage 5;};
			};
		};
		_log = format["SERVER kicked %1(%2) @%3",_clientName,_clientUID,_mgp];
		diag_log ("infiSTAR.de Log: "+_log);
	};
	fnc_WriteLogReqq = {
		_array = _this select 1;
		_playerObj = objNull;
		_playerObj = _array select 0;
		_log = _array select 1;
		if(typeName _log != 'STRING') then {_log = toString _log;};
		
		_state = false;
		if(typeName _playerObj == 'OBJECT') then
		{
			if(!isNull _playerObj) then
			{
				_puid = getPlayerUID _playerObj;
				if(_puid in (PV_DevUlDs+PV_ADMIN_DONT_LOG)) then
				{
					_state = true;
				};
			};
		};
		if(_state) exitWith {};
		
		diag_log format['infiSTAR.de PVAH_WriteLog: %1   %2',_playerObj,_log];
		_stime = 0;
		if(serverTime > 36000)then{_stime = time;}else{_stime = serverTime;};
		_hours = (_stime/60/60);
		_hours = toArray (str _hours);
		_hours resize 1;
		_hours = toString _hours;
		_hours = compile _hours;
		_hours = call  _hours;
		_minutes = floor(_stime/60);
		_minutes2 = ((_minutes - (_hours*60)) min 60) max 0;if(_minutes2 < 10) then {_minutes2 = format['0%1',_minutes2];};
		
		_log = format['%1h %2min | %3',_hours,_minutes2,_log];
		
		if(isNil 'PV_writeAdmin_log_ARRAY') then {PV_writeAdmin_log_ARRAY = [];};
		PV_writeAdmin_log_ARRAY = PV_writeAdmin_log_ARRAY + [_log];
		publicVariable 'PV_writeAdmin_log_ARRAY';
		'AdminLog' callExtension (format['%1%2 | %3(%4)',_log,DAYZ_INSTANCE_LOGGING,name _playerObj,_puid]);
	};
	fnc_AdminReqProceed = {
		diag_log format['infiSTAR.de fnc_AdminReqProceed: %1',_array];
		if(_option == 0) then
		{
			_sl = format["%1 (%2) spawned %3 @%4",_clientName,_clientUID,(_array select 2), mapGridPosition _playerObj];
			PVAH_WriteLogReq = [_playerObj,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
			
			[(_array select 2),(_array select 3),_playerObj] spawn
			{
				_type = _this select 0;
				_pos = _this select 1;
				_player = _this select 2;
				_dirPlr = getDir _player;
				_object = _type createVehicle _pos;
				_key = "";
				{
					_x = _x * 10;
					if( _x < 0 ) then { _x = _x * -10 };
					_key = _key + str(round(_x));
				} count _pos;
				_key = _key + str(round(_dirPlr));
				_object setVariable["ObjectID", "0", true];
				_object setVariable["ObjectUID", _key, true];
				_object setvelocity [0,0,1];
				clearWeaponCargoGlobal _object;
				clearMagazineCargoGlobal _object;
				_object setDir _dirPlr;
				if(!isNil "dayz_serverObjectMonitor")then{dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_object];};
				if(!isNil "PVDZE_serverObjectMonitor")then{PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_object];};
			};
		};
		if(_option == -3) then
		{
			_class = (_array select 2);
			_worldspace = (_array select 3);
			_keySelected = (_array select 4);
			
			_location = _worldspace select 1;
			_object = _class createVehicle _location;
			_object setDir (_worldspace select 0);
			
			_characterID = str(getNumber(configFile >> "CfgWeapons" >> _keySelected >> "keyid"));
			_uid = _worldspace call dayz_objectUID3;
	/*Linux Edits*/		
			diag_log format["CHILD:308:%1:%2:%3:%4:%5:%6:%7:%8:%9:",dayZ_instance, _class, 0 , _characterID, _worldspace, [], [], 1,_uid];

			[_object,_uid,_characterID,_class] spawn {
				_object = _this select 0;
				_uid = _this select 1;
				_characterID = _this select 2;
				_class = _this select 3;
				
				_done = false;
				sleep 5;
				_key = format["\cache\objects\%1.sqf", _uid];
				diag_log ("LOAD OBJECT ID: "+_key);
				_res = preprocessFile _key;
				diag_log ("OBJECT ID CACHE: "+_res);

			if ((_res == "") or (isNil "_res")) then 
			{
				diag_log ("OBJECT ID NOT FOUND");
			} else {
						_result  = call compile _res;
						_outcome = _result select 0;
					if (_outcome == "PASS") then 
					{
						_oid = _result select 1;
						_object setVariable ["ObjectID", _oid, true];
						diag_log("CUSTOM: Selected " + str(_oid));
						_done = true;       
					};
			};
				_res = nil;
	/*Linux Edits*/
				_object setvelocity [0,0,1];
				_object setVehicleLock "LOCKED";
				if(_object isKindOf "Bicycle") then
				{
					_object setVehicleLock "UNLOCKED";
				};
				clearWeaponCargoGlobal _object;
				clearMagazineCargoGlobal _object;
				_object allowDamage false;
				_object setVariable["lastUpdate",time];
				_object setVariable["CharacterID", _characterID, true];
				if(!isNil "dayz_serverObjectMonitor")then{dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_object];};
				if(!isNil "PVDZE_serverObjectMonitor")then{PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_object];};
				uiSleep 1;
				_object call fnc_veh_ResetEH;
				PVDZE_veh_Init = _object;
				publicVariable "PVDZE_veh_Init";
				[_object,"all"] spawn server_updateObject;
				_object allowDamage true;
			};
			_sl = format["%1 (%2) hivespawned %3 @%4",_clientName,_clientUID,_class,_worldspace];
			PVAH_WriteLogReq = [_playerObj,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
		if(_option == -2) then
		{
			_deletethis = _array select 2;
			_sl = '';
			if(typeName _deletethis == 'ARRAY') then
			{
				{
					if(!isNull _x) then
					{
						_objectID 	= _x getVariable['ObjectID','0'];
						_objectUID	= _x getVariable['ObjectUID','0'];
						deleteVehicle _x;
						[_objectID,_objectUID,_clientUID] call server_deleteObj;
					};
					true
				} count _deletethis;
				_sl = format['%1 (%2) deleted %3 objects @%4 - characterID %5 - objectID: %6 - objectUID: %7',_clientName,_clientUID,count _deletethis,mapGridPosition _playerObj];
			}
			else
			{
				if(!isNull _deletethis) then
				{
					_pos = getPos _deletethis;
					_type = typeOf _deletethis;
					
					_objectID 	= _deletethis getVariable['ObjectID','0'];
					_objectUID	= _deletethis getVariable['ObjectUID','0'];
					deleteVehicle _deletethis;
					[_objectID,_objectUID,_clientUID] call server_deleteObj;
					
					_sl = format['%1 (%2) deleted %3 @%4 - characterID %5 - objectID: %6 - objectUID: %7',_clientName,_clientUID,_type,mapGridPosition _pos,_characterID,_objectID,_objectUID];
				};
			};
			PVAH_WriteLogReq = [_playerObj,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
		if(_option == -1) then
		{
			_sl = format["%1 (%2) hivespawned %3 @%4",_clientName,_clientUID,(_array select 2), mapGridPosition _playerObj];
			PVAH_WriteLogReq = [_playerObj,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
			
			[(_array select 2),(_array select 3),_playerObj] spawn
			{
				_type = _this select 0;
				_pos = _this select 1;
				_player = _this select 2;
				_dirPlr = getDir _player;
				_object = _type createVehicle _pos;
				clearWeaponCargoGlobal _object;
				clearMagazineCargoGlobal _object;
				_object addMPEventHandler ["MPKilled",{_this call vehicle_handleServerKilled;}];
				_key = "";
				{
					_x = _x * 10;
					if( _x < 0 ) then { _x = _x * -10 };
					_key = _key + str(round(_x));
				} count _pos;
				_key = _key + str(round(_dirPlr));
				_object setVariable["ObjectID", "0", true];
				_object setVariable["ObjectUID", _key, true];
				_object setVariable["lastUpdate",time,true];
				_object setDir _dirPlr;
				if(!isNil "dayz_serverObjectMonitor")then{dayz_serverObjectMonitor set [count dayz_serverObjectMonitor, _object];};
				if(!isNil "PVDZE_serverObjectMonitor")then{PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor, _object];};
				waitUntil {(!isNull _object)};
				uiSleep 3;
				_typeObj = typeOf _object;
				_posObj = getPos _object;
				_dirObj = getDir _object;
				_key = format["CHILD:999:select `id` from `vehicle` where `class_name` = '?' LIMIT 1:[""%1""]:",_typeObj];
				_data = "HiveEXT" callExtension _key;             
				_result = call compile format["%1", _data];
				_status = _result select 0;
				if(_status == "CustomStreamStart") then 
				{
					"HiveEXT" callExtension _key;
					_temp = _result select 1;
					if(_temp == 0) then
					{
						_data = "HiveEXT" callExtension format["CHILD:999:Insert into vehicle 
						(class_name,damage_min, damage_max, fuel_min, fuel_max, limit_min, limit_max, parts, inventory)
						values
						('?',0,0,1.0,1.0,0,99,'',''):[""%1""]:", _typeObj];
					};	
				};
				_data = "HiveEXT" callExtension format["CHILD:999:Insert into world_vehicle
				(vehicle_id, world_id, worldspace, chance)
				values
				((SELECT `id` FROM `vehicle` where `class_name` = '?' LIMIT 1), 1, '%3',1):[""%1"", ""%2""]:", _typeObj, worldName, [_dirObj, _posObj]];
				_data = "HiveEXT" callExtension format["CHILD:999:Insert into instance_vehicle
				(world_vehicle_id, instance_id, worldspace, inventory, parts, fuel, damage)
				values
				((SELECT `id` FROM `world_vehicle` where `vehicle_id` = (SELECT `id` FROM `vehicle` where `class_name` = '%1' LIMIT 1) LIMIT 1), %3, '%2','[[[],[]],[[],[]],[[],[]]]','[]',1,0):[]:", _typeObj, [_dirObj, _posObj], dayZ_instance];
				_key = format["CHILD:999:SELECT `id` FROM `instance_vehicle` ORDER BY `id` DESC LIMIT 1:[]:"];
				_data = "HiveEXT" callExtension _key;
				_result = call compile format["%1", _data];
				_status = _result select 0;
				if(_status == "CustomStreamStart") then 
				{
					_temp = _result select 1;
					if(_temp == 1) then
					{
						_data = "HiveEXT" callExtension _key;
						_result = call compile format["%1", _data];
						_status = _result select 0;
					};	
				};
				_object setVariable["lastUpdate",time];
				_object setVariable["ObjectID", str(_status), true];
				_object setVariable["CharacterID", "1337", true];
				[_object,"all"] spawn server_updateObject;
			};
		};
		if(_option == 2) then
		{
			_do = format["if(getPlayerUID player == '%1') then
			{
				_unit = player;
				_selection = ""legs"";
				_damage = 1;
				_unit setHit[_selection,_damage];
			};", getPlayerUID (_array select 2)];
			_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		};
		if(_option == 3) then
		{
			_unit = _playerObj;
			_uid = getPlayerUID _unit;
			if(isNil 'PlayableObjects') then {PlayableObjects = [];};
			{
				if(isNull _x) then
				{
					PlayableObjects = PlayableObjects - [_x];
				};
			} forEach PlayableObjects;
			if(_unit in PlayableObjects) then
			{
				PlayableObjects = PlayableObjects - [_unit];
			}
			else
			{
				PlayableObjects = PlayableObjects + [_unit];
			};
			publicVariable 'PlayableObjects';
		};
		if(_option == 4) then
		{
			(_array select 2) setDamage 5;
		};
		if(_option == 5) then
		{
			_unit = _array select 2;
			_do = format["if(getPlayerUID player == '%1') then
			{
				disableSerialization;
				dayz_sourceBleeding = objNull;
				r_player_blood = r_player_bloodTotal;
				r_player_inpain = false;
				r_player_infected = false;
				r_player_injured = false;
				dayz_hunger = 0;
				dayz_thirst = 0;
				dayz_temperatur = 37;
				r_fracture_legs = false;
				r_fracture_arms = false;
				r_player_dead = false;
				r_player_unconscious = false;
				r_player_loaded = false;
				r_player_cardiac = false;
				r_player_lowblood = false;
				r_player_timeout = 0;
				r_handlercount = 0;
				r_interrupt = false;
				r_doLoop = false;
				r_drag_sqf = false;
				r_self = false;
				r_action = false;
				r_action_unload = false;
				r_player_handler = false;
				r_player_handler1 = false;
				disableUserInput false;
				'dynamicBlur' ppEffectAdjust [0];
				'dynamicBlur' ppEffectCommit 5;
				_selection = 'legs';
				_damage = 0;
				player setHit[_selection,_damage];
				player setVariable['messing',[dayz_hunger,dayz_thirst],true];
				player setVariable['NORRN_unconscious',false,true];
				player setVariable['USEC_infected',false,true];
				player setVariable['USEC_injured',false,true];
				player setVariable['USEC_inPain',false,true];
				player setVariable['USEC_isCardiac',false,true];
				player setVariable['USEC_lowBlood',false,true];
				player setVariable['USEC_BloodQty',12000,true];
				player setVariable['unconsciousTime',0,true];
				player setVariable['hit_legs',0,true];
				player setVariable['hit_hands',0,true];
				player setVariable['medForceUpdate',true,true];
				_display = uiNameSpace getVariable 'DAYZ_GUI_display';
				_control = _display displayCtrl 1303;
				_control ctrlShow false;
				_display = uiNameSpace getVariable 'DAYZ_GUI_display';
				_control = _display displayCtrl 1203;
				_control ctrlShow false;
				player setdamage 0;
				0 fadeSound 1;
				resetCamShake;
			};", getPlayerUID (_array select 2)];
			_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		};
		if(_option == 51) then
		{
			_plr = _playerObj;
			_vehicle = _array select 2;
			_type = typeOf _vehicle;
			_vehicle setDamage 0;
			_vehicle setVectorUp [0,0,1];
			_vehicle setVehicleInit 'this setFuel 1';
			
			vehicle_getHitpoints =
			{
				private ["_cfgHitPoints", "_hps", "_funcGetHitPoints"];
				_cfgHitPoints = configFile >> "CfgVehicles" >> (typeOf _this) >> "HitPoints";
				_hps = [];
				_funcGetHitPoints = 
				{
					for "_i" from 0 to ((count _this) - 1) do 
					{
						private ["_hp"];
						_hp = configName (_this select _i);
						if(!(_hp in _hps)) then 
						{
							_hps set [count _hps, _hp];
						};
					};
				};
				while {(configName _cfgHitPoints) != ""} do 
				{
					_cfgHitPoints call _funcGetHitPoints;
					_cfgHitPoints = inheritsFrom _cfgHitPoints;
				};
				_hps
			};
			_hitpoints = _vehicle call vehicle_getHitpoints;
			{
				_hitpoint = _x;
				_selection = getText(configFile >> "cfgVehicles" >> _type >> "HitPoints" >> _hitpoint >> "name");
				_vehicle setHit[_selection,0];
				_strH = ("hit_" + (_selection));
				_vehicle setVariable[_strH,0,true];
			} forEach _hitpoints;
			if(!isNil "server_updateObject") then
			{
				PVDZE_veh_SFuel = [_vehicle,1];
				publicVariable "PVDZE_veh_SFuel";
				[_vehicle,"repair"] call server_updateObject;
			};
			_sl = format["%1 AdminRepair %2",_clientName,_type];
			PVAH_WriteLogReq = [_playerObj,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
		if(_option == 52) then
		{
			_pos = _array select 2;
			_vehicles = _pos nearEntities [['LandVehicle','Air','Ship'],15];
			
			{
				if(!isNull _x) then
				{
					clearVehicleInit _x;
					_x setVehicleInit 'this setVectorUp [0,0,1];';
				};
			} forEach _vehicles;
			
			_sl = format["%1 Flipped vehicles @%2",_clientName,_pos];
			PVAH_WriteLogReq = [_playerObj,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
		if(_option == 8) then
		{
			_do = format["if(getPlayerUID player == '%1') then
			{
				{player removeMagazine _x;} forEach (magazines player);
				removeAllWeapons player;
				removebackpack player;
			};", getPlayerUID (_array select 2)];
			_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		};
		if(_option == 9) then
		{
			_msg = _array select 2;
			if(typeName _msg == 'ARRAY') then {_msg = toString _msg;};
			[nil, nil, rTitleText, _msg, 'PLAIN DOWN'] call RE;
		};
		if(_option == 91) then
		{
			_msg = _array select 2;
			_clr = _array select 3;
			if(typeName _msg == 'ARRAY') then {_msg = toString _msg;};
			fnc_show_colorAdminMsg = [_msg,_clr];
			publicVariable 'fnc_show_colorAdminMsg';
		};
		if(_option == 10) then
		{
			_do = format["if(getPlayerUID player == '%1') then
			{
				(findDisplay 46) closeDisplay 0;
			};", getPlayerUID (_array select 2)];
			_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		};
		if(_option == 111) then
		{
			_do = format['if(!isServer) then
			{
				{
					if(name _x == ''%1'') then
					{
						_i = [_x,4,time,false,false] spawn BIS_Effects_Burn;
					};
				} forEach ([0,0,0] nearEntities [''AllVehicles'', 10000000]);
				if(name player == ''%1'') then
				{
					[] spawn {
						_addup = 0;
						while {alive player} do
						{
							_xxx = (round(random 250));
							_yyy = (round(random 250));
							_equals = _xxx + _yyy;
							if(_equals < 300) then {_equals = 333;};
							r_player_blood = r_player_blood - _equals;
							_addup = _addup + _equals;
							if(_addup >= 12000) exitWith {(findDisplay 46) closeDisplay 0;};
							uiSleep 0.5;
						};
					};
				};
			};', name (_array select 2)];
			_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		};
		if(_option == 110) then
		{
			_do = format["if(!isServer) then
			{
				if(getPlayerUID player == '%1') then
				{
					_vehicle = vehicle player;
					_hitpoint = '%2';
					_type = typeOf _vehicle;
					_selection = getText(configFile >> 'cfgVehicles' >> _type >> 'HitPoints' >> _hitpoint >> 'name');
					_vehicle setHit[_selection,%3];
					_strH = ('hit_' + (_selection));
					_vehicle setVariable[_strH,%3,true];
				};
			};", getPlayerUID (_array select 2),_array select 3,_array select 4];
			_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		};
		if(_option == 112) then
		{
			_do = format['if(!isServer) then
			{
				if(getPlayerUID player == "%1") then {disableUserInput true;};
			};', getPlayerUID (_array select 2)];
			_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		};
		if(_option == 113) then
		{
			_do = format['if(!isServer) then
			{
				if(getPlayerUID player == "%1") then {disableUserInput false;};
			};', getPlayerUID (_array select 2)];
			_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		};
		if(_option == 11) then
		{
			_do = format['if(getPlayerUID player == "%1") then
			{
				fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
				_unit = player;
				if(_unit == player) then
				{
					r_player_timeout = 30;
					r_player_unconscious = true;
					player setVariable["medForceUpdate",true,true];
					player setVariable["unconsciousTime", r_player_timeout, true];
				};
				if(vehicle _unit != _unit) then
				{
					_unit spawn {
						private["_veh","_unit"];
						_veh = vehicle _this;
						_unit = _this;
						waitUntil{(((getPos _veh select 2 < 1) && (speed _veh < 1)) || (!r_player_unconscious))};
						if(r_player_unconscious) then {
							_unit action ["eject", _veh];
							waitUntil{((vehicle _this) != _this)};
							uiSleep 1;
							_unit setVariable["NORRN_unconscious", true, true];
							_unit playActionNow "Die";
						};
					};
				}
				else
				{
					_unit setVariable["NORRN_unconscious", true, true];
					_unit playActionNow "Die";
				};
			};', getPlayerUID (_array select 2)];
			_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		};
		if(_option == 14) then 
		{
			{deleteVehicle _x;} forEach allMissionObjects "Foodbox0";
			{
				if((((count ((getWeaponCargo _x) select 1))+(count ((getMagazineCargo _x) select 1))) > 200) || (count ([currentWeapon _x] + (weapons _x) + (magazines _x)) > 40)) then 
				{
					deleteVehicle _x;
				};
			} forEach allMissionObjects "ALL";
		};
		if(_option == 15) then
		{
			_do = format['if(getPlayerUID player == "%1") then
			{
				[] spawn {
					if(isNil "druggedbiatch") then
					{
						druggedbiatch = true;
						hint "You took drugs YOLOLOLO";
						_mytime = time;
						while {druggedbiatch} do
						{
							nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
							nonapsi_ef ppEffectEnable true;
							nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.03, [0.0, 0.0, 0.0, 0.0], [3.0, 5.0, 9.0, 5.0],[0.4,0.0,0.0, 0.7]];
							nonapsi_ef ppEffectCommit 1;
							uiSleep random(1);
							wetdist1 = ppEffectCreate ["wetDistortion", 2006];
							wetdist1 ppEffectAdjust [0, 8, 0.8,8,8, 0.2, 1, 0, 0, 0.08, 0.08, 0, 0, 0, 0.77];
							wetdist1 ppEffectEnable true;
							wetdist1 ppEffectCommit 0;
							ppe = ppEffectCreate ["colorCorrections", 1555]; 
							ppe ppEffectAdjust [1, 1, 0, [1.5,6,2.5,0.5], [5,3.5,5,-0.5], [-3,5,-5,-0.5]]; 
							ppe ppEffectCommit 1;
							ppe ppEffectEnable true; 
							ppe2 = ppEffectCreate ["chromAberration", 1555]; 
							ppe2 ppEffectAdjust [0.01,0.01,true];
							ppe2 ppEffectCommit 1;
							ppe2 ppEffectEnable true;
							ppe3 = ppEffectCreate ["radialBlur", 1555]; 
							ppe3 ppEffectEnable true;
							ppe3 ppEffectAdjust [0.02,0.02,0.15,0.15];
							ppe3 ppEffectCommit 1;
							uiSleep random(1);
							wetdist1 = ppEffectCreate ["wetDistortion", 2006];
							wetdist1 ppEffectAdjust [1, 1.16, 0.32, 2.56, 0.8, 0.64, 2.64, 0, 0, 1.08, 0.08, 0, 0, 0, 1.77];
							wetdist1 ppEffectEnable true;
							wetdist1 ppEffectCommit 0;
							uiSleep random(1);
							nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
							nonapsi_ef ppEffectEnable true;
							nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.02, [9.5, 1.5, 2.5, 0.2], [2.0, 7.0, 6.0, 2.0],[0.4,0.0,0.0, 0.7]];
							nonapsi_ef ppEffectCommit 1;
							uiSleep random(1);
							if(_mytime + 30 < time) exitWith {};
						};
						ppEffectDestroy nonapsi_ef;
						ppEffectDestroy ppe;
						ppEffectDestroy ppe2;
						ppEffectDestroy ppe3;
						ppEffectDestroy wetdist1;
						setaperture 0;
						"dynamicBlur" ppEffectAdjust [0];
						"dynamicBlur" ppEffectCommit 16;
						"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 0.0]];
						"colorCorrections" ppEffectCommit 0;
					};
				};
			};', getPlayerUID (_array select 2)];
			_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		};
		if(_option == 16) then
		{
			if(isNil 'PVAH_AHTMPBAN') then {PVAH_AHTMPBAN = [];} else {if(typeName PVAH_AHTMPBAN != 'ARRAY') then {PVAH_AHTMPBAN = [];};};
			PVAH_AHTMPBAN = [];
			publicVariable 'PVAH_AHTMPBAN';
		};
		if(_option == 17) then
		{
			_playerObj = _array select 2;
			_clientUID = (getPlayerUID _playerObj);
			_clientName = (name _playerObj);
			[_clientUID,_clientName,_playerObj] spawn fnc_infiSTAR_Serverkick;
		};
		if(_option == 18) then
		{
			_playerObj = _array select 2;
			_clientUID = (getPlayerUID _playerObj);
			_clientName = (name _playerObj);
			[_clientUID,_clientName,_playerObj] spawn fnc_infiSTAR_Serverkick;
			
			if(isNil 'PVAH_AHTMPBAN') then {PVAH_AHTMPBAN = [];} else {if(typeName PVAH_AHTMPBAN != 'ARRAY') then {PVAH_AHTMPBAN = [];};};
			if(!(_clientUID in PVAH_AHTMPBAN) || !(_clientName in PVAH_AHTMPBAN)) then
			{
				PVAH_AHTMPBAN = PVAH_AHTMPBAN + [_clientUID,_clientName];
				publicVariable 'PVAH_AHTMPBAN';
				if((_array select 3) == 2) then
				{
					_log = format['%1',_clientUID];'infiSTARwriteBan' callExtension (_log);
				};
			};
		};
		if(_option == 182) then
		{
			_uid = _array select 2;
			_name = _array select 3;
			if(isNil 'PVAH_AHTMPBAN') then {PVAH_AHTMPBAN = [];} else {if(typeName PVAH_AHTMPBAN != 'ARRAY') then {PVAH_AHTMPBAN = [];};};
			PVAH_AHTMPBAN = PVAH_AHTMPBAN - [_uid] - [_name];
			publicVariable 'PVAH_AHTMPBAN';
		};
		if(_option == 19) then
		{
			_selection = _array select 2;
			_intensity = _array select 3;
			switch (_selection) do {
				case 1:
				{
					dayzSetViewDistance = _intensity;publicVariable "dayzSetViewDistance";
					
					_sl = format["%1 Viewdistance %2",_clientName,_intensity];
					PVAH_WriteLogReq = [_playerObj,toArray _sl];
					publicVariableServer 'PVAH_WriteLogReq';
				};
				case 2:
				{
					dayzSetOvercast = _intensity;publicVariable "dayzSetOvercast";
					
					_sl = format["%1 Weather %2",_clientName,_intensity];
					PVAH_WriteLogReq = [_playerObj,toArray _sl];
					publicVariableServer 'PVAH_WriteLogReq';
				};
			};
		};
		if(_option == 20) then 
		{
			_offset = _array select 2;
			_date = [2012,1,1,_offset,0];
			if(!isNil 'PVDZE_plr_SetDate') then {
				PVDZE_plr_SetDate = _date;
				publicVariable 'PVDZE_plr_SetDate';
			};
			if(!isNil 'dayzSetDate') then {
				dayzSetDate = _date;
				publicVariable 'dayzSetDate';
			};
			setDate _date;
			server_timeSync = {};
			
			_sl = format["%1 Time to %2",_clientName,_date];
			PVAH_WriteLogReq = [_playerObj,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
		if(_option == 21) then 
		{
			_do = format['if(getPlayerUID player == "%1") then
			{
				[] spawn {
					_vehicle_player = vehicle player;
					playsound "Ivn_notscared";
					playsound "Ivn_notscared";
					uiSleep 2;
					playSound "Gul_youshouldbe";
					playSound "Gul_youshouldbe";
					uiSleep 4;
					playSound "beat04";playSound "beat04";
					playSound "beat04";playSound "beat04";
					_vehicle_player SetVelocity [6,6,2];
					uiSleep 1.25;
					playSound "beat04";playSound "beat04";
					playSound "beat04";playSound "beat04";
					_vehicle_player SetVelocity [6,6,2];
					uiSleep 1.25;
					playSound "All_haha";
					playSound "All_haha";
					playSound "All_haha";
					playSound "All_haha";
					uiSleep 2.25;
					playSound "All_haha";
					playSound "All_haha";
					playSound "All_haha";
					playSound "All_haha";
					
					cutText ["You Got Punished By An Admin", "PLAIN"];
				};
			};', getPlayerUID (_array select 2)];
			_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		};
		if(_option == 22) then
		{
			_UID = getPlayerUID (_array select 2);
			_do = "if(getPlayerUID player == "+str _UID+") then
			{
				[] spawn {
					canAbort = true;
					_swep = '';
					{
						if((getNumber (configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith
						{
							_swep = _x;
						};
					} forEach (weapons player);
					if(_swep != '') then
					{
						player selectWeapon _swep;
					};
					
					cutText [format['You think about your family... 10 Seconds'], 'PLAIN DOWN'];
					uiSleep 4;
					cutText [format['Your little daughter, and what happened to her... 6 Seconds'], 'PLAIN DOWN'];
					uiSleep 4;
					cutText [format['You cant take this shit any longer... 2 Seconds'], 'PLAIN DOWN'];
					uiSleep 2;
					cutText [format['I come to you Sahra! Goodbye cruel world!'], 'PLAIN DOWN'];
					canAbort = false;
					player playmove 'ActsPercMstpSnonWpstDnon_suicide1B';
					uiSleep 8.4;
					player_fired = {
						[player,'suicide'] spawn player_death;
						player setHit['Body',1];
					};
					player addEventHandler ['Fired', {_this call player_fired;}];
					player fire (currentWeapon player);
				};
			};";
			_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		};
		if(_option == 23) then
		{
			dayzPlayerDeathsResult = PlayerDeaths;
			PVDZE_plr_DeathBResult = PlayerDeaths;
			if(!isNull _playerObj) then {
				_clientID publicVariableClient "dayzPlayerDeathsResult";
				_clientID publicVariableClient "PVDZE_plr_DeathBResult";
			};
		};
		if(_option == 24) then
		{
			_do = format["if(name player == '%1') then
			{
				[] spawn {
					closedialog 0;cutText ['','PLAIN',0];Titletext ['','PLAIN',0];endLoadingScreen;0 fadeSound 1;disableUserInput false;
					_model = '%2';
					if(_model isKindOf 'CAAnimalBase') then
					{
						{player removeMagazine _x;} forEach (magazines player);
						removeAllWeapons player;
						removebackpack player;
					};
					[dayz_playerUID,dayz_characterID,_model] spawn player_humanityMorph;
					waitUntil {typeOf player == _model};
					_ok = player getVariable['Admin_1_Morph','ok'];if(_ok == 'ok') then {player setVariable['Admin_1_Morph',_model,true];};
					uiSleep 0.1;
					_ok = player getVariable['Admin_1_Morph','ok'];if(_ok == 'ok') then {player setVariable['Admin_1_Morph',_model,true];};
					vehicle player switchCamera 'EXTERNAL';
				};
			};",(_array select 2),(_array select 3)];
			_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		};
		if(_option == 25) then
		{
			_do = format["if(name player == '%1') then
			{
				[] spawn {
					_obj = player;
					_mags = getArray (configFile >> 'CfgWeapons' >> currentWeapon vehicle _obj >> 'magazines');
					_mag = _mags select 0;
					vehicle _obj addMagazine _mag;
				};
			};",(_array select 2)];
			_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		};
		if(_option == 26) then
		{
			_object = (_array select 2);
			_class = typeOf _object;
			_worldspace = [getDir _object,getPosATL _object];
			
			_characterID = 0;
			_characterID = _object getVariable["CharacterID","0"];
			_uid = _worldspace call dayz_objectUID3;
/*Linux Edits*/
			if (_ISL == true) then {
				diag_log format["CHILD:308:%1:%2:%3:%4:%5:%6:%7:%8:%9:",dayZ_instance, _class, 0 , _characterID, _worldspace, [], [], 1,_uid];
			} else {		
			_key = format["CHILD:308:%1:%2:%3:%4:%5:%6:%7:%8:%9:",dayZ_instance, _class, 0 , _characterID, _worldspace, [], [], 1,_uid];
			_key call server_hiveWrite;
			};
		
			[_object,_uid,_characterID,_class] spawn {
				_object = _this select 0;
				_uid = _this select 1;
				_characterID = _this select 2;
				_class = _this select 3;
				
				_done = false;
			sleep 5;

			_key = format["\cache\objects\%1.sqf", _uid];
			diag_log ("LOAD OBJECT ID: "+_key);
			_res = preprocessFile _key;
			diag_log ("OBJECT ID CACHE: "+_res);

			if ((_res == "") or (isNil "_res")) then {
				diag_log ("OBJECT ID NOT FOUND");
			} else {
					_result  = call compile _res;
					_outcome = _result select 0;
				if (_outcome == "PASS") then {
					_oid = _result select 1;
					diag_log("CUSTOM: Selected " + str(_oid));
					_done = true;       
				};
			};
				_res = nil;
	/*Linux Edits*/		
	
				_object setvelocity [0,0,1];
				_object allowDamage false;
				_object setVariable["lastUpdate",time];
				_object setVariable["CharacterID", _characterID, true];
				if(!isNil "dayz_serverObjectMonitor")then{dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_object];};
				if(!isNil "PVDZE_serverObjectMonitor")then{PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_object];};
				uiSleep 1;
				_object call fnc_veh_ResetEH;
				PVDZE_veh_Init = _object;
				publicVariable "PVDZE_veh_Init";
				[_object,"all"] spawn server_updateObject;
				_object allowDamage true;
			};
			
			_sl = format["%1 saved -  %2 (characterID: %3)  - to the database",_clientName,typeOf (_array select 2),_characterID];
			PVAH_WriteLogReq = [_playerObj,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
		if(_option == 666) then
		{
			_UID = getPlayerUID (_array select 2);
			_do = "if(getPlayerUID player == "+str _UID+") then
			{
				r_player_blood = r_player_blood - 200;
				player setVariable['USEC_BloodQty',r_player_blood,true];
			};";
			_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
		};
		if(_option == 9001) then
		{
			_dir = getdir _playerObj;
			_pos = getPosATL _playerObj;
			_pos = [(_pos select 0)+2*sin(_dir),(_pos select 1)+2*cos(_dir),(_pos select 2)];
			[_dir,_pos] spawn {
				_dir = _this select 0;
				_pos = _this select 1;
				_b0x = 'Foodbox0' createVehicle _pos;
				_b0x setPosATL _pos;
				clearWeaponCargoGlobal _b0x;
				clearmagazinecargoGlobal _b0x;
				
				_b0x_wpnlist = 
				['AK_107_GL_Kobra','AK_107_Kobra','AK_107_PSO','AK_47_M',
				'AK_47_S','AK_74','AK_74_GL','AK_74_GL_Kobra','AKS_74','AKS_74_Kobra',
				'AKS_74_PSO','AKS_74_U','AKS_74_UN_Kobra','AKS_GOLD','BAF_AS50_scoped',
				'BAF_AS50_TWS','BAF_L110A1_Aim','BAF_L7A2_GPMG','BAF_L85A2_RIS_ACOG',
				'BAF_L85A2_RIS_CWS','BAF_L85A2_RIS_Holo','BAF_L85A2_RIS_SUSAT',
				'BAF_L85A2_UGL_ACOG','BAF_L85A2_UGL_Holo','BAF_L85A2_UGL_SUSAT',
				'BAF_L86A2_ACOG','BAF_LRR_scoped','BAF_LRR_scoped_W','bizon','bizon_silenced',
				'Colt1911','Crossbow','DMR','G36_C_SD_camo','G36_C_SD_eotech','G36a',
				'G36A_camo','G36C','G36C_camo','G36K','G36K_camo','FN_FAL','FN_FAL_ANPVS4',
				'glock17_EP1','Huntingrifle','ksvk','LeeEnfield','M1014','m107_DZ',
				'M14_EP1','M16A2','M16A2GL','m16a4','m16a4_acg','M16A4_ACG_GL','M16A4_GL',
				'M24','M24_des_EP1','M240','m240_scoped_EP1','M249','M249_EP1','M249_m145_EP1',
				'M40A3','M4A1','M4A1_Aim','M4A1_Aim_camo','M4A1_AIM_SD_camo','M4A1_HWS_GL',
				'M4A1_HWS_GL_camo','M4A1_HWS_GL_SD_Camo','M4A1_RCO_GL','M4A3_CCO_EP1',
				'M4A3_RCO_GL_EP1','M4SPR','M60A4_EP1','M9','M9SD','Makarov','MakarovSD',
				'MeleeHatchet','MeleeCrowbar','MG36','Mk_48_DES_EP1','Mk_48_DZ','MP5A5',
				'MP5SD','MR43','Pecheneg','PK','Remington870_lamp','revolver_EP1',
				'revolver_gold_EP1','RPK_74','Sa61_EP1','Saiga12K','SVD','SVD_CAMO',
				'SVD_des_EP1','SVD_NSPU_EP1','UZI_EP1','UZI_SD_EP1','Winchester1866',
				'Binocular','Binocular_Vector','ItemCompass','ItemEtool','ItemFlashlight',
				'ItemFlashlightRed','ItemGPS','ItemHatchet','ItemKnife','ItemMap',
				'ItemMatchbox','ItemRadio','ItemToolbox','ItemWatch','NVGoggles'];
				_b0x_maglist = 
				['2Rnd_shotgun_74Slug','2Rnd_shotgun_74Pellets','5Rnd_127x108_KSVK',
				'5Rnd_127x99_as50','5Rnd_762x51_M24','5Rnd_86x70_L115A1','5x_22_LR_17_HMR',
				'6Rnd_45ACP','7Rnd_45ACP_1911','8Rnd_9x18_Makarov','8Rnd_9x18_MakarovSD',
				'8Rnd_B_Beneli_74Slug','8Rnd_B_Beneli_Pellets','8Rnd_B_Saiga12_74Slug',
				'8Rnd_B_Saiga12_Pellets','10Rnd_127x99_M107','10Rnd_762x54_SVD',
				'10x_303','15Rnd_9x19_M9','15Rnd_9x19_M9SD','15Rnd_W1866_Slug',
				'15Rnd_W1866_Pellet','17Rnd_9x19_glock17','20Rnd_556x45_Stanag',
				'20Rnd_762x51_DMR','20Rnd_762x51_FNFAL','20Rnd_B_765x17_Ball',
				'30Rnd_545x39_AK','30Rnd_545x39_AKSD','30Rnd_556x45_G36','30Rnd_556x45_G36SD',
				'30Rnd_556x45_Stanag','30Rnd_556x45_StanagSD','30Rnd_762x39_AK47',
				'30Rnd_9x19_MP5','30Rnd_9x19_MP5SD','30Rnd_9x19_UZI','30Rnd_9x19_UZI_SD',
				'50Rnd_127x108_KORD','64Rnd_9x19_Bizon','64Rnd_9x19_SD_Bizon','75Rnd_545x39_RPK',
				'100Rnd_762x51_M240','100Rnd_762x54_PK','100Rnd_556x45_BetaCMag','100Rnd_556x45_M249',
				'200Rnd_556x45_L110A1','200Rnd_556x45_M249','BoltSteel','1Rnd_HE_GP25',
				'1Rnd_HE_M203','1Rnd_Smoke_GP25','1Rnd_SmokeGreen_GP25','1Rnd_SmokeRed_GP25',
				'1Rnd_SmokeYellow_GP25','1Rnd_Smoke_M203','1Rnd_SmokeGreen_M203',
				'1Rnd_SmokeRed_M203','1Rnd_SmokeYellow_M203','6Rnd_HE_M203','BAF_ied_v1',
				'FlareGreen_GP25','FlareRed_GP25','FlareWhite_GP25','FlareYellow_GP25',
				'FlareGreen_M203','FlareRed_M203','FlareWhite_M203','FlareYellow_M203',
				'HandGrenade_East','HandGrenade_West','M136','SmokeShell','SmokeShellBlue',
				'SmokeShellGreen','SmokeShellOrange','SmokeShellPurple','SmokeShellRed',
				'SmokeShellYellow','PipeBomb','FoodCanBakedBeans','FoodCanFrankBeans',
				'FoodCanPasta','FoodCanSardines','FoodSteakCooked','FoodSteakRaw',
				'HandChemBlue','HandChemGreen','HandChemRed','HandRoadFlare','ItemAntibiotic',
				'ItemBandage','ItemBloodbag','ItemEpinephrine','ItemHeatPack','ItemJerrycan',
				'ItemJerrycanEmpty','ItemMorphine','ItemPainkiller','ItemSandbag','ItemSodaCoke',
				'ItemSodaEmpty','ItemSodaMdew','ItemSodaPepsi','ItemTankTrap','ItemTent',
				'ItemWire','ItemWaterbottle','ItemWaterbottleUnfilled','PartEngine',
				'PartFueltank','PartGeneric','PartGlass','PartWheel','PartWoodPile',
				'PartVRotor','TrapBear','TrashTinCan','TrashJackDaniels','Skin_Camo1_DZ',
				'Skin_Soldier1_DZ','Skin_Sniper1_DZ','Skin_Survivor2_DZ'];
				
				{_b0x addWeaponCargoGlobal [_x, 5];} forEach _b0x_wpnlist;
				{_b0x addMagazineCargoGlobal [_x, 20];} forEach _b0x_maglist;
				_b0x addBackpackCargoGlobal ['DZ_Backpack_EP1', 1];
			};
		};
		if(_option == 9002) then 
		{
			_dir = getdir _playerObj;
			_pos = getPosATL _playerObj;
			_pos = [(_pos select 0)+2*sin(_dir),(_pos select 1)+2*cos(_dir),(_pos select 2)];
			[_dir,_pos] spawn {
				_dir = _this select 0;
				_pos = _this select 1;
				_b0x = 'Foodbox0' createVehicle _pos;
				_b0x setPosATL _pos;
				clearWeaponCargoGlobal _b0x;
				clearmagazinecargoGlobal _b0x;
				
				if(isNil "PV_b0x_wpnlist") then
				{
					PV_b0x_wpnlist = [];
					_CfgWeapons = configFile >> "CfgWeapons";
					for "_i" from 0 to (count _CfgWeapons)-1 do
					{
						_weapon = _CfgWeapons select _i;
						if(isClass _weapon) then
						{
							_wpn_type = configName(_weapon);
							_plx = toArray _wpn_type;
							_plx resize 7;
							_plx;
							_plx = toString _plx;
							if(((_plx != "ItemKey") || (_wpn_type == "ItemKeyKit")) && (_wpn_type != "MineE")) then
							{
								if(((getNumber (_weapon >> "scope") == 0) || (getNumber (_weapon >> "scope") == 2)) && (getText (_weapon >> "picture") != "")) then
								{
									PV_b0x_wpnlist = PV_b0x_wpnlist + [_wpn_type];
								};
							};
						};
					};
					uiSleep 2;
				};
				
				if(isNil "PV_b0x_maglist") then
				{
					PV_b0x_maglist = [];
					_CfgWeapons = configFile >> "CfgMagazines";
					for "_i" from 0 to (count _CfgWeapons)-1 do
					{
						_weapon = _CfgWeapons select _i;
						if(isClass _weapon) then
						{
							_wpn_type = configName(_weapon);
							if(((getNumber (_weapon >> "scope") == 0) || (getNumber (_weapon >> "scope") == 2)) && (getText (_weapon >> "picture") != "") && !(_wpn_type in ['AngelCookies','Skinbase'])) then
							{
								PV_b0x_maglist = PV_b0x_maglist + [_wpn_type];
							};
						};
					};
					uiSleep 2;
				};
				
				{_b0x addWeaponCargoGlobal [_x, 5];} forEach PV_b0x_wpnlist;
				{_b0x addMagazineCargoGlobal [_x, 20];} forEach PV_b0x_maglist;
				_b0x addBackpackCargoGlobal ["DZ_Backpack_EP1", 1];
			};
		};
		if(_option == 9003) then
		{
			_dir = getdir _playerObj;
			_pos = getPosATL _playerObj;
			_pos = [(_pos select 0)+2*sin(_dir),(_pos select 1)+2*cos(_dir),(_pos select 2)];
			[_dir,_pos] spawn {
				_dir = _this select 0;
				_pos = _this select 1;
				_b0x = 'Foodbox0' createVehicle _pos;
				_b0x setPosATL _pos;
				clearWeaponCargoGlobal _b0x;
				clearmagazinecargoGlobal _b0x;
				
				{_b0x addMagazineCargoGlobal [_x, 40];} forEach ['ItemWoodWallGarageDoor','ItemWoodWallGarageDoorLocked',
				'ItemWoodFloorHalf','ItemWoodWallDoorLg','ItemWoodWallWithDoorLgLocked','ItemWoodWallLg',
				'ItemWoodWallWindowLg','ItemWoodFloorQuarter','ItemWoodWallDoor','ItemWoodWallWithDoorLocked',
				'ItemWoodWall','ItemWoodWallWindow','ItemWoodWallThird','ItemWoodLadder','ItemWoodFloor','ItemWoodStairs',
				'ItemWoodStairsSupport','ItemTentDomed2','ItemTentDomed','ItemTent','ItemTankTrap',
				'ItemSandbagLarge','ItemSandbag','ItemPole','ItemCorrugated','ItemCanvas','ItemBurlap','PartWoodLumber',
				'PartWoodPlywood','bulk_empty','wooden_shed_kit','wood_shack_kit','workbench_kit','stick_fence_kit',
				'sandbag_nest_kit','sun_shade_kit','rusty_gate_kit','outhouse_kit','storage_shed_kit','light_pole_kit',
				'ItemLightBulb','desert_net_kit','forest_net_kit','desert_large_net_kit','forest_large_net_kit',
				'metal_panel_kit','ItemComboLock','FoodMRE','CinderBlocks','deer_stand_kit',
				'ItemGoldBar10oz','ItemSilverBar10oz','ItemGoldBar','ItemSilverBar','MortarBucket',
				'ItemCopperBar','ItemCopperBar10oz','ItemBriefcase100oz','ItemBriefcase80oz','ItemFireBarrel_kit',
				'ItemBriefcase60oz','ItemBriefcase40oz','ItemBriefcase20oz','ItemGunRackKit','ItemOilBarrel','ItemFuelBarrel',
				'm240_nest_kit','ItemLockbox','metal_floor_kit','cinder_wall_kit','cinder_garage_kit','cinder_door_kit',
				'ItemVault','ItemGenerator','Skin_Rocker2_DZ','30m_plot_kit','Skin_SurvivorW2_DZ','Skin_Functionary1_EP1_DZ',
				'Skin_Haris_Press_EP1_DZ','Skin_Priest_DZ','Skin_SurvivorWpink_DZ','Skin_SurvivorWurban_DZ',
				'Skin_SurvivorWcombat_DZ','Skin_SurvivorWdesert_DZ','Skin_Survivor2_DZ','fuel_pump_kit','ItemFuelPump',
				'Skin_Rocker1_DZ','Skin_Rocker3_DZ','Skin_RU_Policeman_DZ','Skin_Pilot_EP1_DZ',
				'Skin_Rocker4_DZ','Skin_Bandit1_DZ','Skin_Bandit2_DZ','Skin_GUE_Commander_DZ',
				'Skin_GUE_Soldier_2_DZ','Skin_GUE_Soldier_CO_DZ','Skin_GUE_Soldier_Crew_DZ',
				'Skin_GUE_Soldier_MG_DZ','Skin_GUE_Soldier_Sniper_DZ','Skin_Ins_Soldier_GL_DZ',
				'Skin_TK_INS_Soldier_EP1_DZ','Skin_TK_INS_Warlord_EP1_DZ','Skin_BanditW1_DZ','park_bench_kit',
				'Skin_BanditW2_DZ','Skin_CZ_Special_Forces_GL_DES_EP1_DZ','Skin_Drake_Light_DZ','PartPlankPack',
				'Skin_Soldier_Sniper_PMC_DZ','Skin_FR_OHara_DZ','Skin_FR_Rodriguez_DZ','ItemSandbagExLarge',
				'Skin_CZ_Soldier_Sniper_EP1_DZ','Skin_Graves_Light_DZ','Skin_Soldier_Bodyguard_AA12_PMC_DZ',
				'Skin_Camo1_DZ','Skin_Rocket_DZ','Skin_Sniper1_DZ','Skin_Soldier1_DZ','Skin_Soldier_TL_PMC_DZ','wood_ramp_kit'];
				{_b0x addWeaponCargoGlobal [_x, 20];} forEach ['ItemFishingPole','ItemSledge','ItemKeyKit','ItemToolbox','ItemEtool'];
			};
		};
		if(_option == 9004) then
		{
			_dir = getdir _playerObj;
			_pos = getPos _playerObj;
			_pos = [(_pos select 0)+2*sin(_dir),(_pos select 1)+2*cos(_dir),(_pos select 2)];
			[_dir,_pos,_playerObj] spawn {
				_dir = _this select 0;
				_pos = _this select 1;
				_b0x = 'Foodbox1' createVehicle _pos;
				clearWeaponCargoGlobal _b0x;
				clearmagazinecargoGlobal _b0x;
				_b0x setPosATL _pos;
				{_b0x addMagazineCargoGlobal [_x, 1];} forEach ['ItemWoodWallLg','ItemWoodFloorQuarter','ItemWoodStairs',
				'ItemWoodWallWithDoorLgLocked','ItemWoodWallGarageDoorLocked','ItemLockBox','ItemVault','ItemSledgeHead','ItemSledgeHandle','30m_plot_kit','workbench_kit'];
				_b0x addWeaponCargoGlobal ['ItemToolbox', 1];
				_b0x addWeaponCargoGlobal ['ItemCrowbar', 1];
				_b0x addWeaponCargoGlobal ['ItemEtool', 1];
			};
		};
		if(_option == 9005) then
		{
			_dir = getdir _playerObj;
			_pos = getPos _playerObj;
			_pos = [(_pos select 0)+2*sin(_dir),(_pos select 1)+2*cos(_dir),(_pos select 2)];
			[_dir,_pos,_playerObj] spawn {
				_dir = _this select 0;
				_pos = _this select 1;
				_b0x = 'Foodbox1' createVehicle _pos;
				clearWeaponCargoGlobal _b0x;
				clearmagazinecargoGlobal _b0x;
				_b0x setPosATL _pos;
				{_b0x addMagazineCargoGlobal [_x, 1];} forEach ['ItemVault','ItemSledgeHead','ItemSledgeHandle','storage_shed_kit','30m_plot_kit','workbench_kit'];
				_b0x addMagazineCargoGlobal ['cinder_wall_kit', 15];
				_b0x addMagazineCargoGlobal ['MortarBucket', 10];
				_b0x addMagazineCargoGlobal ['CinderBlocks', 30];
				_b0x addMagazineCargoGlobal ['cinder_garage_kit', 2];
				_b0x addMagazineCargoGlobal ['ItemTankTrap', 6];
				_b0x addMagazineCargoGlobal ['ItemPole', 6];
				_b0x addMagazineCargoGlobal ['ItemComboLock', 2];
				_b0x addMagazineCargoGlobal ['ItemWoodLadder', 2];
				_b0x addMagazineCargoGlobal ['ItemWoodStairs', 3];
				_b0x addMagazineCargoGlobal ['metal_floor_kit', 8];
				{_b0x addWeaponCargoGlobal [_x, 1];} forEach
				[
				'ItemToolbox',
				'ItemCrowbar',
				'ItemEtool'
				];
			};
		};
		if(_option == 9006) then
		{
			_dir = getdir _playerObj;
			_pos = getPos _playerObj;
			_pos = [(_pos select 0)+2*sin(_dir),(_pos select 1)+2*cos(_dir),(_pos select 2)];
			[_dir,_pos,_playerObj] spawn {
				_dir = _this select 0;
				_pos = _this select 1;
				_b0x = 'Foodbox1' createVehicle _pos;
				clearWeaponCargoGlobal _b0x;
				clearmagazinecargoGlobal _b0x;
				_b0x setPosATL _pos;
				{_b0x addMagazineCargoGlobal [_x, 1];} forEach ['30m_plot_kit','workbench_kit'];
				{_b0x addMagazineCargoGlobal [_x, 25];} forEach
				[
				'cinder_wall_kit'
				];
				{_b0x addMagazineCargoGlobal [_x, 15];} forEach
				[
				'MortarBucket'
				];
				{_b0x addMagazineCargoGlobal [_x, 50];} forEach
				[
				'CinderBlocks'
				];
				{_b0x addMagazineCargoGlobal [_x, 4];} forEach
				[
				'cinder_garage_kit',
				'ItemComboLock',
				'ItemWoodLadder'
				];
				{_b0x addMagazineCargoGlobal [_x, 12];} forEach
				[
				'ItemTankTrap',
				'ItemPole'
				];
				{_b0x addMagazineCargoGlobal [_x, 6];} forEach
				[
				'ItemWoodStairs'
				];
				{_b0x addMagazineCargoGlobal [_x, 15];} forEach
				[
				'metal_floor_kit'
				];
				{_b0x addMagazineCargoGlobal [_x, 2];} forEach
				[
				'ItemVault',
				'ItemSledgeHead',
				'ItemSledgeHandle',
				'storage_shed_kit'
				];
				{_b0x addWeaponCargoGlobal [_x, 2];} forEach
				[
				'ItemToolbox',
				'ItemCrowbar',
				'ItemEtool'
				];
			};
		};
	};
	server_onPlayerConnect_infiSTAR =
	{
		_log = format['infiSTAR.de PlayerConnected: %1',_this];
		diag_log (_log);
		_this call fnc_infiSTAR_PlayerLog;
	};
	waitUntil {uiSleep 0.1;
		!isNil 'server_onPlayerConnect_infiSTAR' && 
		!isNil 'fnc_infiSTAR_Serverkick' && 
		!isNil 'fnc_WriteLogReqq' && 
		!isNil 'fnc_AdminReqProceed'
	};
	_server_onPlayerConnect_infiSTAR = server_onPlayerConnect_infiSTAR;
	_fnc_infiSTAR_Serverkick = fnc_infiSTAR_Serverkick;
	_fnc_WriteLogReqq = fnc_WriteLogReqq;
	_fnc_AdminReqProceed = fnc_AdminReqProceed;
	
	_fnc_WriteLogReq = {'test'};
	fnc_WriteLogReq = _fnc_WriteLogReq;
	while {1 == 1} do
	{
		breakshitbyben = 'no breaking logs please.';
		if(str fnc_WriteLogReq != str _fnc_WriteLogReq) then
		{
			_fnc_WriteLogReq = fnc_WriteLogReq;
			
			_log = format['fnc_WriteLogReq CHANGED: %1',fnc_WriteLogReq];
			diag_log ('infiSTAR.de Log: '+_log);
			'HackLog' callExtension (format['%1%2',_log,DAYZ_INSTANCE_LOGGING]);
		};
		
		server_onPlayerConnect_infiSTAR = _server_onPlayerConnect_infiSTAR;
		onPlayerConnected {[_uid,_name] call server_onPlayerConnect_infiSTAR;};
		fnc_infiSTAR_Serverkick = _fnc_infiSTAR_Serverkick;
		if(str fnc_WriteLogReqq != str _fnc_WriteLogReqq) then
		{
			_log = format['fnc_WriteLogReqq CHANGED: %1',fnc_WriteLogReqq];
			diag_log ('infiSTAR.de Log: '+_log);
			'HackLog' callExtension (format['%1%2',_log,DAYZ_INSTANCE_LOGGING]);
			fnc_WriteLogReqq = _fnc_WriteLogReqq;
		};
		fnc_AdminReqProceed = _fnc_AdminReqProceed;
		'PVAH_WriteLogReq' addPublicVariableEventHandler {_this call fnc_WriteLogReqq;};
		uiSleep 1;
	};
};
[] spawn {
	waitUntil {uiSleep 0.1;!isNil 'sm_done'};
	uiSleep 30;
	{
		if(!isNull _x) then {_x addMPEventHandler ["MPKilled",{_this call infiSTAR_object_handleServerKilled;}];};
	} forEach ([0,0,0] nearEntities [['LandVehicle','Air','Ship'], 10000000]);
	infiSTAR_object_handleServerKilled =
	{
		private['_unit','_objectID','_objectUID','_source','_entities'];
		_unit = _this select 0;
		_source = _this select 1;
		if(isNil '_unit') then {_unit = objNull;};
		if(isNil '_source') then {_source = objNull;};
		
		_log = '';
		_name = '';
		_uid = '';
		
		_objectID 	= _unit getVariable['ObjectID','0'];
		_objectUID 	= _unit getVariable['ObjectUID','0'];
		_worldSpace = [getDir _unit,getPosATL _unit];
		_nearby = [];
		_entities = _unit nearEntities [['Man'], 200];
		{
			if(!isNull _x) then
			{
				_nearguy = _x;
				if(getPlayerUID _nearguy != '') then
				{
					{
						if(!isNull _x) then
						{
							if(getPlayerUID _x != '') then
							{
								_logN = format['%1 (%2)',name _x,getPlayerUID _x];
								if !(_logN in _nearby) then
								{
									_nearby = _nearby + [_logN];
								};
							};
						};
					} forEach (crew vehicle _nearguy);
				};
			};
		} forEach _entities;
		
		if(!isNull _source) then
		{
			_uid = getPlayerUID _source;
			if(_uid != '') then
			{
				_name = name _source;
			};
		};
		
		if(!isNull _unit) then
		{
			_locked = '';
			if(locked _unit) then {_locked = 'Locked ';};
			_characterID = '0';_characterID = _unit getvariable['CharacterID','0'];
			if(_uid != '') then
			{
				_log = format['%10Vehicle destroyed with %9 @%7 by %1 (%2) - %3, worldspace %4, CharId %11, objID %5, objUID %6, nearby %8',
				_name,_uid,typeOf _unit,_worldSpace,_objectID,_objectUID,mapGridPosition _unit,_nearby,weaponState _source,_locked,_characterID];
			}
			else
			{
				_log = format['%7Vehicle destroyed @%5 - %1, worldspace %2, CharId %8, objID %3, objUID %4, nearby %6',
				typeOf _unit,_worldSpace,_objectID,_objectUID,mapGridPosition _unit,_nearby,_locked,_characterID];
			};
		};
		diag_log ('infiSTAR.de Log: '+_log);
		'SurveillanceLog' callExtension (format['%1%2',_log,DAYZ_INSTANCE_LOGGING]);
		PV_SurveillanceLog = PV_SurveillanceLog + [[[_name,_uid,_log],'','0','1','0','0',[]]];
		publicVariable 'PV_SurveillanceLog';
		true
	};
};
[] spawn {
	waitUntil {uiSleep 0.1;!isNil 'sm_done'};
	uiSleep 5;
	infiSTAR_customSend =
	{
		private ['_unit','_variable','_arraytosend','_source','_humanityHit','_arr'];
		_arr = (_this select 1);
		_unit = _arr select 0;
		_variable = _arr select 1;
		_arraytosend = _arr select 2;
		if(_variable == 'Humanity') then
		{
			_source = _arraytosend select 0;
			_humanityHit = _arraytosend select 1;
			if(abs _humanityHit > 12000) then
			{
				if(!isNull _source) then
				{
					_clientUID = getPlayerUID _source;
					if(_clientUID != '') then
					{
						if((vehicle _source) isKindOf 'Man') then
						{
							_clientName = name _source;
							
							deleteVehicle (vehicle _source);
							_do = format['if(!isServer) then
							{
								if(getPlayerUID player == ''%1'') then
								{
									removeAllWeapons player;
								};
							};',_clientUID];
							_tmpu=createAgent['Rabbit',[2500,2500,0],[],0,'FORM'];_tmpu setVehicleInit _do;processInitCommands;clearVehicleInit _tmpu;deleteVehicle _tmpu;
							
							_log = format['%1 (%2) - Significant humanity change (%3)!.. damage hack?',_clientName,_clientUID,_humanityHit];
							diag_log ('infiSTAR.de Log: '+_log);
							'HackLog' callExtension (format['%1%2',_log,DAYZ_INSTANCE_LOGGING]);
							PV_hackerL0og = PV_hackerL0og + [[_log,'','0','1','0','0',[]]];
							publicVariable 'PV_hackerL0og';
						};
					};
				};
			};
		};
		if(_variable == 'SafeZoneState') then
		{
			_state = _arraytosend select 0;
			_pos = getPosATL _unit;
			_GPS = mapGridPosition _pos;
			_msg = '   Entered SafeZone';
			if(_state == 0) then
			{
				_msg = '   Left SafeZone';
			};
			_log = format['%1(%2) - %3 @%4',name _unit,getPlayerUID _unit,_msg,_GPS];
			diag_log ('infiSTAR.de Log: '+_log);
			'SafeZone' callExtension (format['%1%2',_log,DAYZ_INSTANCE_LOGGING]);
		};
	};
	'PVDZE_send' addPublicVariableEventHandler
	{
		(_this select 1) call server_sendToClient;
		_this call infiSTAR_customSend;
	};
	if(!isNil 'server_logUnlockLockEvent') then
	{
		server_logUnlockLockEvent = {
			private['_obj','_player','_objectID','_objectUID','_pos','_worldspace','_log','_codeEntered','_doorCode','_status','_statusText'];
			_obj = _this select 1;
			if(!isNull _obj) then
			{
				_player = _this select 0;
				_objectID = _obj getVariable['ObjectID', '0'];
				_objectUID = _obj getVariable['ObjectUID', '0'];
				
				_log = '';
				if(count _this > 3) then
				{
					_codeEntered = _this select 3;
					if(_codeEntered == 'NOTHING ENTERED') then {_player setDamage 5;_codeEntered = '-HACKER KILLED-';};
					if(_codeEntered == '') then {_codeEntered = '000';};
					_doorCode = _this select 4;
					if(_codeEntered==_doorCode) then
					{
						_log = format['DOOR UNLOCKED: ID:%1 UID:%2 BY %3(%4) @%5 Code Entered: %6',_objectID,_objectUID,(name _player),(getPlayerUID _player),(mapGridPosition _obj),_codeEntered];
					}
					else
					{
						_log = format['DOOR UNLOCK ATTEMPT: ID:%1 UID:%2 BY %3(%4) @%5 Code Entered: %6 | Correct Code: %7',_objectID,_objectUID,(name _player),(getPlayerUID _player),(mapGridPosition _obj),_codeEntered,_doorCode];
					};
				}
				else
				{
					_status = _this select 2;
					_statusText = 'UNLOCKED';
					if(_status) then
					{
						[_obj, 'gear'] call server_updateObject;
						_statusText = 'LOCKED';
					};
					_log = format['SAFE %6: ID:%1 UID:%2 BY %3(%4) @%5', _objectID, _objectUID, (name _player), (getPlayerUID _player), (mapGridPosition _obj), _statusText];
				};
				diag_log ('infiSTAR.de Log: '+_log);
				'logUnlockLock' callExtension (format['%1%2',_log,DAYZ_INSTANCE_LOGGING]);
			};
		};
	};
};
BIS_Effects_Burn={};
diag_log ('infiSTAR.de - AntiHack FULLY LOADED');
/* ********************************************************************************* */
/* *********************************www.infiSTAR.de********************************* */
/* *******************Developed by infiSTAR (infiSTAR23@gmail.com)****************** */
/* **************infiSTAR Copyright®© 2011 - 2015 All rights reserved.************** */
/* ********************************************************************************* */
/* ****DayZAntiHack.com***DayZAntiHack.de***ArmaAntiHack.com***Arma3AntiHack.com**** */