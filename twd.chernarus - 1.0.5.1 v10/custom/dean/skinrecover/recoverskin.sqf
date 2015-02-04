private ["_pos","_box","_skin","_okSkin","_result"];
_body =		player;
_skin = (typeOf _body);
_skin = "Skin_" + _skin;
_okSkin = isClass (configFile >> "CfgMagazines" >> _skin);

if (_okSkin) then {

 _result = [player,_skin] call BIS_fnc_invAdd;
	if (_result) then {
	} else {
		
		_bp = unitBackpack player;
		_bp addMagazineCargoGlobal [_skin,1];
		
	};
};






