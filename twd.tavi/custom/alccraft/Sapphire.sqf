disableSerialization;
{ctrlShow [_x,false];} forEach [1105,4903,4904,4905,4906,4907,4908,4909];
_comboBox = 3900; 
ctrlSetText [1001,"Sapphire"];
GlobalCraftingVariable = 1;
GlobalComboboxVariable = 99;
ComboBoxResult="";

{_index = lbAdd [_comboBox, _x]; } 
forEach [
"FlagsNations",
"FlagsOrganizations",
"FlagsMedical",
"FlagsPlain",
"FlagsMisc"
]; 

while {GlobalCraftingVariable==1} do {

switch(GlobalComboboxVariable) do
{
case 0:
{
ComboBoxResult="FlagsNations";
call fnc_Load_Items;
};
case 1:
{
ComboBoxResult="FlagsOrganizations";
call fnc_Load_Items;
};
case 2:
{
ComboBoxResult="FlagsMedical";
call fnc_Load_Items;
};
case 3:
{
ComboBoxResult="FlagsPlain";
call fnc_Load_Items;
};
case 4:
{
ComboBoxResult="FlagsMisc";
call fnc_Load_Items;
};

default { };
};

};
closeDialog 0;
