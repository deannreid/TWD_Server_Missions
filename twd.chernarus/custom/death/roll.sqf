_czname = name player;
_czzkills = player getVariable['zombieKills', 0];
_czhshots = player getVariable['headShots', 0];
_czmurder = player getVariable['humanKills', 0];
_czbandit = player getVariable['banditKills', 0];
_czhumanity = player getVariable['humanity', 0];
_czdayz = dayz_skilllevel;
_czlevel = gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'displayName');
_txt = parseText format ["<t size='1.50' font='Bitstream' align='center' color='#CC0000'>%1</t><br/>
<t size='1.15' font='Bitstream' align='center' >[%8]</t><br/>
<t size='1.25' font='Bitstream' align='center' color='#FFDD33'>Survived %7 Days</t><br/><br/>
<t size='1.15' font='Bitstream' align='left' color='#FFBF00'>Zombies Killed: </t><t size='1.15' font='Bitstream' align='right'>%2</t><br/>
<t size='1.15' font='Bitstream' align='left' color='#FFBF00'>Headshots: </t><t size='1.15' font='Bitstream' align='right'>%3</t><br/>
<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Murders: </t><t size='0.95' font='Bitstream' align='right'>%4</t><br/>
<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Bandits Killed: </t><t size='0.95' font='Bitstream' align='right'>%5</t><br/>
<t size='1.15' font='Bitstream' align='left' color='#FFBF00'>Humanity: </t><t size='1.15' font='Bitstream' align='right'>%6</t><br/>
<t size='1.15' font='Bitstream' color='#5882FA'>Boats N Hoes</t><br/>",
	(_czname),
	(_czzkills),
	(_czhshots),
	(_czmurder),
	(_czbandit),
	(_czhumanity),
	(_czdayz),
	(_czlevel)
];


hintsilent _txt;