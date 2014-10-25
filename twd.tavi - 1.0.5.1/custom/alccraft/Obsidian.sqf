disableSerialization;
{ctrlShow [_x,false];} forEach [1105,4903,4904,4905,4906,4907,4908,4909];
_comboBox = 3900; 
ctrlSetText [1001,"Obsidian"];
GlobalCraftingVariable = 1;
GlobalComboboxVariable = 99;
ComboBoxResult="";

{_index = lbAdd [_comboBox, _x]; } 
forEach [
"Bushes",
"SmallPlants",
"SmallTrees",
"MediumTrees",
"LargeTrees",
"TheDead",
"Wells"
]; 

while {GlobalCraftingVariable==1} do {

switch(GlobalComboboxVariable) do
{
case 0:
{
ComboBoxResult="Bushes";
call fnc_Load_Items;
};
case 1:
{
ComboBoxResult="SmallPlants";
call fnc_Load_Items;
};
case 2:
{
ComboBoxResult="SmallTrees";
call fnc_Load_Items;
};
case 3:
{
ComboBoxResult="MediumTrees";
call fnc_Load_Items;
};
case 4:
{
ComboBoxResult="LargeTrees";
call fnc_Load_Items;
};
case 5:
{
ComboBoxResult="TheDead";
call fnc_Load_Items;
};
case 6:
{
ComboBoxResult="Wells";
call fnc_Load_Items;
};

default { };
};

};

closeDialog 0;