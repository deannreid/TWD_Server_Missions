disableSerialization;
{ctrlShow [_x,false];} forEach [1105,4903,4904,4905,4906,4907,4908,4909];
_comboBox = 3900; 
ctrlSetText [1001,"Emerald"];
GlobalCraftingVariable = 1;
GlobalComboboxVariable = 99;
ComboBoxResult="";


{_index = lbAdd [_comboBox, _x]; } 
forEach [
"Barrels",
"CargoContainers",
"ConstructionSite",
"MiscLarge", 
"MiscSmall",
"Scaffolding",
"Sunshades"
]; 

while {GlobalCraftingVariable==1} do {

switch(GlobalComboboxVariable) do
{
case 0:
{
ComboBoxResult="Barrels";
call fnc_Load_Items;
};
case 1:
{
ComboBoxResult="CargoContainers";
call fnc_Load_Items;
};
case 2:
{
ComboBoxResult="ConstructionSite";
call fnc_Load_Items;
};
case 3:
{
ComboBoxResult="MiscLarge";
call fnc_Load_Items;
};
case 4:
{
ComboBoxResult="MiscSmall";
call fnc_Load_Items;
};
case 5:
{
ComboBoxResult="Scaffolding";
call fnc_Load_Items;
};
case 6:
{
ComboBoxResult="Sunshades";
call fnc_Load_Items;
};
default { };
};

};

closeDialog 0;