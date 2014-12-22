disableSerialization;
_control = _this select 0;
_index = _this select 1;
_displaym = findDisplay 100;
(_displaym displayCtrl 103) ctrlSetText (_control lbData _index);
0 fadeMusic 1;
playMusic (_control lbData _index);
