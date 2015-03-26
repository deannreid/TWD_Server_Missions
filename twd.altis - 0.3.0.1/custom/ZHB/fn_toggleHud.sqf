if(Z_HudActive)then{	
	systemChat "Hud Of";
	Z_Hud_Backup = Z_HUD_pos;
	Z_HUD_pos = Z_Hud_Hiden;
	Z_HudActive = false;
}else{		
	systemChat "Hud On";
	Z_HUD_pos = Z_Hud_Backup;	
	Z_HudActive = true;			
};	
