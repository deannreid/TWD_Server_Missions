systemChat "Changing Hud";
disableSerialization;
{
	_z_combobox = 3100 + _forEachIndex;
	_z_image = 3200 + _forEachIndex;
	_z_text = 3300 + _forEachIndex;					
	_indexSel = lbCurSel _z_combobox;
	if(lbText [_z_combobox, _indexSel] == "Disabled")then{
		Z_HUD_pos set [_forEachIndex, 0 ];
	}else{
		Z_HUD_pos set [_forEachIndex,_indexSel];
	}		
}forEach Z_HUD_pos;