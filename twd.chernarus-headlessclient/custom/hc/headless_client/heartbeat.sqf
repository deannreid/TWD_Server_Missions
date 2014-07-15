// broadcast availability
waituntil {!isNull player}; // wait until player object is set
[] spawn {
	while {true} do
	{
		PV_HCHeartbeat = player;
		publicVariableServer "PV_HCHeartbeat";
		sleep 3;  // send heartbeat to server every 3 seconds (prime number)
	};
};