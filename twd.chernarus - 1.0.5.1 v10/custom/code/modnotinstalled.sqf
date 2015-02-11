waitUntil{sleep 0.5; !isNil "dayz_playerBubble"};
sleep 2.5;
if !(isClass(configFile >> "CfgWeapons" >> "Chainsaw")) then {
	cutText ["", "BLACK"];
	_text = "
				<t size='1.2' color='#a81e13'>YOU NEED DAYZ EPOCH 1.0.5.1 TO PLAY ON THIS SERVER</t><br/>
				<t size='0.4' color='#FFFFFF'>IF YOU ALREADY INSTALLED DAYZ EPOCH,</t><br/>
				<t size='0.4' color='#FFFFFF'>YOU HAVE DONE IT WRONG!</t><br/><br/>
				<t size='0.6' color='#999999'>DONT USE DAYZCOMMANDER!</t><br/>
				<t size='0.6' color='#00FF00'>USE DAYZLAUNCHER!</t><br/>
				<t size='0.3' color='#00FF00'>www.dayzlauncher.com</t><br/><br/>
				<t size='0.8' color='#FFFFFF'>IF YOU NEED FURTHER SUPPORT JOIN OUR TEAMSPEAK</t><br/>
				<t size='1.5' color='#FFFFFF'>voice.vlhosting.co.uk</t><br/><br/>
			";
	[_text,0,0,999999,2,0,998] spawn yoloText;
	
	[] spawn {
		while {true} do {
			sleep 30;
			cutText ["","BLACK",0];
		};
	};
};

if !(isClass(configFile >> "CfgWeapons" >> "USSR_cheytac")) then {
	cutText ["", "BLACK"];
	_textO = "
				<t size='1.2' color='#a81e13'>YOU NEED OVERWATCH 0.2.5 TO PLAY ON THIS SERVER</t><br/>
				<t size='0.4' color='#FFFFFF'>IF YOU ALREADY INSTALLED DAYZ EPOCH,</t><br/>
				<t size='0.4' color='#FFFFFF'>YOU HAVE DONE IT WRONG!</t><br/><br/>
				<t size='0.6' color='#999999'>DONT USE DAYZCOMMANDER!</t><br/>
				<t size='0.6' color='#00FF00'>USE DAYZLAUNCHER!</t><br/>
				<t size='0.3' color='#00FF00'>www.dayzlauncher.com</t><br/><br/>
				<t size='0.8' color='#FFFFFF'>IF YOU NEED FURTHER SUPPORT JOIN OUR TEAMSPEAK</t><br/>
				<t size='1.5' color='#FFFFFF'>voice.vlhosting.co.uk</t><br/><br/>
			";
	[_textO,0,0,999999,2,0,998] spawn yoloText;
	
	[] spawn {
		while {true} do {
			sleep 30;
			cutText ["","BLACK",0];
		};
	};
};