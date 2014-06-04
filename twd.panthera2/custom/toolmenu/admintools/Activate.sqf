if ((getPlayerUID player) in userMaster) then 
{
	if (isnil "tracker") then {tracker = true;};

	if (tracker) then
	{
		[]spawn
		{
			private["_veh", "_idx"];
			_idx = -1;
			while {alive player} do
			{
				if (_idx == -1) then
				{
					[]execVM "custom\toolmenu\admintools\KeyBindings\FunctionKeys.sqf";
					[]execVM "custom\toolmenu\admintools\KeyBindings\NumberKeys.sqf";
					_idx = (vehicle player) addaction [("<t color=""#585858"">" + ("Beta Menu") +"</t>"),"custom\toolmenu\admintools\AdminToolsMain.sqf","",0,false,true,"",""];
					_veh = vehicle player;
				};
				if (_veh != vehicle player) then
				{
					_veh removeAction _idx;
					_idx = -1;      
				};
				Sleep 2;
			};
		};
		tracker = false;
	};
	waituntil {!alive player ; sleep 2;};
	tracker = true;
};