#define dzgmControl ((uiNamespace getVariable "dzgm_Hud_Disp") displayCtrl (46300 + _index))
#define SHOW_HUD (cameraView in ["INTERNAL","EXTERNAL","GUNNER"]) && ((alive player) && (count units group player > 1))

dzgm_Icons_Clear = {
    private ["_index","_plist","_uc","_units"];
    _units = [];
    _uc = 0;
	_plist = units group player;
	{if ((!isNull _x) && (alive _x)) then {_units set [_uc,_x];_uc = _uc + 1;};} count _plist;
	_index = 0;
    {dzgmControl ctrlShow false;_index = _index + 1;} count _units;
};

dzgm_Icons_Name = {
    private ["_distance","_index","_make_icons","_name","_pIcons","_Plicon","_plist","_pos","_remove_icon","_scale","_screen","_sx","_sy","_tag","_uc","_units"];
    _pIcons = player getVariable "dzgm_Hud_pIcons";
    _make_icons = false;
	_remove_icon = false;
    _units = [];
    _uc = 0;
	_plist = units group player;
	{if ((!isNull _x) && (alive _x)) then {_units set [_uc,_x];_uc = _uc + 1;};} count _plist;

    if (isNil "_pIcons") then {
        _make_icons = true;
    } else {
        if (count(_pIcons) < _uc) then {_make_icons = true;};
        if (count(_pIcons) > _uc) then {_make_icons = true;_remove_icon = true;};
    };
    if (_make_icons)then {
        _pIcons = [];
		_Plicon = "\ca\ui\data\igui_side_blufor_ca.paa";
        for "_marker_index" from 0 to (_uc - 1) do {
			_picon = _Plicon;
            _pIcons set [_marker_index,_picon];
        };
        player setVariable ["dzgm_Hud_pIcons",_pIcons];
    };

	_index = 0;
    {
		_name = name _x;
		_pos = getPosATL _x;
		if (surfaceIsWater _pos) then {_pos = getPosASL _x;};
        _distance = _pos distance player;
		if (_distance > 1 && _distance < 2500) then {
			_pos set [2,(_pos select 2)+1.5];
			_screen = worldToScreen _pos;
			_tag = composeText [_name," "];
			if (((count _screen) > 1) && !visibleMap) then {
				_scale = 0;
				_sx = _screen select 0;
				_sy = _screen select 1;
				if (_distance < 200) then {_scale = 0.3;} else {_scale = 1 min ((1 - ((_distance) - 3) / 15) max 0.3);};	
				dzgmControl ctrlSetStructuredText _tag;
				dzgmControl ctrlSetPosition [_sx,_sy,0.99,0.65];
				dzgmControl ctrlSetScale _scale;
				dzgmControl ctrlSetFade ((1- _scale ) / 2);
				dzgmControl ctrlCommit 0;
				dzgmControl ctrlShow true;
			} else {
				dzgmControl ctrlShow false;
			};		
		} else {
			dzgmControl ctrlShow false;		
		};
        _index = _index + 1;
    } count _units;
	if (_remove_icon) then {dzgmControl ctrlShow false;};
};

dzgm_init = {	
    if (!isNil "dzgm_Handle") then {terminate dzgm_Handle;};
    dzgm_Handle = [] spawn {
        uiSleep 1;
        while {true} do {
            waitUntil {uiSleep 1;SHOW_HUD};
			609 cutRsc ["dzgmHud_Rsc","PLAIN"];
            while {SHOW_HUD} do {
				if (tagname) then {call dzgm_Icons_Name;} else {call dzgm_Icons_Clear;};
				if (commandingMenu in ["RscTeam","#User:BIS_Menu_GroupCommunication"]) then {showCommandingMenu "";};
                uiSleep 0.01;
            };
            609 cutText ["","PLAIN"];
        };
    };	
};