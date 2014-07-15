if ((getPlayerUID player) in userSuper) then 
{

	if (isnil "tracker") then {tracker = 0;};

	if (tracker == 0) then
	{

		[]spawn
		{
			private["_veh", "_idx"];
			_idx = -1;

			while {true} do
			{
				if (_idx == -1) then
				{
					_idx = (vehicle player) addaction [("<t color=""#ff2266"">" + ("Press F2 for Admin Menu") +"</t>"),"VLAH12881ERNU","",0,false,true,"",""];
					_veh = vehicle player;
				};

				if (_veh != vehicle player) then
				{
					_veh removeAction _idx;
					_idx = -1;      
				};
				Sleep 1;
			};
		};
		tracker = 1;
	};

	waituntil {!alive player ; sleep 1;};
	tracker = 0;
};