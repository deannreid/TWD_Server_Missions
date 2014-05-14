disableSerialization;
//Define idc's for controls for easy access 
_comboBoxA = 2667; 
_comboBoxB = 2668; 
_comboBoxC = 2669; 
_comboBoxD = 2670; 
_comboBoxE = 2671; 
_comboBoxF = 2672; 
_comboBoxG = 2673; 

//store display, passed from onLoad 
_display = _this select 0; 

//Add to picture
{ 
    _index = lbAdd [_comboBoxA, _x]; 
} forEach [
"MAP_picture_a",
"MAP_picture_a_02",
"MAP_picture_a_03",
"MAP_picture_a_04",
"MAP_picture_a_05",
"MAP_picture_b",
"MAP_picture_b_02",
"MAP_picture_c",
"MAP_picture_c_02",
"MAP_picture_d",
"MAP_picture_e",
"MAP_picture_f",
"MAP_picture_f_02",
"MAP_picture_g",
"MAP_wall_board",
"MAP_wall_board_02",
"MAP_wall_board_03"
]; 

//Add to chair
{ 
    _index = lbAdd [_comboBoxB, _x]; 
} forEach [
"MAP_F_ch_mod_c",
"MAP_ch_mod_h",
"MAP_armchair",
"MAP_ch_mod_h",
"MAP_ch_office_B",
"MAP_chair",
"MAP_Church_chair",
"MAP_hospital_bench",
"MAP_kitchen_chair_a",
"MAP_lavicka_1",
"MAP_lavicka_2",
"MAP_lavicka_3",
"MAP_lavicka_4",
"MAP_lobby_chair",
"MAP_office_chair"
]; 

//Add to bed
{ 
    _index = lbAdd [_comboBoxC, _x]; 
} forEach [
"MAP_F_postel_manz_kov",
"MAP_F_postel_panelak1",
"MAP_F_postel_panelak2",
"MAP_F_Vojenska_palanda",
"MAP_postel_manz_kov",
"MAP_postel_panelak1",
"MAP_vojenska_palanda"
];

//Add to Bathroom
{ 
    _index = lbAdd [_comboBoxD, _x]; 
} forEach [
"MAP_fridge",
"MAP_Kitchenstove_Elec",
"MAP_washing_machine",
"MAP_P_Basin_A",
"MAP_P_bath",
"MAP_F_bath",
"MAP_lekarnicka",
"MAP_P_sink",
"MAP_toilet_b",
"MAP_P_toilet_b_02"
];

//Add to Shelf
{ 
    _index = lbAdd [_comboBoxE, _x]; 
} forEach [
"MAP_almara",
"MAP_case_a",
"MAP_case_bedroom_a",
"MAP_case_bedroom_b",
"MAP_case_cans_b",
"MAP_case_d",
"MAP_case_wall_unit_part_c",
"MAP_case_wall_unit_part_d",
"MAP_case_wooden_b",
"MAP_Dhangar_borwnskrin",
"MAP_Dhangar_brownskrin",
"MAP_Dhangar_knihovna",
"MAP_library_a",
"MAP_shelf",
"MAP_Skrin_bar",
"MAP_Skrin_opalena",
"MAP_Truhla_stara"
];

//Add to Misc
{ 
    _index = lbAdd [_comboBoxF, _x]; 
} forEach [
"MAP_briefcase",
"MAP_Dkamna_bila",
"MAP_Dkamna_uhli",
"MAP_F_Dkamna_uhli",
"MAP_icebox",
"MAP_mutt_vysilacka",
"MAP_notebook",
"MAP_pc",
"MAP_phonebox",
"MAP_radio",
"MAP_radio_b",
"MAP_satelitePhone",
"MAP_smallTV",
"MAP_tv_a",
"MAP_vending_machine",
"MAP_lantern",
"MAP_bucket",
"MAP_MetalBucket",
"MAP_FuelCan",
"MAP_SmallObj_money"
];

//Add to table
{ 
    _index = lbAdd [_comboBoxG, _x]; 
} forEach [
"MAP_conference_table_a",
"MAP_desk",
"MAP_Dhangar_psacistul",
"MAP_F_conference_table_a",
"MAP_kitchen_table_a",
"MAP_lobby_table",
"MAP_office_table_a",
"MAP_pultskasou",
"MAP_SmallTable",
"MAP_stul_hospoda",
"MAP_stul_kuch1",
"MAP_Table",
"MAP_table_drawer"
];