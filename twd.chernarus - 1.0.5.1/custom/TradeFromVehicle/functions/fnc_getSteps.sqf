
private ["_count_weapons","_count_rejects","_final_count","_return","_weapons","_rejects"];
_weapons = _this select 0;
_rejects = _this select 1;
_count_weapons = count _weapons;
_count_rejects = count _rejects;
_final_count = _count_weapons - _count_rejects;
_return = round (_final_count / tfv_SALES_PER_ANIM);
if (_return < 1) then { _return = 1; };
	
_return
