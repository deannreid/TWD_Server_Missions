private ["_tug","_disabled","_trailer"];
_tug = _this select 0;
_disabled = _tug getVariable "LOG_disabled";
if (isNil "_disabled") then{_tug setVariable ["LOG_disabled",false];};
_trailer = _tug getVariable "LOG_trailer";
if (isNil "_trailer") then{ _tug setVariable ["LOG_trailer",objNull,false];};
_tug addAction [("<t color='#dddd00'>" + STR_LOG_UNTOW + "</t>"), "custom\logistic\tow\detach.sqf",[],0,true,true,"","LOG_OBJECT_ADDACTION == _target && LOG_TRAILER_MOVE_VALID"];
_tug addAction [("<t color='#eeeeee'>" + STR_LOG_TUG_SELECT + "</t>"), "custom\logistic\tow\attach.sqf",[],0,true,true,"","LOG_OBJECT_ADDACTION == _target && LOG_TRAILER_SELECT_VALID"];