//Let Zeds know
[player,4,true,(getPosATL player)] spawn player_alertZombies;

if (isnil ("hotkey_hitme")) then {
    hotkey_hitme = 0;
};
if (hotkey_hitme == 1) then {
hotkey_hitme = 0;
titleText ["Debug Monitor Deactivated","PLAIN DOWN"];titleFadeOut 2;
} else {
hotkey_hitme = 1;
titleText ["Debug Monitor Activated","PLAIN DOWN"];titleFadeOut 2;
};


if ((getPlayerUID player) in 
[
"139811590"    // Dean
//"143144390",    // Ricco
//"144565382",    // Curtis
//"102208774",    // Kieran
//"94794054",     // Adrian
//"119540166",    // Cable
//"125215110",    // Calvin
//"5210496", 		// Mak
//"167093190",    // GhostSamurai
//"111721542",    // Robert
//"10265984",     // Z67
//"11655302"      // Ghost
]) then {
	while {sleep 1;hotkey_hitme == 1} do {
	  
	  hintSilent parseText format ["
	<t size='1.20' font='Bitstream' align='center' color='#00CC00'>[Admin Debug]</t><br/>
	<t size='0.95' font='Bitstream' align='left' >[%18]</t><t size='0.95' font='Bitstream' align='right'>[FPS: %10]</t><br/>
	<t size='0.95' font='Bitstream' align='center' color='#FFBF00'>Survived %7 Days</t><br/>
	<t size='0.95' font='Bitstream' align='left' >Players: %8</t><t size='0.95 'font='Bitstream' align='right'>Within 500m: %11</t><br/>
	<t size='0.95' font='Bitstream' align='left' >Vehicles:</t><t size='0.95' font='Bitstream'align='right'>%13(%14)</t><br/>
	<t size='0.95' font='Bitstream' align='left'>Air: %16</t><t size='0.95' font='Bitstream'align='right'>Sea: %23</t><br/>
	<t size='0.95' font='Bitstream' align='left' >All Bikes: %15</t><t size='0.95' font='Bitstream'align='right'>Cars: %17</t><br/>
	<t size='0.95' font='Bitstream' align='left' >Zombies (alive/total): </t><t size='0.95' font='Bitstream' align='right'>%20(%19)</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Zombies Killed: </t><t size='0.95' font='Bitstream' align='right'>%2</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Headshots: </t><t size='0.95' font='Bitstream' align='right'>%3</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Murders: </t><t size='0.95' font='Bitstream' align='right'>%4</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Bandits Killed: </t><t size='0.95' font='Bitstream' align='right'>%5</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Humanity: </t><t size='0.95' font='Bitstream' align='right'>%6</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Blood: </t><t size='0.95' font='Bitstream' align='right'>%9</t><br/>
	<t size='0.95' font='Bitstream' align='left' >GPS: %22</t><t size='0.95' font='Bitstream' align='right'>DIR: %24</t><br/>
	<t size='0.95'font='Bitstream'align='center' >%21</t><br/>
	",
	(name player),
	(player getVariable['zombieKills', 0]), 
	(player getVariable['headShots', 0]),
	(player getVariable['humanKills', 0]),
	(player getVariable['banditKills', 0]),
	(player getVariable['humanity', 0]),
	(dayz_Survived),
	(count playableUnits),
	r_player_blood,
	(round diag_fps),
	(({isPlayer _x} count (getPos vehicle player nearEntities [["AllVehicles"], 500]))-1),
	viewdistance,
	(count([6800, 9200, 0] nearEntities [["StaticWeapon","Car","Motorcycle","Tank","Air","Ship"],25000])),
	count vehicles,
	(count([6800, 9200, 0] nearEntities [["Motorcycle"],25000])),
	(count([6800, 9200, 0] nearEntities [["Air"],25000])),
	(count([6800, 9200, 0] nearEntities [["Car"],25000])),
	(gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'displayName')),
	(count entities "zZombie_Base"),
	({alive _x} count entities "zZombie_Base"),
	(getPosASL player),
	(mapGridPosition getPos player),
	(count([6800, 9200, 0] nearEntities [["Ship"],25000])),
	(round(getDir player))
];
};

} else {
while {sleep 1;hotkey_hitme == 1} do {
hintSilent parseText format ["
	<t size='1.20' font='Bitstream' align='center' color='#00CC00'>%1</t><br/>
	<t size='1.15' font='Bitstream' align='center' color='#00CC00'>voxelloop.co.uk</t><br/>	
	<t size='1' font='Bitstream' align='left' color='#FFBF00'>Zombies Killed: </t><t size='1.15' font='Bitstream' align='right'>%2</t><br/>
	<t size='1' font='Bitstream' align='left' color='#FFBF00'>Murders: </t><t size='1.15' font='Bitstream' align='right'>%4</t><br/>
	<t size='1' font='Bitstream' align='left' color='#FFBF00'>Bandits Killed: </t><t size='1.15' font='Bitstream' align='right'>%5</t><br/>
	<t size='1' font='Bitstream' align='left' color='#FFBF00'>Humanity: </t><t size='1.15' font='Bitstream' align='right'>%6</t><br/><br/>
	<t size='1' font='Bitstream' align='left' color='#FFBF00'>Blood: </t><t size='1.15' font='Bitstream' align='right'>%12</t><br/>
	<t size='1' font='Bitstream' align='left' color='#FFBF00'>Zombies (alive/total): </t><t size='1.15' font='Bitstream' align='right'>%14(%13)</t><br/>
	<t size='1.15' font='Bitstream' align='center' color='#00CC00'>TS: voice.vlhosting.co.uk</t><br/>	
	<t size='1.20' font='Bitstream' align='center' color='#00CC00'>Restart in: %11</t><br/>
	",
	(name player),
	(player getVariable['zombieKills', 0]),
	(player getVariable['headShots', 0]),
	(player getVariable['humanKills', 0]),
	(player getVariable['banditKills', 0]),
	(player getVariable['humanity', 0]),
	(dayz_skilllevel),
	(count entities "zZombie_Base"),
	({alive _x} count entities "zZombie_Base"),
	(gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'displayName')),
	(180-(round(serverTime/60))),
	r_player_blood,
	(count entities "zZombie_Base"),
	({alive _x} count entities "zZombie_Base"),
	(round diag_fps)
	
];};};