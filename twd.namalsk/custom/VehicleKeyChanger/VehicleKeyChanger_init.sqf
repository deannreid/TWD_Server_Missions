/***********************************/ 	
/* Vehicle Key Changer v1.3        */
/* Written by OtterNas3            */
/* January, 11, 2014               */
/* Last update: 02/20/2014         */
/***********************************/


private ["_itemsPlayer","_magazinesPlayer","_temp_Keys","_temp_keysDisplayName","_temp_keysDisplayNameParse","_key_colors","_ownerKeyId","_carKey","_hasKey","_cTarget","_keyName","_carKeyName","_targetVehicleKey","_temp_keysParse"];

/////////////////////////////////////////////////
/////////////////////////////////////////////////
// Edit these settings to fit your needs/likes //
/////////////////////////////////////////////////
/////////////////////////////////////////////////
/// Claim Vehicles that does not yet need Key ///
///////// 0 = Not allowed | 1 = Allowed /////////
vkc_claiming = 0;
/////////////////////////////////////////////////
//////// Claim Vehicles costs this Item /////////
/// Any Item can be used here, some examples: ///
//// ItemTinBar, ItemSilverBar, ItemGoldBar, ////
////// ItemSilverBar10oz, ItemGoldBar10oz, //////
///// ItemBriefcase20oz, ItemBriefcase100oz /////
//////// set to "0" to disable the costs ////////
vkc_claimingPrice = "ItemGoldBar10oz";
/////////////////////////////////////////////////
////////// Change Key costs this Item// /////////
////////////// see above examples ///////////////
//////// set to "0" to disable the costs ////////
vkc_Price = "ItemSilverBar";
/////////////////////////////////////////////////
/////// Need KeyKit to use this function ////////
////////// 0 = Not needed | 1 = Needed //////////
vkc_needKeykit = 1;
/////////////////////////////////////////////////
/////////////////////////////////////////////////
/////////////// DONT EDIT BELOW ! ///////////////
/////////////////////////////////////////////////

/* Reset variables function */
ON_fnc_vkc_reset = {
	_cTarget = objNull;
	_itemsPlayer = [];
	_temp_keys = [];
	_carKey = objNull;
	_hasKey = false;
	_temp_keysDisplayName = [];
	_temp_keysDisplayNameParse = [];
	_temp_keysParse = [];
	_targetVehicleKey = objNull;
	_carKeyName = "";
	player removeAction s_player_copyToKey;
	s_player_copyToKey = -1;
};

/* Wait for player full ingame so we can access the action-menu */
waitUntil {!isNil "dayz_animalCheck"};

/* Start the loop check */
while{true} do {
	sleep 3;
	if (!isNull cursorTarget && speed player <= 1 && (vehicle player) == player && !isEngineOn cursorTarget && (cursorTarget isKindOf "Motorcycle" || cursorTarget isKindOf "Car" || cursorTarget isKindOf "Air" || cursorTarget isKindOf "Ship") && (cursorTarget distance player) <= 10 && cursorTarget getVariable ["VKC_disabled", 0] == 0 && cursorTarget getVariable ["VKC_claiming_disabled",0] == 0) then {
		_cTarget = cursorTarget;
		_itemsPlayer = items player;
		_magazinesPlayer = magazines player;
		if ((lastKeyChangeCursorTarget select 0) != _cTarget) then {
			if (s_player_copyToKey >= 0) then {
				player removeAction s_player_copyToKey;
				s_player_copyToKey = -1;
			};
		};
		lastKeyChangeCursorTarget set [0,_cTarget];
		_carKey = _cTarget getVariable ["CharacterID","0"];
		if (("ItemKeyKit" in _itemsPlayer || vkc_needKeykit == 0) && ((_carKey == "0" && vkc_claiming == 1 && (vkc_claimingPrice == "0" || vkc_claimingPrice in _magazinesPlayer)) || _carKey != "0") && (vkc_Price == "0" || vkc_Price in _magazinesPlayer)) then {
			if (_carKey == "0") then {
				_temp_keys = [];
				_temp_keysDisplayName = [];
				_temp_keysDisplayNameParse = [];
				_key_colors = ["ItemKeyYellow","ItemKeyBlue","ItemKeyRed","ItemKeyGreen","ItemKeyBlack"];
				{
					if (configName(inheritsFrom(configFile >> "CfgWeapons" >> _x)) in _key_colors) then {
						_ownerKeyId = getNumber(configFile >> "CfgWeapons" >> _x >> "keyid");
						_keyName = getText(configFile >> "CfgWeapons" >> _x >> "displayName");
						_temp_keysDisplayName set [count _temp_keysDisplayName,_keyName];
						_temp_keys set [count _temp_keys,str(_ownerKeyId)];
					};
				} forEach _itemsPlayer;
				if ((count _temp_keys) > 0) then {
					if (s_player_copyToKey < 0) then {
						lastKeyChangeCursorTarget set [0,_cTarget];
						s_player_copyToKey = player addAction [("<t color=""#0000FF"">" + ("Change Vehicle Key") + "</t>"),"custom\VehicleKeyChanger\VehicleKeyChanger.sqf",[_cTarget, _temp_keys, "0", _temp_keysDisplayName, "0", "0", vkc_Price, vkc_claimingPrice],-1,false,false,"",""];
					};
				} else {
					[] call ON_fnc_vkc_reset;
				};
			};
			if (_carKey != "0") then {
				_temp_keys = [];
				_temp_keysDisplayName = [];
				_temp_keysDisplayNameParse = [];
				_temp_keysParse = [];
				_key_colors = ["ItemKeyYellow","ItemKeyBlue","ItemKeyRed","ItemKeyGreen","ItemKeyBlack"];
				{
					if (configName(inheritsFrom(configFile >> "CfgWeapons" >> _x)) in _key_colors) then {
						_ownerKeyId = getNumber(configFile >> "CfgWeapons" >> _x >> "keyid");
						_keyName = getText(configFile >> "CfgWeapons" >> _x >> "displayName");
						_temp_keysDisplayName set [count _temp_keysDisplayName,_keyName];
						_temp_keysDisplayNameParse set [_ownerKeyId,_keyName];
						_temp_keys set [count _temp_keys,str(_ownerKeyId)];
						_temp_keysParse set [_ownerKeyId, _x];
					};
				} forEach _itemsPlayer;
				_hasKey = _carKey in _temp_keys;
				if (_hasKey && (count _temp_keys) > 1) then {
					_carKeyName = (_temp_keysDisplayNameParse select (parseNumber _carKey));
					_targetVehicleKey = (_temp_keysParse select (parseNumber _carKey));
					_temp_keys = _temp_keys - [_carKey];
					_temp_keysDisplayName = _temp_keysDisplayName - [_carKeyName];
					if (s_player_copyToKey < 0) then {
						lastKeyChangeCursorTarget set [0,_cTarget];
						s_player_copyToKey = player addAction [("<t color=""#0000FF"">" + ("Change Vehicle Key") + "</t>"),"custom\VehicleKeyChanger\VehicleKeyChanger.sqf",[_cTarget, _temp_keys, _carKey, _temp_keysDisplayName, _carKeyName, _targetVehicleKey, vkc_Price, "0"],-1,false,false,"",""];
					};
				} else {
					[] call ON_fnc_vkc_reset;
				};
			};
		} else {
			[] call ON_fnc_vkc_reset;
		};
	} else {
		lastKeyChangeCursorTarget = [objNull,objNull,objNull,objNull,objNull];
		[] call ON_fnc_vkc_reset;
	};
};

