disableSerialization;
{ctrlShow [_x,false];} forEach [1105,4903,4904,4905,4906,4907,4908,4909]; 	
_comboBox = 3900; 
ctrlSetText [1001,"Topaz"];
GlobalCraftingVariable = 1;
GlobalComboboxVariable = 99;
ComboBoxResult="";

{_index = lbAdd [_comboBox, _x]; } 
forEach [
"Defenses",
"Forts",
"Tents",
"Towers"
]; 

while {GlobalCraftingVariable==1} do {


switch(GlobalComboboxVariable) do
{
case 0:
{
ComboBoxResult="Defenses";
call fnc_Load_Items;
};
case 1:
{
ComboBoxResult="Forts";
call fnc_Load_Items;
};
case 2:
{
ComboBoxResult="Tents";
call fnc_Load_Items;
};
case 3:
{
ComboBoxResult="Towers";
call fnc_Load_Items;
};


default { };
};

};

closeDialog 0;