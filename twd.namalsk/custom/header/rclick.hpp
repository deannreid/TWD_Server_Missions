class ExtraRc {
    class ItemBloodbag {
        class Use {
            text = "Use Bloodbag";
            script = "execVM 'custom\selfbloodbag\player_selfbloodbag.sqf'";
        };
    };
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
	class ItemEmerald {
        class PicFrame {
            text = "Picture Frame";
            script = "createDialog ""WGT_INTERIOR1"";";
        };
		class Chairs {
            text = "Chair";
            script = "createDialog ""WGT_INTERIOR2"";";
        };
		class Beds {
            text = "Bed";
            script = "createDialog ""WGT_INTERIOR3"";";
        };
		class Bath {
            text = "Bathroom";
            script = "createDialog ""WGT_INTERIOR4"";";
        };
		class Shelf {
            text = "Shelf";
            script = "createDialog ""WGT_INTERIOR5"";";
        };
		class Misce {
            text = "Misc";
            script = "createDialog ""WGT_INTERIOR6"";";
        };
		class Tablz {
            text = "Table";
            script = "createDialog ""WGT_INTERIOR7"";";
        };
		class extr {
            text = "Exterior";
            script = "createDialog ""WGT_INTERIOR8"";";
        };
    };
    class ItemKiloHemp {
        class SmokeWeed {
            text = "Smoke Dis Weed";
            script = "execVM ""custom\weed\effect.sqf"";";
        };
    };	
    class ItemEpinephrine {
        class Inject {
            text = "Auto Inject";
            script = "execVM ""custom\code\inject.sqf"";";
        };
    };		

};