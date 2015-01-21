_SAdmins = [
"76561198001768308", //Dean 
"76561198033945173", //Duuks
"76561197994004959", //Jambo
"76561198039115582", //FrankFurter
"76561198030454440", //Drty
"76561198068756413", //ChooChooAdrian
"76561197970475174", //James
"76561198007584311" //Chicken
];
if ((getPlayerUID player) in _SAdmins) then 
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
					_idx = (vehicle player) addaction [("<t color=""#ff2266"">" + ("Hive Spawn") +"</t>"),"custom\avehiclespawn\addvehicleDialog.sqf","",0,false,true,"",""];
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