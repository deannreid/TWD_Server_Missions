fnc_remote_message = {
	private ["_type", "_message", "_player"];
	_type = _this select 0;
	_message = _this select 1;
	if (count _this > 2) then {
		_player = _this select 2;
		if (_player == player) then {
			switch (_type) do {
				case "globalChat": {
					player globalChat _message;
				};
				case "hint": {
					hint _message;
				};
				case "titleCut": {
					titleCut [_message, "PLAIN DOWN", 3];
				};
				case "titleText": {
					titleText [_message, "PLAIN DOWN"]; titleFadeOut 10;
				};
			};
		};
	} else {
		switch (_type) do {
			case "hint": {
				hint _message;
			};
			case "titleCut": {
				titleCut [_message,"Plain Down",3];
			};
			case "titleText": {
				titleText [_message, "PLAIN DOWN"]; titleFadeOut 10;
			};
		};
	};
};

"customRemoteMessage" addPublicVariableEventHandler {(_this select 1) call fnc_remote_message;};