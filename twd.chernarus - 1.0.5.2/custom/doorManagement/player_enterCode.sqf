_display = findDisplay 411444;
_display closeDisplay 3000;
if(AllowManualCode)then{
DZE_Lock_Door != (this getvariable['CharacterID','0']);
DZE_topCombo = 0;	
DZE_midCombo = 0;
DZE_botCombo = 0;
createDialog "Entercode";
}else{
cutText ["We do not allow manual codes.","PLAIN DOWN"];
};