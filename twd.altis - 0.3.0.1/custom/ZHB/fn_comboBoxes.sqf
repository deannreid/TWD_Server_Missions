private["_fillArray"];
_fillArray = ["Blank"]; // 0
if(Z_HUD_FPS)then{ // 1
	_fillArray pushBack "FPS";
}else{
	_fillArray pushBack "Disabled";
};

if(Z_HUD_Players)then{ //2
	_fillArray pushBack "Players";
}else{
	_fillArray pushBack "Disabled";
};

if(Z_HUD_Damage)then{ //3
	_fillArray pushBack "Damage";
}else{
	_fillArray pushBack "Disabled";
};

if(Z_HUD_Crypto)then{ // 4
	_fillArray pushBack "Crypto";
}else{
	_fillArray pushBack "Disabled";
};

if(Z_HUD_Hunger)then{ // 5
	_fillArray pushBack "Hunger";
}else{
	_fillArray pushBack "Disabled";
};
 
if(Z_HUD_Thirst)then{ // 6
	_fillArray pushBack "Thirst";
}else{
	_fillArray pushBack "Disabled";
};

if(Z_HUD_Grid)then{ // 7
	_fillArray pushBack "Grid";
}else{
	_fillArray pushBack "Disabled";
};

if(Z_HUD_Fatique)then{
	_fillArray pushBack "Fatigue";
}else{
	_fillArray pushBack "Disabled";
};

if(Z_HUD_Restart)then{
	_fillArray pushBack "Restart";
}else{
	_fillArray pushBack "Disabled";
};

if(Z_HUD_Toxicity)then{
	_fillArray pushBack "Toxicity";
}else{
	_fillArray pushBack "Disabled";
};

if(Z_HUD_Stamina)then{
	_fillArray pushBack "Stamina";
}else{
	_fillArray pushBack "Disabled";
};

if(Z_HUD_Energy)then{
	_fillArray pushBack "Energy";
}else{
	_fillArray pushBack "Disabled";
};

{
	private["_z_combobox"];
	_y = _x;
	_z_combobox = 3100 + _forEachIndex;
	{_test  = lbAdd[_z_combobox,_x]} count _fillArray; 	
	lbSetCurSel [_z_combobox, _y];	
}forEach Z_HUD_pos;	