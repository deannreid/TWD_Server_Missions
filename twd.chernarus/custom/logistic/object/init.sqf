private ["_object","_moves_by","_trailer","_disabled"];
_object = _this select 0;
_disabled = _object getVariable "LOG_disabled";

if (isNil "_disabled") then{_object setVariable ["LOG_disabled", false];};

//_trailer = _object getVariable "LOG_trailer";
//if (isNil "_trailer") then{_object setVariable ["LOG_trailer", objNull, false];};

_moves_by = _object getVariable "LOG_moves_by";
if (isNil "_moves_by") then{_object setVariable ["LOG_moves_by", objNull, false];};

if !(LOG_CFG_ALLOW_GETIN) then {
		_object addEventHandler ["GetIn",{		
		if (_this select 2 == player) then{
			_this spawn{
				private ["_eject"];
				_eject = false;
				if ((!(isNull (_this select 0 getVariable "LOG_moves_by")) && (alive (_this select 0 getVariable "LOG_moves_by")))) then { _eject = true;};
				if ((!(isNull (_this select 0 getVariable "LOG_heliporte")) && (alive (_this select 0 getVariable "LOG_heliporte")))) then { _eject = true;};
				if (_eject) then{ player action ["eject", _this select 0];};
			};
		};
	}];
};

if ({_object isKindOf _x} count LOG_CFG_ISTOWABLE > 0) then{
	_object addAction [("<t color='#dddd00'>" + STR_LOG_TOW + "</t>"),"logistic\object\isSelected.sqf",[],5,false,true,"","LOG_OBJECT_ADDACTION == _target && LOG_OBJECT_TRAILER_VALID"];
	_object addAction [("<t color='#dddd00'>" + STR_LOG_UNTOW + "</t>"),"logistic\tow\detach.sqf",[],6,true,true,"","LOG_OBJECT_ADDACTION == _target && LOG_DETACH_VALID"];
};