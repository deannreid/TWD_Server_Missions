disableSerialization;
//Define idc's for controls for easy access 
_comboBoxA = 2667; 
_comboBoxB = 2668; 
_comboBoxC = 2669; 
_comboBoxD = 2670; 
_comboBoxE = 2671; 
_comboBoxF = 2672; 
_comboBoxG = 2673; 
_comboBoxH = 2674; 

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

//Add to exterior
{ 
    _index = lbAdd [_comboBoxH, _x]; 
} forEach [
"MAP_kasna_new",
"MAP_Misc_Boogieman",
"MAP_ChickenCoop",
"MAP_Misc_Greenhouse",
"MAP_Misc_Hutch",
"MAP_Misc_Well",
"MAP_Misc_WellPump",
"MAP_PowerGenerator",
"MAP_psi_bouda",
"MAP_pumpa",
"MAP_stanek_3",
"MAP_stanek_3_d",
"MAP_stanek_3B",
"MAP_AirCond_big",
"MAP_AirCond_small",
"MAP_antenna_big_roof",
"MAP_antenna_small_roof",
"MAP_antenna_small_roof_1",
"MAP_drapes",
"MAP_drapes_long",
"MAP_GasMeterExt",
"MAP_Ladder",
"MAP_P_Ladder",
"MAP_LadderHalf",
"MAP_P_LadderLong",
"MAP_leseni2x",
"MAP_leseni4x",
"MAP_Misc_loudspeakers",
"MAP_parabola_big",
"MAP_P_Stavebni_kozy",
"MAP_Heli_H_civil",
"MAP_Heli_H_army",
"MAP_Heli_H_cross",
"MAP_Heli_H_rescue",
"MAP_Sr_border",
"MAP_drevo_hromada",
"MAP_garbage_misc",
"MAP_garbage_paleta",
"MAP_Ind_BoardsPack1",
"MAP_Ind_BoardsPack2",
"MAP_Ind_Timbers",
"MAP_Kontejner",
"MAP_Misc_GContainer_Big",
"MAP_Misc_HayStack",
"MAP_Misc_TyreHeap",
"MAP_Misc_WoodPile",
"MAP_pneu",
"MAP_popelnice",
"MAP_sekyraspalek",
"MAP_seno_balik",
"MAP_concrete_block",
"MAP_Concrete_Ramp",
"MAP_ramp_concrete",
"MAP_woodenRamp",
"MAP_brana",
"MAP_Houpacka",
"MAP_nastenkaX",
"MAP_Piskoviste",
"MAP_snowman",
"MAP_Barel1",
"MAP_Barel3",
"MAP_Barel4",
"MAP_Barel5",
"MAP_Barel6",
"MAP_Barel7",
"MAP_Barel8",
"MAP_Barels",
"MAP_Barels2",
"MAP_Barels3",
"MAP_barrel_empty",
"MAP_barrel_sand",
"MAP_barrel_water",
"MAP_P_bedna",
"MAP_box_c",
"MAP_P_cihly1",
"MAP_P_cihly2",
"MAP_P_cihly3",
"MAP_P_cihly4",
"MAP_metalcrate",
"MAP_metalcrate_02",
"Misc_concrete",
"MAP_Misc_G_Pipes",
"MAP_Misc_palletsfoiled",
"MAP_Misc_palletsfoiled_heap",
"MAP_obstacle_get_over",
"MAP_obstacle_prone",
"MAP_obstacle_run_duck",
"MAP_paletaA",
"MAP_paletyC",
"MAP_paletyD",
"MAP_Pallets_Column",
"MAP_P_pipe_big",
"MAP_P_pipe_small",
"MAP_P_ytong"
];