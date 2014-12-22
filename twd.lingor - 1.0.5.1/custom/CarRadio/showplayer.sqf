private["_ok", "_displaym", "_list", "_cfg", "_count", "_i"];
disableSerialization;
_ok = createDialog "DlgMandoMusic";
Sleep 0.1;
_displaym = findDisplay 100;
_list = _displaym displayCtrl 102;
_cfg =(configFile >> "CfgMusic");
_count = 34;
for [{_i = 1},{_i < _count},{_i = _i + 1}] do
{
   _cfgi = _cfg select _i;
   _index = _list lbAdd (getText (_cfgi >> "Name"));
   _list lbSetData [_index, format["%1", configName _cfgi]];
};
(_displaym displayCtrl 103) ctrlSetTooltip "Copy/Paste this to use with playMusic command";