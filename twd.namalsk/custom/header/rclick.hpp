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