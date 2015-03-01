///////////////////////////////////////////////////////////////////
// Detailed scroll rules ///////////////////////////////////////////
// By oSoDirty ////////////////////////////////////////////////////
// rules initialization  ///////////////////////////////////////////
///////////////////////////////////////////////////////////////////

player removeAction s_rules;
s_rules = 1;

if(speed player <= 0) then {
	_isDirty = true;
		if(_isDirty) then {
		_rule_set1 = player addAction["PVP","custom\rules\pvp.sqf","",-5,false,false,"",""];
		_rule_set2 = player addAction["Safezones","custom\rules\safezone.sqf","",-6,false,false,"",""];
		_rule_set3 = player addAction["Chat","custom\rules\chat.sqf","",-7,false,false,"",""];
		_rule_set4 = player addAction["Building","custom\rules\building.sqf","",-8,false,false,"",""];
		_rule_set5 = player addAction["Cheating","custom\rules\cheating.sqf","",-9,false,false,"",""];
		_rule_set6 = player addAction["Thanks","custom\rules\thanks.sqf","",-12,false,true,"",""];
		waitUntil { speed player > 0 };
		s_rules = -1;
			player removeAction _rule_set1;
			player removeAction _rule_set2;
			player removeAction _rule_set3;
			player removeAction _rule_set4;
			player removeAction _rule_set5;
			player removeAction _rule_set6;
			_rule_set1 = -1;
			_rule_set2 = -1;
			_rule_set3 = -1;
			_rule_set4 = -1;
			_rule_set5 = -1;
			_rule_set6 = -1;
			};
		};
	};
};