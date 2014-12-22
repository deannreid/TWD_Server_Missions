// Add Quotes
#define QUOTE(qtext) #qtext

// Actions
#define ACTN_YL(varname,tgt,title,path,pass,lvl) varname = tgt addaction ["<t color='#ffff00'>"+title+"</t>","custom\vehicleloadoutselector\"+path,pass,lvl,false,false,"","vehicle player == _target && speed vehicle player < 0.1 && speed vehicle player > -0.1 && getPosATL vehicle player select 2 < 0.1 && getPosATL vehicle player select 2 > -0.1 && ((assignedVehicleRole player) select 0) == ""Driver"""];
#define ACTN_RD(varname,tgt,title,path,pass,lvl) varname = tgt addaction ["<t color='#ff0000'>"+title+"</t>","custom\vehicleloadoutselector\"+path,pass,lvl,false,false,"","vehicle player == _target && speed vehicle player < 0.1 && speed vehicle player > -0.1 && getPosATL vehicle player select 2 < 0.1 && getPosATL vehicle player select 2 > -0.1 && ((assignedVehicleRole player) select 0) == ""Driver"""];

// Reset Case & Clear Menus
#define CLOSER(id) waitUntil {sleep 0.1; _vec distance _loader > _radi || typeOf vehicle player != _acClass || speed _vec >= 0.1 || speed _vec <= -0.1 || ((assignedVehicleRole player) select 0) != "Driver"}; hint ""; _vec removeAction id; _vec = nil; _acClass = nil; if (true) exitWith {null = [_loader, _radi] execVM "custom\vehicleloadoutselector\f2f_alss_init.sqf"};

// Weapons / Magazines Macro Functions
#define IFMAG_RMV(magclass) if (QUOTE(magclass) in magazines _tgt) then {_tgt removeMagazines QUOTE(magclass)};
#define IFMAG_DVR_RMV(magclass) if (QUOTE(magclass) in (_tgt magazinesTurret [-1])) then {_tgt removeMagazinesTurret [QUOTE(magclass),[-1]]};
#define IFMAG_TUR0_RMV(magclass) if (QUOTE(magclass) in (_tgt magazinesTurret [0])) then {_tgt removeMagazinesTurret [QUOTE(magclass),[0]]};
#define IFMAG_TUR1_RMV(magclass) if (QUOTE(magclass) in (_tgt magazinesTurret [1])) then {_tgt removeMagazinesTurret [QUOTE(magclass),[1]]};
#define IFMAG_TUR2_RMV(magclass) if (QUOTE(magclass) in (_tgt magazinesTurret [2])) then {_tgt removeMagazinesTurret [QUOTE(magclass),[2]]};
#define ADD_MAG_TURRET2(magclass) _tgt addMagazineTurret [QUOTE(magclass),[2]];
#define ADD_MAG_TURRET1(magclass) _tgt addMagazineTurret [QUOTE(magclass),[1]];
#define ADD_MAG_TURRET0(magclass) _tgt addMagazineTurret [QUOTE(magclass),[0]];
#define ADD_MAG_DRIVER(magclass) _tgt addMagazineTurret [QUOTE(magclass),[-1]];
#define ADD_WEP(wepclass) _tgt addWeapon QUOTE(wepclass);
#define ADD_MAG(magclass) _tgt addMagazine QUOTE(magclass);
#define RMV_WEP(wepclass) _tgt removeWeapon QUOTE(wepclass);
#define RMV_MAG(magclass) _tgt removeMagazine QUOTE(magclass);

// Enable Addon Weapons
#define __isACE isClass(configFile >> "CfgPatches" >> "ace_main")
#define __isGLT isClass(configFile >> "CfgPatches" >> "GLT_Missilebox_config")
#define __isRKSL isClass(configFile >> "CfgPatches" >> "RKSL_AirWeapons_pack")