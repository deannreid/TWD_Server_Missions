/*
	Zupa's Single Currency manipulation addon by Rocu
	Add/remove currency to player's inventory/bank
*/
CurrencyDialogFetchData = {
	_currency_targetName = name currencyTarget;
	_currency_targetCash = currencyTarget getVariable ['cashMoney', 0] call BIS_fnc_numberText;
	_currency_targetBank = currencyTarget getVariable ['bankMoney', 0] call BIS_fnc_numberText;
	ctrlSetText [15006, format["Target: %1", _currency_targetName]];
	ctrlSetText [15007, format["Cash: %1", _currency_targetCash]];
	ctrlSetText [15004, format["In bank: %1", _currency_targetBank]];
};

CurrencyTransferMoney = {
	private ["_amount","_target","_direction","_method","_response","_wealth"];
	_amount = parseNumber (_this select 0);
	_target = (_this select 1);
	_direction = (_this select 2);
	_method = (_this select 3);
	_response = "";
	_wealth = 0;
	
	if (_amount < 1 or _amount > 999999) exitWith {
		cutText ["Insert a number between 1 and 999,999.", "PLAIN DOWN"];
	};
	
	if (_method == 'cash') then {
	
		_wealth = _target getVariable["cashMoney",0];
		if (_direction == 'remove') then {
		
			if (_amount >= _wealth) then {
				_target setVariable["cashMoney",0, true]; } else {
				_target setVariable["cashMoney",_wealth - _amount, true]; };
			_response = format["You removed %1 %2 from %3.", _amount call BIS_fnc_numberText, CurrencyName, name _target];
			
		} else {
			
			_target setVariable["cashMoney",_wealth + _amount, true];
			_response = format["You transferred %1 %2 to %3.", _amount call BIS_fnc_numberText, CurrencyName, name _target];
			
		};
		
	} else {
	
		_wealth = _target getVariable["bankMoney",0];
		if (_direction == 'remove') then {
		
			if (_amount >= _wealth) then {
				_target setVariable["bankMoney",0, true]; } else {
				_target setVariable["bankMoney",_wealth - _amount, true]; };
			_response = format["You removed %1 %2 from %3's bank account.", _amount call BIS_fnc_numberText, CurrencyName, name _target];
			
		} else {
			
			_target setVariable["bankMoney",_wealth + _amount, true];
			_response = format["You transferred %1 %2 to %3's bank account.", _amount call BIS_fnc_numberText, CurrencyName, name _target];
			
		};
		
	};
	
	PVDZE_plr_Save = [_target,(magazines _target),true,true] ;
	publicVariableServer "PVDZE_plr_Save";
	PVDZE_bank_Save = [_target];
	publicVariableServer "PVDZE_bank_Save";
	
	cutText [_response, "PLAIN DOWN"];
};