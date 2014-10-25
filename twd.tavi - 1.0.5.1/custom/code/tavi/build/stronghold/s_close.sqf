	// our target
	_building = cursorTarget;
	
sleep 1;
titleText ["Closing..", "PLAIN DOWN"];
titleFadeOut 5;
_nil = [objNull, player, rSAY, "stronghold"] call RE;
_building say ["origins_door_heavy"];
_building animate ["vrata", 0];
_building animate ["hride1", 0];
_building animate ["kolo1", 0];
_building animate ["vaha", 0];
_building animate ["kolo2", 0];
_building animate ["svich", 0];