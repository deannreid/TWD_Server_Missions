// ------------------------------------
// F2F's AIR LOADOUT SELECTOR SYSTEM
// CREATED BY: [F2F] SKYNET
// CONTACT ME: TheFirst2Fight@yahoo.com
// JOIN US @ www.TheFirst2Fight.com!
// ------------------------------------

_tgt = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_arg = _this select 3;

#include "f2f_inc_macros.sqf"
#include "f2f_inc_rmvActns.sqf"

switch (_arg) do
{
// ------------------------------------------
// ------------ BIS Helicopters -------------
// ------------------------------------------
// ---------- OPFOR ----------
	// ---------- "Mi17_rockets_RU" Mi-8 Russia ----------
	case "Mi17_rockets_RU_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(128Rnd_57mm);
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		{_tgt addMagazineTurret ["100Rnd_762x54_PK",[0]];} forEach [1,2,3,4,5,6,7,8,9,10,11,12];
		{_tgt addMagazineTurret ["100Rnd_762x54_PK",[1]];} forEach [1,2,3,4,5,6,7,8,9,10,11,12];
		{_tgt addMagazineTurret ["100Rnd_762x54_PK",[2]];} forEach [1,2,3,4,5,6,7,8,9,10,11,12];
		if (__isACE) then {ADD_WEP(ACE_PKT_out_3);} else {ADD_WEP(PKT_3);};
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Mi17_rockets_RU_mm,_tgt,"F2F Air Loadout Selector System (Mi-8)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi17_rockets_RU_mm",50);
		};
	};
	// ---------- "Mi171Sh_rockets_CZ_EP1" Mi-8 CZ ----------
	case "Mi171Sh_rockets_CZ_EP1_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(192Rnd_57mm);
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		{_tgt addMagazineTurret ["100Rnd_762x54_PK",[0]];} forEach [1,2,3,4,5,6,7,8,9,10,11,12];
		{_tgt addMagazineTurret ["100Rnd_762x54_PK",[1]];} forEach [1,2,3,4,5,6,7,8,9,10,11,12];
		{_tgt addMagazineTurret ["100Rnd_762x54_PK",[2]];} forEach [1,2,3,4,5,6,7,8,9,10,11,12];
		if (__isACE) then {ADD_WEP(ACE_PKT_out_2);} else {ADD_WEP(PKT_3);};
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Mi171Sh_rockets_CZ_EP1_mm,_tgt,"F2F Air Loadout Selector System (Mi-8)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi171Sh_rockets_CZ_EP1_mm",50);
		};
	};	
	// ---------- "Mi24_D" Mi-24D ----------
	case "Mi24_D_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_TURRET0(1470Rnd_127x108_YakB);
		ADD_MAG_TURRET0(4Rnd_AT2_Mi24D);
		ADD_MAG_TURRET0(128Rnd_57mm);
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_WEP(YakB);
		ADD_WEP(AT2Launcher);
		ADD_WEP(57mmLauncher_128);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Mi24_D_mm,_tgt,"F2F Air Loadout Selector System (Mi-24D)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi24_D_mm",50);
		};
	};
	// ---------- "Mi24_D_TK_EP1" Mi-24D Takistan Army ----------
	case "Mi24_D_TK_EP1_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_TURRET0(1470Rnd_127x108_YakB);
		ADD_MAG_TURRET0(4Rnd_AT2_Mi24D);
		ADD_MAG_TURRET0(128Rnd_57mm);
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_WEP(YakB);
		ADD_WEP(AT2Launcher);
		ADD_WEP(57mmLauncher_128);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Mi24_D_TK_EP1_mm,_tgt,"F2F Air Loadout Selector System (Mi-24D Takistan Army)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi24_D_TK_EP1_mm",50);
		};
	};
	// ---------- "Mi24_P" Mi-24P ----------
	case "Mi24_P_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_TURRET0(750Rnd_30mm_GSh301);
		ADD_MAG_TURRET0(4Rnd_AT9_Mi24P);
		ADD_MAG_TURRET0(2Rnd_FAB_250);
		ADD_MAG_TURRET0(40Rnd_80mm);
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_WEP(GSh302);
		ADD_WEP(AT9Launcher);
		ADD_WEP(HeliBombLauncher);
		ADD_WEP(80mmLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Mi24_P_mm,_tgt,"F2F Air Loadout Selector System (Mi-24P)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi24_P_mm",50);
		};
	};
	// ---------- "Mi24_V" Mi-24V ----------
	case "Mi24_V_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_TURRET0(1470Rnd_127x108_YakB);
		ADD_MAG_TURRET0(4Rnd_AT6_Mi24V);
		ADD_MAG_TURRET0(80Rnd_80mm);
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_WEP(YakB);
		ADD_WEP(AT6Launcher);
		ADD_WEP(S8Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Mi24_V_mm,_tgt,"F2F Air Loadout Selector System (Mi-24V)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi24_V_mm",50);
		};
	};
	// ---------- "Ka52" Ka-52 ----------
	case "Ka52_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_TURRET0(230Rnd_30mmHE_2A42);
		ADD_MAG_TURRET0(230Rnd_30mmAP_2A42);
		ADD_MAG_TURRET0(12Rnd_Vikhr_KA50);
		ADD_MAG_TURRET0(40Rnd_80mm);
		ADD_MAG_DRIVER(120Rnd_CMFlare_Chaff_Magazine);
		ADD_WEP(2A42);
		ADD_WEP(VikhrLauncher);
		ADD_WEP(80mmLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Ka52_mm,_tgt,"F2F Air Loadout Selector System (Ka-52)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Ka52_mm",50);
		};
	};
// ---------- BLUFOR ----------
	// ---------- "AH64D" AH-64D ----------
	case "AH64D_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_TURRET0(1200Rnd_30x113mm_M789_HEDP);
		ADD_MAG_TURRET0(38Rnd_FFAR);
		ADD_MAG_TURRET0(8Rnd_Hellfire);
		ADD_MAG_DRIVER(60Rnd_CMFlareMagazine);
		ADD_WEP(M230);
		ADD_WEP(FFARLauncher);
		ADD_WEP(HellfireLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AH64D_mm,_tgt,"F2F Air Loadout Selector System (AH-64D)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","AH64D_mm",50);
		};
	};
	// ---------- "BAF_Apache_AH1_D" AH-1D ----------
	case "BAF_Apache_AH1_D_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_TURRET0(1200Rnd_30x113mm_M789_HEDP);
		ADD_MAG_TURRET0(6Rnd_CRV7_HEPD);
		ADD_MAG_TURRET0(6Rnd_CRV7_FAT);
		ADD_MAG_TURRET0(8Rnd_Hellfire);
		ADD_MAG_DRIVER(60Rnd_CMFlareMagazine);
		ADD_WEP(M230);
		ADD_WEP(CRV7_HEPD);
		ADD_WEP(CRV7_FAT);
		ADD_WEP(HellfireLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_BAF_Apache_AH1_D_mm,_tgt,"F2F Air Loadout Selector System (AH-1D)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","BAF_Apache_AH1_D_mm",50);
		};
	};
	// ---------- "AH1Z" AH-1Z ----------
	case "AH1Z_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_TURRET0(750Rnd_M197_AH1);
		ADD_MAG_TURRET0(8Rnd_Hellfire);
		ADD_MAG_TURRET0(38Rnd_FFAR);
		ADD_MAG_TURRET0(2Rnd_Sidewinder_AH1Z);
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_WEP(M197);
		ADD_WEP(HellfireLauncher);
		ADD_WEP(FFARLauncher);
		ADD_WEP(SidewinderLaucher_AH1Z);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AH1Z_mm,_tgt,"F2F Air Loadout Selector System (AH-1Z Viper)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","AH1Z_mm",50);
		};
	};
	// ---------- "AH6J_EP1" AH-6J ----------
	case "AH6J_EP1_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(60Rnd_CMFlareMagazine);
		ADD_MAG_DRIVER(14Rnd_FFAR);
		ADD_MAG_DRIVER(4000Rnd_762x51_M134);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(FFARLauncher_14);
		ADD_WEP(TwinM134);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AH6J_EP1_mm,_tgt,"F2F Air Loadout Selector System (AH-6J)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","AH6J_EP1_mm",50);
		};
	};
	// ---------- "UH1Y" UH-1Y ----------
	case "UH1Y_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(14Rnd_FFAR);
		ADD_MAG_TURRET0(2000Rnd_762x51_M134);
		ADD_MAG_TURRET1(2000Rnd_762x51_M134);
		ADD_MAG_TURRET2(Laserbatteries);
		ADD_WEP(M134);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_UH1Y_mm,_tgt,"F2F Air Loadout Selector System (UH-1Y Venom)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","UH1Y_mm",50);
		};
	};
	// ---------- "Ka60_GL_PMC" Ka-60 M32 ----------
	case "Ka60_GL_PMC_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(14Rnd_57mm);
		{_tgt addMagazineTurret ["6Rnd_HE_M203_heli",[0]];} forEach [1,2,3,4,5,6,7,8,9,10];
		ADD_WEP(M32_heli);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Ka60_GL_PMC_mm,_tgt,"F2F Air Loadout Selector System (Ka-60)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Ka60_GL_PMC_mm",50);
		};
	};
	// ---------- "Ka60_PMC" Ka-60 ----------
	case "Ka60_PMC_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG(14Rnd_57mm);
		ADD_WEP(57mmLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Ka60_PMC_mm,_tgt,"F2F Air Loadout Selector System (Ka-60)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Ka60_PMC_mm",50);
		};
	};
// ------------------------------------------
// ------------ Addon Helicopters -----------
// ------------------------------------------
	// ---------- "UH60" US Army Blackhawks by yurapetrov ----------
	case "UH60_exe_mediT":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- ESSS Medical Fuel Tanks Loadout -----
		private "_acClass0";
		_acClass0 = typeOf vehicle player;
		ADD_MAG(yup_2Rnd_MedFueltank);
		if (_acClass0 == "yup_UH60Q") then {ADD_WEP(yup_Flir);};
		_acClass0 = nil;
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_UH60_mm,_tgt,"F2F Air Loadout Selector System (UH-60 Blackhawk)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","UH60_mm",50);
		};
	};
	case "UH60_exe_tLgt":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- ESSS Fuel Tanks Light Loadout -----
		private "_acClass0";
		_acClass0 = typeOf vehicle player;
		ADD_MAG(yup_2Rnd_ArmyFueltank);
		if (_acClass0 == "yup_UH60Q") then {ADD_WEP(yup_Flir);};
		_acClass0 = nil;
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_UH60_mm,_tgt,"F2F Air Loadout Selector System (UH-60 Blackhawk)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","UH60_mm",50);
		};
	};
	case "UH60_exe_tHvy":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- ESSS Fuel Tanks Heavy Loadout -----
		private "_acClass0";
		_acClass0 = typeOf vehicle player;
		ADD_MAG(yup_2Rnd_ArmyFueltank);
		ADD_MAG(yup_2Rnd_ArmyFueltank);
		if (_acClass0 == "yup_UH60Q") then {ADD_WEP(yup_Flir);};
		_acClass0 = nil;
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_UH60_mm,_tgt,"F2F Air Loadout Selector System (UH-60 Blackhawk)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","UH60_mm",50);
		};
	};
	case "UH60_exe_hell":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- ESSS Missiles Loadout -----
		private "_acClass0";
		_acClass0 = typeOf vehicle player;
		ADD_MAG(yup_4AGM114HellfirePod);
		ADD_MAG(8Rnd_Hellfire);
		ADD_MAG(8Rnd_Hellfire);
		ADD_WEP(yup_HellfireLauncher);
		if (_acClass0 == "yup_UH60Q") then {ADD_WEP(yup_Flir);};
		_acClass0 = nil;
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_UH60_mm,_tgt,"F2F Air Loadout Selector System (UH-60 Blackhawk)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","UH60_mm",50);
		};
	};
	// ---------- "ACE_Mi24_V" Mi-24V ACE ----------
	case "ACE_Mi24_V_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_MAG_DRIVER(64Rnd_57mm);
		ADD_MAG_DRIVER(40Rnd_S8T);
		ADD_MAG(1470Rnd_127x108_YakB);
		ADD_MAG(ACE_1Rnd_B8V20);
		ADD_MAG(ACE_1Rnd_UB32);
		ADD_MAG(ACE_1Rnd_UB32);
		ADD_MAG(ACE_1Rnd_B8V20);
		ADD_MAG(ACE_4Rnd_AT9_Mi24V);
		ADD_WEP(YakB);
		ADD_WEP(ACE_AT9Launcher_Mi28);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Mi24_V_mm,_tgt,"F2F Air Loadout Selector System (Mi-24V ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Mi24_V_mm",50);
		};
	};
	// ---------- "ACE_Mi24_V_CDF" Mi-24V CDF ACE ----------
	case "ACE_Mi24_V_CDF_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_MAG_DRIVER(64Rnd_57mm);
		ADD_MAG_DRIVER(40Rnd_S8T);
		ADD_MAG(1470Rnd_127x108_YakB);
		ADD_MAG(ACE_1Rnd_B8V20);
		ADD_MAG(ACE_1Rnd_UB32);
		ADD_MAG(ACE_1Rnd_UB32);
		ADD_MAG(ACE_1Rnd_B8V20);
		ADD_MAG(4Rnd_AT6_Mi24V);
		ADD_WEP(YakB);
		ADD_WEP(AT6Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Mi24_V_CDF_mm,_tgt,"F2F Air Loadout Selector System (Mi-24V CDF ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Mi24_V_CDF_mm",50);
		};
	};	
	// ---------- "ACE_Mi24_V_FAB250_RU" Mi-24V FAB250 RU ACE ----------
	case "ACE_Mi24_V_FAB250_RU_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_MAG_DRIVER(40Rnd_S8T);
		ADD_MAG(1470Rnd_127x108_YakB);
		ADD_MAG(ACE_1Rnd_B8V20);
		ADD_MAG(2Rnd_FAB_250);
		ADD_MAG(ACE_1Rnd_B8V20);
		ADD_MAG(4Rnd_AT9_Mi24P);
		ADD_WEP(YakB);
		ADD_WEP(HeliBombLauncher);
		ADD_WEP(AT9Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Mi24_V_FAB250_RU_mm,_tgt,"F2F Air Loadout Selector System (Mi-24V RU ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Mi24_V_FAB250_RU_mm",50);
		};
	};
	// ---------- "ACE_Mi24_V_FAB250_CDF" Mi-24V FAB250 CDF ACE ----------
	case "ACE_Mi24_V_FAB250_CDF_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_MAG_DRIVER(40Rnd_S8T);
		ADD_MAG(1470Rnd_127x108_YakB);
		ADD_MAG(ACE_1Rnd_B8V20);
		ADD_MAG(2Rnd_FAB_250);
		ADD_MAG(ACE_1Rnd_B8V20);
		ADD_MAG(4Rnd_AT6_Mi24V);
		ADD_WEP(YakB);
		ADD_WEP(HeliBombLauncher);
		ADD_WEP(AT6Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Mi24_V_FAB250_CDF_mm,_tgt,"F2F Air Loadout Selector System (Mi-24V CDF ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Mi24_V_FAB250_CDF_mm",50);
		};
	};
	// ---------- "ACE_Mi24_P" Mi-24P ACE ----------
	case "ACE_Mi24_P_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_MAG_DRIVER(750Rnd_30mm_GSh301);
		ADD_MAG_DRIVER(40Rnd_80mm);
		ADD_MAG_DRIVER(40Rnd_S8T);
		ADD_MAG(ACE_1Rnd_B8V20);
		ADD_MAG(ACE_1Rnd_B8V20);
		ADD_MAG(ACE_1Rnd_B8V20);
		ADD_MAG(ACE_1Rnd_B8V20);
		ADD_MAG(4Rnd_AT9_Mi24P);
		ADD_WEP(AT9Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Mi24_P_mm,_tgt,"F2F Air Loadout Selector System (Mi-24P ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Mi24_P_mm",50);
		};
	};
	// ---------- "ACE_Ka52" Ka-52 ACE ----------
	case "ACE_Ka52_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_MAG_DRIVER(40Rnd_80mm);
		ADD_MAG(230Rnd_30mmHE_2A42);
		ADD_MAG(230Rnd_30mmAP_2A42);
		ADD_MAG(12Rnd_Vikhr_KA50);
		ADD_WEP(ACE_2A42);
		ADD_WEP(VikhrLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Ka52_mm,_tgt,"F2F Air Loadout Selector System (Ka-52 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Ka52_mm",50);
		};
	};
	// ---------- "ACE_BAF_AH1" AH-1D ACE ----------
	case "ACE_BAF_AH1_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(60Rnd_CMFlareMagazine);
		ADD_MAG_DRIVER(6Rnd_CRV7_HEPD);
		ADD_MAG_DRIVER(6Rnd_CRV7_FAT);
		ADD_MAG(1200Rnd_30x113mm_M789_HEDP);
		ADD_MAG(ACE_4Rnd_Hellfire);
		ADD_MAG(ACE_4Rnd_Hellfire_L);
		ADD_WEP(M230);
		ADD_WEP(ACE_Hellfirelauncher_Apache);
		ADD_WEP(Hellfirelauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_BAF_AH1_mm,_tgt,"F2F Air Loadout Selector System (AH-1D ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_BAF_AH1_mm",50);
		};
	};
	// ---------- "ACE_AH64D" AH-64D ACE ----------
	case "ACE_AH64D_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(38Rnd_FFAR);
		ADD_MAG_DRIVER(60Rnd_CMFlareMagazine);
		ADD_MAG(1200Rnd_30x113mm_M789_HEDP);
		ADD_MAG(ACE_6Rnd_Hellfire);
		ADD_MAG(ACE_2Rnd_Hellfire_L);
		ADD_WEP(M230);
		ADD_WEP(ACE_HellfireLauncher_Apache);
		ADD_WEP(HellfireLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_AH64D_mm,_tgt,"F2F Air Loadout Selector System (AH-64D ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH64D_mm",50);
		};
	};
	// ---------- "ACE_AH6J_DAGR" ACE AH-6J DAGR ----------
	case "ACE_AH6J_DAGR_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(60Rnd_CMFlareMagazine);
		ADD_MAG_DRIVER(ACE_7Rnd_70mm_FFAR_HE);
		ADD_MAG_DRIVER(ACE_5250Rnd_762x51_M134);
		ADD_MAG(ACE_8Rnd_DAGR);
		ADD_MAG(ACE_SACLOS_Guidance);
		ADD_WEP(ACE_DAGR_Launcher);
		ADD_WEP(ACE_SACLOS_Guidance);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_AH6J_DAGR_mm,_tgt,"F2F Air Loadout Selector System (AH-6J DAGR ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH6J_DAGR_mm",50);
		};
	};
	// ---------- "ACE_AH1Z" ACE AH-1Z Viper ----------
	case "ACE_AH1Z_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_MAG_TURRET0(2Rnd_Sidewinder_AH1Z);
		ADD_MAG_TURRET0(ACE_1Rnd_HellfirePod);
		ADD_MAG_TURRET0(ACE_1Rnd_HellfirePod);
		ADD_MAG_TURRET0(ACE_1Rnd_LAU61);
		ADD_MAG_TURRET0(ACE_1Rnd_LAU61);
		ADD_MAG_TURRET0(750Rnd_M197_AH1);
		ADD_MAG_TURRET0(ACE_8Rnd_Hellfire);
		ADD_MAG_DRIVER(38Rnd_FFAR);
		// if not ("FFARLauncher" in weapons _tgt) then {ADD_WEP(FFARLauncher);};
		ADD_WEP(M197);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(ACE_HellfireLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_AH1Z_mm,_tgt,"F2F Air Loadout Selector System (AH-1Z Viper ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH1Z_mm",50);
		};
	};
	case "ACE_AH1Z_exe_agm":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- AGM Package Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_MAG_TURRET0(2Rnd_Sidewinder_AH1Z);
		ADD_MAG_TURRET0(ACE_1Rnd_HellfirePod);
		ADD_MAG_TURRET0(ACE_1Rnd_HellfirePod);
		ADD_MAG_TURRET0(ACE_1Rnd_HellfirePod);
		ADD_MAG_TURRET0(ACE_1Rnd_HellfirePod);
		ADD_MAG_TURRET0(750Rnd_M197_AH1);
		ADD_MAG_TURRET0(ACE_16Rnd_Hellfire);
		ADD_WEP(M197);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(ACE_HellfireLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_AH1Z_mm,_tgt,"F2F Air Loadout Selector System (AH-1Z Viper ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH1Z_mm",50);
		};
	};
	// ---------- "ACE_AH1W" ACE AH-1W Cobra ----------
	case "ACE_AH1W_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_MAG_TURRET0(ACE_1Rnd_HellfirePod);
		ADD_MAG_TURRET0(ACE_1Rnd_HellfirePod);
		ADD_MAG_TURRET0(ACE_1Rnd_LAU61);
		ADD_MAG_TURRET0(ACE_1Rnd_LAU61);
		ADD_MAG_TURRET0(750Rnd_M197_AH1);
		ADD_MAG_TURRET0(ACE_8Rnd_Hellfire);
		ADD_MAG_DRIVER(38Rnd_FFAR);
		ADD_WEP(M197);
		ADD_WEP(ACE_HellfireLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_AH1W_mm,_tgt,"F2F Air Loadout Selector System (AH-1W Cobra ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH1W_mm",50);
		};
	};
	case "ACE_AH1W_exe_tfhvy":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- TOW/FFAR Heavy Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);	
		ADD_MAG_TURRET0(ACE_1Rnd_TOW4);
		ADD_MAG_TURRET0(ACE_1Rnd_TOW4);
		ADD_MAG_TURRET0(ACE_1Rnd_LAU61);
		ADD_MAG_TURRET0(ACE_1Rnd_LAU61);
		ADD_MAG_TURRET0(750Rnd_M197_AH1);
		ADD_MAG_TURRET0(ACE_TOW8);
		ADD_MAG_TURRET0(ACE_8Rnd_Empty_Dummy);
		ADD_MAG_DRIVER(38Rnd_FFAR);
		ADD_WEP(M197);
		ADD_WEP(TOWLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_AH1W_mm,_tgt,"F2F Air Loadout Selector System (AH-1W Cobra ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH1W_mm",50);
		};
	};
	case "ACE_AH1W_exe_tflgt":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- TOW/FFAR Heavy Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_MAG_TURRET0(ACE_1Rnd_TOW2);
		ADD_MAG_TURRET0(ACE_1Rnd_TOW2);
		ADD_MAG_TURRET0(ACE_1Rnd_LAU61);
		ADD_MAG_TURRET0(ACE_1Rnd_LAU61);
		ADD_MAG_TURRET0(750Rnd_M197_AH1);
		ADD_MAG_TURRET0(ACE_TOW4);
		ADD_MAG_TURRET0(ACE_8Rnd_Empty_Dummy);
		ADD_MAG_DRIVER(38Rnd_FFAR);
		ADD_WEP(M197);
		ADD_WEP(TOWLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_AH1W_mm,_tgt,"F2F Air Loadout Selector System (AH-1W Cobra ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH1W_mm",50);
		};
	};
	// ---------- "ACE_AH1W" ACE AH-1W Cobra (Light) ----------
	case "ACE_AH1W2_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_MAG_TURRET0(ACE_1Rnd_HellfirePod);
		ADD_MAG_TURRET0(ACE_1Rnd_HellfirePod);
		ADD_MAG_TURRET0(ACE_1Rnd_LAU68);
		ADD_MAG_TURRET0(ACE_1Rnd_LAU68);
		ADD_MAG_TURRET0(750Rnd_M197_AH1);
		ADD_MAG_TURRET0(ACE_8Rnd_Hellfire);
		ADD_MAG_DRIVER(14Rnd_FFAR);
		ADD_WEP(M197);
		ADD_WEP(ACE_HellfireLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_AH1W2_mm,_tgt,"F2F Air Loadout Selector System (AH-1W Cobra ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH1W2_mm",50);
		};
	};
	case "ACE_AH1W2_exe_tfhvy":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- TOW/FFAR Heavy Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);	
		ADD_MAG_TURRET0(ACE_1Rnd_TOW4);
		ADD_MAG_TURRET0(ACE_1Rnd_TOW4);
		ADD_MAG_TURRET0(ACE_1Rnd_LAU68);
		ADD_MAG_TURRET0(ACE_1Rnd_LAU68);
		ADD_MAG_TURRET0(750Rnd_M197_AH1);
		ADD_MAG_TURRET0(ACE_TOW8);
		ADD_MAG_TURRET0(ACE_8Rnd_Empty_Dummy);
		ADD_MAG_DRIVER(14Rnd_FFAR);
		ADD_WEP(M197);
		ADD_WEP(TOWLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_AH1W2_mm,_tgt,"F2F Air Loadout Selector System (AH-1W Cobra ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH1W2_mm",50);
		};
	};
	case "ACE_AH1W2_exe_tflgt":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- TOW/FFAR Heavy Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_MAG_TURRET0(ACE_1Rnd_TOW2);
		ADD_MAG_TURRET0(ACE_1Rnd_TOW2);
		ADD_MAG_TURRET0(ACE_1Rnd_LAU68);
		ADD_MAG_TURRET0(ACE_1Rnd_LAU68);
		ADD_MAG_TURRET0(750Rnd_M197_AH1);
		ADD_MAG_TURRET0(ACE_TOW4);
		ADD_MAG_TURRET0(ACE_8Rnd_Empty_Dummy);
		ADD_MAG_DRIVER(14Rnd_FFAR);
		ADD_WEP(M197);
		ADD_WEP(TOWLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_AH1W2_mm,_tgt,"F2F Air Loadout Selector System (AH-1W Cobra ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH1W2_mm",50);
		};
	};
// ------------------------------------------
// ------- Non-compatible Helicopters -------
// ------------------------------------------
	default
	{
		if (true) exitWith {};
	};
};