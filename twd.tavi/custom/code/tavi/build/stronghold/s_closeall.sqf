_stronghold = cursorTarget;
sleep 1;
_nil = [objNull, player, rSAY, "DoorCreak"] call RE;
systemChat('Closing top doors..');
_stronghold animate ["dvere1", 0];