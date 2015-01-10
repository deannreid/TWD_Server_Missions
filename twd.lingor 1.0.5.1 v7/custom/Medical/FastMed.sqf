// Author: GaspArt aka SixPeso
private ["_array","_unit","_medic","_cost","_notEnough","_cashmoney"];
disableserialization;
_array = _this;
_unit = _array select 0;
_medic = _array select 1;
_cost = 10000;
 
if (_unit == player) then {
	player playActionNow "Medic";					//Animation of action
	_cashMoney = player getVariable["cashMoney",0];
//If player hasnt money
		if (_cashmoney < _cost) then {
			_notEnough = _cost - _cashMoney;
			sleep 1;
			cutText [format["Dear %1, you need %2 coins more to pay for treatment.",name player,_notEnough], "PLAIN DOWN"];
			};
//If player has money
		if (_cashmoney > _cost) then {
			_cashMoney = _cashMoney - _cost;
			player setVariable ["cashMoney", _cashMoney , true];
			sleep 1;
			cutText [format["Dear %1, you were completely cured. Thank you for using our services!",name player], "PLAIN DOWN"];
//
//healing				
				disableSerialization;
				dayz_sourceBleeding = objNull;
				r_player_blood = r_player_bloodTotal;
				r_player_inpain = false;
				r_player_infected = false;
				r_player_injured = false;
				dayz_hunger = 0;
				dayz_thirst = 0;
				dayz_temperatur = 37;
				r_fracture_legs = false;
				r_fracture_arms = false;
				r_player_dead = false;
				r_player_unconscious = false;
				r_player_loaded = false;
				r_player_cardiac = false;
				r_player_lowblood = false;
				r_player_timeout = 0;
				r_handlercount = 0;
				r_interrupt = false;
				r_doLoop = false;
				r_drag_sqf = false;
				r_self = false;
				r_action = false;
				r_action_unload = false;
				r_player_handler = false;
				r_player_handler1 = false;
				disableUserInput false;
				'dynamicBlur' ppEffectAdjust [0];
				'dynamicBlur' ppEffectCommit 5;
				_selection = 'legs';
				_damage = 0;
				player setHit[_selection,_damage];
				player setVariable['messing',[dayz_hunger,dayz_thirst],true];
				player setVariable['NORRN_unconscious',false,true];
				player setVariable['USEC_infected',false,true];
				player setVariable['USEC_injured',false,true];
				player setVariable['USEC_inPain',false,true];
				player setVariable['USEC_isCardiac',false,true];
				player setVariable['USEC_lowBlood',false,true];
				player setVariable['USEC_BloodQty',12000,true];
				player setVariable['unconsciousTime',0,true];
				player setVariable['hit_legs',0,true];
				player setVariable['hit_hands',0,true];
				player setVariable['medForceUpdate',true,true];
				_display = uiNameSpace getVariable 'DAYZ_GUI_display';
				_control = _display displayCtrl 1303;
				_control ctrlShow false;
				_display = uiNameSpace getVariable 'DAYZ_GUI_display';
				_control = _display displayCtrl 1203;
				_control ctrlShow false;
				player setdamage 0;
				0 fadeSound 1;
				resetCamShake;
//healing end
		};

};	