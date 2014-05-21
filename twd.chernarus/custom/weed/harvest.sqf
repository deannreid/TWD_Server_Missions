_countHemp = count nearestObjects [player, ["fiberplant"], 5];
_Message = "Kilo hemp has been added in your inventory";
_weapon = "itemKnife";


//No need to edit below here!

if (_countHemp > 0) then 
		{
			diag_log format ["Starting to Harvest Hemp amount:" _countHemp];
				cutText [format["Starting to Harvest."], "PLAIN DOWN"];
				player removeWeapon _weapon;
				sleep 5;
				player addMagazine "ItemKiloHemp";
				player addWeapon _weapon;
				cutText [format["Finished harvesting!", _countHemp, _Message], "PLAIN DOWN"];
			diag_log format ["Player Harvest Completed"];
		} 
else 
{
	cutText [format["There is not any hemp plants nearby!"], "PLAIN DOWN"];
};

diag_log format ["The Hemp Script Worked, Yay"];