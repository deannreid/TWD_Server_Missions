switch (_acClass) do
{
// ------------------------------------------
// ------------ BIS Helicopters -------------
// ------------------------------------------
// ---------- OPFOR ----------
	// ---------- "Mi17_rockets_RU" Mi-8 Russia ----------
	case "Mi17_rockets_RU":
	{
		ACTN_YL(actn_Mi17_rockets_RU_mm,_vec,"F2F Air Loadout Selector System (Mi-8)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi17_rockets_RU_mm",50);
		CLOSER(actn_Mi17_rockets_RU_mm);
	};
	// ---------- "Mi171Sh_rockets_CZ_EP1" Mi-8 CZ ----------
	case "Mi171Sh_rockets_CZ_EP1":
	{
		ACTN_YL(actn_Mi171Sh_rockets_CZ_EP1_mm,_vec,"F2F Air Loadout Selector System (Mi-8)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi171Sh_rockets_CZ_EP1_mm",50);
		CLOSER(actn_Mi171Sh_rockets_CZ_EP1_mm);
	};
	// ---------- "Mi24_D" Mi-24D ----------
	case "Mi24_D":
	{
		ACTN_YL(actn_Mi24_D_mm,_vec,"F2F Air Loadout Selector System (Mi-24D)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi24_D_mm",50);
		CLOSER(actn_Mi24_D_mm);
	};
	// ---------- "Mi24_D_TK_EP1" Mi-24D Takistan Army ----------
	case "Mi24_D_TK_EP1":
	{
		ACTN_YL(actn_Mi24_D_TK_EP1_mm,_vec,"F2F Air Loadout Selector System (Mi-24D Takistan Army)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi24_D_TK_EP1_mm",50);
		CLOSER(actn_Mi24_D_TK_EP1_mm);
	};
	// ---------- "Mi24_P" Mi-24P ----------
	case "Mi24_P":
	{
		if (__isACE) then
		{
			ACTN_YL(actn_ACE_Mi24_P_mm,_vec,"F2F Air Loadout Selector System (Mi-24P ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Mi24_P_mm",50);
			CLOSER(actn_ACE_Mi24_P_mm);
		}
		else
		{
			ACTN_YL(actn_Mi24_P_mm,_vec,"F2F Air Loadout Selector System (Mi-24P)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi24_P_mm",50);
			CLOSER(actn_Mi24_P_mm);
		};
	};
	// ---------- "Mi24_V" Mi-24V ----------
	case "Mi24_V":
	{
		if (__isACE) then
		{
			ACTN_YL(actn_ACE_Mi24_V_mm,_vec,"F2F Air Loadout Selector System (Mi-24V ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Mi24_V_mm",50);
			CLOSER(actn_ACE_Mi24_V_mm);
		}
		else
		{
			ACTN_YL(actn_Mi24_V_mm,_vec,"F2F Air Loadout Selector System (Mi-24V)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Mi24_V_mm",50);
			CLOSER(actn_Mi24_V_mm);
		};
	};
	// ---------- "Ka52" Ka-52 ----------
	case "Ka52":
	{
		if (__isACE) then
		{
			ACTN_YL(actn_ACE_Ka52_mm,_vec,"F2F Air Loadout Selector System (Ka-52 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Ka52_mm",50);
			CLOSER(actn_ACE_Ka52_mm);
		}
		else
		{
			ACTN_YL(actn_Ka52_mm,_vec,"F2F Air Loadout Selector System (Ka-52)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Ka52_mm",50);
			CLOSER(actn_Ka52_mm);
		};
	};
	// ---------- "Ka52Black" Ka-52 Black ----------
	case "Ka52Black":
	{
		if (__isACE) then
		{
			ACTN_YL(actn_ACE_Ka52_mm,_vec,"F2F Air Loadout Selector System (Ka-52 ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_Ka52_mm",50);
			CLOSER(actn_ACE_Ka52_mm);
		}
		else
		{
			ACTN_YL(actn_Ka52_mm,_vec,"F2F Air Loadout Selector System (Ka-52)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Ka52_mm",50);
			CLOSER(actn_Ka52_mm);
		};
	};
// ---------- BLUFOR ----------
	// ---------- "AH64D" AH-64D ----------
	case "AH64D":
	{
		ACTN_YL(actn_AH64D_mm,_vec,"F2F Air Loadout Selector System (AH-64D)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","AH64D_mm",50);
		CLOSER(actn_AH64D_mm);
	};
	// ---------- "AH64D_EP1" AH-64D ----------
	case "AH64D_EP1":
	{
		if (__isACE) then
		{
			ACTN_YL(actn_ACE_AH64D_mm,_vec,"F2F Air Loadout Selector System (AH-64D ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH64D_mm",50);
			CLOSER(actn_ACE_AH64D_mm);
		}
		else
		{
			ACTN_YL(actn_AH64D_mm,_vec,"F2F Air Loadout Selector System (AH-64D)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","AH64D_mm",50);
			CLOSER(actn_AH64D_mm);
		};
	};
	// ---------- "BAF_Apache_AH1_D" AH-1D ----------
	case "BAF_Apache_AH1_D":
	{
		if (__isACE) then
		{
			ACTN_YL(actn_ACE_BAF_AH1_mm,_vec,"F2F Air Loadout Selector System (AH-1D ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_BAF_AH1_mm",50);
			CLOSER(actn_ACE_BAF_AH1_mm);
		}
		else
		{
			ACTN_YL(actn_BAF_Apache_AH1_D_mm,_vec,"F2F Air Loadout Selector System (AH-1D)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","BAF_Apache_AH1_D_mm",50);
			CLOSER(actn_BAF_Apache_AH1_D_mm);
		};
	};
	// ---------- "AH1Z" AH-1Z ----------
	case "AH1Z":
	{
		if (__isACE) then
		{
			ACTN_YL(actn_ACE_AH1Z_mm,_vec,"F2F Air Loadout Selector System (AH-1Z Viper ACE)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","ACE_AH1Z_mm",50);
			CLOSER(actn_ACE_AH1Z_mm);
		}
		else
		{
			ACTN_YL(actn_AH1Z_mm,_vec,"F2F Air Loadout Selector System (AH-1Z Viper)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","AH1Z_mm",50);
			CLOSER(actn_AH1Z_mm);
		};
	};
	// ---------- "AH6J_EP1" AH-6J ----------
	case "AH6J_EP1":
	{
		ACTN_YL(actn_AH6J_EP1_mm,_vec,"F2F Air Loadout Selector System (AH-6J)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","AH6J_EP1_mm",50);
		CLOSER(actn_AH6J_EP1_mm);
	};
	// ---------- "UH1Y" UH-1Y ----------
	case "UH1Y":
	{
		ACTN_YL(actn_UH1Y_mm,_vec,"F2F Air Loadout Selector System (UH-1Y Venom)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","UH1Y_mm",50);
		CLOSER(actn_UH1Y_mm);
	};
	// ---------- "Ka60_GL_PMC" Ka-60 M32 ----------
	case "Ka60_GL_PMC":
	{
		ACTN_YL(actn_Ka60_GL_PMC_mm,_vec,"F2F Air Loadout Selector System (Ka-60)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Ka60_GL_PMC_mm",50);
		CLOSER(actn_Ka60_GL_PMC_mm);
	};
	// ---------- "Ka60_PMC" Ka-60 ----------
	case "Ka60_PMC":
	{
		ACTN_YL(actn_Ka60_PMC_mm,_vec,"F2F Air Loadout Selector System (Ka-60)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_h.sqf","Ka60_PMC_mm",50);
		CLOSER(actn_Ka60_PMC_mm);
	};
// ------------------------------------------
// ------------ Addon Helicopters -----------
// ------------------------------------------
	if (__isACE) then
	{
		#include "f2f_inc_adds_h_ACE.sqf"
	};
	#include "f2f_inc_adds_h_UH60.sqf"
// ------------------------------------------
// ------- Non-compatible Helicopters -------
// ------------------------------------------
	default
	{
		// hint "Current helicopter is not A.L.S.S. compatible!\n\nContact [F2F] SkyNet at www.TheFirst2Fight.com if you would like an aircraft to be included in the next update.";
		waitUntil {sleep 0.1; _vec distance _loader > _radi || typeOf vehicle player != _acClass;};
		hint "";
		_vec = nil;
		_acClass = nil;
		if (true) exitWith {null = [_loader, _radi] execVM "custom\vehicleloadoutselector\f2f_alss_init.sqf"};
	};
};