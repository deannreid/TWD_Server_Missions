/*
Remote messages by maca134 [maca134@googlemail.com]

This allows you to send globalchat/hint/titlecut from the server to all or a specific player without having to use remote exec

(if you have resec.sqf then you can only do titletext via RE)

I wants to dp sidechat/groupchat too but it didnt work.

To install add '_nil = [] execVM "custom\remote_messages.sqf";' to your init.sqf inside the 'if (!isDedicated) then {' block.

Global chat can only be sent to a single user and requires 'enableRadio true;' in init.sqf

Here are some examples:

customRemoteMessage = ['globalChat', "say something in globalChat", _unit];
publicVariable "customRemoteMessage";

customRemoteMessage = ['titleCut', "say something in titleCut", _unit];
publicVariable "customRemoteMessage";

customRemoteMessage = ['hint', "say something in hint", _unit];
publicVariable "customRemoteMessage";

customRemoteMessage = ['titleCut', "say something in titleCut"];
publicVariable "customRemoteMessage";

customRemoteMessage = ['hint', "say something in hint"];
publicVariable "customRemoteMessage";

customRemoteMessage = ["titleText", "say something in hint"];
publicVariable "customRemoteMessage";

customRemoteMessage = ["titleText", "say something in hint", _unit];
publicVariable "customRemoteMessage";
*/

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