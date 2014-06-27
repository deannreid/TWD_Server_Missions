// Code based on BTK Cargo script.

//// Add action to vehicles check every 5 seconds
while {true} do {
	{[_x] execVM "custom\VehicleStow\InitAction.sqf";} forEach (nearestObjects [player, ["AH1Z","MV22","UH1Y"], 30]);
	sleep 5;
};