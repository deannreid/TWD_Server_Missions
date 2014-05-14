// By Zabn 2013 @ BalotaBuddies.net
private["_itemNew","_onLadder","_skin","_body","_okSkin","_clothesTaken","_itemNewName","_result"];
_body = _this select 3;
_onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith {cutText ["You can't perform this action while on a ladder!" , "PLAIN DOWN"]};

if (vehicle player != player) exitWith {cutText ["You may not take clothes while in a vehicle", "PLAIN DOWN"]};

player removeAction s_player_clothes;
s_player_clothes = -1;

_skin = (typeOf _body);

_itemNew = _skin;

switch (_itemNew) do {
	case "Survivor3_DZ": {
		_itemNew = "Survivor2_DZ";
	};
	case "Bandit1_DZ": {
		_itemNew = "Survivor2_DZ";
	};
};

_itemNew = "Skin_" + _itemNew;
_okSkin = isClass (configFile >> "CfgMagazines" >> _itemNew);

if(_okSkin) then {
	player playActionNow "Medic";
	sleep 3;
	_clothesTaken = _body getVariable["clothesTaken",false];
	if(!_clothesTaken) then {
		_itemNewName = getText (configFile >> "CfgMagazines" >> _itemNew >> "displayName");
		_result = [player,_itemNew] call BIS_fnc_invAdd;
        if (_result) then {
			_body setVariable["clothesTaken",true,true];
			cutText [format["One %1 has been added to your inventory!",_itemNewName], "PLAIN DOWN"];
		} else {
			cutText [format["You didn't have enough room to store a %1 :(",_itemNewName], "PLAIN DOWN"];
        };
	} else {
		cutText ["This Skin has already been taken!", "PLAIN DOWN"];
	};
} else {
	cutText [format["Currently %1 is not supported by the steal skin script.",_skin], "PLAIN DOWN"];
};