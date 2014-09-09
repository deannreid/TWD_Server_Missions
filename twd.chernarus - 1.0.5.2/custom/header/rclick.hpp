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
	class ItemRadio {
		class GroupManagement {
			text = "Group Management";
			script = "execVM 'custom\groups\loadGroupManagement.sqf'";
		};
    };
	class ItemMap {
        class locate {
            text = "Locate Vehicles";
            script = "execVM 'custom\code\twd_vehicle.sqf'";
        };
    };
};