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
// --------------- BIS Planes ---------------
// ------------------------------------------
// ---------- OPFOR ----------
	// ---------- "L39_TK_EP1" L-39 Takistan Army ----------
	case "L39_TK_EP1_mm":
	{
		ACTN_RD(actn_L39_TK_EP1_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_p.sqf","L39_TK_EP1_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","L39_TK_EP1_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","L39_TK_EP1_back",38);
	};
	// ---------- "Su25_CDF" Su-25 [CDF] ----------
	case "Su25_CDF_mm":
	{
		ACTN_RD(actn_Su25_CDF_sm_1,_tgt,"GP AGM's (Ch-29)","f2f_exe\f2f_exe_p.sqf","Su25_CDF_exe_agm",40);
		ACTN_RD(actn_Su25_CDF_sm_2,_tgt,"GP Freefall Bombs (FAB-250)","f2f_exe\f2f_exe_p.sqf","Su25_CDF_exe_ffb",39);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","Su25_CDF_clr",38);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","Su25_CDF_back",37);
	};
	// ---------- "Su25_Ins" Su-25 [ChDKZ] ----------
	case "Su25_Ins_mm":
	{
		ACTN_RD(actn_Su25_Ins_sm_1,_tgt,"GP AGM's (Ch-29)","f2f_exe\f2f_exe_p.sqf","Su25_Ins_exe_agm",40);
		ACTN_RD(actn_Su25_Ins_sm_2,_tgt,"GP Freefall Bombs (FAB-250)","f2f_exe\f2f_exe_p.sqf","Su25_Ins_exe_ffb",39);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","Su25_Ins_clr",38);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","Su25_Ins_back",37);
	};
	// ---------- "Su39" Su-25 [Russia] ----------
	case "Su39_mm":
	{
		ACTN_RD(actn_Su39_sm_1,_tgt,"GP AGM's (Ch-29)","f2f_exe\f2f_exe_p.sqf","Su39_exe_agm",40);
		ACTN_RD(actn_Su39_sm_2,_tgt,"GP Freefall Bombs (FAB-250)","f2f_exe\f2f_exe_p.sqf","Su39_exe_ffb",39);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","Su39_clr",38);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","Su39_back",37);
	};
	// ---------- "Su25_TK_EP1" Su-25 [Takistan Army] ----------
	case "Su25_TK_EP1_mm":
	{
		ACTN_RD(actn_Su25_TK_EP1_sm_1,_tgt,"GP AGM's (Ch-29)","f2f_exe\f2f_exe_p.sqf","Su25_TK_EP1_exe_agm",40);
		ACTN_RD(actn_Su25_TK_EP1_sm_2,_tgt,"GP Freefall Bombs (FAB-250)","f2f_exe\f2f_exe_p.sqf","Su25_TK_EP1_exe_ffb",39);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","Su25_TK_EP1_clr",38);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","Su25_TK_EP1_back",37);
	};
	// ---------- "Su34" Su-34 ----------
	case "Su34_mm":
	{
		ACTN_RD(actn_Su34_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_p.sqf","Su34_exe_std",40);
		ACTN_RD(actn_Su34_sm_2,_tgt,"GP AGM's (Ch-29)","f2f_exe\f2f_exe_p.sqf","Su34_exe_agm",39);
		ACTN_RD(actn_Su34_sm_3,_tgt,"GP Freefall Bombs (FAB-250)","f2f_exe\f2f_exe_p.sqf","Su34_exe_ffb",38);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","Su34_clr",37);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","Su34_back",36);
	};
// ---------- BLUFOR ----------
	// ---------- "A10" A-10 [USMC] ----------
	case "A10_mm":
	{
		ACTN_RD(actn_A10_sm_1,_tgt,"Close Air Support","f2f_exe\f2f_exe_p.sqf","A10_exe_cas",40);
		ACTN_RD(actn_A10_sm_2,_tgt,"Air Interdiction","f2f_exe\f2f_exe_p.sqf","A10_exe_ai",39);
		ACTN_RD(actn_A10_sm_3,_tgt,"Combat Air Patrol","f2f_exe\f2f_exe_p.sqf","A10_exe_cap",38);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","A10_clr",37);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","A10_back",36);
	};
	// ---------- "A10_US_EP1" A-10 [US] ----------
	case "A10_US_EP1_mm":
	{
		ACTN_RD(actn_A10_US_EP1_sm_1,_tgt,"Close Air Support","f2f_exe\f2f_exe_p.sqf","A10_US_EP1_exe_cas",40);
		ACTN_RD(actn_A10_US_EP1_sm_2,_tgt,"Air Interdiction","f2f_exe\f2f_exe_p.sqf","A10_US_EP1_exe_ai",39);
		ACTN_RD(actn_A10_US_EP1_sm_3,_tgt,"Combat Air Patrol","f2f_exe\f2f_exe_p.sqf","A10_US_EP1_exe_cap",38);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","A10_US_EP1_clr",37);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","A10_US_EP1_back",36);
	};
	// ---------- "AV8B" AV-8B Harrier II LGB ----------
	case "AV8B_mm":
	{
		ACTN_RD(actn_AV8B_sm_1,_tgt,"Air Superiority","f2f_exe\f2f_exe_p.sqf","AV8B_exe_as",40);
		ACTN_RD(actn_AV8B_sm_2,_tgt,"Close Air Support","f2f_exe\f2f_exe_p.sqf","AV8B_exe_cas",39);
		ACTN_RD(actn_AV8B_sm_3,_tgt,"Air Interdiction","f2f_exe\f2f_exe_p.sqf","AV8B_exe_ai",38);
		ACTN_RD(actn_AV8B_sm_4,_tgt,"Combat Air Patrol","f2f_exe\f2f_exe_p.sqf","AV8B_exe_cap",37);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","AV8B_clr",36);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","AV8B_back",35);
	};
	// ---------- "AV8B2" AV-8B Harrier II ----------
	case "AV8B2_mm":
	{
		ACTN_RD(actn_AV8B2_sm_1,_tgt,"Standard + AIM-9's","f2f_exe\f2f_exe_p.sqf","AV8B2_exe_as",40);
		ACTN_RD(actn_AV8B2_sm_2,_tgt,"Standard + AGM-65's","f2f_exe\f2f_exe_p.sqf","AV8B2_exe_cap",39);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","AV8B2_clr",38);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","AV8B2_back",37);
	};
// ------------------------------------------
// --------------- Addon Planes -------------
// ------------------------------------------
	// ---------- "F2F_F18C" F2F F/A-18C ----------
	case "F2F_F18C3_mm":
	{
		ACTN_RD(actn_F2F_F18C_sm_1,_tgt,"Air Superiority","f2f_exe\f2f_exe_p.sqf","F2F_F18C_exe_as",40);
		ACTN_RD(actn_F2F_F18C_sm_2,_tgt,"Close Air Support","f2f_exe\f2f_exe_p.sqf","F2F_F18C_exe_casGBU",39);
		ACTN_RD(actn_F2F_F18C_sm_3,_tgt,"Air Interdiction","f2f_exe\f2f_exe_p.sqf","F2F_F18C_exe_aiAGM",38);
		ACTN_RD(actn_F2F_F18C_sm_4,_tgt,"Combat Air Patrol","f2f_exe\f2f_exe_p.sqf","F2F_F18C_exe_cap",37);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","F2F_F18C_clr",36);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","F2F_F18C_back",35);
	};
	// ---------- "EF2000BW" (EF2000 Eurofighter Typhoon BW by Pillord, StieMO, CJ187) ----------
	case "EF2000BW_mm":
	{
		ACTN_RD(actn_EF2000BW_sm_1,_tgt,"CAT Package","f2f_exe\f2f_exe_p.sqf","EF2000BW_exe_cat",40);
		ACTN_RD(actn_EF2000BW_sm_2,_tgt,"CAS Package","f2f_exe\f2f_exe_p.sqf","EF2000BW_exe_cas",39);
		ACTN_RD(actn_EF2000BW_sm_3,_tgt,"CAP Package","f2f_exe\f2f_exe_p.sqf","EF2000BW_exe_cap",38);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","EF2000BW_clr",37);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","EF2000BW_back",36);
	};	
	// ---------- "F15E" (F-15E by Southy) ----------
	case "F15E_mm":
	{
		ACTN_RD(actn_F15E_sm_1,_tgt,"CBU Package","f2f_exe\f2f_exe_p.sqf","F15E_exe_cbu",40);
		ACTN_RD(actn_F15E_sm_2,_tgt,"GBU-12 Package","f2f_exe\f2f_exe_p.sqf","F15E_exe_gbu",39);
		ACTN_RD(actn_F15E_sm_3,_tgt,"MK-84 Package","f2f_exe\f2f_exe_p.sqf","F15E_exe_mk84",38);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","F15E_clr",37);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","F15E_back",36);
	};
	// ---------- "F15C" (F-15C by Southy) ----------
	case "F15C_mm":
	{
		ACTN_RD(actn_F15C_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_p.sqf","F15C_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","F15C_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","F15C_back",38);
	};
	// ---------- "TFB_OV10" (OV-10 Bronco TFB - TFB Modification) ----------
	case "TFB_OV10_mm":
	{
		ACTN_RD(actn_TFB_OV10_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_p.sqf","TFB_OV10_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","TFB_OV10_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","TFB_OV10_back",38);
	};	
	// ---------- "OV10" (OV-10 Bronco - Tigerian Air Force by CheyenneAH56) ----------
	case "OV10_mm":
	{
		ACTN_RD(actn_OV10_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_p.sqf","OV10_exe_std",40);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","OV10_clr",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","OV10_back",38);
	};
	// ---------- "ACE_Su34" Su-34 ACE ----------
	case "ACE_Su34_mm":
	{
		ACTN_RD(actn_ACE_Su34_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_p.sqf","ACE_Su34_exe_std",40);
		ACTN_RD(actn_ACE_Su34_sm_2,_tgt,"GP AGM's (Ch-29)","f2f_exe\f2f_exe_p.sqf","ACE_Su34_exe_agm",39);
		ACTN_RD(actn_ACE_Su34_sm_3,_tgt,"GP Freefall Bombs (FAB-250)","f2f_exe\f2f_exe_p.sqf","ACE_Su34_exe_ffb",38);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_Su34_clr",37);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_Su34_back",36);
	};
	// ---------- "ACE_Su25" Su-25 ACE ----------
	case "ACE_Su25_mm":
	{
		ACTN_RD(actn_ACE_Su25_sm_1,_tgt,"GP AGM's (Ch-29)","f2f_exe\f2f_exe_p.sqf","ACE_Su25_exe_agm",40);
		ACTN_RD(actn_ACE_Su25_sm_2,_tgt,"GP Freefall Bombs (FAB-250)","f2f_exe\f2f_exe_p.sqf","ACE_Su25_exe_ffb",39);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_Su25_clr",38);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_Su25_back",37);
	};
	// ---------- "ACE_Su39" Su-25 ACE ----------
	case "ACE_Su39_mm":
	{
		ACTN_RD(actn_ACE_Su39_sm_1,_tgt,"GP AGM's (Ch-29)","f2f_exe\f2f_exe_p.sqf","ACE_Su39_exe_agm",40);
		ACTN_RD(actn_ACE_Su39_sm_2,_tgt,"GP Freefall Bombs (FAB-250)","f2f_exe\f2f_exe_p.sqf","ACE_Su39_exe_ffb",39);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_Su39_clr",38);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_Su39_back",37);
	};
	// ---------- "ACE_A10" A-10 ACE ----------
	case "ACE_A10_mm":
	{
		ACTN_RD(actn_ACE_A10_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_p.sqf","ACE_A10_exe_std",40);
		ACTN_RD(actn_ACE_A10_sm_2,_tgt,"Mk-82 Package","f2f_exe\f2f_exe_p.sqf","ACE_A10_exe_mk82",39);
		ACTN_RD(actn_ACE_A10_sm_3,_tgt,"CBU-87 Package","f2f_exe\f2f_exe_p.sqf","ACE_A10_exe_cbu87",38);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_A10_clr",37);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_A10_back",36);
	};
	// ---------- "ACE_L39" L-39 ACE ----------
	case "ACE_L39_mm":
	{
		ACTN_RD(actn_ACE_L39_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_p.sqf","ACE_L39_exe_std",40);
		ACTN_RD(actn_ACE_L39_sm_2,_tgt,"FAB-250 Package","f2f_exe\f2f_exe_p.sqf","ACE_L39_exe_fab",39);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","ACE_L39_clr",38);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","ACE_L39_back",37);
	};
	// ---------- "rksl_efa_fgr4" FGR4 ----------
	case "rksl_efa_fgr4_mm":
	{
		ACTN_RD(actn_rksl_efa_fgr4_sm_1,_tgt,"Air Superiority","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_as_sm",40);
		ACTN_RD(actn_rksl_efa_fgr4_sm_2,_tgt,"LGB","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_lgb_sm",39);
		ACTN_RD(actn_rksl_efa_fgr4_sm_3,_tgt,"Swing Role","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_sr_sm",38);
		ACTN_RD(actn_rksl_efa_fgr4_sm_4,_tgt,"SEAD","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_sead_sm",37);
		ACTN_RD(actn_rksl_efa_fgr4_sm_5,_tgt,"Close Air Support","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_cas_sm",36);
		ACTN_RD(actn_rksl_efa_fgr4_sm_6,_tgt,"Maritime Strike","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_ms_sm",35);
		ACTN_RD(actn_rksl_efa_fgr4_sm_7,_tgt,"Anti Armour","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","rksl_efa_fgr4_aa_sm",34);
		ACTN_RD(actn_rksl_efa_fgr4_sm_8,_tgt,"Air Interdiction","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_ai",33);
		ACTN_RD(actn_rksl_efa_fgr4_sm_9,_tgt,"EU Maritime Strike","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_eums",32);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","rksl_efa_fgr4_clr",31);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","rksl_efa_fgr4_back",30);
	};
	case "rksl_efa_fgr4_as_sm":
	{
		ACTN_RD(actn_rksl_efa_fgr4_as_sm_1,_tgt,"Air Superiority 1","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_as1",40);
		ACTN_RD(actn_rksl_efa_fgr4_as_sm_2,_tgt,"Air Superiority 2","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_as2",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","rksl_efa_fgr4_back",38);
	};
	case "rksl_efa_fgr4_lgb_sm":
	{
		ACTN_RD(actn_rksl_efa_fgr4_lgb_sm_1,_tgt,"Light LGB","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_lgtLGB",40);
		ACTN_RD(actn_rksl_efa_fgr4_lgb_sm_2,_tgt,"Medium LGB","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_medLGB",39);
		ACTN_RD(actn_rksl_efa_fgr4_lgb_sm_3,_tgt,"Heavy LGB","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_hvyLGB",38);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","rksl_efa_fgr4_back",37);
	};
	case "rksl_efa_fgr4_sr_sm":
	{
		ACTN_RD(actn_rksl_efa_fgr4_sr_sm_1,_tgt,"Swing Role 1","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_sr1",40);
		ACTN_RD(actn_rksl_efa_fgr4_sr_sm_2,_tgt,"Swing Role 2","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_sr2",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","rksl_efa_fgr4_back",38);
	};
	case "rksl_efa_fgr4_sead_sm":
	{
		ACTN_RD(actn_rksl_efa_fgr4_sead_sm_1,_tgt,"SEAD 1","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_sead1",40);
		ACTN_RD(actn_rksl_efa_fgr4_sead_sm_2,_tgt,"SEAD 2","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_sead2",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","rksl_efa_fgr4_back",38);
	};
	case "rksl_efa_fgr4_cas_sm":
	{
		ACTN_RD(actn_rksl_efa_fgr4_cas_sm_1,_tgt,"CAS Heavy","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_casHvy",40);
		ACTN_RD(actn_rksl_efa_fgr4_cas_sm_2,_tgt,"CAS Light","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_casLgt",39);
		ACTN_RD(actn_rksl_efa_fgr4_cas_sm_3,_tgt,"CAS Light 2","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_casLgt2",38);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","rksl_efa_fgr4_back",37);
	};
	case "rksl_efa_fgr4_ms_sm":
	{
		ACTN_RD(actn_rksl_efa_fgr4_ms_sm_1,_tgt,"Maritime Strike 1","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_ms1",40);
		ACTN_RD(actn_rksl_efa_fgr4_ms_sm_2,_tgt,"Maritime Strike 2","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_ms2",39);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","rksl_efa_fgr4_back",38);
	};
	case "rksl_efa_fgr4_aa_sm":
	{
		ACTN_RD(actn_rksl_efa_fgr4_aamr_sm_1,_tgt,"Anti Armour 1","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_aa1",40);
		ACTN_RD(actn_rksl_efa_fgr4_aamr_sm_2,_tgt,"Anti Armour 2","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_aa2",39);
		ACTN_RD(actn_rksl_efa_fgr4_aamr_sm_3,_tgt,"Anti Armour 3","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_aa3",38);
		ACTN_RD(actn_rksl_efa_fgr4_aamr_sm_4,_tgt,"Anti Armour 4","f2f_exe\f2f_exe_p.sqf","rksl_efa_fgr4_exe_aa4",37);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","rksl_efa_fgr4_back",36);
	};
	// ---------- "GLT_Su34_JDAM" (GLT Missile Box Su-34 JDAM) ----------
	case "GLT_Su34_JDAM_mm":
	{
		ACTN_RD(actn_GLT_Su34_JDAM_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_p.sqf","GLT_Su34_JDAM_exe_std",40);
		ACTN_RD(actn_GLT_Su34_JDAM_sm_2,_tgt,"Direct-Attack","f2f_exe\f2f_exe_p.sqf","GLT_Su34_JDAM_exe_jdam",39);
		ACTN_RD(actn_GLT_Su34_JDAM_sm_3,_tgt,"GP AGM's (Ch-29)","f2f_exe\f2f_exe_p.sqf","GLT_Su34_JDAM_exe_agm",38);
		ACTN_RD(actn_GLT_Su34_JDAM_sm_4,_tgt,"GP Freefall Bombs (FAB-250)","f2f_exe\f2f_exe_p.sqf","GLT_Su34_JDAM_exe_ffb",37);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","GLT_Su34_JDAM_clr",36);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","GLT_Su34_JDAM_back",35);
	};
	// ---------- "GLT_Su34_Laser" (GLT Missile Box Su-34 Laser) ----------
	case "GLT_Su34_Laser_mm":
	{
		ACTN_RD(actn_GLT_Su34_Laser_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_p.sqf","GLT_Su34_Laser_exe_std",40);
		ACTN_RD(actn_GLT_Su34_Laser_sm_2,_tgt,"Laser Guided","f2f_exe\f2f_exe_p.sqf","GLT_Su34_Laser_exe_lsr",39);
		ACTN_RD(actn_GLT_Su34_Laser_sm_3,_tgt,"GP AGM's (Ch-29)","f2f_exe\f2f_exe_p.sqf","GLT_Su34_Laser_exe_agm",38);
		ACTN_RD(actn_GLT_Su34_Laser_sm_4,_tgt,"GP Freefall Bombs (FAB-250)","f2f_exe\f2f_exe_p.sqf","GLT_Su34_Laser_exe_ffb",37);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","GLT_Su34_Laser_clr",36);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","GLT_Su34_Laser_back",35);
	};
	// ---------- "GLT_Su39_JDAM" (GLT Missile Box Su-39 JDAM) ----------
	case "GLT_Su39_JDAM_mm":
	{
		ACTN_RD(actn_GLT_Su39_JDAM_sm_1,_tgt,"Direct-Attack","f2f_exe\f2f_exe_p.sqf","GLT_Su39_JDAM_exe_jdam",40);
		ACTN_RD(actn_GLT_Su39_JDAM_sm_2,_tgt,"GP AGM's (Ch-29)","f2f_exe\f2f_exe_p.sqf","GLT_Su39_JDAM_exe_agm",39);
		ACTN_RD(actn_GLT_Su39_JDAM_sm_3,_tgt,"GP Freefall Bombs (FAB-250)","f2f_exe\f2f_exe_p.sqf","GLT_Su39_JDAM_exe_ffb",38);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","GLT_Su39_JDAM_clr",37);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","GLT_Su39_JDAM_back",36);
	};
	// ---------- "GLT_Su39_laser" (GLT Missile Box Su-39 Laser) ----------
	case "GLT_Su39_laser_mm":
	{
		ACTN_RD(actn_GLT_Su39_laser_sm_1,_tgt,"Direct-Attack","f2f_exe\f2f_exe_p.sqf","GLT_Su39_laser_exe_lsr",40);
		ACTN_RD(actn_GLT_Su39_laser_sm_2,_tgt,"GP AGM's (Ch-29)","f2f_exe\f2f_exe_p.sqf","GLT_Su39_laser_exe_agm",39);
		ACTN_RD(actn_GLT_Su39_laser_sm_3,_tgt,"GP Freefall Bombs (FAB-250)","f2f_exe\f2f_exe_p.sqf","GLT_Su39_laser_exe_ffb",38);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","GLT_Su39_laser_clr",37);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","GLT_Su39_laser_back",36);
	};
	// ---------- "vmfa_aw533" (F/A-18F Super Hornet by Meatball0311) ----------
	case "vmfa_aw533_mm":
	{
		ACTN_RD(actn_vmfa_aw533_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_p.sqf","vmfa_aw533_exe_std",40);
		ACTN_RD(actn_vmfa_aw533_sm_2,_tgt,"Air Superiority","f2f_exe\f2f_exe_p.sqf","vmfa_aw533_exe_as",39);
		ACTN_RD(actn_vmfa_aw533_sm_3,_tgt,"Close Air Support","f2f_exe\f2f_exe_p.sqf","vmfa_aw533_exe_cas",38);
		ACTN_RD(actn_vmfa_aw533_sm_4,_tgt,"Air Interdiction","f2f_exe\f2f_exe_p.sqf","vmfa_aw533_exe_ai",37);
		ACTN_RD(actn_vmfa_aw533_sm_5,_tgt,"Ferry","f2f_exe\f2f_exe_p.sqf","vmfa_aw533_exe_ferry",36);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","vmfa_aw533_clr",35);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","vmfa_aw533_back",34);
	};
	// ---------- "vfa_14" (F/A-18F Super Hornet by Meatball0311) ----------
	case "vfa_14_mm":
	{
		ACTN_RD(actn_vfa_14_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_p.sqf","vfa_14_exe_std",40);
		ACTN_RD(actn_vfa_14_sm_2,_tgt,"Air Superiority","f2f_exe\f2f_exe_p.sqf","vfa_14_exe_as",39);
		ACTN_RD(actn_vfa_14_sm_3,_tgt,"Close Air Support","f2f_exe\f2f_exe_p.sqf","vfa_14_exe_cas",38);
		ACTN_RD(actn_vfa_14_sm_4,_tgt,"Air Interdiction","f2f_exe\f2f_exe_p.sqf","vfa_14_exe_ai",37);
		ACTN_RD(actn_vfa_14_sm_5,_tgt,"Ferry","f2f_exe\f2f_exe_p.sqf","vfa_14_exe_ferry",36);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","vfa_14_clr",35);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","vfa_14_back",34);
	};	

	// ---------- "no_1sqn" (F/A-18F Super Hornet by Meatball0311) ----------
	case "no_1sqn_mm":
	{
		ACTN_RD(actn_no_1sqn_sm_1,_tgt,"Standard","f2f_exe\f2f_exe_p.sqf","no_1sqn_exe_std",40);
		ACTN_RD(actn_no_1sqn_sm_2,_tgt,"Air Superiority","f2f_exe\f2f_exe_p.sqf","no_1sqn_exe_as",39);
		ACTN_RD(actn_no_1sqn_sm_3,_tgt,"Close Air Support","f2f_exe\f2f_exe_p.sqf","no_1sqn_exe_cas",38);
		ACTN_RD(actn_no_1sqn_sm_4,_tgt,"Air Interdiction","f2f_exe\f2f_exe_p.sqf","no_1sqn_exe_ai",37);
		ACTN_RD(actn_no_1sqn_sm_5,_tgt,"Ferry","f2f_exe\f2f_exe_p.sqf","no_1sqn_exe_ferry",36);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","no_1sqn_clr",35);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","no_1sqn_back",34);
	};
	// ---------- "14US" (F-14D Super Tomcat by VectorX96) ----------
	case "14US_mm":
	{
		ACTN_RD(actn_14US_sm_1,_tgt,"Multi-Role","f2f_exe\f2f_exe_p.sqf","14US_exe_mr",40);
		ACTN_RD(actn_14US_sm_2,_tgt,"Close Air Support","f2f_exe\f2f_exe_p.sqf","14US_exe_cas",39);
		ACTN_RD(actn_14US_sm_3,_tgt,"Combat Air Patrol","f2f_exe\f2f_exe_p.sqf","14US_exe_cap",38);
		ACTN_RD(actn_14US_sm_4,_tgt,"Air Interdiction","f2f_exe\f2f_exe_p.sqf","14US_exe_ai",37);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","14US_clr",36);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","14US_back",35);
	};
	// ---------- "HarrierGR3" (Harrier Gr3 RAFG Default bt Trouble) ----------
	case "HarrierGR3_mm":
	{
		ACTN_RD(actn_HarrierGR3_sm_1,_tgt,"Air Superiority","f2f_exe\f2f_exe_p.sqf","HarrierGR3_exe_as",40);
		ACTN_RD(actn_HarrierGR3_sm_2,_tgt,"Close Air Support","f2f_exe\f2f_exe_p.sqf","HarrierGR3_exe_cas",39);
		ACTN_RD(actn_HarrierGR3_sm_3,_tgt,"Air Interdiction","f2f_exe\f2f_exe_p.sqf","HarrierGR3_exe_ai",38);
		ACTN_RD(actn_HarrierGR3_sm_4,_tgt,"Combat Air Patrol","f2f_exe\f2f_exe_p.sqf","HarrierGR3_exe_cap",37);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","HarrierGR3_clr",36);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","HarrierGR3_back",35);
	};
	// ---------- "HarrierGR3s" (Harrier Gr3 RAFG Snow by Trouble) ----------
	case "HarrierGR3s_mm":
	{
		ACTN_RD(actn_HarrierGR3s_sm_1,_tgt,"Air Superiority","f2f_exe\f2f_exe_p.sqf","HarrierGR3s_exe_as",40);
		ACTN_RD(actn_HarrierGR3s_sm_2,_tgt,"Close Air Support","f2f_exe\f2f_exe_p.sqf","HarrierGR3s_exe_cas",39);
		ACTN_RD(actn_HarrierGR3s_sm_3,_tgt,"Air Interdiction","f2f_exe\f2f_exe_p.sqf","HarrierGR3s_exe_ai",38);
		ACTN_RD(actn_HarrierGR3s_sm_4,_tgt,"Combat Air Patrol","f2f_exe\f2f_exe_p.sqf","HarrierGR3s_exe_cap",37);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","HarrierGR3s_clr",36);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","HarrierGR3s_back",35);
	};
	// ---------- GLT F-16C (All Variants) ----------
	case "GLT_F16C_mm":
	{
		ACTN_RD(actn_GLT_F16C_sm_1,_tgt,"Air-Ground Missiles","f2f_exe\f2f_exe_p.sqf","GLT_F16C_exe_agm",40);
		ACTN_RD(actn_GLT_F16C_sm_2,_tgt,"AGM-88's","f2f_exe\f2f_exe_p.sqf","GLT_F16C_exe_agm88",39);
		ACTN_RD(actn_GLT_F16C_sm_3,_tgt,"Close Air Patrol","f2f_exe\f2f_exe_p.sqf","GLT_F16C_exe_cap",38);
		ACTN_RD(actn_GLT_F16C_sm_4,_tgt,"Exocet","f2f_exe\f2f_exe_p.sqf","GLT_F16C_exe_exo",37);
		ACTN_RD(actn_GLT_F16C_sm_5,_tgt,"Freefall Bombs","f2f_exe\f2f_exe_p.sqf","GLT_F16C_exe_ffb",36);
		ACTN_RD(actn_GLT_F16C_sm_6,_tgt,"Multirole","f2f_exe\f2f_exe_p.sqf","GLT_F16C_exe_mr",35);
		ACTN_RD(actn_GLT_F16C_sm_7,_tgt,"Strike","f2f_exe\f2f_exe_p.sqf","GLT_F16C_exe_strk",34);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","GLT_F16C_clr",33);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","GLT_F16C_back",32);
	};
	// ---------- "AV8B2_JDAM" (GLT Missile Box Harrier) ----------
	case "AV8B2_JDAM_mm":
	{
		ACTN_RD(actn_AV8B2_JDAM_sm_1,_tgt,"Air Superiority","f2f_exe\f2f_exe_p.sqf","AV8B2_JDAM_exe_as",40);
		ACTN_RD(actn_AV8B2_JDAM_sm_2,_tgt,"Air Interdiction","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B2_JDAM_ai_sm",39);
		ACTN_RD(actn_AV8B2_JDAM_sm_3,_tgt,"Close Air Support","f2f_exe\f2f_exe_p.sqf","AV8B2_JDAM_exe_cas",38);
		ACTN_RD(actn_AV8B2_JDAM_sm_4,_tgt,"Combat Air Patrol","f2f_exe\f2f_exe_p.sqf","AV8B2_JDAM_exe_cap",37);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","AV8B2_JDAM_clr",36);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","AV8B2_JDAM_back",35);
	};
	case "AV8B2_JDAM_ai_sm":
	{
		ACTN_RD(actn_AV8B2_JDAM_ai_sm_1,_tgt,"GPS/INS Package (JDAM)","f2f_exe\f2f_exe_p.sqf","AV8B2_JDAM_exe_ai_jdam",40);
		ACTN_RD(actn_AV8B2_JDAM_ai_sm_2,_tgt,"LASER Package (Paveway)","f2f_exe\f2f_exe_p.sqf","AV8B2_JDAM_exe_ai_pave",39);
		ACTN_RD(actn_AV8B2_JDAM_ai_sm_3,_tgt,"GP Light Package (Mark 81 - 250lb)","f2f_exe\f2f_exe_p.sqf","AV8B2_JDAM_exe_ai_mk81",38);
		ACTN_RD(actn_AV8B2_JDAM_ai_sm_4,_tgt,"GP Medium Package (Mark 82 - 500lb)","f2f_exe\f2f_exe_p.sqf","AV8B2_JDAM_exe_ai_mk82",37);
		ACTN_RD(actn_AV8B2_JDAM_ai_sm_5,_tgt,"GP Heavy Package (Mark 84 - 2000lb)","f2f_exe\f2f_exe_p.sqf","AV8B2_JDAM_exe_ai_mk84",36);
		ACTN_YL(actn_back,_tgt,"Back to Index","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","AV8B2_JDAM_ai_back",35);
	};
	// ---------- "A10_US_EP1_JDAM" (GLT Missile Box A-10) ----------
	case "A10_US_EP1_JDAM_mm":
	{
		ACTN_RD(actn_A10_US_EP1_JDAM_sm_1,_tgt,"Air Interdiction","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_US_EP1_JDAM_ai_sm",40);
		ACTN_RD(actn_A10_US_EP1_JDAM_sm_2,_tgt,"Close Air Support","f2f_exe\f2f_exe_p.sqf","A10_US_EP1_JDAM_exe_cas",39);
		ACTN_RD(actn_A10_US_EP1_JDAM_sm_3,_tgt,"Combat Air Patrol","f2f_exe\f2f_exe_p.sqf","A10_US_EP1_JDAM_exe_cap",38);
		ACTN_YL(actn_clear,_tgt,"Clear Weapon Stations","f2f_exe\f2f_exe_clr.sqf","A10_US_EP1_JDAM_clr",37);
		ACTN_YL(actn_back,_tgt,"Exit F2F ALSS","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","A10_US_EP1_JDAM_back",36);
	};
	case "A10_US_EP1_JDAM_ai_sm":
	{
		ACTN_RD(actn_A10_US_EP1_JDAM_ai_sm_1,_tgt,"GPS/INS Package (JDAM)","f2f_exe\f2f_exe_p.sqf","A10_US_EP1_JDAM_exe_ai_jdam",40);
		ACTN_RD(actn_A10_US_EP1_JDAM_ai_sm_2,_tgt,"LASER Package (Paveway)","f2f_exe\f2f_exe_p.sqf","A10_US_EP1_JDAM_exe_ai_pave",39);
		ACTN_RD(actn_A10_US_EP1_JDAM_ai_sm_3,_tgt,"GP Light Package (Mark 81 - 250lb)","f2f_exe\f2f_exe_p.sqf","A10_US_EP1_JDAM_exe_ai_mk81",38);
		ACTN_RD(actn_A10_US_EP1_JDAM_ai_sm_4,_tgt,"GP Medium Package (Mark 82 - 500lb)","f2f_exe\f2f_exe_p.sqf","A10_US_EP1_JDAM_exe_ai_mk82",37);
		ACTN_RD(actn_A10_US_EP1_JDAM_ai_sm_5,_tgt,"GP Heavy Package (Mark 84 - 2000lb)","f2f_exe\f2f_exe_p.sqf","A10_US_EP1_JDAM_exe_ai_mk84",36);
		ACTN_YL(actn_back,_tgt,"Back to Index","custom\vehicleloadoutselector\f2f_actn\f2f_actn_back.sqf","A10_US_EP1_JDAM_ai_back",35);
	};
// ------------------------------------------
// ---------- Non-compatible Planes ---------
// ------------------------------------------
	default
	{
		if (true) exitWith {};
	};
};