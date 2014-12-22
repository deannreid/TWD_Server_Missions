switch (_acClass) do
{
// ------------------------------------------
// --------------- BIS Planes ---------------
// ------------------------------------------
// ---------- OPFOR ----------
	// ---------- "L39_TK_EP1" L-39 Takistan Army ----------
	case "L39_TK_EP1":
	{
		if (__isACE) then
		{
			ACTN_YL(actn_ACE_L39_mm,_vec,"F2F Air Loadout Selector System (L-39 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_L39_mm",50);
			CLOSER(actn_ACE_L39_mm);
		}
		else
		{
			ACTN_YL(actn_L39_TK_EP1_mm,_vec,"F2F Air Loadout Selector System (L-39)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","L39_TK_EP1_mm",50);
			CLOSER(actn_L39_TK_EP1_mm);
		};
	};
	// ---------- "Su25_CDF" Su-25 [CDF] ----------
	case "Su25_CDF":
	{
		if (__isACE) then
		{
			ACTN_YL(actn_ACE_Su25_mm,_vec,"F2F Air Loadout Selector System (Su-25 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_Su25_mm",50);
			CLOSER(actn_ACE_Su25_mm);
		}
		else
		{
			ACTN_YL(actn_Su25_CDF_mm,_vec,"F2F Air Loadout Selector System (Su-25 [CDF])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su25_CDF_mm",50);
			CLOSER(actn_Su25_CDF_mm);
		};
	};
	// ---------- "Su25_Ins" Su-25 [ChDKZ] ----------
	case "Su25_Ins":
	{
		if (__isACE) then
		{
			ACTN_YL(actn_ACE_Su25_mm,_vec,"F2F Air Loadout Selector System (Su-25 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_Su25_mm",50);
			CLOSER(actn_ACE_Su25_mm);
		}
		else
		{
			ACTN_YL(actn_Su25_Ins_mm,_vec,"F2F Air Loadout Selector System (Su-25 [ChDKZ])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su25_Ins_mm",50);
			CLOSER(actn_Su25_Ins_mm);
		};
	};
	// ---------- "Su25_TK_EP1" Su-25 [Takistan Army] ----------
	case "Su25_TK_EP1":
	{
		if (__isACE) then
		{
			ACTN_YL(actn_ACE_Su25_mm,_vec,"F2F Air Loadout Selector System (Su-25 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_Su25_mm",50);
			CLOSER(actn_ACE_Su25_mm);
		}
		else
		{
			ACTN_YL(actn_Su25_TK_EP1_mm,_vec,"F2F Air Loadout Selector System (Su-25 [Takistan Army])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su25_TK_EP1_mm",50);
			CLOSER(actn_Su25_TK_EP1_mm);
		};
	};
	// ---------- "Su39" Su-25 [Russia] ----------
	case "Su39":
	{
		if (__isACE) then
		{
			ACTN_YL(actn_ACE_Su39_mm,_vec,"F2F Air Loadout Selector System (Su-25 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_Su39_mm",50);
			CLOSER(actn_ACE_Su39_mm);
		}
		else
		{
			ACTN_YL(actn_Su39_mm,_vec,"F2F Air Loadout Selector System (Su-25 [Russia])","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su39_mm",50);
			CLOSER(actn_Su39_mm);
		};
	};
	// ---------- "Su34" Su-34 ----------
	case "Su34":
	{
		if (__isACE) then
		{
		ACTN_YL(actn_ACE_Su34_mm,_vec,"F2F Air Loadout Selector System (Su-34 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_Su34_mm",50);
		CLOSER(actn_ACE_Su34_mm);
		}
		else
		{
		ACTN_YL(actn_Su34_mm,_vec,"F2F Air Loadout Selector System (Su-34)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","Su34_mm",50);
		CLOSER(actn_Su34_mm);
		};
	};
// ---------- BLUFOR ----------
	// ---------- "A10" A-10 [USMC] ----------
	case "A10":
	{
		ACTN_YL(actn_A10_mm,_vec,"F2F Air Loadout Selector System (A-10)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_mm",50);
		CLOSER(actn_A10_mm);
	};
	// ---------- "A10_US_EP1" A-10 [US] ----------
	case "A10_US_EP1":
	{
		if (__isACE) then
		{
			ACTN_YL(actn_ACE_A10_mm,_vec,"F2F Air Loadout Selector System (A-10 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","ACE_A10_mm",50);
			CLOSER(actn_ACE_A10_mm);
		}
		else
		{
			ACTN_YL(actn_A10_US_EP1_mm,_vec,"F2F Air Loadout Selector System (A-10)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","A10_US_EP1_mm",50);
			CLOSER(actn_A10_US_EP1_mm);
		};
	};
	// ---------- "AV8B" AV-8B Harrier II LGB ----------
	case "AV8B":
	{
		ACTN_YL(actn_AV8B_mm,_vec,"F2F Air Loadout Selector System (AV-8B LGB)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B_mm",50);
		CLOSER(actn_AV8B_mm);
	};
	// ---------- "AV8B2" AV-8B Harrier II ----------
	case "AV8B2":
	{
		ACTN_YL(actn_AV8B2_mm,_vec,"F2F Air Loadout Selector System (AV-8B)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","AV8B2_mm",50);
		CLOSER(actn_AV8B2_mm);
	};
// ------------------------------------------
// --------------- Addon Planes -------------
// ------------------------------------------
	if (__isGLT) then
	{
		#include "f2f_inc_adds_p_GLTMB.sqf"
		#include "f2f_inc_adds_p_F16C.sqf"
		#include "f2f_inc_adds_p_F14D.sqf"
		#include "f2f_inc_adds_p_F18F.sqf"
	};
	if (__isACE) then
	{
		#include "f2f_inc_adds_p_ACE.sqf"
	};
	if (__isRKSL) then
	{
		#include "f2f_inc_adds_p_FGR4.sqf"
		#include "f2f_inc_adds_p_EF2000BW.sqf"
	};
	#include "f2f_inc_adds_p_GR3.sqf"
	#include "f2f_inc_adds_p_OV10.sqf"
	#include "f2f_inc_adds_p_F15.sqf"
	#include "f2f_inc_adds_p_F2F.sqf"
// ------------------------------------------
// ---------- Non-compatible Planes ---------
// ------------------------------------------
	default
	{
		// hint "Current plane is not A.L.S.S. compatible!\n\nContact [F2F] SkyNet at www.TheFirst2Fight.com if you would like an aircraft to be included in the next update.";
		// closer
		waitUntil {sleep 0.1; _vec distance _loader > _radi || typeOf vehicle player != _acClass;};
		hint "";
		_vec = nil;
		_acClass = nil;
		if (true) exitWith {null = [_loader, _radi] execVM "custom\vehicleloadoutselector\f2f_alss_init.sqf"};
	};
};