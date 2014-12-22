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
// --------------- BIS Planes ---------------
// ------------------------------------------
// ---------- OPFOR ----------
	// ---------- "L39_TK_EP1" L-39 Takistan Army ----------
	case "L39_TK_EP1_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG(150Rnd_23mm_GSh23L);
		ADD_MAG(64Rnd_57mm);
		ADD_WEP(GSh23L_L39);
		ADD_WEP(57mmLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_L39_TK_EP1_mm,_tgt,"F2F Air Loadout Selector System (L-39)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","L39_TK_EP1_mm",50);
		};
	};
	// ---------- "Su25_CDF" Su-25 [CDF] ----------
	case "Su25_CDF_exe_agm":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- GP AGM's Loadout -----
		ADD_MAG(120Rnd_CMFlareMagazine);
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(4Rnd_Ch29);	
		ADD_MAG(2Rnd_R73);
		ADD_MAG(80Rnd_S8T);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh301);
		ADD_WEP(Ch29Launcher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(S8Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su25_CDF_mm,_tgt,"F2F Air Loadout Selector System (Su-25 [CDF])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su25_CDF_mm",50);
		};
	};
	case "Su25_CDF_exe_ffb":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Freefall Bombs Loadout -----
		ADD_MAG(120Rnd_CMFlareMagazine);
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(80Rnd_S8T);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh301);
		ADD_WEP(AirBombLauncher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(S8Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su25_CDF_mm,_tgt,"F2F Air Loadout Selector System (Su-25 [CDF])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su25_CDF_mm",50);
		};
	};
	// ---------- "Su25_Ins" Su-25 [ChDKZ] ----------
	case "Su25_Ins_exe_agm":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- GP AGM's Loadout -----
		ADD_MAG(120Rnd_CMFlareMagazine);
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(4Rnd_Ch29);		
		ADD_MAG(2Rnd_R73);
		ADD_MAG(80Rnd_S8T);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh301);
		ADD_WEP(Ch29Launcher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(S8Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su25_Ins_mm,_tgt,"F2F Air Loadout Selector System (Su-25 [ChDKZ])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su25_Ins_mm",50);
		};
	};
	case "Su25_Ins_exe_ffb":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Freefall Bombs Loadout -----
		ADD_MAG(120Rnd_CMFlareMagazine);
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(80Rnd_S8T);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh301);
		ADD_WEP(AirBombLauncher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(S8Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su25_Ins_mm,_tgt,"F2F Air Loadout Selector System (Su-25 [ChDKZ])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su25_Ins_mm",50);
		};
	};
	// ---------- "Su39" Su-25 [Russia] ----------
	case "Su39_exe_agm":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- GP AGM's Loadout -----
		ADD_MAG(120Rnd_CMFlareMagazine);
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(4Rnd_Ch29);		
		ADD_MAG(2Rnd_R73);
		ADD_MAG(80Rnd_S8T);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh301);
		ADD_WEP(Ch29Launcher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(S8Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su39_mm,_tgt,"F2F Air Loadout Selector System (Su-25 [Russia])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su39_mm",50);
		};
	};
	case "Su39_exe_ffb":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Freefall Bombs Loadout -----
		ADD_MAG(120Rnd_CMFlareMagazine);
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(80Rnd_S8T);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh301);
		ADD_WEP(AirBombLauncher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(S8Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su39_mm,_tgt,"F2F Air Loadout Selector System (Su-25 [Russia])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su39_mm",50);
		};
	};
	// ---------- "Su25_TK_EP1" Su-25 [Takistan Army] ----------
	case "Su25_TK_EP1_exe_agm":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- GP AGM's Loadout -----
		ADD_MAG(120Rnd_CMFlareMagazine);
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(4Rnd_Ch29);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(80Rnd_S8T);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh301);
		ADD_WEP(Ch29Launcher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(S8Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su25_TK_EP1_mm,_tgt,"F2F Air Loadout Selector System (Su-25 [Takistan Army])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su25_TK_EP1_mm",50);
		};
	};
	case "Su25_TK_EP1_exe_ffb":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Freefall Bombs Loadout -----
		ADD_MAG(120Rnd_CMFlareMagazine);
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(80Rnd_S8T);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh301);
		ADD_WEP(AirBombLauncher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(S8Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su25_TK_EP1_mm,_tgt,"F2F Air Loadout Selector System (Su-25 [Takistan Army])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su25_TK_EP1_mm",50);
		};
	};
	// ---------- "Su34" Su-34 ----------
	case "Su34_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		_tgt addMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine",[-1]];
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(6Rnd_Ch29);
		ADD_MAG(4Rnd_R73);
		ADD_MAG(40Rnd_S8T);
		ADD_WEP(GSh301);
		ADD_WEP(Ch29Launcher_Su34);
		ADD_WEP(R73Launcher);
		ADD_WEP(80mmLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su34_mm,_tgt,"F2F Air Loadout Selector System (Su-34)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su34_mm",50);
		};
	};
	case "Su34_exe_agm":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- GP AGM's Loadout -----
		_tgt addMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine",[-1]];
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(6Rnd_Ch29);
		ADD_MAG(4Rnd_Ch29);
		ADD_MAG(4Rnd_R73);
		ADD_MAG(40Rnd_S8T);
		ADD_WEP(GSh301);
		ADD_WEP(Ch29Launcher_Su34);
		ADD_WEP(R73Launcher);
		ADD_WEP(80mmLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su34_mm,_tgt,"F2F Air Loadout Selector System (Su-34)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su34_mm",50);
		};
	};
	case "Su34_exe_ffb":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Freefall Bombs Loadout -----
		_tgt addMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine",[-1]];
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(40Rnd_S8T);
		ADD_WEP(GSh301);
		ADD_WEP(AirBombLauncher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(80mmLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su34_mm,_tgt,"F2F Air Loadout Selector System (Su-34)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su34_mm",50);
		};
	};
// ---------- BLUFOR ----------
	// ---------- "A10" A-10 [USMC] ----------
	case "A10_exe_cas":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Close Air Support Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(1350Rnd_30mmAP_A10);
		ADD_MAG(4Rnd_GBU12);
		ADD_MAG(4Rnd_GBU12);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU8);
		ADD_WEP(BombLauncherA10);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_A10_mm,_tgt,"F2F Air Loadout Selector System (A-10)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_mm",50);
		};
	};
	case "A10_exe_cap":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Combat Air Patrol Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(1350Rnd_30mmAP_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(4Rnd_GBU12);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU8);
		ADD_WEP(MaverickLauncher);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(BombLauncherA10);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_A10_mm,_tgt,"F2F Air Loadout Selector System (A-10)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_mm",50);
		};
	};
	case "A10_exe_ai":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(1350Rnd_30mmAP_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU8);
		ADD_WEP(MaverickLauncher);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_A10_mm,_tgt,"F2F Air Loadout Selector System (A-10)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_mm",50);
		};
	};
	// ---------- "A10_US_EP1" A-10 [US] ----------
	case "A10_US_EP1_exe_cas":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Close Air Support Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(1350Rnd_30mmAP_A10);
		ADD_MAG(4Rnd_GBU12);
		ADD_MAG(4Rnd_GBU12);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU8);
		ADD_WEP(BombLauncherA10);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_A10_US_EP1_mm,_tgt,"F2F Air Loadout Selector System (A-10)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_US_EP1_mm",50);
		};
	};
	case "A10_US_EP1_exe_cap":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Combat Air Patrol Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(1350Rnd_30mmAP_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(4Rnd_GBU12);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU8);
		ADD_WEP(MaverickLauncher);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(BombLauncherA10);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_A10_US_EP1_mm,_tgt,"F2F Air Loadout Selector System (A-10)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_US_EP1_mm",50);
		};
	};
	case "A10_US_EP1_exe_ai":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(1350Rnd_30mmAP_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU8);
		ADD_WEP(MaverickLauncher);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_A10_US_EP1_mm,_tgt,"F2F Air Loadout Selector System (A-10)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_US_EP1_mm",50);
		};
	};
	// ---------- "AV8B" AV-8B Harrier II LGB ----------
	case "AV8B_exe_as":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Superiority Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(SidewinderLaucher_AH1Z);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B_mm,_tgt,"F2F Air Loadout Selector System (AV-8B LGB)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B_mm",50);
		};
	};
	case "AV8B_exe_cas":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Close Air Support Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(6Rnd_GBU12_AV8B);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(BombLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B_mm,_tgt,"F2F Air Loadout Selector System (AV-8B LGB)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B_mm",50);
		};
	};
	case "AV8B_exe_ai":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction Maverick Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(MaverickLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B_mm,_tgt,"F2F Air Loadout Selector System (AV-8B LGB)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B_mm",50);
		};
	};
	case "AV8B_exe_cap":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Combat Air Patrol Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(MaverickLauncher);
		ADD_WEP(SidewinderLaucher_AH1Z);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B_mm,_tgt,"F2F Air Loadout Selector System (AV-8B LGB)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B_mm",50);
		};
	};
	// ---------- "AV8B2" AV-8B Harrier II ----------
	case "AV8B2_exe_as":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard + AIM-9's -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(6Rnd_Mk82);
		ADD_MAG(14Rnd_FFAR);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(Mk82BombLauncher_6);
		ADD_WEP(FFARLauncher_14);
		ADD_WEP(SidewinderLaucher_AH1Z);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B2_mm,_tgt,"F2F Air Loadout Selector System (AV-8B)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B2_mm",50);
		};
	};
	case "AV8B2_exe_cap":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard + AGM-65's -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(6Rnd_Mk82);
		ADD_MAG(14Rnd_FFAR);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(Mk82BombLauncher_6);
		ADD_WEP(FFARLauncher_14);
		ADD_WEP(MaverickLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B2_mm,_tgt,"F2F Air Loadout Selector System (AV-8B)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B2_mm",50);
		};
	};
// ------------------------------------------
// --------------- Addon Planes -------------
// ------------------------------------------
	// ---------- "F2F_F18C" F2F F/A-18C ----------
	case "F2F_F18C_exe_as":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Superiority Package -----
		ADD_MAG_DRIVER(60Rnd_CMFlareMagazine);
		ADD_MAG_DRIVER(F2F_578Rnd_20mm_M61);
		ADD_MAG_DRIVER(2Rnd_Sidewinder_AH1Z);
		ADD_MAG_DRIVER(F2F_6Rnd_AIM120);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(F2F_M61);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(F2F_AIM120Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_F2F_F18C_mm,_tgt,"F2F Air Loadout Selector System (F/A-18C F2F)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","F2F_F18C3_mm",50);
		};
	};
	case "F2F_F18C_exe_casGBU":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Close Air Support (GBU-12) Package -----
		ADD_MAG_DRIVER(60Rnd_CMFlareMagazine);
		ADD_MAG_DRIVER(F2F_578Rnd_20mm_M61);
		ADD_MAG_DRIVER(2Rnd_Sidewinder_AH1Z);
		ADD_MAG_DRIVER(6Rnd_GBU12_AV8B);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(F2F_M61);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(BombLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_F2F_F18C_mm,_tgt,"F2F Air Loadout Selector System (F/A-18C F2F)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","F2F_F18C3_mm",50);
		};
	};
	case "F2F_F18C_exe_aiAGM":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction (AGM-65) Package -----
		ADD_MAG_DRIVER(60Rnd_CMFlareMagazine);
		ADD_MAG_DRIVER(F2F_578Rnd_20mm_M61);
		ADD_MAG_DRIVER(2Rnd_Sidewinder_AH1Z);
		ADD_MAG_DRIVER(2Rnd_Maverick_A10);
		ADD_MAG_DRIVER(2Rnd_Maverick_A10);
		ADD_MAG_DRIVER(2Rnd_Maverick_A10);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(F2F_M61);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(MaverickLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_F2F_F18C_mm,_tgt,"F2F Air Loadout Selector System (F/A-18C F2F)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","F2F_F18C3_mm",50);
		};
	};
	case "F2F_F18C_exe_cap":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Combat Air Patrol Package -----
		ADD_MAG_DRIVER(60Rnd_CMFlareMagazine);
		ADD_MAG_DRIVER(F2F_578Rnd_20mm_M61);
		ADD_MAG_DRIVER(2Rnd_Sidewinder_AH1Z);
		ADD_MAG_DRIVER(4Rnd_GBU12);
		ADD_MAG_DRIVER(2Rnd_Maverick_A10);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(F2F_M61);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(BombLauncherA10);
		ADD_WEP(MaverickLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_F2F_F18C_mm,_tgt,"F2F Air Loadout Selector System (F/A-18C F2F)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","F2F_F18C3_mm",50);
		};
	};
	// ---------- "EF2000BW" (EF2000 Eurofighter Typhoon BW by Pillord, StieMO, CJ187) ----------
	case "EF2000BW_exe_cat":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- CAT Package -----
		ADD_MAG_DRIVER(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG_DRIVER(6Rnd_Maverick_EF);
		ADD_MAG_DRIVER(2Rnd_Sidewinder_F35);
		ADD_MAG_DRIVER(300Rnd_25mm_GAU12);
		ADD_MAG_DRIVER(38Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(EF_MaverickLauncher);
		ADD_WEP(SidewinderLaucher_F35);
		ADD_WEP(GAU12);
		ADD_WEP(FFARLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_EF2000BW_mm,_tgt,"F2F Air Loadout Selector System (EF2000 Eurofighter Typhoon BW)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","EF2000BW_mm",50);
		};
	};
	case "EF2000BW_exe_cas":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- CAS Package -----
		ADD_MAG_DRIVER(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG_DRIVER(6Rnd_GBU12_AV8B);
		ADD_MAG_DRIVER(4Rnd_Sidewinder_AV8B);
		ADD_MAG_DRIVER(300Rnd_25mm_GAU12);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(BombLauncher);
		ADD_WEP(SidewinderLaucher);
		ADD_WEP(GAU12);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_EF2000BW_mm,_tgt,"F2F Air Loadout Selector System (EF2000 Eurofighter Typhoon BW)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","EF2000BW_mm",50);
		};
	};
	case "EF2000BW_exe_cap":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- CAP Package -----
		ADD_MAG_DRIVER(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG_DRIVER(300Rnd_25mm_GAU12);
		ADD_MAG_DRIVER(6Rnd_Maverick_EF);
		ADD_MAG_DRIVER(6Rnd_Mk82);
		ADD_MAG_DRIVER(2Rnd_Sidewinder_F35);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(EF_MaverickLauncher);
		ADD_WEP(Mk82BombLauncher_6);
		ADD_WEP(SidewinderLaucher_F35);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_EF2000BW_mm,_tgt,"F2F Air Loadout Selector System (EF2000 Eurofighter Typhoon BW)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","EF2000BW_mm",50);
		};
	};
	// ---------- "F15E" (F-15E by Southy) ----------
	case "F15E_exe_cbu":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- CBU Package -----
		ADD_MAG(RKTF15E_cbu_6Rail);
		ADD_MAG(RKTF15E_mk84_6Rail);
		ADD_MAG(RKT_F15_AIM120_4Rail);
		ADD_MAG(RKT_F15_M61);
		ADD_WEP(RKTF15E_cbu_6Rail);
		ADD_WEP(RKTF15E_mk84_6Rail);
		ADD_WEP(RKT_F15_AIM120_4Rail);
		ADD_WEP(RKT_F15_M61);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_F15E_mm,_tgt,"F2F Air Loadout Selector System (F-15E)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","F15E_mm",50);
		};
	};
	case "F15E_exe_gbu":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- GBU-12 Package -----
		ADD_MAG(RKTF15E_GBU10_8Rail);
		ADD_MAG(RKT_F15_AIM9_2Rail);
		ADD_MAG(RKT_F15_AIM120_2Rail);
		ADD_MAG(RKT_F15_M61);
		ADD_WEP(RKTF15E_GBU10_8Rail);
		ADD_WEP(RKT_F15_AIM9_2Rail);
		ADD_WEP(RKT_F15_AIM120_2Rail);
		ADD_WEP(RKT_F15_M61);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_F15E_mm,_tgt,"F2F Air Loadout Selector System (F-15E)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","F15E_mm",50);
		};
	};
	case "F15E_exe_mk84":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Mk-84 Package -----
		ADD_MAG(RKTF15E_mk82_6Rail);
		ADD_MAG(RKTF15E_mk84_6Rail);
		ADD_MAG(RKT_F15_AIM120_4Rail);
		ADD_MAG(RKT_F15_M61);
		ADD_WEP(RKTF15E_mk82_6Rail);
		ADD_WEP(RKTF15E_mk84_6Rail);
		ADD_WEP(RKT_F15_AIM120_4Rail);
		ADD_WEP(RKT_F15_M61);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_F15E_mm,_tgt,"F2F Air Loadout Selector System (F-15E)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","F15E_mm",50);
		};
	};
	// ---------- "F15C" (F-15C by Southy) ----------
	case "F15C_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(RKT_F15_AIM120_6Rail);
		ADD_MAG_DRIVER(RKT_F15_AIM9_4Rail);
		ADD_MAG_DRIVER(RKT_F15_M61);
		ADD_WEP(RKT_F15_AIM120_6Rail);
		ADD_WEP(RKT_F15_AIM9_4Rail);
		ADD_WEP(RKT_F15_M61);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_F15C_mm,_tgt,"F2F Air Loadout Selector System (F-15C)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","F15C_mm",50);
		};
	};
	// ---------- "TFB_OV10" (OV-10 Bronco TFB - TFB Modification) ----------
	case "TFB_OV10_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlareMagazine);
		ADD_MAG_DRIVER(300Rnd_25mm_GAU12);
		ADD_MAG_DRIVER(4000Rnd_762x51_M134);
		ADD_MAG_DRIVER(38Rnd_FFAR);
		ADD_MAG_DRIVER(TFB_38Rnd_FFAR_WP);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(TwinM134);
		ADD_WEP(TFB_FFARLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_TFB_OV10_mm,_tgt,"F2F Air Loadout Selector System (OV-10 Bronco TFB)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","TFB_OV10_mm",50);
		};
	};		
	// ---------- "OV10" (OV-10 Bronco - Tigerian Air Force by CheyenneAH56) ----------
	case "OV10_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(60Rnd_CMFlareMagazine);
		ADD_MAG_DRIVER(300Rnd_25mm_GAU12);
		ADD_MAG_DRIVER(4000Rnd_762x51_M134);
		ADD_MAG_DRIVER(2Rnd_Sidewinder_AH1Z);
		ADD_MAG_DRIVER(38Rnd_FFAR);
		ADD_MAG_DRIVER(38Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(TwinM134);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(FFARLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_OV10_mm,_tgt,"F2F Air Loadout Selector System (OV-10 Bronco)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","OV10_mm",50);
		};
	};	
	// ---------- "Su34" Su-34 ----------
	case "ACE_Su34_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG_DRIVER(180Rnd_30mm_GSh301);
		ADD_MAG_DRIVER(40Rnd_S8T);
		ADD_MAG(6Rnd_Ch29);
		ADD_MAG(4Rnd_R73);
		ADD_WEP(Ch29Launcher_Su34);
		ADD_WEP(R73Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Su34_mm,_tgt,"F2F Air Loadout Selector System (Su-34 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_Su34_mm",50);
		};
	};
	case "ACE_Su34_exe_agm":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- GP AGM's Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG_DRIVER(180Rnd_30mm_GSh301);
		ADD_MAG_DRIVER(40Rnd_S8T);
		ADD_MAG(6Rnd_Ch29);
		ADD_MAG(4Rnd_Ch29);
		ADD_WEP(Ch29Launcher_Su34);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Su34_mm,_tgt,"F2F Air Loadout Selector System (Su-34 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_Su34_mm",50);
		};
	};
	case "ACE_Su34_exe_ffb":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Freefall Bombs Loadout -----
		ADD_MAG_DRIVER(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG_DRIVER(180Rnd_30mm_GSh301);
		ADD_MAG_DRIVER(40Rnd_S8T);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(2Rnd_R73);
		ADD_WEP(AirBombLauncher);
		ADD_WEP(R73Launcher_2);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Su34_mm,_tgt,"F2F Air Loadout Selector System (Su-34 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_Su34_mm",50);
		};
	};
	// ---------- "ACE_Su25" Su-25 ACE ----------
	case "ACE_Su25_exe_agm":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- GP AGM's Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(ACE_250Rnd_30mm_Gsh302);
		ADD_MAG(4Rnd_Ch29);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(40Rnd_S8T);
		ADD_MAG(40Rnd_80mm);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh302);
		ADD_WEP(Ch29Launcher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(ACE_S8Launcher_Plane);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Su25_mm,_tgt,"F2F Air Loadout Selector System (Su-25 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_Su25_mm",50);
		};
	};
	case "ACE_Su25_exe_ffb":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Freefall Bombs Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(ACE_250Rnd_30mm_Gsh302);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(40Rnd_S8T);
		ADD_MAG(40Rnd_80mm);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh302);
		ADD_WEP(AirBombLauncher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(ACE_S8Launcher_Plane);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Su25_mm,_tgt,"F2F Air Loadout Selector System (Su-25 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_Su25_mm",50);
		};
	};
	// ---------- "ACE_Su39" Su-25 ACE ----------
	case "ACE_Su39_exe_agm":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- GP AGM's Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(ACE_250Rnd_30mm_Gsh302);
		ADD_MAG(4Rnd_Ch29);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(40Rnd_S8T);
		ADD_MAG(40Rnd_80mm);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh302);
		ADD_WEP(Ch29Launcher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(ACE_S8Launcher_Plane);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Su39_mm,_tgt,"F2F Air Loadout Selector System (Su-25 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_Su39_mm",50);
		};
	};
	case "ACE_Su39_exe_ffb":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Freefall Bombs Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(ACE_250Rnd_30mm_Gsh302);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(40Rnd_S8T);
		ADD_MAG(40Rnd_80mm);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh302);
		ADD_WEP(AirBombLauncher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(ACE_S8Launcher_Plane);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Su39_mm,_tgt,"F2F Air Loadout Selector System (Su-25 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_Su39_mm",50);
		};
	};
	// ---------- "ACE_A10" A-10 ACE ----------
	case "ACE_A10_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(ACE_1350Rnd_30mmAP_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(4Rnd_GBU12);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(ACE_GAU8);
		ADD_WEP(MaverickLauncher);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(BombLauncherA10);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_A10_mm,_tgt,"F2F Air Loadout Selector System (A-10 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_A10_mm",50);
		};
	};
	case "ACE_A10_exe_mk82":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Mk-82 Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(ACE_1350Rnd_30mmAP_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(ACE_4Rnd_Mk82);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(ACE_GAU8);
		ADD_WEP(MaverickLauncher);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(ACE_Mk82BombLauncher);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_A10_mm,_tgt,"F2F Air Loadout Selector System (A-10 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_A10_mm",50);
		};
	};
	case "ACE_A10_exe_cbu87":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(ACE_1350Rnd_30mmAP_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(ACE_4Rnd_CBU87);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(ACE_GAU8);
		ADD_WEP(MaverickLauncher);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(ACE_CBU87_Bomblauncher);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_A10_mm,_tgt,"F2F Air Loadout Selector System (A-10 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_A10_mm",50);
		};
	};
	// ---------- "ACE_L39" L-39 ACE ----------
	case "ACE_L39_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG(ACE_1Rnd_UB16);
		ADD_MAG(ACE_1Rnd_UB16);
		ADD_MAG(ACE_1Rnd_UB16);
		ADD_MAG(ACE_1Rnd_UB16);
		ADD_MAG(150Rnd_23mm_GSh23L);
		ADD_MAG(64Rnd_57mm);
		ADD_WEP(GSh23L_L39);
		ADD_WEP(ACE_UB16_Pods);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_L39_TK_EP1_mm,_tgt,"F2F Air Loadout Selector System (L-39 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_L39_mm",50);
		};
	};
	case "ACE_L39_exe_fab":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- FAB 250 Loadout -----
		ADD_MAG(150Rnd_23mm_GSh23L);
		ADD_MAG(ACE_4Rnd_FAB_250);
		ADD_WEP(GSh23L_L39);
		ADD_WEP(ACE_AirBombLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_L39_TK_EP1_mm,_tgt,"F2F Air Loadout Selector System (L-39 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_L39_mm",50);
		};
	};
	// ---------- "rksl_efa_fgr4" FGR4 ----------
	case "rksl_efa_fgr4_exe_as1":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Superiority 1 Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_AIM120);
		ADD_MAG(RKSL_4Rnd_AIM132);
		ADD_MAG(RKSL_2rnd_efa_fueltank);
		ADD_MAG(RKSL_2rnd_pylonblank);
		ADD_MAG(RKSL_1rnd_efa_fueltank);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_AIM120Launcher);
		ADD_WEP(RKSL_AIM132Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_as2":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Superiority 2 Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_Meteor);
		ADD_MAG(RKSL_4Rnd_AIM132);
		ADD_MAG(RKSL_2rnd_efa_fueltank);
		ADD_MAG(RKSL_2Rnd_AIM120);
		ADD_MAG(RKSL_1rnd_efa_fueltank);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_MeteorLauncher);
		ADD_WEP(RKSL_AIM120Launcher);
		ADD_WEP(RKSL_AIM132Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_lgtLGB":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Light LGB Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_AIM120);
		ADD_MAG(RKSL_2Rnd_AIM132);
		ADD_MAG(RKSL_6Rnd_PAVE4_500);
		ADD_MAG(RKSL_1rnd_efa_fueltank);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_AIM120Launcher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_Paveway4500Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_medLGB":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Medium LGB Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_AIM120);
		ADD_MAG(RKSL_2Rnd_AIM132);
		ADD_MAG(RKSL_6Rnd_PAVE2_500);
		ADD_MAG(RKSL_1rnd_efa_fueltank);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_AIM120Launcher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_Paveway500Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_hvyLGB":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Heavy LGB Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_AIM120);
		ADD_MAG(RKSL_2Rnd_AIM132);
		ADD_MAG(RKSL_6Rnd_PAVE2_1000);
		ADD_MAG(RKSL_1rnd_efa_fueltank);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_AIM120Launcher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_Paveway1000Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_sr1":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Swing Role 1 Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_Meteor);
		ADD_MAG(RKSL_4Rnd_AIM132);
		ADD_MAG(RKSL_2rnd_stormshadow);
		ADD_MAG(RKSL_2Rnd_PAVE2_1000);
		ADD_MAG(RKSL_1rnd_efa_fueltank);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_MeteorLauncher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_stormshadow_Launcher);
		ADD_WEP(RKSL_Paveway1000Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_sr2":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Swing Role 2 Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_Meteor);
		ADD_MAG(RKSL_2Rnd_AIM132);
		ADD_MAG(RKSL_4Rnd_Maverick);
		ADD_MAG(RKSL_2Rnd_PAVE4_500);
		ADD_MAG(RKSL_1rnd_efa_fueltank);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_MeteorLauncher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_MaverickLauncher);
		ADD_WEP(RKSL_Paveway4500Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_ai":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_AIM120);
		ADD_MAG(RKSL_2Rnd_AIM132);
		ADD_MAG(RKSL_2Rnd_PAVE2_1000);
		ADD_MAG(RKSL_2rnd_efa_fueltank);
		ADD_MAG(RKSL_2Rnd_PAVE2_500);
		ADD_MAG(RKSL_litening_Pod_mag);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_AIM120Launcher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_Paveway1000Launcher);
		ADD_WEP(RKSL_Paveway500Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_sead1":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- SEAD 1 Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_AIM120);
		ADD_MAG(RKSL_2Rnd_AIM132);
		ADD_MAG(RKSL_2Rnd_ALARM);
		ADD_MAG(RKSL_2rnd_efa_fueltank);
		ADD_MAG(RKSL_2Rnd_PAVE2_500);
		ADD_MAG(RKSL_1rnd_efa_fueltank);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_AIM120Launcher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_ALARM_Launcher);
		ADD_WEP(RKSL_Paveway500Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_sead2":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- SEAD 2 Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_AIM120);
		ADD_MAG(RKSL_2Rnd_AIM132);
		ADD_MAG(RKSL_6Rnd_ALARM);
		ADD_MAG(RKSL_1rnd_efa_fueltank);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_AIM120Launcher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_ALARM_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_casHvy":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- CAS Heavy Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_AIM120);
		ADD_MAG(RKSL_2Rnd_AIM132);
		ADD_MAG(RKSL_4Rnd_GP_1000);
		ADD_MAG(RKSL_2Rnd_PAVE2_1000);
		ADD_MAG(RKSL_litening_Pod_mag);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_AIM120Launcher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_1000GPLauncher);
		ADD_WEP(RKSL_Paveway1000Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_casLgt":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- CAS Light Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_AIM120);
		ADD_MAG(RKSL_2Rnd_AIM132);
		ADD_MAG(RKSL_19Rnd_CRV7_FAT);
		ADD_MAG(RKSL_19Rnd_CRV7_HEPD);
		ADD_MAG(RKSL_CRV_lau5003FPodx2);
		ADD_MAG(RKSL_4Rnd_PAVE4_500);
		ADD_MAG(RKSL_litening_Pod_mag);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_AIM120Launcher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_CRV7_hepd_Launcher);
		ADD_WEP(RKSL_CRV7_FAT_Launcher);
		ADD_WEP(RKSL_Paveway4500Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_casLgt2":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- CAS Light 2 Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_AIM120);
		ADD_MAG(RKSL_2Rnd_AIM132);
		ADD_MAG(RKSL_19Rnd_CRV7_FAT);
		ADD_MAG(RKSL_19Rnd_CRV7_HEPD);
		ADD_MAG(RKSL_CRV_lau5003FPodx2);
		ADD_MAG(RKSL_2Rnd_brimstone_rack_mag);
		ADD_MAG(RKSL_2Rnd_PAVE4_500);
		ADD_MAG(RKSL_litening_Pod_mag);
		ADD_MAG(RKSL_7Rnd_pylonblank);
		ADD_MAG(RKSL_6Rnd_Brimstone_DM);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_AIM120Launcher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_CRV7_hepd_Launcher);
		ADD_WEP(RKSL_CRV7_FAT_Launcher);
		ADD_WEP(RKSL_BrimstoneLauncher);
		ADD_WEP(RKSL_Paveway4500Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_ms1":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Maritime Strike 1 Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_AIM120);
		ADD_MAG(RKSL_4Rnd_AIM132);
		ADD_MAG(RKSL_2rnd_harpoon);
		ADD_MAG(RKSL_2Rnd_PAVE2_1000);
		ADD_MAG(RKSL_1rnd_efa_fueltank);
		ADD_MAG(RKSL_1rnd_efa_cft);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_AIM120Launcher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_harpoon_Launcher);
		ADD_WEP(RKSL_Paveway1000Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_ms2":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Maritime Strike 2 Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_AIM120);
		ADD_MAG(RKSL_2Rnd_AIM132);
		ADD_MAG(RKSL_4rnd_harpoon);
		ADD_MAG(RKSL_2Rnd_PAVE2_1000);
		ADD_MAG(RKSL_1rnd_efa_fueltank);
		ADD_MAG(RKSL_1rnd_efa_cft);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_AIM120Launcher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_harpoon_Launcher);
		ADD_WEP(RKSL_Paveway1000Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_eums":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- EU Maritime Strike Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_AIM120);
		ADD_MAG(RKSL_2Rnd_irist);
		ADD_MAG(RKSL_2rnd_agm119mk3);
		ADD_MAG(RKSL_2rnd_efa_fueltank);
		ADD_MAG(RKSL_3rnd_pylonblank);
		ADD_MAG(RKSL_1rnd_efa_cft);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_AIM120Launcher);
		ADD_WEP(RKSL_iristLauncher);
		ADD_WEP(RKSL_agm119mk3_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_aa1":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Anti Armour 1 Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_Meteor);
		ADD_MAG(RKSL_2Rnd_AIM132);
		ADD_MAG(RKSL_6Rnd_brimstone_rack_mag);
		ADD_MAG(RKSL_litening_Pod_mag);
		ADD_MAG(RKSL_1rnd_efa_cft);
		ADD_MAG(RKSL_18Rnd_Brimstone_DM);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_MeteorLauncher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_BrimstoneLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_aa2":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Anti Armour 2 Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_Meteor);
		ADD_MAG(RKSL_2Rnd_AIM132);
		ADD_MAG(RKSL_6Rnd_brimstone_rack_mag);
		ADD_MAG(RKSL_litening_Pod_mag);
		ADD_MAG(RKSL_1rnd_efa_cft);
		ADD_MAG(RKSL_18Rnd_Brimstone);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_MeteorLauncher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_BrimstoneLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_aa3":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Anti Armour 3 Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_Meteor);
		ADD_MAG(RKSL_2Rnd_AIM132);
		ADD_MAG(RKSL_2Rnd_brimstone_rack_mag);
		ADD_MAG(RKSL_4Rnd_PAVE4_500);
		ADD_MAG(RKSL_1rnd_efa_fueltank);
		ADD_MAG(RKSL_1Rnd_pylonblank);
		ADD_MAG(RKSL_6Rnd_Brimstone_DM);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_MeteorLauncher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_BrimstoneLauncher);
		ADD_WEP(RKSL_Paveway4500Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	case "rksl_efa_fgr4_exe_aa4":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Anti Armour 4 Loadout -----
		ADD_MAG(RKSL_150Rnd_27mmAP_Mauser);
		ADD_MAG(RKSL_4Rnd_Meteor);
		ADD_MAG(RKSL_2Rnd_AIM132);
		ADD_MAG(RKSL_4Rnd_Maverick);
		ADD_MAG(RKSL_2Rnd_PAVE4_500);
		ADD_MAG(RKSL_litening_Pod_mag);
		ADD_MAG(RKSL_1rnd_efa_cft);
		ADD_WEP(RKSL_27mmmauser);
		ADD_WEP(RKSL_MeteorLauncher);
		ADD_WEP(RKSL_AIM132Launcher);
		ADD_WEP(RKSL_MaverickLauncher);
		ADD_WEP(RKSL_Paveway4500Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	// ---------- "GLT_Su34_JDAM" (GLT Missile Box Su-34 JDAM) ----------
	case "GLT_Su34_JDAM_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		_tgt addMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine",[-1]];
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(6Rnd_Ch29);
		ADD_MAG(4Rnd_R73);
		ADD_MAG(40Rnd_S8T);
		ADD_WEP(GSh301);
		ADD_WEP(Ch29Launcher_Su34);
		ADD_WEP(R73Launcher);
		ADD_WEP(80mmLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su34_JDAM_mm,_tgt,"F2F Air Loadout Selector System (Su-34 GLT JDAM)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su34_JDAM_mm",50);
		};
	};
	case "GLT_Su34_JDAM_exe_jdam":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- JDAM Loadout -----
		_tgt addMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine",[-1]];
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(GLT_4Rnd_KAB500_JDAMBIS);
		ADD_MAG(GLT_2Rnd_Ch29TBIS);
		ADD_MAG(4Rnd_R73);
		ADD_MAG(40Rnd_S8T);
		ADD_WEP(GSh301);
		ADD_WEP(GLT_KAB500SE_Launcher);
		ADD_WEP(GLT_Ch29Launcher_IR);
		ADD_WEP(R73Launcher);
		ADD_WEP(80mmLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su34_JDAM_mm,_tgt,"F2F Air Loadout Selector System (Su-34 GLT JDAM)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su34_JDAM_mm",50);
		};
	};
	case "GLT_Su34_JDAM_exe_agm":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- GP AGM's Loadout -----
		_tgt addMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine",[-1]];
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(6Rnd_Ch29);
		ADD_MAG(4Rnd_Ch29);
		ADD_MAG(4Rnd_R73);
		ADD_MAG(40Rnd_S8T);
		ADD_WEP(GSh301);
		ADD_WEP(Ch29Launcher_Su34);
		ADD_WEP(R73Launcher);
		ADD_WEP(80mmLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su34_JDAM_mm,_tgt,"F2F Air Loadout Selector System (Su-34 GLT JDAM)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su34_JDAM_mm",50);
		};
	};
	case "GLT_Su34_JDAM_exe_ffb":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Freefall Bombs Loadout -----
		_tgt addMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine",[-1]];
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(40Rnd_S8T);
		ADD_WEP(GSh301);
		ADD_WEP(AirBombLauncher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(80mmLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su34_JDAM_mm,_tgt,"F2F Air Loadout Selector System (Su-34 GLT JDAM)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su34_JDAM_mm",50);
		};
	};
	// ---------- "GLT_Su34_Laser" (GLT Missile Box Su-34 Laser) ----------
	case "GLT_Su34_Laser_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		_tgt addMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine",[-1]];
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(6Rnd_Ch29);
		ADD_MAG(4Rnd_R73);
		ADD_MAG(40Rnd_S8T);
		ADD_WEP(GSh301);
		ADD_WEP(Ch29Launcher_Su34);
		ADD_WEP(R73Launcher);
		ADD_WEP(80mmLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su34_Laser_mm,_tgt,"F2F Air Loadout Selector System (Su-34 GLT Laser)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su34_Laser_mm",50);
		};
	};
	case "GLT_Su34_Laser_exe_lsr":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Laser Loadout -----
		_tgt addMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine",[-1]];
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(GLT_4Rnd_Ch29LBIS);
		ADD_MAG(GLT_2Rnd_Ch29TBIS);
		ADD_MAG(4Rnd_R73);
		ADD_MAG(40Rnd_S8T);
		ADD_WEP(GSh301);
		ADD_WEP(GLT_Ch29LauncherLaser);
		ADD_WEP(GLT_Ch29Launcher_IR);
		ADD_WEP(R73Launcher);
		ADD_WEP(80mmLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su34_Laser_mm,_tgt,"F2F Air Loadout Selector System (Su-34 GLT Laser)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su34_Laser_mm",50);
		};
	};
	case "GLT_Su34_Laser_exe_agm":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- GP AGM's Loadout -----
		_tgt addMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine",[-1]];
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(6Rnd_Ch29);
		ADD_MAG(4Rnd_Ch29);
		ADD_MAG(4Rnd_R73);
		ADD_MAG(40Rnd_S8T);
		ADD_WEP(GSh301);
		ADD_WEP(Ch29Launcher_Su34);
		ADD_WEP(R73Launcher);
		ADD_WEP(80mmLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su34_Laser_mm,_tgt,"F2F Air Loadout Selector System (Su-34 GLT Laser)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su34_Laser_mm",50);
		};
	};
	case "GLT_Su34_Laser_exe_ffb":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Freefall Bombs Loadout -----
		_tgt addMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine",[-1]];
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(40Rnd_S8T);
		ADD_WEP(GSh301);
		ADD_WEP(AirBombLauncher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(80mmLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su34_Laser_mm,_tgt,"F2F Air Loadout Selector System (Su-34 GLT Laser)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su34_Laser_mm",50);
		};
	};
	// ---------- "GLT_Su39_JDAM" (GLT Missile Box Su-39 JDAM) ----------
	case "GLT_Su39_JDAM_exe_jdam":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- JDAM Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(GLT_4Rnd_KAB500_JDAMBIS);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(80Rnd_S8T);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh301);
		ADD_WEP(GLT_KAB500SE_Launcher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(S8Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su39_JDAM_mm,_tgt,"F2F Air Loadout Selector System (Su-39 GLT JDAM)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su39_JDAM_mm",50);
		};
	};
	case "GLT_Su39_JDAM_exe_agm":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- GP AGM's Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(4Rnd_Ch29);		
		ADD_MAG(2Rnd_R73);
		ADD_MAG(80Rnd_S8T);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh301);
		ADD_WEP(Ch29Launcher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(S8Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su39_JDAM_mm,_tgt,"F2F Air Loadout Selector System (Su-39 GLT JDAM)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su39_JDAM_mm",50);
		};
	};
	case "GLT_Su39_JDAM_exe_ffb":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Freefall Bombs Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(80Rnd_S8T);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh301);
		ADD_WEP(AirBombLauncher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(S8Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su39_JDAM_mm,_tgt,"F2F Air Loadout Selector System (Su-39 GLT JDAM)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su39_JDAM_mm",50);
		};
	};
	// ---------- "GLT_Su39_laser" (GLT Missile Box Su-39 Laser) ----------
	case "GLT_Su39_laser_exe_lsr":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Laser Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(GLT_4Rnd_Ch29LBIS);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(80Rnd_S8T);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh301);
		ADD_WEP(GLT_Ch29LauncherLaser);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(S8Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su39_laser_mm,_tgt,"F2F Air Loadout Selector System (Su-25 GLT Laser)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su39_laser_mm",50);
		};
	};
	case "GLT_Su39_laser_exe_agm":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- GP AGM's Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(4Rnd_Ch29);		
		ADD_MAG(2Rnd_R73);
		ADD_MAG(80Rnd_S8T);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh301);
		ADD_WEP(Ch29Launcher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(S8Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su39_laser_mm,_tgt,"F2F Air Loadout Selector System (Su-25 GLT Laser)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su39_laser_mm",50);
		};
	};
	case "GLT_Su39_laser_exe_ffb":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Freefall Bombs Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(180Rnd_30mm_GSh301);
		ADD_MAG(4Rnd_FAB_250);
		ADD_MAG(2Rnd_R73);
		ADD_MAG(80Rnd_S8T);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GSh301);
		ADD_WEP(AirBombLauncher);
		ADD_WEP(R73Launcher_2);
		ADD_WEP(S8Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su39_laser_mm,_tgt,"F2F Air Loadout Selector System (Su-25 GLT Laser)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su39_laser_mm",50);
		};
	};
	// ---------- "vmfa_aw533" (F/A-18 Super Hornet by Meatball0311) ----------
	case "vmfa_aw533_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG(240Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_4Rnd_fz_f18_dualrail);
		ADD_MAG(GLT_4Rnd_AIM120);
		ADD_MAG(GLT_4Rnd_AGM65);
		ADD_MAG(GLT_4Rnd_MK82);
		ADD_MAG(578Rnd_20mm_M61A1_GLT);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(fz_f18_droptank);
		ADD_WEP(GLT_AIM120_Launcher);
		ADD_WEP(GLT_AGM65_Launcher);
		ADD_WEP(GLT_MK82_Launcher);
		ADD_WEP(GLT_M61A1);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_vmfa_aw533_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","vmfa_aw533_mm",50);
		};
	};
	case "vmfa_aw533_exe_as":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Superiority Loadout -----
		ADD_MAG(240Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_4Rnd_fz_f18_dualrail);
		ADD_MAG(GLT_12Rnd_AIM120);
		ADD_MAG(578Rnd_20mm_M61A1_GLT);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(fz_f18_droptank);
		ADD_WEP(GLT_AIM120_Launcher);
		ADD_WEP(GLT_M61A1);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_vmfa_aw533_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","vmfa_aw533_mm",50);
		};
	};
	case "vmfa_aw533_exe_cas":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Close Air Support Loadout -----
		ADD_MAG(240Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_4Rnd_fz_f18_dualrail);
		ADD_MAG(GLT_4Rnd_AGM65E);
		ADD_MAG(GLT_8Rnd_GBU12);
		ADD_MAG(578Rnd_20mm_M61A1_GLT);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(fz_f18_droptank);
		ADD_WEP(GLT_AGM65E_Launcher);
		ADD_WEP(GLT_GBU12_Launcher);
		ADD_WEP(GLT_M61A1);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_vmfa_aw533_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","vmfa_aw533_mm",50);
		};
	};
	case "vmfa_aw533_exe_ai":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction Loadout -----
		ADD_MAG(240Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_4Rnd_fz_f18_dualrail);
		ADD_MAG(GLT_2Rnd_AGM88);
		ADD_MAG(GLT_2Rnd_AGM84);
		ADD_MAG(GLT_8Rnd_AGM65);
		ADD_MAG(578Rnd_20mm_M61A1_GLT);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(fz_f18_droptank);
		ADD_WEP(GLT_AGM88_Launcher);
		ADD_WEP(GLT_AGM84_Launcher);
		ADD_WEP(GLT_AGM65_Launcher);
		ADD_WEP(GLT_M61A1);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_vmfa_aw533_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","vmfa_aw533_mm",50);
		};
	};
	case "vmfa_aw533_exe_ferry":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Ferry Loadout -----		
		ADD_MAG(GLT_empty_2);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(fz_f18_droptank);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_vmfa_aw533_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","vmfa_aw533_mm",50);
		};
	};
	// ---------- "vfa_14" (F/A-18F Super Hornet by Meatball0311) ----------
	case "vfa_14_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG(240Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_4Rnd_fz_f18_dualrail);
		ADD_MAG(GLT_4Rnd_AIM120);
		ADD_MAG(GLT_4Rnd_AGM65);
		ADD_MAG(GLT_4Rnd_MK82);
		ADD_MAG(578Rnd_20mm_M61A1_GLT);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(fz_f18_droptank);
		ADD_WEP(GLT_AIM120_Launcher);
		ADD_WEP(GLT_AGM65_Launcher);
		ADD_WEP(GLT_MK82_Launcher);
		ADD_WEP(GLT_M61A1);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_vfa_14_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","vfa_14_mm",50);
		};
	};
	case "vfa_14_exe_as":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Superiority Loadout -----
		ADD_MAG(240Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_4Rnd_fz_f18_dualrail);
		ADD_MAG(GLT_12Rnd_AIM120);
		ADD_MAG(578Rnd_20mm_M61A1_GLT);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(fz_f18_droptank);
		ADD_WEP(GLT_AIM120_Launcher);
		ADD_WEP(GLT_M61A1);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_vfa_14_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","vfa_14_mm",50);
		};
	};
	case "vfa_14_exe_cas":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Close Air Support Loadout -----
		ADD_MAG(240Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_4Rnd_fz_f18_dualrail);
		ADD_MAG(GLT_4Rnd_AGM65E);
		ADD_MAG(GLT_8Rnd_GBU12);
		ADD_MAG(578Rnd_20mm_M61A1_GLT);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(fz_f18_droptank);
		ADD_WEP(GLT_AGM65E_Launcher);
		ADD_WEP(GLT_GBU12_Launcher);
		ADD_WEP(GLT_M61A1);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_vfa_14_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","vfa_14_mm",50);
		};
	};
	case "vfa_14_exe_ai":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction Loadout -----
		ADD_MAG(240Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_4Rnd_fz_f18_dualrail);
		ADD_MAG(GLT_2Rnd_AGM88);
		ADD_MAG(GLT_2Rnd_AGM84);
		ADD_MAG(GLT_8Rnd_AGM65);
		ADD_MAG(578Rnd_20mm_M61A1_GLT);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(fz_f18_droptank);
		ADD_WEP(GLT_AGM88_Launcher);
		ADD_WEP(GLT_AGM84_Launcher);
		ADD_WEP(GLT_AGM65_Launcher);
		ADD_WEP(GLT_M61A1);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_vfa_14_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","vfa_14_mm",50);
		};
	};
	case "vfa_14_exe_ferry":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Ferry Loadout -----
		ADD_MAG(GLT_empty_2);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(fz_f18_droptank);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_vfa_14_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","vfa_14_mm",50);
		};
	};
	// ---------- "no_1sqn" (F/A-18F Super Hornet by Meatball0311) ----------
	case "no_1sqn_exe_std":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Standard Loadout -----
		ADD_MAG(240Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_4Rnd_fz_f18_dualrail);
		ADD_MAG(GLT_4Rnd_AIM120);
		ADD_MAG(GLT_4Rnd_AGM65);
		ADD_MAG(GLT_4Rnd_MK82);
		ADD_MAG(578Rnd_20mm_M61A1_GLT);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(fz_f18_droptank);
		ADD_WEP(GLT_AIM120_Launcher);
		ADD_WEP(GLT_AGM65_Launcher);
		ADD_WEP(GLT_MK82_Launcher);
		ADD_WEP(GLT_M61A1);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_no_1sqn_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","no_1sqn_mm",50);
		};
	};
	case "no_1sqn_exe_as":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Superiority Loadout -----
		ADD_MAG(240Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_4Rnd_fz_f18_dualrail);
		ADD_MAG(GLT_12Rnd_AIM120);
		ADD_MAG(578Rnd_20mm_M61A1_GLT);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(fz_f18_droptank);
		ADD_WEP(GLT_AIM120_Launcher);
		ADD_WEP(GLT_M61A1);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_no_1sqn_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","no_1sqn_mm",50);
		};
	};
	case "no_1sqn_exe_cas":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Close Air Support Loadout -----
		ADD_MAG(240Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_4Rnd_fz_f18_dualrail);
		ADD_MAG(GLT_4Rnd_AGM65E);
		ADD_MAG(GLT_8Rnd_GBU12);
		ADD_MAG(578Rnd_20mm_M61A1_GLT);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(fz_f18_droptank);
		ADD_WEP(GLT_AGM65E_Launcher);
		ADD_WEP(GLT_GBU12_Launcher);
		ADD_WEP(GLT_M61A1);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_no_1sqn_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","no_1sqn_mm",50);
		};
	};
	case "no_1sqn_exe_ai":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction Loadout -----
		ADD_MAG(240Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_4Rnd_fz_f18_dualrail);
		ADD_MAG(GLT_2Rnd_AGM88);
		ADD_MAG(GLT_2Rnd_AGM84);
		ADD_MAG(GLT_8Rnd_AGM65);
		ADD_MAG(578Rnd_20mm_M61A1_GLT);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(fz_f18_droptank);
		ADD_WEP(GLT_AGM88_Launcher);
		ADD_WEP(GLT_AGM84_Launcher);
		ADD_WEP(GLT_AGM65_Launcher);
		ADD_WEP(GLT_M61A1);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_no_1sqn_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","no_1sqn_mm",50);
		};
	};
	case "no_1sqn_exe_ferry":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Ferry Loadout -----		
		ADD_MAG(GLT_empty_2);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_MAG(GLT_1Rnd_fz_f18_droptank);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(fz_f18_droptank);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_no_1sqn_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","no_1sqn_mm",50);
		};
	};
	// ---------- "14US" (F-14D Super Tomcat by VectorX96) ----------
	case "14US_exe_mr":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Multi-Role Loadout -----
		ADD_MAG_DRIVER(360Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_2Rnd_AIM54);
		ADD_MAG(GLT_2Rnd_MK84);
		ADD_MAG(GLT_2Rnd_AIM9X);
		ADD_MAG(GLT_1Rnd_AIM7);
		ADD_MAG(1Rnd_LANTIRN);
		ADD_MAG_DRIVER(M61_676Rnd);
		ADD_WEP(GLT_AIM54_Launcher);
		ADD_WEP(GLT_MK84_Launcher);
		ADD_WEP(GLT_AIM9X_Launcher);
		ADD_WEP(F14_AIM7_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_14US_mm,_tgt,"F2F Air Loadout Selector System (F-14D Super Tomcat)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","14US_mm",50);
		};
	};
	case "14US_exe_cas":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Close Air Support Loadout -----
		ADD_MAG_DRIVER(360Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_4Rnd_GBU12);
		ADD_MAG(GLT_2Rnd_AIM9X);
		ADD_MAG(GLT_1Rnd_AIM7);
		ADD_MAG(1Rnd_LANTIRN);
		ADD_MAG_DRIVER(M61_676Rnd);
		ADD_WEP(GLT_GBU12_Launcher);
		ADD_WEP(GLT_AIM9X_Launcher);
		ADD_WEP(F14_AIM7_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_14US_mm,_tgt,"F2F Air Loadout Selector System (F-14D Super Tomcat)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","14US_mm",50);
		};
	};
	case "14US_exe_cap":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Combat Air Patrol Loadout -----
		ADD_MAG_DRIVER(360Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_4Rnd_AIM54);
		ADD_MAG(GLT_2Rnd_AIM9X);
		ADD_MAG(GLT_2Rnd_AIM7);
		ADD_MAG_DRIVER(M61_676Rnd);
		ADD_WEP(GLT_AIM54_Launcher);
		ADD_WEP(GLT_AIM9X_Launcher);
		ADD_WEP(F14_AIM7_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_14US_mm,_tgt,"F2F Air Loadout Selector System (F-14D Super Tomcat)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","14US_mm",50);
		};
	};
	case "14US_exe_ai":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction Loadout -----
		ADD_MAG_DRIVER(360Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(GLT_6Rnd_AGM65);
		ADD_MAG(GLT_1Rnd_AIM7);
		ADD_MAG_DRIVER(M61_676Rnd);
		ADD_WEP(GLT_AGM65_Launcher);
		ADD_WEP(F14_AIM7_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_14US_mm,_tgt,"F2F Air Loadout Selector System (F-14D Super Tomcat)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","14US_mm",50);
		};
	};
	// ---------- "HarrierGR3" (Harrier Gr3 RAFG Default bt Trouble) ----------
	case "HarrierGR3_exe_as":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Superiority Loadout -----
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_WEP(GAU12);
		ADD_WEP(SidewinderLaucher_AH1Z);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_HarrierGR3_mm,_tgt,"F2F Air Loadout Selector System (Harrier Gr3)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","HarrierGR3_mm",50);
		};
	};
	case "HarrierGR3_exe_cas":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Close Air Support Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(6Rnd_GBU12_AV8B);
		ADD_WEP(GAU12);
		ADD_WEP(BombLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_HarrierGR3_mm,_tgt,"F2F Air Loadout Selector System (Harrier Gr3)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","HarrierGR3_mm",50);
		};
	};
	case "HarrierGR3_exe_ai":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction Maverick Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_WEP(GAU12);
		ADD_WEP(MaverickLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_HarrierGR3_mm,_tgt,"F2F Air Loadout Selector System (Harrier Gr3)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","HarrierGR3_mm",50);
		};
	};
	case "HarrierGR3_exe_cap":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Combat Air Patrol Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_WEP(GAU12);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(MaverickLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_HarrierGR3_mm,_tgt,"F2F Air Loadout Selector System (Harrier Gr3)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","HarrierGR3_mm",50);
		};
	};
	// ---------- "HarrierGR3s" (Harrier Gr3 RAFG Snow by Trouble) ----------
	case "HarrierGR3s_exe_as":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Superiority Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_WEP(GAU12);
		ADD_WEP(SidewinderLaucher_AH1Z);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_HarrierGR3s_mm,_tgt,"F2F Air Loadout Selector System (Harrier Gr3 Snow)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","HarrierGR3s_mm",50);
		};
	};
	case "HarrierGR3s_exe_cas":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Close Air Support Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(6Rnd_GBU12_AV8B);
		ADD_WEP(GAU12);
		ADD_WEP(BombLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_HarrierGR3s_mm,_tgt,"F2F Air Loadout Selector System (Harrier Gr3 Snow)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","HarrierGR3s_mm",50);
		};
	};
	case "HarrierGR3s_exe_ai":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction Maverick Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_WEP(GAU12);
		ADD_WEP(MaverickLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_HarrierGR3s_mm,_tgt,"F2F Air Loadout Selector System (Harrier Gr3 Snow)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","HarrierGR3s_mm",50);
		};
	};
	case "HarrierGR3s_exe_cap":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Combat Air Patrol Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_WEP(GAU12);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(MaverickLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_HarrierGR3s_mm,_tgt,"F2F Air Loadout Selector System (Harrier Gr3 Snow)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","HarrierGR3s_mm",50);
		};
	};
	// ---------- GLT F-16C (All Variants) ----------
	case "GLT_F16C_exe_agm":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air-Ground Missiles Loadout -----
		if (typeOf vehicle player != "GLT_Falcon_lg_var1" && typeOf vehicle player != "GLT_Falcon_lg_var2" && typeOf vehicle player != "GLT_Falcon_var1" && typeOf vehicle player != "GLT_Falcon_var2" && typeOf vehicle player != "GLT_Falcon_Black_var1" && typeOf vehicle player != "GLT_Falcon_Black_var2" && typeOf vehicle player != "GLT_Falcon_euro_var1" && typeOf vehicle player != "GLT_Falcon_euro_var2") then
		{
			ADD_MAG(360Rnd_CMFlare_Chaff_Magazine);
			ADD_WEP(CMFlareLauncher_GLT);
		};
		ADD_MAG(500Rnd_20mm_M61A1_GLT);
		ADD_MAG(GLT_2Rnd_AIM9X);
		ADD_MAG(GLT_2Rnd_AIM120);
		ADD_MAG(GLT_6Rnd_AGM65);
		ADD_WEP(GLT_M61A1);
		ADD_WEP(GLT_AIM9X_Launcher);
		ADD_WEP(GLT_AIM120_Launcher);
		ADD_WEP(GLT_AGM65_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_F16C_mm,_tgt,"F2F Air Loadout Selector System (F-16C GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_F16C_mm",50);
		};
	};
	case "GLT_F16C_exe_agm88":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- AGM-88's Loadout -----
		if (typeOf vehicle player != "GLT_Falcon_lg_var1" && typeOf vehicle player != "GLT_Falcon_lg_var2" && typeOf vehicle player != "GLT_Falcon_var1" && typeOf vehicle player != "GLT_Falcon_var2" && typeOf vehicle player != "GLT_Falcon_Black_var1" && typeOf vehicle player != "GLT_Falcon_Black_var2" && typeOf vehicle player != "GLT_Falcon_euro_var1" && typeOf vehicle player != "GLT_Falcon_euro_var2") then
		{
			ADD_MAG(360Rnd_CMFlare_Chaff_Magazine);
			ADD_WEP(CMFlareLauncher_GLT);
		};
		ADD_MAG(500Rnd_20mm_M61A1_GLT);
		ADD_MAG(GLT_2Rnd_AIM120);
		ADD_MAG(GLT_2Rnd_AGM88);
		ADD_MAG(GLT_6Rnd_MK81);
		ADD_WEP(GLT_M61A1);
		ADD_WEP(GLT_AIM120_Launcher);
		ADD_WEP(GLT_AGM88_Launcher);
		ADD_WEP(GLT_MK81_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_F16C_mm,_tgt,"F2F Air Loadout Selector System (F-16C GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_F16C_mm",50);
		};
	};
	case "GLT_F16C_exe_cap":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Close Air Patrol Loadout -----
		if (typeOf vehicle player != "GLT_Falcon_lg_var1" && typeOf vehicle player != "GLT_Falcon_lg_var2" && typeOf vehicle player != "GLT_Falcon_var1" && typeOf vehicle player != "GLT_Falcon_var2" && typeOf vehicle player != "GLT_Falcon_Black_var1" && typeOf vehicle player != "GLT_Falcon_Black_var2" && typeOf vehicle player != "GLT_Falcon_euro_var1" && typeOf vehicle player != "GLT_Falcon_euro_var2") then
		{
			ADD_MAG(360Rnd_CMFlare_Chaff_Magazine);
			ADD_WEP(CMFlareLauncher_GLT);
		};
		ADD_MAG(500Rnd_20mm_M61A1_GLT);
		ADD_MAG(GLT_2Rnd_AIM9X);
		ADD_MAG(GLT_2Rnd_AIM7);
		ADD_MAG(GLT_4Rnd_AIM120);
		ADD_WEP(GLT_M61A1);
		ADD_WEP(GLT_AIM9X_Launcher);
		ADD_WEP(GLT_AIM7_Launcher);
		ADD_WEP(GLT_AIM120_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_F16C_mm,_tgt,"F2F Air Loadout Selector System (F-16C GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_F16C_mm",50);
		};
	};
	case "GLT_F16C_exe_exo":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exocet Loadout -----
		if (typeOf vehicle player != "GLT_Falcon_lg_var1" && typeOf vehicle player != "GLT_Falcon_lg_var2" && typeOf vehicle player != "GLT_Falcon_var1" && typeOf vehicle player != "GLT_Falcon_var2" && typeOf vehicle player != "GLT_Falcon_Black_var1" && typeOf vehicle player != "GLT_Falcon_Black_var2" && typeOf vehicle player != "GLT_Falcon_euro_var1" && typeOf vehicle player != "GLT_Falcon_euro_var2") then
		{
			ADD_MAG(360Rnd_CMFlare_Chaff_Magazine);
			ADD_WEP(CMFlareLauncher_GLT);
		};
		ADD_MAG(500Rnd_20mm_M61A1_GLT);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_2Rnd_AM39);
		ADD_MAG(GLT_6Rnd_R550);
		ADD_WEP(GLT_M61A1);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(GLT_AM39_Launcher);
		ADD_WEP(GLT_R550_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_F16C_mm,_tgt,"F2F Air Loadout Selector System (F-16C GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_F16C_mm",50);
		};
	};
	case "GLT_F16C_exe_ffb":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Freefall Bombs Loadout -----
		if (typeOf vehicle player != "GLT_Falcon_lg_var1" && typeOf vehicle player != "GLT_Falcon_lg_var2" && typeOf vehicle player != "GLT_Falcon_var1" && typeOf vehicle player != "GLT_Falcon_var2" && typeOf vehicle player != "GLT_Falcon_Black_var1" && typeOf vehicle player != "GLT_Falcon_Black_var2" && typeOf vehicle player != "GLT_Falcon_euro_var1" && typeOf vehicle player != "GLT_Falcon_euro_var2") then
		{
			ADD_MAG(360Rnd_CMFlare_Chaff_Magazine);
			ADD_WEP(CMFlareLauncher_GLT);
		};
		ADD_MAG(500Rnd_20mm_M61A1_GLT);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_2Rnd_MK84);
		ADD_MAG(GLT_6Rnd_MK82);
		ADD_WEP(GLT_M61A1);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(GLT_MK84_Launcher);
		ADD_WEP(GLT_MK82_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_F16C_mm,_tgt,"F2F Air Loadout Selector System (F-16C GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_F16C_mm",50);
		};
	};
	case "GLT_F16C_exe_mr":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Multirole Loadout -----
		if (typeOf vehicle player != "GLT_Falcon_lg_var1" && typeOf vehicle player != "GLT_Falcon_lg_var2" && typeOf vehicle player != "GLT_Falcon_var1" && typeOf vehicle player != "GLT_Falcon_var2" && typeOf vehicle player != "GLT_Falcon_Black_var1" && typeOf vehicle player != "GLT_Falcon_Black_var2" && typeOf vehicle player != "GLT_Falcon_euro_var1" && typeOf vehicle player != "GLT_Falcon_euro_var2") then
		{
			ADD_MAG(360Rnd_CMFlare_Chaff_Magazine);
			ADD_WEP(CMFlareLauncher_GLT);
		};
		ADD_MAG(500Rnd_20mm_M61A1_GLT);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_2Rnd_AGM65);
		ADD_MAG(GLT_4Rnd_AIM120);
		ADD_MAG(GLT_2Rnd_MK82);
		ADD_WEP(GLT_M61A1);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(GLT_AGM65_Launcher);
		ADD_WEP(GLT_AIM120_Launcher);
		ADD_WEP(GLT_MK82_Launcher);	
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_F16C_mm,_tgt,"F2F Air Loadout Selector System (F-16C GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_F16C_mm",50);
		};
	};
	case "GLT_F16C_exe_strk":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Strike Loadout -----
		if (typeOf vehicle player != "GLT_Falcon_lg_var1" && typeOf vehicle player != "GLT_Falcon_lg_var2" && typeOf vehicle player != "GLT_Falcon_var1" && typeOf vehicle player != "GLT_Falcon_var2" && typeOf vehicle player != "GLT_Falcon_Black_var1" && typeOf vehicle player != "GLT_Falcon_Black_var2" && typeOf vehicle player != "GLT_Falcon_euro_var1" && typeOf vehicle player != "GLT_Falcon_euro_var2") then
		{
			ADD_MAG(360Rnd_CMFlare_Chaff_Magazine);
			ADD_WEP(CMFlareLauncher_GLT);
		};
		ADD_MAG(500Rnd_20mm_M61A1_GLT);
		ADD_MAG(GLT_2Rnd_AIM9M);
		ADD_MAG(GLT_2Rnd_AGM84);
		ADD_MAG(GLT_6Rnd_GBU12);
		ADD_WEP(GLT_M61A1);
		ADD_WEP(GLT_AIM9M_Launcher);
		ADD_WEP(GLT_AGM84_Launcher);
		ADD_WEP(GLT_GBU12_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_F16C_mm,_tgt,"F2F Air Loadout Selector System (F-16C GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_F16C_mm",50);
		};
	};
	// ---------- "AV8B2_JDAM" (GLT Missile Box Harrier) ----------
	case "AV8B2_JDAM_exe_as":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Superiority Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(GLT_4Rnd_AIM120);
		ADD_MAG(GLT_2Rnd_AIM9X);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(GLT_AIM120_Launcher);
		ADD_WEP(GLT_AIM9X_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B2_JDAM_mm,_tgt,"F2F Air Loadout Selector System (AV-8B GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B2_JDAM_mm",50);
		};
	};
	case "AV8B2_JDAM_exe_cas":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Close Air Support Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(GLT_4Rnd_GBU24);
		ADD_MAG(GLT_2Rnd_AGM65E);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(GLT_GBU24_Launcher);
		ADD_WEP(GLT_AGM65E_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B2_JDAM_mm,_tgt,"F2F Air Loadout Selector System (AV-8B GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B2_JDAM_mm",50);
		};
	};
	case "AV8B2_JDAM_exe_cap":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Combat Air Patrol Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(GLT_2Rnd_GBU12);
		ADD_MAG(GLT_2Rnd_AGM65);
		ADD_MAG(GLT_2Rnd_AIM120);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(GLT_GBU12_Launcher);
		ADD_WEP(GLT_AGM65_Launcher);
		ADD_WEP(GLT_AIM120_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B2_JDAM_mm,_tgt,"F2F Air Loadout Selector System (AV-8B GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B2_JDAM_mm",50);
		};
	};
	case "AV8B2_JDAM_exe_ai_jdam":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction JDAM Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(GLT_2Rnd_GBU53BIS);
		ADD_MAG(GLT_2Rnd_GBU53BIS);
		ADD_MAG(GLT_2Rnd_GBU53BIS);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(GLT_GBU53_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B2_JDAM_mm,_tgt,"F2F Air Loadout Selector System (AV-8B GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B2_JDAM_mm",50);
		};
	};
	case "AV8B2_JDAM_exe_ai_pave":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction Paveway Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(6Rnd_GBU12_AV8B);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(BombLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B2_JDAM_mm,_tgt,"F2F Air Loadout Selector System (AV-8B GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B2_JDAM_mm",50);
		};
	};
	case "AV8B2_JDAM_exe_ai_mk81":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction GP Light Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(GLT_6Rnd_MK81);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(GLT_MK81_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B2_JDAM_mm,_tgt,"F2F Air Loadout Selector System (AV-8B GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B2_JDAM_mm",50);
		};
	};
	case "AV8B2_JDAM_exe_ai_mk82":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction GP Medium Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(GLT_6Rnd_MK82);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(GLT_MK82_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B2_JDAM_mm,_tgt,"F2F Air Loadout Selector System (AV-8B GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B2_JDAM_mm",50);
		};
	};
	case "AV8B2_JDAM_exe_ai_mk84":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction GP Heavy Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(300Rnd_25mm_GAU12);
		ADD_MAG(GLT_6Rnd_MK84);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU12);
		ADD_WEP(GLT_MK84_Launcher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B2_JDAM_mm,_tgt,"F2F Air Loadout Selector System (AV-8B GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B2_JDAM_mm",50);
		};
	};
	// ---------- "A10_US_EP1_JDAM" (GLT Missile Box A-10) ----------
	case "A10_US_EP1_JDAM_exe_cas":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Close Air Support Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(1350Rnd_30mmAP_A10);
		ADD_MAG(GLT_2Rnd_GBU24);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(GLT_4Rnd_AGM65E);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU8);
		ADD_WEP(GLT_GBU24_Launcher);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(GLT_AGM65E_Launcher);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_A10_US_EP1_JDAM_mm,_tgt,"F2F Air Loadout Selector System (A-10 GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_US_EP1_JDAM_mm",50);
		};
	};
	case "A10_US_EP1_JDAM_exe_cap":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Combat Air Patrol Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(1350Rnd_30mmAP_A10);
		ADD_MAG(GLT_2Rnd_GBU12);
		ADD_MAG(2Rnd_Sidewinder_AH1Z);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(2Rnd_Maverick_A10);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU8);
		ADD_WEP(GLT_GBU12_Launcher);
		ADD_WEP(SidewinderLaucher_AH1Z);
		ADD_WEP(MaverickLauncher);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_A10_US_EP1_JDAM_mm,_tgt,"F2F Air Loadout Selector System (A-10 GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_US_EP1_JDAM_mm",50);
		};
	};
	case "A10_US_EP1_JDAM_exe_ai_jdam":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction JDAM Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(1350Rnd_30mmAP_A10);
		ADD_MAG(GLT_2Rnd_GBU53BIS);
		ADD_MAG(GLT_2Rnd_GBU53BIS);
		ADD_MAG(GLT_2Rnd_GBU53BIS);
		ADD_MAG(GLT_2Rnd_GBU53BIS);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU8);
		ADD_WEP(GLT_GBU53_Launcher);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_A10_US_EP1_JDAM_mm,_tgt,"F2F Air Loadout Selector System (A-10 GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_US_EP1_JDAM_mm",50);
		};
	};
	case "A10_US_EP1_JDAM_exe_ai_pave":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction Paveway Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(1350Rnd_30mmAP_A10);
		ADD_MAG(4Rnd_GBU12);
		ADD_MAG(4Rnd_GBU12);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU8);
		ADD_WEP(BombLauncherA10);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_A10_US_EP1_JDAM_mm,_tgt,"F2F Air Loadout Selector System (A-10 GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_US_EP1_JDAM_mm",50);
		};
	};
	case "A10_US_EP1_JDAM_exe_ai_mk81":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction GP Light Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(1350Rnd_30mmAP_A10);
		ADD_MAG(GLT_8Rnd_MK81);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU8);
		ADD_WEP(GLT_MK81_Launcher);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_A10_US_EP1_JDAM_mm,_tgt,"F2F Air Loadout Selector System (A-10 GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_US_EP1_JDAM_mm",50);
		};
	};
	case "A10_US_EP1_JDAM_exe_ai_mk82":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction GP Medium Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(1350Rnd_30mmAP_A10);
		ADD_MAG(GLT_8Rnd_MK82);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU8);
		ADD_WEP(GLT_MK82_Launcher);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_A10_US_EP1_JDAM_mm,_tgt,"F2F Air Loadout Selector System (A-10 GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_US_EP1_JDAM_mm",50);
		};
	};
	case "A10_US_EP1_JDAM_exe_ai_mk84":
	{
		// ---------- Clear Current Loadout ----------
		#include "f2f_inc_clrWeps.sqf"
		// ----- Air Interdiction GP Heavy Loadout -----
		ADD_MAG(120Rnd_CMFlare_Chaff_Magazine);
		ADD_MAG(1350Rnd_30mmAP_A10);
		ADD_MAG(GLT_6Rnd_MK84);
		ADD_MAG(GLT_2Rnd_MK84);
		ADD_MAG(14Rnd_FFAR);
		ADD_WEP(CMFlareLauncher);
		ADD_WEP(GAU8);
		ADD_WEP(GLT_MK84_Launcher);
		ADD_WEP(FFARLauncher_14);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_A10_US_EP1_JDAM_mm,_tgt,"F2F Air Loadout Selector System (A-10 GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_US_EP1_JDAM_mm",50);
		};
	};
// ------------------------------------------
// ---------- Non-compatible Planes ---------
// ------------------------------------------
	default
	{
		if (true) exitWith {};
	};
};