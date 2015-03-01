fnc_kill_message = {
	private ["_finaltxt"];
	_finaltxt = _this select 0;
	[
	_finaltxt,
	[safezoneX + 0.533333333333333 * safezoneW,2.0],
	[safezoneY + 0.01 * safezoneH,0.2],
	30,0.5
	] spawn BIS_fnc_dynamicText;
};
"customkillMessage" addPublicVariableEventHandler {(_this select 1) call fnc_kill_message;};