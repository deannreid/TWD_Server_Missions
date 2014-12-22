// ---------- "OV10" (OV-10 Bronco - Tigerian Air Force by CheyenneAH56) ----------
case "OV10":
{
	ACTN_YL(actn_OV10_mm,_vec,"F2F Air Loadout Selector System (OV-10 Bronco)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","OV10_mm",50);
	CLOSER(actn_OV10_mm);
};
if (__isACE) then
{
	// ---------- "TFB_OV10" (OV-10 Bronco TFB - TFB Modification) ----------
	case "TFB_OV10":
	{
		ACTN_YL(actn_TFB_OV10_mm,_vec,"F2F Air Loadout Selector System (OV-10 Bronco TFB)","custom\vehicleloadoutselector\f2f_actn\f2f_actn_p.sqf","TFB_OV10_mm",50);
		CLOSER(actn_TFB_OV10_mm);
	};
};