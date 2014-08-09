private ["_ok"];

if(DZE_ActionInProgress) exitWith { cutText [(localize "STR_EPOCH_PLAYER_21") , "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

dayz_selectedVault = _this select 3;
dayz_combination = "";
		

if((typeOf cursorTarget == "krepost") and (player distance cursorTarget < 25)) then {
		_ok = createdialog "SafeKeyPad";
	} else {
		_ok = createdialog "KeypadUI";
};

DZE_ActionInProgress = false;
systemChat('Please step away and try the "Open Stronghold" option if code is correct.');