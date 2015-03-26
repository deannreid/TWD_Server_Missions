disableSerialization;
private["_time","_hours","_minutes","_timeString","_display","_grid","_xx","_yy"];
waitUntil {!(isNull (findDisplay 46))};
_ZHud = "ZHud" call BIS_fnc_rscLayer;
_ZHud cutRsc["ZHud","PLAIN"];
while {true} do
{
	uiSleep 1;		
	_time = (round( Z_HUD_RestartMinuts - (serverTime) / 60));
	_hours = (floor(_time / 60));
	_minutes = (_time - (_hours * 60));	
	switch(_minutes) do
	{
		case 9: {_minutes = "09"};
		case 8: {_minutes = "08"};
		case 7: {_minutes = "07"};
		case 6: {_minutes = "06"};
		case 5: {_minutes = "05"};
		case 4: {_minutes = "04"};
		case 3: {_minutes = "03"};
		case 2: {_minutes = "02"};
		case 1: {_minutes = "01"};
		case 0: {_minutes = "00"};
	};	
	_timeString = format["%1:%2",_hours, _minutes];		
	_display =  uiNamespace getVariable "ZHud";
	_grid = mapGridPosition  player;	
	_xx = (format[_grid]) select  [0,3];	
	_yy = (format[_grid]) select  [3,3];
	{
		private["_image","_text","_valign","_align"];
		_image = 3200 + _forEachIndex;
		_text = 3300 + _forEachIndex;
		_valign = "middle";
		_align = "center";			
		if(_text < 3308)then{
				_valign = "bottom";
				_align = "center";
		}else{
			if(_text < 3316)then{
					_valign = "middle";
					_align = "right";
			}else{
					if(_text < 3324)then{
							_valign = "top";
							_align = "center";
					}else{
							_valign = "middle";
							_align = "left";						
					};				
			};			
		};					
		switch( _x ) do
		{
			case 12: {
				(_display  displayCtrl _text) ctrlSetStructuredText parseText ( format["<t size='1.5'>%1</t>", EPOCH_playerEnergy,_align,_valign]);	
				(_display  displayCtrl _image) ctrlSetText  ( format["%1%2",Z_HUD_imageFolder,"energy.paa" ]);			
			};
			case 11: {
				(_display  displayCtrl _text) ctrlSetStructuredText parseText ( format["<t size='1.5'>%1</t>",round (EPOCH_playerStamina * 100) / 100.0,_align,_valign]);	
				(_display  displayCtrl _image) ctrlSetText  ( format["%1%2",Z_HUD_imageFolder,"stamina.paa" ]);			
			};
			case 10: {
				(_display  displayCtrl _text) ctrlSetStructuredText parseText ( format["<t size='1.5'>%1</t>", EPOCH_playerToxicity,_align,_valign]);	
				(_display  displayCtrl _image) ctrlSetText  ( format["%1%2",Z_HUD_imageFolder,"tox.paa" ]);			
			};
			case 9: {
				(_display  displayCtrl _text) ctrlSetStructuredText parseText ( format["<t size='1.5'>%1</t>", _timeString,_align,_valign]);	
				(_display  displayCtrl _image) ctrlSetText  ( format["%1%2",Z_HUD_imageFolder,"restart.paa" ]);			
			};
			case 8: {
				(_display  displayCtrl _text) ctrlSetStructuredText parseText ( format["<t size='1.5'>%1</t>",round (getFatigue player * 100 ) / 100  ,_align,_valign]);
				(_display  displayCtrl _image) ctrlSetText  ( format["%1%2",Z_HUD_imageFolder,"fatigue.paa" ]);			
			};
			case 7: {
				(_display  displayCtrl _text) ctrlSetStructuredText parseText ( format["<t size='1.5'>%1/%2</t>", _xx,_yy,_align,_valign]);	
				(_display  displayCtrl _image) ctrlSetText  ( format["%1%2",Z_HUD_imageFolder,"grid.paa" ]);			
			};
			case 6: {
				(_display  displayCtrl _text) ctrlSetStructuredText parseText ( format["<t size='1.5'>%1</t>",EPOCH_playerThirst ,_align,_valign]);
				(_display  displayCtrl _image) ctrlSetText  ( format["%1%2",Z_HUD_imageFolder,"drink.paa" ]);			
			};
			case 5: {
				(_display  displayCtrl _text) ctrlSetStructuredText parseText ( format["<t size='1.5'>%1</t>",EPOCH_playerHunger,_align,_valign ]);
				(_display  displayCtrl _image) ctrlSetText  ( format["%1%2",Z_HUD_imageFolder,"food.paa" ]);				
			};
			case 4: {
				(_display  displayCtrl _text) ctrlSetStructuredText parseText ( format["<t size='1.5'>%1</t>",EPOCH_playerCrypto ,_align,_valign]);
				(_display  displayCtrl _image) ctrlSetText  ( format["%1%2",Z_HUD_imageFolder,"crypto.paa" ]);			
			};
			case 3: {
				(_display  displayCtrl _text) ctrlSetStructuredText parseText ( format["<t size='1.5'>%1</t>",round((1 - (damage player)) * 100),_align,_valign]);
				(_display  displayCtrl _image) ctrlSetText  ( format["%1%2",Z_HUD_imageFolder,"health.paa" ]);			
			};
			case 2: {
				(_display  displayCtrl _text) ctrlSetStructuredText parseText ( format["<t size='1.5'>%1</t>",count playableUnits ,_align,_valign]);
				(_display  displayCtrl _image) ctrlSetText  ( format["%1%2",Z_HUD_imageFolder,"players.paa" ]);			
			};
			case 1: {
				(_display  displayCtrl _text) ctrlSetStructuredText parseText ( format["<t size='1.5'>%1</t>",round diag_fps,_align,_valign ]);
				(_display  displayCtrl _image) ctrlSetText  ( format["%1%2",Z_HUD_imageFolder,"fps.paa" ]);			
			};
			case 0: {
				(_display  displayCtrl _text) ctrlSetStructuredText parseText ( format["<t size='1.5'></t>","" ]); // control will be hidden anyways
				(_display  displayCtrl _image) ctrlSetText  ( format["",Z_HUD_imageFolder,"" ]); // control will be hidden anyways
			};
		};			
	}forEach Z_HUD_pos;		
	if(Z_TextHud)then{		
		(_display displayCtrl 3400)ctrlSetText format["FPS: %1 | PLAYERS: %2 | DAMAGE: %3 | KRYPTO: %4 | HUNGER: %5 | THIRST: %6 | GRIDREF: %7 ", round diag_fps, count playableUnits, damage player, EPOCH_playerCrypto, EPOCH_playerHunger, EPOCH_playerThirst, mapGridPosition player];
	}else{
		(_display displayCtrl 3400)ctrlSetText format[""];
	};
};
