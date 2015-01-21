disableSerialization;

AsReMixhud_Control = true;

while {true} do
{

	1000 cutRsc ["AsReMixhud","PLAIN"];

	_wpui = uiNameSpace getVariable "AsReMixhud";
    _vitals = _wpui displayCtrl 4900;
	_Player = player;

	ZombieKills 		= 		_Player getVariable["zombieKills",0];
	Money 		        = 		_Player getVariable["cashMoney",0];
	Hero_Kills 			= 		_Player getVariable["humanKills",0];
    Bank_Balance 		= 		_Player getVariable["bankMoney",0];
	Bandit_Kills 		= 		_Player getVariable["banditKills",0];
	Humanity 		    = 		_Player getVariable["humanity",0];
	Blood 		        = 		_Player getVariable["USEC_BloodQty",12000];
	Fps 		        = 		(round diag_fps);

	_stime = 0;
	if(serverTime > 36000)then{_stime = time;}else{_stime = serverTime;};
	_hours = (_stime/60/60);
	_hours = toArray (str _hours);
	_hours resize 1;
	_hours = toString _hours;
	_hours = compile _hours;
	_hours = call  _hours;
	_minutes = floor(_stime/60);
	_minutes2 = ((_minutes - (_hours*60)) min 60) max 0;if (_minutes2 < 10) then {_minutes2 = format ['0%1',_minutes2];};


	_vitals ctrlSetStructuredText parseText format 
["
	
	<t size='0.9'> %1 </t><img size='0.9' align='right' image=custom\bank\Player_Hud\icons\Money.paa'/><br/>
	<t size='0.9'> %2 </t><img size='0.9' align='right' image=custom\bank\Player_Hud\icons\Bank.paa'/><br/>",
	[Money] call BIS_fnc_numberText,
	[Bank_Balance] call BIS_fnc_numberText
];
	_vitals ctrlCommit 0;
    sleep 1.5;
};