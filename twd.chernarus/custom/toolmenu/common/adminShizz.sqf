if ( !((getPlayerUID player) in adminAll) && !((getPlayerUID player) in userDALL)) then
{
	DZE_requireplot = 0;
	DZE_StaticConstructionCount = 0;
	DZE_teleport = [99999,99999,99999,99999,99999];
} 
else
	{
		DZE_requireplot = 0;
		DZE_StaticConstructionCount = 1;
		[] execVM "\z\addons\dayz_code\system\antihack.sqf";
	}; 