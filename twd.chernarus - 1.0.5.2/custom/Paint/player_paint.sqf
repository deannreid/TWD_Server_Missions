private ["_txt","_vehicle","_item"];
VehicleToPaint = cursorTarget;
ColourPrice = ["ItemGoldBar10oz",5];
_item = getText(configFile >> "CfgMagazines" >> (ColourPrice select 0) >> "displayName");
_vehicle = getText(configFile >> "cfgVehicles" >> (typeOf VehicleToPaint) >> "displayName");
createdialog "VehicleColourDialog";
_txt = format ["<t>It will cost %1 %2 <br/>to repaint your %3.</t>",(ColourPrice select 1),_item,_vehicle];
((uiNamespace getVariable "VehicleColourDialog") displayCtrl 5703) ctrlSetStructuredText parseText _txt;
