class ExtraRc {
	class ItemZombieParts {
		class Test1 {
			text = "Smear Guts on you";
			script = "[] execVM ""custom\walkamongstthedead\smear_guts.sqf"";";
		};
	};
	class ItemWaterbottle {
		class Test1 {
			text = "Wash zombie guts";
			script = "[] execVM ""custom\walkamongstthedead\usebottle.sqf"";";
		};
	};
    class ItemKiloHemp {
        class SmokeWeed {
            text = "Smoke Dis Weed";
            script = "execVM ""custom\weed\effect.sqf"";";
        };
    };		
	class ItemToolbox {
		class BuildBike {
			text = "Deploy Bike";
			script = "['MMT_Civ'] execVM 'custom\toolmenu\player\vdeploy.sqf'";
		};
		class BuildMozzie {
			text = "Deploy Mozzie";
			script = "['CSJ_GyroC'] execVM 'custom\toolmenu\player\vdeploy.sqf'";
		};
	};
};
	class ItemRuby 
	{
        class BB1 {
            text = "Build Bandit Level 1 House";
            script = "['B1'] execVM 'custom\code\tavi\originsbuild.sqf'";
        };
		class BB2 {
            text = "Build Bandit Level 2 House";
            script = "['B2'] execVM 'custom\code\tavi\originsbuild.sqf'";
        };
		class BB3 {
            text = "Build Bandit Level 3 House";
            script = "['B3'] execVM 'custom\code\tavi\originsbuild.sqf'";
        };
	};
		
	class ItemSapphire 
	{
        class BH1 {
            text = "Build Hero Level 1 House";
            script = "['H1'] execVM 'custom\code\tavi\originsbuild.sqf'";
        };
		class BH2 {
            text = "Build Hero Level 2 House";
            script = "['H2'] execVM 'custom\code\tavi\originsbuild.sqf'";
        };
		class BH3 {
            text = "Build Hero Level 3 House";
            script = "['H3'] execVM 'custom\code\tavi\originsbuild.sqf'";
        };
	};
	
	class ItemTopaz 
	{
		class BSG {
            text = "Build Small Garage";
            script = "['SG'] execVM 'custom\code\tavi\originsbuild.sqf'";
        };
		class BLG {
			text = "Build Large Garage";
			script = "['LG'] execVM 'custom\code\tavi\originsbuild.sqf'";
        };
    };
	
	class ItemEmerald 
	{
		class BPG {
			text = "Build Pyramid Garage";
			script = "['PG'] execVM 'custom\code\tavi\originsbuild.sqf'";
        };
    };
	class ItemObsidian 
	{
		class menuItem1 {
			text = "Build Stronghold";
			script = "spawn player_buildStronghold;";
		};
	};
};
