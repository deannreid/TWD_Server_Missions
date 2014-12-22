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
#include "f2f_wlcm_msg.sqf"

switch (_arg) do
{
// ------------------------------------------
// ------------ BIS Helicopters -------------
// ------------------------------------------
// ---------- OPFOR ----------
	// ---------- "Mi17_rockets_RU" Mi-8 Russia ----------
	case "Mi17_rockets_RU_mm":
	{
		ACTN_RD(actn_Mi17_rockets_RU_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","Mi17_rockets_RU_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","Mi17_rockets_RU_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","Mi17_rockets_RU_back",38);
	};
	// ---------- "Mi171Sh_rockets_CZ_EP1" Mi-8 CZ ----------
	case "Mi171Sh_rockets_CZ_EP1_mm":
	{
		ACTN_RD(actn_Mi171Sh_rockets_CZ_EP1_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","Mi171Sh_rockets_CZ_EP1_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","Mi171Sh_rockets_CZ_EP1_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","Mi171Sh_rockets_CZ_EP1_back",38);
	};
	// ---------- "Mi24_D" Mi-24D ----------
	case "Mi24_D_mm":
	{
		ACTN_RD(actn_Mi24_D1_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","Mi24_D_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","Mi24_D_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","Mi24_D_back",38);
	};
	// ---------- "Mi24_D_TK_EP1" Mi-24D Takistan Army ----------
	case "Mi24_D_TK_EP1_mm":
	{
		ACTN_RD(actn_Mi24_D_TK_EP1_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","Mi24_D_TK_EP1_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","Mi24_D_TK_EP1_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","Mi24_D_TK_EP1_back",38);
	};
	// ---------- "Mi24_P" Mi-24P ----------
	case "Mi24_P_mm":
	{
		ACTN_RD(actn_Mi24_P_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","Mi24_P_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","Mi24_P_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","Mi24_P_back",38);
	};
	// ---------- "Mi24_V" Mi-24V ----------
	case "Mi24_V_mm":
	{
		ACTN_RD(actn_Mi24_V_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","Mi24_V_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","Mi24_V_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","Mi24_V_back",38);
	};
	// ---------- "Ka52" Ka-52 ----------
	case "Ka52_mm":
	{
		ACTN_RD(actn_Ka52_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","Ka52_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","Ka52_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","Ka52_back",38);
	};
// ---------- BLUFOR ----------
	// ---------- "AH64D" AH-64D ----------
	case "AH64D_mm":
	{
		ACTN_RD(actn_AH64D_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","AH64D_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","AH64D_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","AH64D_back",38);
	};
	// ---------- "BAF_Apache_AH1_D" AH-1D ----------
	case "BAF_Apache_AH1_D_mm":
	{
		ACTN_RD(actn_BAF_Apache_AH1_D_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","BAF_Apache_AH1_D_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","BAF_Apache_AH1_D_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","BAF_Apache_AH1_D_back",38);
	};
	// ---------- "AH1Z" AH-1Z ----------
	case "AH1Z_mm":
	{
		ACTN_RD(actn_AH1Z_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","AH1Z_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","AH1Z_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","AH1Z_back",38);
	};
	// ---------- "AH6J_EP1" AH-6J ----------
	case "AH6J_EP1_mm":
	{
		ACTN_RD(actn_AH6J_EP1_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","AH6J_EP1_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","AH6J_EP1_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","AH6J_EP1_back",38);
	};
	// ---------- "UH1Y" UH-1Y ----------
	case "UH1Y_mm":
	{
		ACTN_RD(actn_UH1Y_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","UH1Y_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","UH1Y_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","UH1Y_back",38);
	};
	// ---------- "Ka60_GL_PMC" Ka-60 M32 ----------
	case "Ka60_GL_PMC_mm":
	{
		ACTN_RD(actn_Ka60_GL_PMC_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","Ka60_GL_PMC_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","Ka60_GL_PMC_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","Ka60_GL_PMC_back",38);
	};
	// ---------- "Ka60_PMC" Ka-60 ----------
	case "Ka60_PMC_mm":
	{
		ACTN_RD(actn_Ka60_PMC_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","Ka60_PMC_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","Ka60_PMC_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","Ka60_PMC_back",38);
	};
// ------------------------------------------
// ------------ Addon Helicopters -----------
// ------------------------------------------
	// ---------- "UH60" US Army Blackhawks by yurapetrov ----------
	case "UH60_mm":
	{
		private "_acClass0";
		_acClass0 = typeOf vehicle player;
		ACTN_RD(actn_UH60_sm_1,_tgt,"ESSS Medical Fuel Tanks (2x 450 gal Tanks)","f2f_exe\f2f_exe_h.sqf","UH60_exe_mediT",40);
		ACTN_RD(actn_UH60_sm_2,_tgt,"ESSS Fuel Tanks Light (2x 450 gal Tanks)","f2f_exe\f2f_exe_h.sqf","UH60_exe_tLgt",39);
		if (_acClass0 != "yup_UH60Q") then
		{
			ACTN_RD(actn_UH60_sm_3,_tgt,"ESSS Fuel Tanks Heavy (4x 450 gal Tanks)","f2f_exe\f2f_exe_h.sqf","UH60_exe_tHvy",38);
			ACTN_RD(actn_UH60_sm_4,_tgt,"ESSS Missiles (16x AGM-114)","f2f_exe\f2f_exe_h.sqf","UH60_exe_hell",37);
		};
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","UH60_clr",36);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","UH60_back",35);
		_acClass0 = nil;
	};
	// ---------- "ACE_Mi24_V" Mi-24V ACE ----------
	case "ACE_Mi24_V_mm":
	{
		ACTN_RD(actn_ACE_Mi24_V_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","ACE_Mi24_V_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_Mi24_V_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_Mi24_V_back",38);
	};	
	// ---------- "ACE_Mi24_V_CDF" Mi-24V CDF ACE ----------
	case "ACE_Mi24_V_CDF_mm":
	{
		ACTN_RD(actn_ACE_Mi24_V_CDF_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","ACE_Mi24_V_CDF_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_Mi24_V_CDF_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_Mi24_V_CDF_back",38);
	};
	// ---------- "ACE_Mi24_V_FAB250_RU" Mi-24V FAB250 RU ACE ----------
	case "ACE_Mi24_V_FAB250_RU_mm":
	{
		ACTN_RD(actn_ACE_Mi24_V_FAB250_RU_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","ACE_Mi24_V_FAB250_RU_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_Mi24_V_FAB250_RU_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_Mi24_V_FAB250_RU_back",38);
	};
	// ---------- "ACE_Mi24_V_FAB250_CDF" Mi-24V FAB250 CDF ACE ----------
	case "ACE_Mi24_V_FAB250_CDF_mm":
	{
		ACTN_RD(actn_ACE_Mi24_V_FAB250_CDF_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","ACE_Mi24_V_FAB250_CDF_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_Mi24_V_FAB250_CDF_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_Mi24_V_FAB250_CDF_back",38);
	};
	// ---------- "ACE_Mi24_P" Mi-24P ACE ----------
	case "ACE_Mi24_P_mm":
	{
		ACTN_RD(actn_ACE_Mi24_P_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","ACE_Mi24_P_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_Mi24_P_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_Mi24_P_back",38);
	};
	// ---------- "ACE_Ka52" Ka-52 ACE ----------
	case "ACE_Ka52_mm":
	{
		ACTN_RD(actn_ACE_Ka52_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","ACE_Ka52_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_Ka52_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_Ka52_back",38);
	};
	// ---------- "ACE_BAF_AH1" AH-1D ACE ----------
	case "ACE_BAF_AH1_mm":
	{
		ACTN_RD(actn_ACE_BAF_AH1_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","ACE_BAF_AH1_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_BAF_AH1_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_BAF_AH1_back",38);
	};
	// ---------- "ACE_AH64D" AH-64D ACE ----------
	case "ACE_AH64D_mm":
	{
		ACTN_RD(actn_ACE_AH64D_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","ACE_AH64D_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_AH64D_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_AH64D_back",38);
	};
	// ---------- "ACE_AH6J_DAGR" ACE AH-6J DAGR ----------
	case "ACE_AH6J_DAGR_mm":
	{
		ACTN_RD(actn_ACE_AH6J_DAGR_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","ACE_AH6J_DAGR_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_AH6J_DAGR_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_AH6J_DAGR_back",38);
	};
	// ---------- "ACE_AH1Z" ACE AH-1Z Viper ----------
	case "ACE_AH1Z_mm":
	{
		ACTN_RD(actn_ACE_AH1Z_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","ACE_AH1Z_exe_std",40);
		ACTN_RD(actn_ACE_AH1Z_sm_2,_tgt,"AGM Package","f2f_exe\f2f_exe_h.sqf","ACE_AH1Z_exe_agm",39);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_AH1Z_clr",38);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_AH1Z_back",37);
	};
	// ---------- "ACE_AH1W" ACE AH-1W Cobra ----------
	case "ACE_AH1W_mm":
	{
		ACTN_RD(actn_ACE_AH1W_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","ACE_AH1W_exe_std",40);
		ACTN_RD(actn_ACE_AH1W_sm_2,_tgt,"TOW/FFAR Heavy","f2f_exe\f2f_exe_h.sqf","ACE_AH1W_exe_tfhvy",39);
		ACTN_RD(actn_ACE_AH1W_sm_3,_tgt,"TOW/FFAR Light","f2f_exe\f2f_exe_h.sqf","ACE_AH1W_exe_tflgt",38);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_AH1W_clr",37);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_AH1W_back",36);
	};
	// ---------- "ACE_AH1W" ACE AH-1W Cobra (Light) ----------
	case "ACE_AH1W2_mm":
	{
		ACTN_RD(actn_ACE_AH1W2_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_h.sqf","ACE_AH1W2_exe_std",40);
		ACTN_RD(actn_ACE_AH1W2_sm_2,_tgt,"TOW/FFAR Heavy","f2f_exe\f2f_exe_h.sqf","ACE_AH1W2_exe_tfhvy",39);
		ACTN_RD(actn_ACE_AH1W2_sm_3,_tgt,"TOW/FFAR Light","f2f_exe\f2f_exe_h.sqf","ACE_AH1W2_exe_tflgt",38);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_AH1W2_clr",37);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_AH1W2_back",36);
	};
// ------------------------------------------
// ------- Non-compatible Helicopters -------
// ------------------------------------------
	default
	{
		if (true) exitWith {};
	};
};