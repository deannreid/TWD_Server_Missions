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
	case "Mi17_rockets_RU_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		if (__isACE) then {ADD_WEP(ACE_PKT_out_3);} else {ADD_WEP(PKT_3);};
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Mi17_rockets_RU_mm,_tgt,"F2F Air Loadout Selector System (Mi-8)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi17_rockets_RU_mm",50);
		};
	};
	// ---------- "Mi171Sh_rockets_CZ_EP1" Mi-8 CZ ----------
	case "Mi171Sh_rockets_CZ_EP1_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		if (__isACE) then {ADD_WEP(ACE_PKT_out_2);} else {ADD_WEP(PKT_3);};
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Mi171Sh_rockets_CZ_EP1_mm,_tgt,"F2F Air Loadout Selector System (Mi-8)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi171Sh_rockets_CZ_EP1_mm",50);
		};
	};
	// ---------- "Mi24_D" Mi-24D ----------
	case "Mi24_D_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(YakB);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Mi24_D_mm,_tgt,"F2F Air Loadout Selector System (Mi-24D)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi24_D_mm",50);
		};
	};
	// ---------- "Mi24_D_TK_EP1" Mi-24D Takistan Army ----------
	case "Mi24_D_TK_EP1_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(YakB);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Mi24_D_TK_EP1_mm,_tgt,"F2F Air Loadout Selector System (Mi-24D Takistan Army)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi24_D_TK_EP1_mm",50);
		};
	};
	// ---------- "Mi24_P" Mi-24P ----------
	case "Mi24_P_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Mi24_P_mm,_tgt,"F2F Air Loadout Selector System (Mi-24P)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi24_P_mm",50);
		};
	};
	// ---------- "Mi24_V" Mi-24V ----------
	case "Mi24_V_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(YakB);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Mi24_V_mm,_tgt,"F2F Air Loadout Selector System (Mi-24V)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi24_V_mm",50);
		};
	};
	// ---------- "Ka52" Ka-52 ----------
	case "Ka52_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(2A42);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Ka52_mm,_tgt,"F2F Air Loadout Selector System (Ka-52)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Ka52_mm",50);
		};
	};
// ---------- BLUFOR ----------
	// ---------- "AH64D" AH-64D ----------
	case "AH64D_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(M230);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AH64D_mm,_tgt,"F2F Air Loadout Selector System (AH-64D)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","AH64D_mm",50);
		};
	};
	// ---------- "BAF_Apache_AH1_D" AH-1D ----------
	case "BAF_Apache_AH1_D_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(M230);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_BAF_Apache_AH1_D_mm,_tgt,"F2F Air Loadout Selector System (AH-1D)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","BAF_Apache_AH1_D_mm",50);
		};
	};
	// ---------- "AH1Z" AH-1Z ----------
	case "AH1Z_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(M197);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AH1Z_mm,_tgt,"F2F Air Loadout Selector System (AH-1Z Viper)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","AH1Z_mm",50);
		};
	};
	// ---------- "AH6J_EP1" AH-6J ----------
	case "AH6J_EP1_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AH6J_EP1_mm,_tgt,"F2F Air Loadout Selector System (AH-6J)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","AH6J_EP1_mm",50);
		};
	};
	// ---------- "UH1Y" UH-1Y ----------
	case "UH1Y_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(M134);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_UH1Y_mm,_tgt,"F2F Air Loadout Selector System (UH-1Y Venom)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","UH1Y_mm",50);
		};
	};
	// ---------- "Ka60_GL_PMC" Ka-60 M32 ----------
	case "Ka60_GL_PMC_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(M32_heli);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Ka60_GL_PMC_mm,_tgt,"F2F Air Loadout Selector System (Ka-60)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Ka60_GL_PMC_mm",50);
		};
	};
	// ---------- "Ka60_PMC" Ka-60 ----------
	case "Ka60_PMC_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Ka60_PMC_mm,_tgt,"F2F Air Loadout Selector System (Ka-60)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Ka60_PMC_mm",50);
		};
	};
// ------------------------------------------
// --------------- BIS Planes ---------------
// ------------------------------------------
// ---------- OPFOR ----------
	// ---------- "L39_TK_EP1" L-39 Takistan Army ----------
	case "L39_TK_EP1_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_L39_TK_EP1_mm,_tgt,"F2F Air Loadout Selector System (L-39)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","L39_TK_EP1_mm",50);
		};
	};
	// ---------- "Su25_CDF" Su-25 [CDF] ----------
	case "Su25_CDF_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su25_CDF_mm,_tgt,"F2F Air Loadout Selector System (Su-25 [CDF])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su25_CDF_mm",50);
		};
	};
	// ---------- "Su25_Ins" Su-25 [ChDKZ] ----------
	case "Su25_Ins_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su25_Ins_mm,_tgt,"F2F Air Loadout Selector System (Su-25 [ChDKZ])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su25_Ins_mm",50);
		};
	};
	// ---------- "Su39" Su-25 [Russia] ----------
	case "Su39_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su39_mm,_tgt,"F2F Air Loadout Selector System (Su-25 [Russia])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su39_mm",50);
		};
	};
	// ---------- "Su25_TK_EP1" Su-25 [Takistan Army] ----------
	case "Su25_TK_EP1_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su25_TK_EP1_mm,_tgt,"F2F Air Loadout Selector System (Su-25 [Takistan Army])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su25_TK_EP1_mm",50);
		};
	};
	// ---------- "Su34" Su-34 ----------
	case "Su34_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_Su34_mm,_tgt,"F2F Air Loadout Selector System (Su-34)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su34_mm",50);
		};
	};
// ---------- BLUFOR ----------
	// ---------- "A10" A-10 [USMC] ----------
	case "A10_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_A10_mm,_tgt,"F2F Air Loadout Selector System (A-10)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_mm",50);
		};
	};
	// ---------- "A10_US_EP1" A-10 [US] ----------
	case "A10_US_EP1_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_A10_US_EP1_mm,_tgt,"F2F Air Loadout Selector System (A-10)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_US_EP1_mm",50);
		};
	};
	// ---------- "AV8B" AV-8B Harrier II LGB ----------
	case "AV8B_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B_mm,_tgt,"F2F Air Loadout Selector System (AV-8B LGB)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B_mm",50);
		};
	};
	// ---------- "AV8B2" AV-8B Harrier II ----------
	case "AV8B2_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B2_mm,_tgt,"F2F Air Loadout Selector System (AV-8B)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B2_mm",50);
		};
	};
// ------------------------------------------
// ------------ Addon Helicopters -----------
// ------------------------------------------
	// ---------- "UH60" US Army Blackhawks by yurapetrov ----------
	case "UH60_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_UH60_mm,_tgt,"F2F Air Loadout Selector System (UH-60 Blackhawk)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","UH60_mm",50);
		};
	};
	// ---------- "ACE_Mi24_V" Mi-24V ACE ----------
	case "ACE_Mi24_V_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(YakB);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Mi24_V_mm,_tgt,"F2F Air Loadout Selector System (Mi-24V ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Mi24_V_mm",50);
		};
	};		
	// ---------- "ACE_Mi24_V_CDF" Mi-24V CDF ACE ----------
	case "ACE_Mi24_V_CDF_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(YakB);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Mi24_V_CDF_mm,_tgt,"F2F Air Loadout Selector System (Mi-24V CDF ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Mi24_V_CDF_mm",50);
		};
	};	
	// ---------- "ACE_Mi24_V_FAB250_RU" Mi-24V FAB250 RU ACE ----------
	case "ACE_Mi24_V_FAB250_RU_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(YakB);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Mi24_V_FAB250_RU_mm,_tgt,"F2F Air Loadout Selector System (Mi-24V RU ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Mi24_V_FAB250_RU_mm",50);
		};
	};
	// ---------- "ACE_Mi24_V_FAB250_CDF" Mi-24V FAB250 CDF ACE ----------
	case "ACE_Mi24_V_FAB250_CDF_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(YakB);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Mi24_V_FAB250_CDF_mm,_tgt,"F2F Air Loadout Selector System (Mi-24V CDF ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Mi24_V_FAB250_CDF_mm",50);
		};
	};
	// ---------- "ACE_Mi24_P" Mi-24P ACE ----------
	case "ACE_Mi24_P_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Mi24_P_mm,_tgt,"F2F Air Loadout Selector System (Mi-24P ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Mi24_P_mm",50);
		};
	};
	// ---------- "ACE_Ka52" Ka-52 ACE ----------
	case "ACE_Ka52_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(ACE_2A42);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Ka52_mm,_tgt,"F2F Air Loadout Selector System (Ka-52 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Ka52_mm",50);
		};
	};
	// ---------- "ACE_BAF_AH1" AH-1D ACE ----------
	case "ACE_BAF_AH1_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(M230);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_BAF_AH1_mm,_tgt,"F2F Air Loadout Selector System (AH-1D ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_BAF_AH1_mm",50);
		};
	};
	// ---------- "ACE_AH64D" AH-64D ACE ----------
	case "ACE_AH64D_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(M230);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_AH64D_mm,_tgt,"F2F Air Loadout Selector System (AH-64D ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH64D_mm",50);
		};
	};
	// ---------- "ACE_AH6J_DAGR" ACE AH-6J DAGR ----------
	case "ACE_AH6J_DAGR_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_AH6J_DAGR_mm,_tgt,"F2F Air Loadout Selector System (AH-6J DAGR ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH6J_DAGR_mm",50);
		};
	};
	// ---------- "ACE_AH1Z" ACE AH-1Z Viper ----------
	case "ACE_AH1Z_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(M197);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_AH1Z_mm,_tgt,"F2F Air Loadout Selector System (AH-1Z Viper ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH1Z_mm",50);
		};
	};
	// ---------- "ACE_AH1W" ACE AH-1W Cobra ----------
	case "ACE_AH1W_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(M197);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_AH1W_mm,_tgt,"F2F Air Loadout Selector System (AH-1W Cobra ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH1W_mm",50);
		};
	};
	// ---------- "ACE_AH1W" ACE AH-1W Cobra (Light) ----------
	case "ACE_AH1W2_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(M197);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_AH1W2_mm,_tgt,"F2F Air Loadout Selector System (AH-1W Cobra ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH1W2_mm",50);
		};
	};
// ------------------------------------------
// --------------- Addon Planes -------------
// ------------------------------------------
	// ---------- "F2F_F18C" F2F F/A-18C ----------
	case "F2F_F18C_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_F2F_F18C_mm,_tgt,"F2F Air Loadout Selector System (F/A-18C F2F)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","F2F_F18C3_mm",50);
		};
	};	
	// ---------- "EF2000BW" (EF2000 Eurofighter Typhoon BW by Pillord, StieMO, CJ187) ----------
	case "EF2000BW_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_EF2000BW_mm,_tgt,"F2F Air Loadout Selector System (EF2000 Eurofighter Typhoon BW)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","EF2000BW_mm",50);
		};
	};	
	// ---------- "F15E" (F-15E by Southy) ----------
	case "F15E_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_F15E_mm,_tgt,"F2F Air Loadout Selector System (F-15E)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","F15E_mm",50);
		};
	};	
	// ---------- "F15C" (F-15C by Southy) ----------
	case "F15C_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_F15C_mm,_tgt,"F2F Air Loadout Selector System (F-15C)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","F15C_mm",50);
		};
	};
	// ---------- "TFB_OV10" (OV-10 Bronco TFB - TFB Modification) ----------
	case "TFB_OV10_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_TFB_OV10_mm,_tgt,"F2F Air Loadout Selector System (OV-10 Bronco TFB)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","TFB_OV10_mm",50);
		};
	};
	// ---------- "OV10" (OV-10 Bronco - Tigerian Air Force by CheyenneAH56) ----------
	case "OV10_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_OV10_mm,_tgt,"F2F Air Loadout Selector System (OV-10 Bronco)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","OV10_mm",50);
		};
	};
	// ---------- "ACE_Su34" Su-34 ACE ----------
	case "ACE_Su34_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Su34_mm,_tgt,"F2F Air Loadout Selector System (Su-34 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_Su34_mm",50);
		};
	};
	// ---------- "ACE_Su25" Su-25 ACE ----------
	case "ACE_Su25_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Su25_mm,_tgt,"F2F Air Loadout Selector System (Su-25 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_Su25_mm",50);
		};
	};
	// ---------- "ACE_Su39" Su-25 ACE ----------
	case "ACE_Su39_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_Su39_mm,_tgt,"F2F Air Loadout Selector System (Su-25 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_Su39_mm",50);
		};
	};
	// ---------- "ACE_A10" A-10 ACE ----------
	case "ACE_A10_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_ACE_A10_mm,_tgt,"F2F Air Loadout Selector System (A-10 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_A10_mm",50);
		};
	};
	// ---------- "ACE_L39" L-39 ACE ----------
	case "ACE_L39_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_L39_TK_EP1_mm,_tgt,"F2F Air Loadout Selector System (L-39 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_L39_mm",50);
		};
	};
	// ---------- "rksl_efa_fgr4" FGR4 ----------
	case "rksl_efa_fgr4_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_rksl_efa_fgr4_mm,_tgt,"F2F Air Loadout Selector System (FGR4 RKSL)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_mm",50);
		};
	};
	// ---------- "GLT_Su34_JDAM" (GLT Missile Box Su-34 JDAM) ----------
	case "GLT_Su34_JDAM_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su34_JDAM_mm,_tgt,"F2F Air Loadout Selector System (Su-34 GLT JDAM)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su34_JDAM_mm",50);
		};
	};
	// ---------- "GLT_Su34_Laser" (GLT Missile Box Su-34 Laser) ----------
	case "GLT_Su34_Laser_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su34_Laser_mm,_tgt,"F2F Air Loadout Selector System (Su-34 GLT Laser)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su34_Laser_mm",50);
		};
	};
	// ---------- "GLT_Su39_JDAM" (GLT Missile Box Su-39 JDAM) ----------
	case "GLT_Su39_JDAM_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su39_JDAM_mm,_tgt,"F2F Air Loadout Selector System (Su-39 GLT JDAM)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su39_JDAM_mm",50);
		};
	};
	// ---------- "GLT_Su39_laser" (GLT Missile Box Su-39 Laser) ----------
	case "GLT_Su39_laser_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_Su39_laser_mm,_tgt,"F2F Air Loadout Selector System (Su-25 GLT Laser)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_Su39_laser_mm",50);
		};
	};
	// ---------- "vmfa_aw533" (F/A-18F Super Hornet by Meatball0311) ----------
	case "vmfa_aw533_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_vmfa_aw533_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","vmfa_aw533_mm",50);
		};
	};
	// ---------- "vfa_14" (F/A-18F Super Hornet by Meatball0311) ----------
	case "vfa_14_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_vfa_14_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","vfa_14_mm",50);
		};
	};
	// ---------- "no_1sqn" (F/A-18F Super Hornet by Meatball0311) ----------
	case "no_1sqn_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_no_1sqn_mm,_tgt,"F2F Air Loadout Selector System (F/A-18F Super Hornet)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","no_1sqn_mm",50);
		};
	};
	// ---------- "14US" (F-14D Super Tomcat by VectorX96) ----------
	case "14US_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_14US_mm,_tgt,"F2F Air Loadout Selector System (F-14D Super Tomcat)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","14US_mm",50);
		};
	};
	// ---------- "HarrierGR3" (Harrier Gr3 RAFG Default bt Trouble) ----------
	case "HarrierGR3_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_HarrierGR3_mm,_tgt,"F2F Air Loadout Selector System (Harrier Gr3)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","HarrierGR3_mm",50);
		};
	};
	// ---------- "HarrierGR3s" (Harrier Gr3 RAFG Snow by Trouble) ----------
	case "HarrierGR3s_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_HarrierGR3s_mm,_tgt,"F2F Air Loadout Selector System (Harrier Gr3 Snow)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","HarrierGR3s_mm",50);
		};
	};
	// ---------- GLT F-16C (All Variants) ----------
	case "GLT_F16C_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		if (typeOf vehicle player != "GLT_Falcon_lg_var1" && typeOf vehicle player != "GLT_Falcon_lg_var2" && typeOf vehicle player != "GLT_Falcon_var1" && typeOf vehicle player != "GLT_Falcon_var2" && typeOf vehicle player != "GLT_Falcon_Black_var1" && typeOf vehicle player != "GLT_Falcon_Black_var2" && typeOf vehicle player != "GLT_Falcon_euro_var1" && typeOf vehicle player != "GLT_Falcon_euro_var2") then
		{
			ADD_WEP(CMFlareLauncher_GLT);
		};
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_GLT_F16C_mm,_tgt,"F2F Air Loadout Selector System (F-16C GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","GLT_F16C_mm",50);
		};
	};
	// ---------- "AV8B2_JDAM" (GLT Missile Box Harrier) ----------
	case "AV8B2_JDAM_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
		// ----- Exit and Execute ALSS Menu -----
		if(true)exitWith
		{
			ACTN_YL(actn_AV8B2_JDAM_mm,_tgt,"F2F Air Loadout Selector System (AV-8B GLT)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B2_JDAM_mm",50);
		};
	};
	// ---------- "A10_US_EP1_JDAM" (GLT Missile Box A-10) ----------
	case "A10_US_EP1_JDAM_clr":
	{
		#include "f2f_inc_clrWeps.sqf"
		ADD_WEP(CMFlareLauncher);
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