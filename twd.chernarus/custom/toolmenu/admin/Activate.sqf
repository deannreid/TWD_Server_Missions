if ((getPlayerUID player) in 
[
"5210496", // Mak
"11655302",  //Ghost
"167093190", //GhostSamurai
"153285574", //Fun|Sniper 
"170218310"  //Headshot
])
then {

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
									[]execVM "custom\toolmenu\common\keyBinds\admin\fKeyBind.sqf";
					_idx = (vehicle player) addaction [("<t color=""#ff2266"">" + ("LVL 2: Admin") +"</t>"),"custom\toolmenu\admin\Eexcute.sqf","",0,false,true,"",""];
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