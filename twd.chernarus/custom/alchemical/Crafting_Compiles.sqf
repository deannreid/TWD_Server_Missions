player_selectSlot = compile preprocessFileLineNumbers "custom\Buildables\ui_selectSlot.sqf";
fnc_usec_selfActions = compile preprocessFileLineNumbers "custom\fn_selfActions.sqf"; 

fnc_Load_Mats_and_Tools = {
//5900-5903 tools
//6901-6912 materials
ctrlSetText [5900,""];
ctrlSetText [5901,""];
ctrlSetText [5902,""];
ctrlSetText [5903,""];

ctrlSetText [6900,""];
ctrlSetText [6901,""];
ctrlSetText [6902,""];
ctrlSetText [6903,""];
ctrlSetText [6904,""];
ctrlSetText [6905,""];
ctrlSetText [6906,""];
ctrlSetText [6907,""];
ctrlSetText [6908,""];
ctrlSetText [6909,""];
ctrlSetText [6910,""];
ctrlSetText [6911,""];

_lbIndex=lbCurSel 3901;
_lbText=lbText [3901,_lbIndex];

_toolTmp = "";
_weaps = weapons player;
_requiredtools = getArray (missionConfigFile >> "Custom_Buildables" >> "Buildables" >> ComboBoxResult >> _lbText >> "requiredtools");
_craftdialog = uiNamespace getVariable "Advanced_CraftingV";
_counter=0;

while {count _requiredtools > 0} do { 
_toolTmp = _requiredtools select 0;
_tmp_Pos=_weaps find _toolTmp;

switch (_counter) do {
case 0: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 5900) ctrlSetTextColor [0.2,0.839,0.2,1];
_weaps set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 5900) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [5900,_toolTmp];
};
case 1: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 5901) ctrlSetTextColor [0.2,0.839,0.2,1];
_weaps set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 5901) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [5901,_toolTmp];
};
case 2: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 5902) ctrlSetTextColor [0.2,0.839,0.2,1];
_weaps set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 5902) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [5902,_toolTmp];
};
case 3: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 5903) ctrlSetTextColor [0.2,0.839,0.2,1];
_weaps set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 5903) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [5903,_toolTmp];
};
default {};
};
_requiredtools set [0,objNull];
_requiredtools=_requiredtools-[objNull];
_weaps = _weaps-[objNull];
_counter=_counter + 1;
};


_materialTmp = "";
_mags = magazines player;
_requiredmaterials = getArray (missionConfigFile >> "Custom_Buildables" >> "Buildables" >> ComboBoxResult >> _lbText >> "requiredmaterials");
_counter=0;

while{count _requiredmaterials>0} do { 

_materialTmp = _requiredmaterials select 0;
_tmp_Pos=_mags find _materialTmp;
switch (_counter) do {
case 0: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6900) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6900) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6900,_materialTmp];
};
case 1: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6901) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6901) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6901,_materialTmp];
};
case 2: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6902) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6902) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6902,_materialTmp];
};
case 3: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6903) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6903) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6903,_materialTmp];
};
case 4: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6904) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6904) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6904,_materialTmp];
};
case 5: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6905) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6905) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6905,_materialTmp];
};
case 6: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6906) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6906) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6906,_materialTmp];
};
case 7: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6907) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6907) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6907,_materialTmp];
};
case 8: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6908) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6908) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6908,_materialTmp];
};
case 9: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6909) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6909) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6909,_materialTmp];
};
case 10: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6910) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6910) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6910,_materialTmp];
};
case 11: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6911) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6911) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6911,_materialTmp];
};

default {};
};
_requiredmaterials set [0,objNull];
_requiredmaterials=_requiredmaterials-[objNull];
_mags=_mags-[objNull];
_counter=_counter + 1;
}; 





};

fnc_Load_Items = {
_itemsBox = 3901;
lbClear _itemsBox;
_cmbArray=[];
_cmbType=[];
_cmbType = (missionConfigFile >> "Custom_Buildables" >> "Buildables" >> ComboBoxResult); 
for "_i" from 0 to ( count _cmbType ) -1 do 
{ 
    _entry = _cmbType select _i; 
    if( isClass _entry ) then 
    { 
        _class = configName _entry; 
        _cmbArray set [count _cmbArray, _class]; 
        }; 
    }; 
//Add to Shelf
{lbAdd [_itemsbox, _x]} forEach _cmbArray;
//_count= count _cmbArray;
//diag_log format ["%1",_cmbArray];
//diag_log format ["%1",_count];
GlobalComboboxVariable=99;
};

dayz_spaceInterrupt = {
private ["_dikCode","_handled","_primaryWeapon","_secondaryWeapon","_nearbyObjects","_nill","_shift","_ctrl","_alt","_dropPrimary","_dropSecondary","_iItem","_removed","_iPos","_radius","_item"];
_dikCode = 	_this select 1;
GlobalPreviewVariable = 1;
_handled = false;

if (_dikCode in[0x02,0x03,0x04,0x58,0x57,0x44,0x43,0x42,0x41,0x40,0x3F,0x3E,0x3D,0x3C,0x3B,0x0B,0x0A,0x09,0x08,0x07,0x06,0x05]) then {
	_handled = true;
};

if ((_dikCode == 0x3E or _dikCode == 0x0F or _dikCode == 0xD3)) then {
	if(diag_tickTime - dayz_lastCheckBit > 10) then {
		dayz_lastCheckBit = diag_tickTime;
		call dayz_forceSave;
	};
	call dayz_EjectPlayer;
};

// esc
if (_dikCode == 0x01) then {
	DZE_cancelBuilding = true;
	call dayz_EjectPlayer;
};

// surrender 
if (_dikCode in actionKeys "Surrender") then {
	
	_vehicle = vehicle player;
	_inVehicle = (_vehicle != player);
	_onLadder =	(getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
	_canDo = (!r_drag_sqf and !r_player_unconscious and !_onLadder and !_inVehicle);
	
	if (_canDo and !DZE_Surrender and !(player isKindOf  "PZombie_VB")) then {
		DZE_Surrender = true;
		_dropPrimary = false;
		_dropSecondary = false;

		_primaryWeapon = primaryWeapon player;
		if (_primaryWeapon != "") then {_dropPrimary = true;};
		_secondaryWeapon = "";
		{
			if ((getNumber (configFile >> "CfgWeapons" >> _x >> "Type")) == 2) exitWith {
					_secondaryWeapon = _x;
			};
		} forEach (weapons player);
		if (_secondaryWeapon != "") then {_dropSecondary = true;};

		if (_dropPrimary or _dropSecondary) then {
			player playActionNow "PutDown";
			_iPos = getPosATL player;
			_radius = 1;
			_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
			_item setposATL _iPos;
			if (_dropPrimary) then {
				_iItem = _primaryWeapon;
				_removed = ([player,_iItem,1] call BIS_fnc_invRemove);
				if (_removed == 1) then {
					_item addWeaponCargoGlobal [_iItem,1];
				};
			};
			if (_dropSecondary) then {
				_iItem = _secondaryWeapon;
				_removed = ([player,_iItem,1] call BIS_fnc_invRemove);
				if (_removed == 1) then {
					_item addWeaponCargoGlobal [_iItem,1];
				};
			};
			player reveal _item;
		};

		// set publicvariable that allows other player to access gear
		player setVariable ["DZE_Surrendered", true, true];
		// surrender animation
		player playMove "AmovPercMstpSsurWnonDnon";
	};
	_handled = true;
};

if (_dikCode in actionKeys "MoveForward") exitWith {r_interrupt = true; if (DZE_Surrender) then {call dze_surrender_off};};
if (_dikCode in actionKeys "MoveLeft") exitWith {r_interrupt = true; if (DZE_Surrender) then {call dze_surrender_off};};
if (_dikCode in actionKeys "MoveRight") exitWith {r_interrupt = true; if (DZE_Surrender) then {call dze_surrender_off};};
if (_dikCode in actionKeys "MoveBack") exitWith {r_interrupt = true; if (DZE_Surrender) then {call dze_surrender_off};};

//Prevent exploit of drag body
if ((_dikCode in actionKeys "Prone") and r_drag_sqf) exitWith { force_dropBody = true; };
if ((_dikCode in actionKeys "Crouch") and r_drag_sqf) exitWith { force_dropBody = true; };

_shift = 	_this select 2;
_ctrl = 	_this select 3;
_alt =		_this select 4;

//diag_log format["Keypress: %1", _this];
if ((_dikCode in actionKeys "Gear") and (vehicle player != player) and !_shift and !_ctrl and !_alt && !dialog) then {
			createGearDialog [player, "RscDisplayGear"];
			_handled = true;
};

if (_dikCode in (actionKeys "GetOver")) then {
	
	if (player isKindOf  "PZombie_VB") then {
		_handled = true;
		DZE_PZATTACK = true;
	} else {
		_nearbyObjects = nearestObjects[getPosATL player, dayz_disallowedVault, 8];
		if (count _nearbyObjects > 0) then {
			if((diag_tickTime - dayz_lastCheckBit > 4)) then {
				[objNull, player, rSwitchMove,"GetOver"] call RE;
				player playActionNow "GetOver";
				dayz_lastCheckBit = diag_tickTime;
			} else {
				_handled = true;
			};
		};
	};
};
//if (_dikCode == 57) then {_handled = true}; // space
//if (_dikCode in actionKeys 'MoveForward' or _dikCode in actionKeys 'MoveBack') then {r_interrupt = true};
if (_dikCode == 210) then {
		_nill = execvm "fixes\playerstats.sqf";
};

if (_dikCode in actionKeys "ForceCommandingMode") then {_handled = true};
if (_dikCode in actionKeys "PushToTalk" and (diag_tickTime - dayz_lastCheckBit > 10)) then {
	dayz_lastCheckBit = diag_tickTime;
	[player,50,true,(getPosATL player)] spawn player_alertZombies;
};
if (_dikCode in actionKeys "VoiceOverNet" and (diag_tickTime - dayz_lastCheckBit > 10)) then {
	dayz_lastCheckBit = diag_tickTime;
	[player,50,true,(getPosATL player)] spawn player_alertZombies;
};
if (_dikCode in actionKeys "PushToTalkDirect" and (diag_tickTime - dayz_lastCheckBit > 10)) then {
	dayz_lastCheckBit = diag_tickTime;
	[player,15,false,(getPosATL player)] spawn player_alertZombies;
};
if (_dikCode in actionKeys "Chat" and (diag_tickTime - dayz_lastCheckBit > 10)) then {
	dayz_lastCheckBit = diag_tickTime;
	[player,15,false,(getPosATL player)] spawn player_alertZombies;
};
if (_dikCode in actionKeys "User20" and (diag_tickTime - dayz_lastCheckBit > 5)) then {
	dayz_lastCheckBit = diag_tickTime;
	_nill = execvm "fixes\playerstats.sqf";
};

// numpad 8 0x48 now pgup 0xC9 1
if ((_dikCode == 0xC9 and (!_alt or !_ctrl)) or (_dikCode in actionKeys "User15")) then {
	DZE_Q = true;
};
// numpad 2 0x50 now pgdn 0xD1
if ((_dikCode == 0xD1 and (!_alt or !_ctrl)) or (_dikCode in actionKeys "User16")) then {
	DZE_Z = true;
};


// numpad 8 0x48 now pgup 0xC9 0.1
if ((_dikCode == 0xC9 and (_alt and !_ctrl)) or (_dikCode in actionKeys "User13")) then {
	DZE_Q_alt = true;
};
// numpad 2 0x50 now pgdn 0xD1
if ((_dikCode == 0xD1 and (_alt and !_ctrl)) or (_dikCode in actionKeys "User14")) then {
	DZE_Z_alt = true;
};


// numpad 8 0x48 now pgup 0xC9 0.01
if ((_dikCode == 0xC9 and (!_alt and _ctrl)) or (_dikCode in actionKeys "User7")) then {
	DZE_Q_ctrl = true;
};
// numpad 2 0x50 now pgdn 0xD1
if ((_dikCode == 0xD1 and (!_alt and _ctrl)) or (_dikCode in actionKeys "User8")) then {
	DZE_Z_ctrl = true;
};




// numpad 4 0x4B now Q 0x10
if (_dikCode == 0x10 or (_dikCode in actionKeys "User17")) then {
	DZE_4 = true;
};		
// numpad 6 0x4D now E 0x12
if (_dikCode == 0x12 or (_dikCode in actionKeys "User18")) then {
	DZE_6 = true;
};
// numpad 5 0x4C now space 0x39
if (_dikCode == 0x39 or (_dikCode in actionKeys "User19")) then {
	DZE_5 = true;
};
// num 1, 2 or 3 above qwerty
if (_dikCode == 0x02) then {
	AAC_1 = true;
};
if (_dikCode == 0x03) then {
	AAC_2 = true;
};
if (_dikCode == 0x04) then {
	AAC_3 = true;
};
_handled
};