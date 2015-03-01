EpochDeathBoardLoad = {
	createdialog "EpochDeathBoardDialog";
	{
		private ["_index"];
		_index = lbAdd [21000,_x select 0];
	} count PV_DeathBoard;
};

EpochDeathBoardClick = {
	disableSerialization;
	private ["_index","_record","_output","_record_stxt","_name","_image","_h","_m","_format","_victim","_attacker","_time","_distance"];
		_quotes = [
			"Death is God's way of telling you not to be such a wise guy.",
			"What happens if you get scared half to death, twice?",
			"Don't upset me.. I'm running out of places to hide the bodies.",
			"Don't run, you'll just die tired.",
			"Give me immortality || give me death.",
			"I can't live with death; he's always leaving the toilet seat up.",
			"Why won't you die?!?!",
			"Guns don't kill people; death kills people. It's a proven medical fact."
		];
	_index = _this select 0;
	if (_index < 0) exitWith {};
	_output = _this select 1;
	_record = PV_DeathBoard select _index;

	_victim = _record select 0;
	_attacker = _record select 1;
	_name = _record select 2;
	_image = _record select 3;
	_distance = _record select 4;
	_time = _record select 5;

	if (isNil "_victim" || isNil "_attacker" || isNil "_name" || isNil "_distance" || isNil "_time") exitWith {_output ctrlSetStructuredText parseText "<br/><br/><br/><br/><t size='1.6' align='center'>There are some information missing for this entry</t>";};

	_format = {
		private ["_codeCount","_str"];
		_str = format["%1", _this];
		_codeCount = (count (toArray _str));
		if (_codeCount == 1) then {_str = format["0%1", _str];	};
		_str;
	};
	_h = (_time select 0) + timezoneswitch;
	_m = _time select 1;

	_record_stxt = format["<t size='1.6' align='left'>%1</t><br/><br/>",_victim];
	_record_stxt = _record_stxt + format["<t size='1' align='left'>Died at %1:%2</t><br/><br/>",(_h call _format),(_m call _format)];
	_record_stxt = _record_stxt + format["<t size='1' align='left'>Was killed by %1</t><br/><br/>",_attacker];
	_record_stxt = _record_stxt + format["<t size='1' align='left'>With a %1</t><br/>",_name];
	if (_image != "nil") then {
		 _record_stxt = _record_stxt + format["<img size='3' image='%1' />",_image];
  	};
	_record_stxt = _record_stxt + "<br/><br/>";
	_record_stxt = _record_stxt + format["<t size='1' align='left'>At a distance of %1m</t><br/><br/>",_distance];
	_record_stxt = _record_stxt + format["<t font='Bitstream'>%1</t>",(_quotes call BIS_fnc_selectRandom)];

	_output ctrlSetStructuredText parseText _record_stxt;
};