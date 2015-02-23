
_vehicle_42 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11467.027, 11364.092, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_42 = _this;
  _this setDir -7.4119859;
  _this setPos [11467.027, 11364.092, -3.0517578e-005];
};

_vehicle_44 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11459.176, 11355.807, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_44 = _this;
  _this setDir -7.4119859;
  _this setPos [11459.176, 11355.807, 6.1035156e-005];
};

_vehicle_58 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Market_stalls_01_EP1", [11503.519, 11355.071, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_58 = _this;
  _this setDir 400.9491;
  _this setPos [11503.519, 11355.071, 3.0517578e-005];
};

_vehicle_60 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_water", [11503.994, 11352.15], [], 0, "CAN_COLLIDE"];
  _vehicle_60 = _this;
  _this setDir -7.4119859;
  _this setPos [11503.994, 11352.15];
};

_vehicle_62 = objNull;
if (true) then
{
  _this = createVehicle ["LADAWreck", [11445.551, 11311.917, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_62 = _this;
  _this setDir -157.55025;
  _this setPos [11445.551, 11311.917, -6.1035156e-005];
};

_vehicle_71 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [11497.734, 11357.029, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_71 = _this;
  _this setDir 36.088291;
  _this setPos [11497.734, 11357.029, -6.1035156e-005];
};

if_unit_13 = objNull;
if (true) then
{
  _this = createAgent ["Profiteer4", [11447.716, 11311.741, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _unit_13 = _this;
  _this setDir 34.525925;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_unit_17 = objNull;
if (true) then
{
  _this = createAgent ["RU_Villager3", [7996.1021, 2899.0759, 0.6355527], [], 0, "CAN_COLLIDE"];
  _unit_17 = _this;
  _this setDir 86.85891;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_vehicle_73 = objNull;
if (true) then
{
  _this = createVehicle ["SmallTable", [11498.088, 11367.482, -0.037198037], [], 0, "CAN_COLLIDE"];
  _vehicle_73 = _this;
  _this setDir 91.790497;
  _this setVehicleInit "this allowDammage false;this enableSimulation false;";
  _this setPos [11498.088, 11367.482, -0.037198037];
};

_vehicle_79 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11505.086, 11359.041], [], 0, "CAN_COLLIDE"];
  _vehicle_79 = _this;
  _this setDir -139.4446;
  _this setPos [11505.086, 11359.041];
};

_vehicle_80 = objNull;
if (true) then
{
  _this = createVehicle ["Land_covering_hut_big_EP1", [11498.808, 11367.5, -0.59457916], [], 0, "CAN_COLLIDE"];
  _vehicle_80 = _this;
  _this setDir 84.682175;
  _this setPos [11498.808, 11367.5, -0.59457916];
};

_vehicle_81 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled", [11497.678, 11369.931, -0.03725908], [], 0, "CAN_COLLIDE"];
  _vehicle_81 = _this;
  _this setDir 131.98518;
  _this setPos [11497.678, 11369.931, -0.03725908];
};

_vehicle_85 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [11499.338, 11366.028, -0.03725908], [], 0, "CAN_COLLIDE"];
  _vehicle_85 = _this;
  _this setDir 123.72449;
  _this setPos [11499.338, 11366.028, -0.03725908];
};

_vehicle_89 = objNull;
if (true) then
{
  _this = createVehicle ["Land_covering_hut_EP1", [11500.958, 11382.185, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_89 = _this;
  _this setDir 215.41138;
  _this setPos [11500.958, 11382.185, -9.1552734e-005];
};

_unit_56 = objNull;
if (true) then
{
  _this = createAgent ["Worker3", [4041.6206, 11668.891, 0.23954971], [], 0, "CAN_COLLIDE"];
  _unit_56 = _this;
  _this setDir 24.912832;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_unit_57 = objNull;
if (true) then
{
  _this = createAgent ["CIV_EuroMan01_EP1", [4064.0681, 11680.065, -0.038146973], [], 0, "CAN_COLLIDE"];
  _unit_57 = _this;
  _this setDir 231.00745;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_unit_58 = objNull;
if (true) then
{
  _this = createAgent ["RU_WorkWoman5", [4071.9915, 11676.731, 0.54440308], [], 0, "CAN_COLLIDE"];
  _unit_58 = _this;
  _this setDir 566.81744;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_unit_59 = objNull;
if (true) then
{
  _this = createAgent ["TK_GUE_Soldier_5_EP1", [4054.218, 11664.668, -0.51617432], [], 0, "CAN_COLLIDE"];
  _unit_59 = _this;
  _this setDir 422.9967;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_unit_60 = objNull;
if (true) then
{
  _this = createAgent ["CIV_EuroMan02_EP1", [4058.0457, 11678.723, 0.33944702], [], 0, "CAN_COLLIDE"];
  _unit_60 = _this;
  _this setDir 89.890854;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_unit_62 = objNull;
if (true) then
{
  _this = createAgent ["Dr_Hladik_EP1", [6314.0962, 7791.5308, 0.51730686], [], 0, "CAN_COLLIDE"];
  _unit_62 = _this;
  _this setDir 577.32629;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_vehicle_92 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Campfire", [11498.734, 11381.296, 0.24837048], [], 0, "CAN_COLLIDE"];
  _vehicle_92 = _this;
  _this setDir 6.1469536;
  _this setPos [11498.734, 11381.296, 0.24837048];
};

_vehicle_102 = objNull;
if (true) then
{
  _this = createVehicle ["C130J_wreck_EP1", [3974.3894, 11601.295, -1.2288972], [], 0, "CAN_COLLIDE"];
  _vehicle_102 = _this;
  _this setDir 57.059044;
  _this setPos [3974.3894, 11601.295, -1.2288972];
};

_vehicle_109 = objNull;
if (true) then
{
  _this = createVehicle ["Hhedgehog_concreteBig", [4078.2883, 11649.253, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_109 = _this;
  _this setDir -63.284313;
  _this setPos [4078.2883, 11649.253, -3.0517578e-005];
};

_vehicle_114 = objNull;
if (true) then
{
  _this = createVehicle ["ZavoraAnim", [4084.1555, 11659.839, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_114 = _this;
  _this setDir -60.360134;
  _this setPos [4084.1555, 11659.839, -0.00012207031];
};

_vehicle_115 = objNull;
if (true) then
{
  _this = createVehicle ["LADAWreck", [4048.9612, 11667.128, 0.015672784], [], 0, "CAN_COLLIDE"];
  _vehicle_115 = _this;
  _this setDir 60.312458;
  _this setPos [4048.9612, 11667.128, 0.015672784];
};

_vehicle_119 = objNull;
if (true) then
{
  _this = createVehicle ["T72Wreck", [4003.5327, 11678.8, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_119 = _this;
  _this setPos [4003.5327, 11678.8, -6.1035156e-005];
};

_vehicle_120 = objNull;
if (true) then
{
  _this = createVehicle ["T72WreckTurret", [4006.9814, 11670.917, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_120 = _this;
  _this setDir -107.24438;
  _this setPos [4006.9814, 11670.917, -0.00015258789];
};

_vehicle_123 = objNull;
if (true) then
{
  _this = createVehicle ["Mi8Wreck", [3990.4397, 11684.975, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_123 = _this;
  _this setPos [3990.4397, 11684.975, -3.0517578e-005];
};

_vehicle_127 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [6314.689, 7791.6929, 0.093172662], [], 0, "CAN_COLLIDE"];
  _vehicle_127 = _this;
  _this setDir 40.906422;
  _this setPos [6314.689, 7791.6929, 0.093172662];
};

_vehicle_128 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_Danger", [4027.1787, 11657.261, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_128 = _this;
  _this setDir 49.790733;
  _this setPos [4027.1787, 11657.261, -6.1035156e-005];
};

_vehicle_130 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_Danger", [4057.9753, 11638.428, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_130 = _this;
  _this setPos [4057.9753, 11638.428, -3.0517578e-005];
};

_vehicle_133 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_Danger", [4042.5051, 11647.118, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_133 = _this;
  _this setDir 35.04166;
  _this setPos [4042.5051, 11647.118, 6.1035156e-005];
};

_vehicle_136 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_Danger", [4019.4063, 11664.92, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_136 = _this;
  _this setDir 26.150373;
  _this setPos [4019.4063, 11664.92, 3.0517578e-005];
};

_vehicle_138 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [4051.1519, 11642.453, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_138 = _this;
  _this setDir 201.85086;
  _this setPos [4051.1519, 11642.453, -6.1035156e-005];
};

_vehicle_140 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [4034.2476, 11651.141, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_140 = _this;
  _this setDir 219.74416;
  _this setPos [4034.2476, 11651.141, -9.1552734e-005];
};

_vehicle_143 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [4021.0457, 11662.883, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_143 = _this;
  _this setDir 226.36101;
  _this setPos [4021.0457, 11662.883, -3.0517578e-005];
};

_vehicle_145 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [4025.1404, 11654.706, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_145 = _this;
  _this setPos [4025.1404, 11654.706, -3.0517578e-005];
};

_vehicle_147 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [4039.8711, 11643.114, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_147 = _this;
  _this setPos [4039.8711, 11643.114, -3.0517578e-005];
};

_vehicle_150 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [4012.9392, 11668.524, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_150 = _this;
  _this setPos [4012.9392, 11668.524, -6.1035156e-005];
};

_vehicle_164 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [4062.6428, 11682.021, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_164 = _this;
  _this setDir 72.342918;
  _this setPos [4062.6428, 11682.021, -3.0517578e-005];
};

_vehicle_165 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Backpackheap", [4074.3342, 11676.928, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_165 = _this;
  _this setDir 345.89008;
  _this setPos [4074.3342, 11676.928, -9.1552734e-005];
};

_vehicle_166 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNetVar_EAST", [4060.9595, 11680.576], [], 0, "CAN_COLLIDE"];
  _vehicle_166 = _this;
  _this setDir -6.4849606;
  _this setVehicleInit "this allowDammage false;this enableSimulation false;";
  _this setPos [4060.9595, 11680.576];
};

_vehicle_173 = objNull;
if (true) then
{
  _this = createVehicle ["Land_GuardShed", [4086.96, 11659.943, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_173 = _this;
  _this setDir -67.0504;
  _this setPos [4086.96, 11659.943, -6.1035156e-005];
};

_vehicle_178 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [3878.5791, 11678.632, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_178 = _this;
  _this setDir 51.630379;
  _this setPos [3878.5791, 11678.632, -3.0517578e-005];
};

_vehicle_184 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Bucket_EP1", [4073.1187, 11679.04, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_184 = _this;
  _this setDir 326.27802;
  _this setPos [4073.1187, 11679.04, -6.1035156e-005];
};

_vehicle_187 = objNull;
if (true) then
{
  _this = createVehicle ["WoodChair", [4064.7173, 11680.602, -0.00051879883], [], 0, "CAN_COLLIDE"];
  _vehicle_187 = _this;
  _this setDir 13.38733;
  _this setVehicleInit "this allowDammage false;this enableSimulation false;";
  _this setPos [4064.7173, 11680.602, -0.00051879883];
};

_vehicle_195 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pillow_EP1", [4072.1333, 11677.803, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_195 = _this;
  _this setDir 363.94629;
  _this setPos [4072.1333, 11677.803, -6.1035156e-005];
};

_vehicle_197 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [4063.4116, 11679.616], [], 0, "CAN_COLLIDE"];
  _vehicle_197 = _this;
  _this setDir 68.100845;
  _this setVehicleInit "this allowDammage false;this enableSimulation false;";
  _this setPos [4063.4116, 11679.616];
};

_vehicle_198 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [4057.5093, 11678.485, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_198 = _this;
  _this setDir -105.98519;
  _this setVehicleInit "this allowDammage false;this enableSimulation false;";
  _this setPos [4057.5093, 11678.485, -6.1035156e-005];
};

_vehicle_200 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [4058.8311, 11678.623], [], 0, "CAN_COLLIDE"];
  _vehicle_200 = _this;
  _this setDir -93.232597;
  _this setVehicleInit "this allowDammage false;this enableSimulation false;";
  _this setPos [4058.8311, 11678.623];
};

_vehicle_205 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Well_C_EP1", [4085.0645, 11669.402, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_205 = _this;
  _this setDir -94.223312;
  _this setPos [4085.0645, 11669.402, -6.1035156e-005];
};

_vehicle_206 = objNull;
if (true) then
{
  _this = createVehicle ["Bunker_PMC", [4025.1743, 11676.713, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_206 = _this;
  _this setDir -73.730324;
  _this setPos [4025.1743, 11676.713, -6.1035156e-005];
};

_vehicle_217 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [4027.1782, 11668.193, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_217 = _this;
  _this setDir 13.455784;
  _this setPos [4027.1782, 11668.193, -0.00012207031];
};

_vehicle_223 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_IronPipes_EP1", [4059.2703, 11657.253, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_223 = _this;
  _this setPos [4059.2703, 11657.253, -3.0517578e-005];
};

_vehicle_227 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Reservoir_EP1", [4057.9426, 11660.814, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_227 = _this;
  _this setDir 173.80089;
  _this setPos [4057.9426, 11660.814, -9.1552734e-005];
};

_vehicle_230 = objNull;
if (true) then
{
  _this = createVehicle ["Land_stand_meat_EP1", [4073.5352, 11679.348, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_230 = _this;
  _this setDir 291.43402;
  _this setPos [4073.5352, 11679.348, 3.0517578e-005];
};

_vehicle_231 = objNull;
if (true) then
{
  _this = createVehicle ["Land_stand_small_EP1", [4071.7622, 11675.991, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_231 = _this;
  _this setDir 381.98224;
  _this setPos [4071.7622, 11675.991, -0.00012207031];
};

_vehicle_238 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tires_EP1", [4052.7512, 11666.596, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_238 = _this;
  _this setDir -37.201057;
  _this setPos [4052.7512, 11666.596, -6.1035156e-005];
};

_vehicle_239 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [4064.7468, 11682.927, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_239 = _this;
  _this setDir 39.652706;
  _this setPos [4064.7468, 11682.927, -3.0517578e-005];
};

_vehicle_243 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [4054.3711, 11665.827, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_243 = _this;
  _this setPos [4054.3711, 11665.827, 0];
};

_vehicle_244 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [4053.7493, 11671.434, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_244 = _this;
  _this setDir 1.0253659;
  _this setPos [4053.7493, 11671.434, -3.0517578e-005];
};

_vehicle_246 = objNull;
if (true) then
{
  _this = createVehicle ["Pile_of_wood", [4052.1362, 11666.497, 0.015611748], [], 0, "CAN_COLLIDE"];
  _vehicle_246 = _this;
  _this setDir -297.9014;
  _this setPos [4052.1362, 11666.497, 0.015611748];
};

_vehicle_250 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [4058.4089, 11680.73, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_250 = _this;
  _this setDir -57.903767;
  _this setPos [4058.4089, 11680.73, -0.00012207031];
};

_vehicle_257 = objNull;
if (true) then
{
  _this = createVehicle ["Land_cages_EP1", [4074.7046, 11681.784, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_257 = _this;
  _this setDir 363.94629;
  _this setPos [4074.7046, 11681.784, -3.0517578e-005];
};

_vehicle_258 = objNull;
if (true) then
{
  _this = createVehicle ["Land_covering_hut_EP1", [4074.146, 11679.42, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_258 = _this;
  _this setDir 207.60707;
  _this setPos [4074.146, 11679.42, -3.0517578e-005];
};

_vehicle_260 = objNull;
if (true) then
{
  _this = createVehicle ["Land_covering_hut_EP1", [4072.7244, 11676.598, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_260 = _this;
  _this setDir 387.25079;
  _this setPos [4072.7244, 11676.598, -3.0517578e-005];
};

_vehicle_265 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [4069.3713, 11677.529, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_265 = _this;
  _this setDir -37.201057;
  _this setPos [4069.3713, 11677.529, -6.1035156e-005];
};

_vehicle_291 = objNull;
if (true) then
{
  _this = createVehicle ["SmallTable", [6313.7319, 7790.9473, 0.013100131], [], 0, "CAN_COLLIDE"];
  _vehicle_291 = _this;
  _this setDir 40.010624;
  _this setVehicleInit "this allowDammage false;this enableSimulation false;";
  _this setPos [6313.7319, 7790.9473, 0.013100131];
};

_vehicle_292 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Water_pipe_EP1", [6314.9482, 7790.9653, 0.093142167], [], 0, "CAN_COLLIDE"];
  _vehicle_292 = _this;
  _this setDir 252.18881;
  _this setVehicleInit "this allowDammage false;this enableSimulation false;";
  _this setPos [6314.9482, 7790.9653, 0.093142167];
};

_vehicle_299 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Table_EP1", [4041.9973, 11669.914, 0.015611748], [], 0, "CAN_COLLIDE"];
  _vehicle_299 = _this;
  _this setDir -59.92321;
  _this setPos [4041.9973, 11669.914, 0.015611748];
};

_vehicle_302 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Cabinet_EP1", [6314.9282, 7792.3154, 0.093233757], [], 0, "CAN_COLLIDE"];
  _vehicle_302 = _this;
  _this setDir 128.33586;
  _this setPos [6314.9282, 7792.3154, 0.093233757];
};

_vehicle_304 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_stack_EP1", [4075.2336, 11678.565, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_304 = _this;
  _this setDir 393.47345;
  _this setPos [4075.2336, 11678.565, 0.00012207031];
};

_unit_73 = objNull;
if (true) then
{
  _this = createAgent ["RU_Functionary1", [12929.546, 12781.656, 0.54878908], [], 0, "CAN_COLLIDE"];
  _unit_73 = _this;
  _this setDir 122.4281;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_unit_74 = objNull;
if (true) then
{
  _this = createAgent ["Woodlander1", [11497.09, 11359.604, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _unit_74 = _this;
  _this setDir 214.29015;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_unit_75 = objNull;
if (true) then
{
  _this = createAgent ["Damsel5", [11505.825, 11352.067, 0.94462103], [], 0, "CAN_COLLIDE"];
  _unit_75 = _this;
  _this setDir 218.62891;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_unit_78 = objNull;
if (true) then
{
  _this = createAgent ["Rocker4", [11502.272, 11354.632], [], 0, "CAN_COLLIDE"];
  _unit_78 = _this;
  _this setDir 211.93854;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_unit_79 = objNull;
if (true) then
{
  _this = createAgent ["RU_Citizen3", [11499.391, 11367.666, -0.037198037], [], 0, "CAN_COLLIDE"];
  _unit_79 = _this;
  _this setDir 270.84583;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_unit_82 = objNull;
if (true) then
{
  _this = createAgent ["Dr_Annie_Baker_EP1", [11501.24, 11382.79], [], 0, "CAN_COLLIDE"];
  _unit_82 = _this;
  _this setDir 214.35161;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_unit_84 = objNull;
if (true) then
{
  _this = createAgent ["TK_CIV_Takistani04_EP1", [6336.5264, 7784.6079, 0.98069924], [], 0, "CAN_COLLIDE"];
  _unit_84 = _this;
  _this setDir 402.55536;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_vehicle_461 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6316.4673, 7792.5254, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_461 = _this;
  _this setDir 35.687778;
  _this setPos [6316.4673, 7792.5254, 3.0517578e-005];
};

_vehicle_481 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast_EP1", [6278.8022, 7860.8862, 0.22625503], [], 0, "CAN_COLLIDE"];
  _vehicle_481 = _this;
  _this setDir 7.6095228;
  _this setPos [6278.8022, 7860.8862, 0.22625503];
};

_vehicle_485 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast_EP1", [6286.3462, 7858.605, 0.11788455], [], 0, "CAN_COLLIDE"];
  _vehicle_485 = _this;
  _this setDir 741.19073;
  _this setPos [6286.3462, 7858.605, 0.11788455];
};

_vehicle_501 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [6335.2334, 7786.498], [], 0, "CAN_COLLIDE"];
  _vehicle_501 = _this;
  _this setDir 211.38748;
  _this setPos [6335.2334, 7786.498];
};

_vehicle_511 = objNull;
if (true) then
{
  _this = createVehicle ["Land_covering_hut_big_EP1", [6317.2676, 7788.2417], [], 0, "CAN_COLLIDE"];
  _vehicle_511 = _this;
  _this setDir 38.268478;
  _this setPos [6317.2676, 7788.2417];
};

_unit_90 = objNull;
if (true) then
{
  _this = createAgent ["RU_Citizen4", [13530.905, 6356.7388, 1.7166138e-005], [], 0, "CAN_COLLIDE"];
  _unit_90 = _this;
  _this setDir 102.75758;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_unit_91 = objNull;
if (true) then
{
  _this = createAgent ["RU_Citizen1", [4360.6211, 2260.9841, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _unit_91 = _this;
  _this setDir 196.69872;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_vehicle_513 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish1", [3966.7112, 11656.354, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_513 = _this;
  _this setDir -66.023567;
  _this setPos [3966.7112, 11656.354, 9.1552734e-005];
};

_vehicle_517 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [4057.1663, 11635.8, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_517 = _this;
  _this setPos [4057.1663, 11635.8, -9.1552734e-005];
};

_unit_94 = objNull;
if (true) then
{
  _this = createAgent ["Pilot_EP1", [6332.8652, 7787.3545, 0.0142059], [], 0, "CAN_COLLIDE"];
  _unit_94 = _this;
  _this setDir 395.72888;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_unit_95 = objNull;
if (true) then
{
  _this = createAgent ["Rita_Ensler_EP1", [6310.7803, 7794.5054, 0.88001078], [], 0, "CAN_COLLIDE"];
  _unit_95 = _this;
  _this setDir -114.43345;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_vehicle_521 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [6303.2524, 7800.1899, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_521 = _this;
  _this setDir 402.10657;
  _this setPos [6303.2524, 7800.1899, 3.0517578e-005];
};

_vehicle_523 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled", [6319.2056, 7787.5439, -0.022046415], [], 0, "CAN_COLLIDE"];
  _vehicle_523 = _this;
  _this setDir 16.434511;
  _this setPos [6319.2056, 7787.5439, -0.022046415];
};

_vehicle_527 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [6320.9531, 7787.0967, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_527 = _this;
  _this setPos [6320.9531, 7787.0967, 6.1035156e-005];
};

_vehicle_531 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_kiosk_EP1", [6311.8315, 7793.1309, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_531 = _this;
  _this setDir 487.48059;
  _this setPos [6311.8315, 7793.1309, 9.1552734e-005];
};

_vehicle_532 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_Crate_wood", [6313.0171, 7799.0332, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_532 = _this;
  _this setDir 50.427696;
  _this setPos [6313.0171, 7799.0332, 3.0517578e-005];
};

_vehicle_533 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [6311.2544, 7805.6841, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_533 = _this;
  _this setDir 285.36954;
  _this setPos [6311.2544, 7805.6841, 3.0517578e-005];
};

_vehicle_538 = objNull;
if (true) then
{
  _this = createVehicle ["Info_Board_EP1", [11452.216, 11363.935, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_538 = _this;
  _this setDir -55.524353;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11452.216, 11363.935, -3.0517578e-005];
};

_vehicle_541 = objNull;
if (true) then
{
  _this = createVehicle ["Info_Board_EP1", [4086.2542, 11662.404, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_541 = _this;
  _this setDir 469.56882;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [4086.2542, 11662.404, -6.1035156e-005];
};

_vehicle_544 = objNull;
if (true) then
{
  _this = createVehicle ["Info_Board_EP1", [6240.918, 7822.8042, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_544 = _this;
  _this setDir 571.74927;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6240.918, 7822.8042, 3.0517578e-005];
};

_vehicle_548 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [4358.5767, 2260.3745, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_548 = _this;
  _this setPos [4358.5767, 2260.3745, -2.8610229e-006];
};

_vehicle_550 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [13533.103, 6358.1616, -8.5830688e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_550 = _this;
  _this setPos [13533.103, 6358.1616, -8.5830688e-006];
};

_vehicle_559 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHEmpty", [7983.9741, 2890.6536, -0.024177462], [], 0, "CAN_COLLIDE"];
  _vehicle_559 = _this;
  _this setPos [7983.9741, 2890.6536, -0.024177462];
};

_unit_97 = objNull;
if (true) then
{
  _this = createAgent ["Assistant", [12420.737, 12528.944, 0.020880492], [], 0, "CAN_COLLIDE"];
  _unit_97 = _this;
  _this setDir 19.92712;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_vehicle_594 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_net2", [12926.286, 12771.953], [], 0, "CAN_COLLIDE"];
  _vehicle_594 = _this;
  _this setDir 168.50586;
  _this setPos [12926.286, 12771.953];
};

_vehicle_595 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_water", [12927.833, 12773.492, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_595 = _this;
  _this setPos [12927.833, 12773.492, -0.00012207031];
};

_vehicle_596 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_small", [12929.887, 12784.058, 0.087221481], [], 0, "CAN_COLLIDE"];
  _vehicle_596 = _this;
  _this setDir -5.592731;
  _this setPos [12929.887, 12784.058, 0.087221481];
};

_this = createCenter resistance;
_center_2 = _this;

_group_2 = createGroup _center_2;

_unit_108 = objNull;
if (true) then
{
  _this = createAgent ["GUE_Soldier_MG", [1623.1722, 7797.7886, 0.25734121], [], 0, "CAN_COLLIDE"];
  _unit_108 = _this;
  _this setDir 274.59872;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;  ";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_vehicle_600 = objNull;
if (true) then
{
  _this = createVehicle ["RU_WarfareBUAVterminal", [4052.8269, 11662.361, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_600 = _this;
  _this setDir -24.982422;
  _this setPos [4052.8269, 11662.361, -9.1552734e-005];
};

_vehicle_619 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [4088.1907, 11661.583], [], 0, "CAN_COLLIDE"];
  _vehicle_619 = _this;
  _this setDir 140.55763;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [4088.1907, 11661.583];
};

_vehicle_621 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [4060.8157, 11685.167, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_621 = _this;
  _this setDir -179.85927;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [4060.8157, 11685.167, -6.1035156e-005];
};

_vehicle_623 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [4040.7114, 11668.369, 0.015611748], [], 0, "CAN_COLLIDE"];
  _vehicle_623 = _this;
  _this setDir 31.444944;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [4040.7114, 11668.369, 0.015611748];
};

_vehicle_626 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [4057.0989, 11661.225, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_626 = _this;
  _this setDir 368.31775;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [4057.0989, 11661.225, -6.1035156e-005];
};

_vehicle_628 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6302.3657, 7802.2681, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_628 = _this;
  _this setDir 313.45294;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6302.3657, 7802.2681, -3.0517578e-005];
};

_vehicle_630 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6312.457, 7812.3052, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_630 = _this;
  _this setDir 838.61414;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6312.457, 7812.3052, 6.1035156e-005];
};

_vehicle_632 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6314.8608, 7792.957, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_632 = _this;
  _this setDir 190.09235;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6314.8608, 7792.957, 3.0517578e-005];
};

_vehicle_634 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11451.342, 11362.765], [], 0, "CAN_COLLIDE"];
  _vehicle_634 = _this;
  _this setDir 127.9906;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11451.342, 11362.765];
};

_vehicle_636 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11451.952, 11351.8, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_636 = _this;
  _this setDir 77.666451;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11451.952, 11351.8, 9.1552734e-005];
};

_vehicle_659 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHEmpty", [1617.7074, 7773.3115, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_659 = _this;
  _this setPos [1617.7074, 7773.3115, 6.1035156e-005];
};

_unit_118 = objNull;
if (true) then
{
  _this = createAgent ["RU_Profiteer4", [6304.4873, 7804.2915, 0.28709891], [], 0, "CAN_COLLIDE"];
  _unit_118 = _this;
  _this setDir -49.359165;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_vehicle_678 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHEmpty", [6292.998, 7806.4375], [], 0, "CAN_COLLIDE"];
  _vehicle_678 = _this;
  _this setPos [6292.998, 7806.4375];
};

_unit_122 = objNull;
if (true) then
{
  _this = createAgent ["Woodlander3", [6317.9883, 7789.3345, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _unit_122 = _this;
  _this setDir -130.79149;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};
 
_vehicle_681 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [12419.791, 12528.593, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_681 = _this;
  _this setDir 216.27287;
  _this setVehicleInit "this allowDammage false;this enableSimulation false;";
  _this setPos [12419.791, 12528.593, -1.5258789e-005];
};

_vehicle_682 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [12420.744, 12529.647, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_682 = _this;
  _this setDir 17.306128;
  _this setVehicleInit "this allowDammage false;this enableSimulation false;";
  _this setPos [12420.744, 12529.647, 1.5258789e-005];
};

_unit_124 = objNull;
if (true) then
{
  _this = createAgent ["HouseWife1", [13468.382, 5439.5752, 2.8821261], [], 0, "CAN_COLLIDE"];
  _unit_124 = _this;
  _this setDir -91.741302;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_vehicle_686 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHEmpty", [13473.405, 5439.6479, 0.00021648407], [], 0, "CAN_COLLIDE"];
  _vehicle_686 = _this;
  _this setPos [13473.405, 5439.6479, 0.00021648407];
};

_vehicle_689 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_garaz_mala", [4036.7148, 11664.595, 0.015703302], [], 0, "CAN_COLLIDE"];
  _vehicle_689 = _this;
  _this setDir 21.845457;
  _this setPos [4036.7148, 11664.595, 0.015703302];
};

_unit_128 = objNull;
if (true) then
{
  _this = createAgent ["Doctor", [4059.437, 11660.436], [], 0, "CAN_COLLIDE"];
  _unit_128 = _this;
  _this setDir 24.266853;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_vehicle_699 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [4058.7043, 11660.961, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_699 = _this;
  _this setDir 217.96779;
  _this setPos [4058.7043, 11660.961, 3.0517578e-005];
};

_vehicle_701 = objNull;
if (true) then
{
  _this = createVehicle ["Land_sunshade_EP1", [4059.8516, 11660.219], [], 0, "CAN_COLLIDE"];
  _vehicle_701 = _this;
  _this setPos [4059.8516, 11660.219];
};

_vehicle_724 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6306.6904, 7787.5947, 0.24377441], [], 0, "CAN_COLLIDE"];
  _vehicle_724 = _this;
  _this setDir 35.687778;
  _this setPos [6306.6904, 7787.5947, 0.24377441];
};

_vehicle_727 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6319.5698, 7778.5234, 0.20742251], [], 0, "CAN_COLLIDE"];
  _vehicle_727 = _this;
  _this setDir 34.820972;
  _this setPos [6319.5698, 7778.5234, 0.20742251];
};

_vehicle_732 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6324.8804, 7781.7441, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_732 = _this;
  _this setDir 93.599457;
  _this setPos [6324.8804, 7781.7441, 9.1552734e-005];
};

_vehicle_734 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6324.2832, 7785.7964, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_734 = _this;
  _this setDir 68.962952;
  _this setPos [6324.2832, 7785.7964, -3.0517578e-005];
};

_vehicle_741 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_garaz_mala", [11441.517, 11308.681], [], 0, "CAN_COLLIDE"];
  _vehicle_741 = _this;
  _this setDir 395.83041;
  _this setPos [11441.517, 11308.681];
};

_vehicle_751 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Bastion", [11502.099, 11383.942, -1.3494607], [], 0, "CAN_COLLIDE"];
  _vehicle_751 = _this;
  _this setDir 37.775131;
  _this setPos [11502.099, 11383.942, -1.3494607];
};

_vehicle_754 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Gate", [11442.958, 11361.349, -0.60745138], [], 0, "CAN_COLLIDE"];
  _vehicle_754 = _this;
  _this setDir -55.190434;
  _this setPos [11442.958, 11361.349, -0.60745138];
};

_vehicle_755 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Stairs_A", [11430.94, 11355.316, -1.5570954], [], 0, "CAN_COLLIDE"];
  _vehicle_755 = _this;
  _this setDir 35.121216;
  _this setPos [11430.94, 11355.316, -1.5570954];
};

_vehicle_761 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Bastion", [11444.235, 11301.651, 0.59100425], [], 0, "CAN_COLLIDE"];
  _vehicle_761 = _this;
  _this setDir 213.16335;
  _this setPos [11444.235, 11301.651, 0.59100425];
};

_vehicle_764 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Bench_EP1", [11501.962, 11383.84], [], 0, "CAN_COLLIDE"];
  _vehicle_764 = _this;
  _this setDir -52.894714;
  _this setPos [11501.962, 11383.84];
};

_vehicle_765 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [11502.468, 11381.79, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_765 = _this;
  _this setDir 39.236465;
  _this setPos [11502.468, 11381.79, -3.0517578e-005];
};

_unit_132 = objNull;
if (true) then
{
  _this = createAgent ["GUE_Woodlander2", [6312.0972, 7803.9751], [], 0, "CAN_COLLIDE"];
  _unit_132 = _this;
  _this setDir 105.98095;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_vehicle_767 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_net1", [6313.7383, 7806.5703, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_767 = _this;
  _this setPos [6313.7383, 7806.5703, 3.0517578e-005];
};

_vehicle_775 = objNull;
if (true) then
{
  _this = createVehicle ["Hhedgehog_concreteBig", [4091.625, 11663.692, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_775 = _this;
  _this setDir -65.721718;
  _this setPos [4091.625, 11663.692, 6.1035156e-005];
};

_vehicle_790 = objNull;
if (true) then
{
  _this = createVehicle ["RoadCone", [1617.5127, 7773.2793], [], 0, "CAN_COLLIDE"];
  _vehicle_790 = _this;
  _this setPos [1617.5127, 7773.2793];
};

_vehicle_792 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [12907.23, 12760.271], [], 0, "CAN_COLLIDE"];
  _vehicle_792 = _this;
  _this setPos [12907.23, 12760.271];
};

_vehicle_798 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [6308.4912, 7807.1768], [], 0, "CAN_COLLIDE"];
  _vehicle_798 = _this;
  _this setDir 126.09799;
  _this setPos [6308.4912, 7807.1768];
};

_vehicle_802 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_concrete_High", [6316.9316, 7807.2402, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_802 = _this;
  _this setDir -60.701591;
  _this setPos [6316.9316, 7807.2402, 3.0517578e-005];
};

_vehicle_812 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big", [6306.3389, 7797.5034], [], 0, "CAN_COLLIDE"];
  _vehicle_812 = _this;
  _this setDir -411.25259;
  _this setPos [6306.3389, 7797.5034];
};

_vehicle_813 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceRound", [6303.4932, 7804.8901], [], 0, "CAN_COLLIDE"];
  _vehicle_813 = _this;
  _this setDir 128.79018;
  _this setPos [6303.4932, 7804.8901];
};

_vehicle_814 = objNull;
if (true) then
{
  _this = createVehicle ["Land_aif_sara_domek05", [12935.612, 12779.316, -0.10744532], [], 0, "CAN_COLLIDE"];
  _vehicle_814 = _this;
  _this setDir 88.530624;
  _this setPos [12935.612, 12779.316, -0.10744532];
};

_vehicle_816 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_small", [12927.176, 12786.317, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_816 = _this;
  _this setDir -5.592731;
  _this setPos [12927.176, 12786.317, -1.5258789e-005];
};

_vehicle_819 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_BulbI", [12928.146, 12778.404], [], 0, "CAN_COLLIDE"];
  _vehicle_819 = _this;
  _this setPos [12928.146, 12778.404];
};

_vehicle_821 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_BulbI", [12928.34, 12776.641, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_821 = _this;
  _this setPos [12928.34, 12776.641, -1.5258789e-005];
};

_vehicle_823 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_BulbI", [12927.203, 12778.269, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_823 = _this;
  _this setPos [12927.203, 12778.269, -1.5258789e-005];
};

_vehicle_825 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_BulbI", [12927.254, 12776.557, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_825 = _this;
  _this setPos [12927.254, 12776.557, -4.5776367e-005];
};

_vehicle_827 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_BulbI", [12926.247, 12778.178, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_827 = _this;
  _this setPos [12926.247, 12778.178, -0.00010681152];
};

_vehicle_829 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_BulbI", [12926.354, 12776.426, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_829 = _this;
  _this setPos [12926.354, 12776.426, -6.1035156e-005];
};

_vehicle_831 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_BulbI", [12925.146, 12778.041, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_831 = _this;
  _this setPos [12925.146, 12778.041, -7.6293945e-005];
};

_vehicle_833 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_BulbI", [12925.178, 12776.225, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_833 = _this;
  _this setPos [12925.178, 12776.225, -4.5776367e-005];
};

_vehicle_836 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre1", [12928.227, 12784.625, -0.63517433], [], 0, "CAN_COLLIDE"];
  _vehicle_836 = _this;
  _this setDir 305.5687;
  _this setPos [12928.227, 12784.625, -0.63517433];
};

_vehicle_837 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dum_mesto2l", [12936.204, 12792.984, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_837 = _this;
  _this setDir 178.75992;
  _this setPos [12936.204, 12792.984, -3.0517578e-005];
};

_vehicle_839 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dum_mesto_in", [12923.656, 12790.645, -0.019587927], [], 0, "CAN_COLLIDE"];
  _vehicle_839 = _this;
  _this setPos [12923.656, 12790.645, -0.019587927];
};

_vehicle_840 = objNull;
if (true) then
{
  _this = createVehicle ["dum_olezlina", [12906.214, 12790.98, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_840 = _this;
  _this setDir -1.1415881;
  _this setPos [12906.214, 12790.98, 1.5258789e-005];
};

_vehicle_842 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HouseBlock_A2", [12882.39, 12795.796, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_842 = _this;
  _this setDir -2.8996315;
  _this setPos [12882.39, 12795.796, -3.0517578e-005];
};

_vehicle_843 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HouseBlock_B2", [12867.181, 12797.194, -0.038872782], [], 0, "CAN_COLLIDE"];
  _vehicle_843 = _this;
  _this setDir 167.56699;
  _this setPos [12867.181, 12797.194, -0.038872782];
};

_vehicle_846 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HouseV2_04_interier", [12937.121, 12745.885], [], 0, "CAN_COLLIDE"];
  _vehicle_846 = _this;
  _this setDir 89.437706;
  _this setPos [12937.121, 12745.885];
};

_vehicle_848 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_stanice", [12927.602, 12729.406, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_848 = _this;
  _this setDir -43.160526;
  _this setPos [12927.602, 12729.406, -0.00010681152];
};

_vehicle_849 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_sara_Domek_sedy", [12909.939, 12727.242, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_849 = _this;
  _this setDir 172.87708;
  _this setPos [12909.939, 12727.242, -4.5776367e-005];
};

_vehicle_855 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_sara_Domek_sedy", [12896.85, 12726.817, -0.00024414063], [], 0, "CAN_COLLIDE"];
  _vehicle_855 = _this;
  _this setDir 179.35521;
  _this setPos [12896.85, 12726.817, -0.00024414063];
};

_vehicle_858 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_sara_Domek_sedy", [12883.432, 12726.761, -0.00038146973], [], 0, "CAN_COLLIDE"];
  _vehicle_858 = _this;
  _this setDir 179.35521;
  _this setPos [12883.432, 12726.761, -0.00038146973];
};

_vehicle_861 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_phone_box", [12901.703, 12788.343], [], 0, "CAN_COLLIDE"];
  _vehicle_861 = _this;
  _this setPos [12901.703, 12788.343];
};

_vehicle_862 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Greenhouse", [12943.906, 12732.286], [], 0, "CAN_COLLIDE"];
  _vehicle_862 = _this;
  _this setPos [12943.906, 12732.286];
};

_vehicle_864 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Greenhouse", [12943.957, 12729.172, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_864 = _this;
  _this setPos [12943.957, 12729.172, -0.00018310547];
};

_vehicle_866 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Greenhouse", [12951.616, 12732.142, -0.00019836426], [], 0, "CAN_COLLIDE"];
  _vehicle_866 = _this;
  _this setPos [12951.616, 12732.142, -0.00019836426];
};

_vehicle_868 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Greenhouse", [12951.168, 12728.727, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_868 = _this;
  _this setPos [12951.168, 12728.727, -0.00015258789];
};

_vehicle_870 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Greenhouse", [12944.03, 12725.073, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_870 = _this;
  _this setPos [12944.03, 12725.073, -9.1552734e-005];
};

_vehicle_872 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Greenhouse", [12951.46, 12725.267, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_872 = _this;
  _this setPos [12951.46, 12725.267, -0.00015258789];
};

_vehicle_874 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Greenhouse", [12943.738, 12721.36, -0.00039672852], [], 0, "CAN_COLLIDE"];
  _vehicle_874 = _this;
  _this setPos [12943.738, 12721.36, -0.00039672852];
};

_vehicle_876 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Greenhouse", [12951.383, 12721.55, -0.00030517578], [], 0, "CAN_COLLIDE"];
  _vehicle_876 = _this;
  _this setPos [12951.383, 12721.55, -0.00030517578];
};

_vehicle_878 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Greenhouse", [12959.63, 12732.285, -0.00054931641], [], 0, "CAN_COLLIDE"];
  _vehicle_878 = _this;
  _this setPos [12959.63, 12732.285, -0.00054931641];
};

_vehicle_880 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Greenhouse", [12959.519, 12728.873, -0.00035095215], [], 0, "CAN_COLLIDE"];
  _vehicle_880 = _this;
  _this setPos [12959.519, 12728.873, -0.00035095215];
};

_vehicle_882 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Greenhouse", [12959.419, 12725.418, -0.00028991699], [], 0, "CAN_COLLIDE"];
  _vehicle_882 = _this;
  _this setPos [12959.419, 12725.418, -0.00028991699];
};

_vehicle_884 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Greenhouse", [12959.316, 12721.676, -0.00022888184], [], 0, "CAN_COLLIDE"];
  _vehicle_884 = _this;
  _this setPos [12959.316, 12721.676, -0.00022888184];
};

_vehicle_886 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dirthump03", [12959.972, 12746.191, 0.88878244], [], 0, "CAN_COLLIDE"];
  _vehicle_886 = _this;
  _this setDir 281.96313;
  _this setPos [12959.972, 12746.191, 0.88878244];
};

_vehicle_890 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Barels3", [12924.432, 12785.422, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_890 = _this;
  _this setPos [12924.432, 12785.422, -4.5776367e-005];
};

_vehicle_892 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Barels3", [12922.995, 12785.904, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_892 = _this;
  _this setPos [12922.995, 12785.904, 1.5258789e-005];
};

_vehicle_894 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Barels3", [12922.98, 12783.738, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_894 = _this;
  _this setPos [12922.98, 12783.738, -3.0517578e-005];
};

_vehicle_896 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Barels3", [12925.352, 12783.6, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_896 = _this;
  _this setPos [12925.352, 12783.6, -3.0517578e-005];
};

_vehicle_898 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_P_pipe_big", [12904.433, 12786.692, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_898 = _this;
  _this setDir 88.145912;
  _this setPos [12904.433, 12786.692, 1.5258789e-005];
};

_vehicle_900 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_P_pipe_big", [12907.417, 12787.771, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_900 = _this;
  _this setDir 88.145912;
  _this setPos [12907.417, 12787.771, 3.0517578e-005];
};

_vehicle_902 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_P_pipe_big", [12903.397, 12786.685, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_902 = _this;
  _this setDir 88.145912;
  _this setPos [12903.397, 12786.685, 9.1552734e-005];
};

_vehicle_904 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_paletyD", [12923.969, 12782.008, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_904 = _this;
  _this setPos [12923.969, 12782.008, -6.1035156e-005];
};

_vehicle_906 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Campfire_burning", [12926.575, 12751.72, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_906 = _this;
  _this setPos [12926.575, 12751.72, -4.5776367e-005];
};

_vehicle_909 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Campfire_burning", [12925.144, 12766.518, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_909 = _this;
  _this setPos [12925.144, 12766.518, 3.0517578e-005];
};

_vehicle_914 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeap", [12928.004, 12762.437, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_914 = _this;
  _this setPos [12928.004, 12762.437, -3.0517578e-005];
};

_vehicle_915 = objNull;
if (true) then
{
  _this = createVehicle ["Land_stand_waterl_EP1", [12875.168, 12786.635, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_915 = _this;
  _this setDir -0.61108297;
  _this setPos [12875.168, 12786.635, -9.1552734e-005];
};

_vehicle_918 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_small", [12835.146, 12778.313, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_918 = _this;
  _this setDir 83.280586;
  _this setPos [12835.146, 12778.313, -4.5776367e-005];
};

_vehicle_920 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12861.843, 12785.939, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_920 = _this;
  _this setDir -12.54684;
  _this setPos [12861.843, 12785.939, 4.5776367e-005];
};

_vehicle_922 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12859.404, 12785.338, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_922 = _this;
  _this setDir -12.54684;
  _this setPos [12859.404, 12785.338, 7.6293945e-005];
};

_vehicle_924 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12856.977, 12784.749, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_924 = _this;
  _this setDir -12.54684;
  _this setPos [12856.977, 12784.749, 4.5776367e-005];
};

_vehicle_926 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12854.555, 12784.175], [], 0, "CAN_COLLIDE"];
  _vehicle_926 = _this;
  _this setDir -12.54684;
  _this setPos [12854.555, 12784.175];
};

_vehicle_928 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12852.117, 12783.613, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_928 = _this;
  _this setDir -12.54684;
  _this setPos [12852.117, 12783.613, 1.5258789e-005];
};

_vehicle_930 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12849.721, 12783.068, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_930 = _this;
  _this setDir -12.54684;
  _this setPos [12849.721, 12783.068, 4.5776367e-005];
};

_vehicle_932 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12847.311, 12782.491, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_932 = _this;
  _this setDir -12.54684;
  _this setPos [12847.311, 12782.491, 1.5258789e-005];
};

_vehicle_934 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12844.879, 12781.922, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_934 = _this;
  _this setDir -12.54684;
  _this setPos [12844.879, 12781.922, 3.0517578e-005];
};

_vehicle_936 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12842.454, 12781.361, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_936 = _this;
  _this setDir -12.54684;
  _this setPos [12842.454, 12781.361, -3.0517578e-005];
};

_vehicle_938 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12840.068, 12780.826, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_938 = _this;
  _this setDir -12.54684;
  _this setPos [12840.068, 12780.826, 4.5776367e-005];
};

_vehicle_940 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12837.598, 12780.27, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_940 = _this;
  _this setDir -12.54684;
  _this setPos [12837.598, 12780.27, 4.5776367e-005];
};

_vehicle_942 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12836.724, 12774.682, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_942 = _this;
  _this setDir 82.600548;
  _this setPos [12836.724, 12774.682, 4.5776367e-005];
};

_vehicle_945 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12837.111, 12772.236, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_945 = _this;
  _this setDir 82.600548;
  _this setPos [12837.111, 12772.236, -1.5258789e-005];
};

_vehicle_947 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12837.495, 12769.765, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_947 = _this;
  _this setDir 82.600548;
  _this setPos [12837.495, 12769.765, -3.0517578e-005];
};

_vehicle_949 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12837.786, 12767.322, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_949 = _this;
  _this setDir 82.600548;
  _this setPos [12837.786, 12767.322, -0.00018310547];
};

_vehicle_951 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12838.106, 12765.013, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_951 = _this;
  _this setDir 82.600548;
  _this setPos [12838.106, 12765.013, -7.6293945e-005];
};

_vehicle_958 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12839.746, 12752.571, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_958 = _this;
  _this setDir 82.600548;
  _this setPos [12839.746, 12752.571, -7.6293945e-005];
};

_vehicle_959 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12839.363, 12755.074, -0.039871216], [], 0, "CAN_COLLIDE"];
  _vehicle_959 = _this;
  _this setDir 82.600548;
  _this setPos [12839.363, 12755.074, -0.039871216];
};

_vehicle_960 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12839.099, 12757.486, -0.086532593], [], 0, "CAN_COLLIDE"];
  _vehicle_960 = _this;
  _this setDir 82.600548;
  _this setPos [12839.099, 12757.486, -0.086532593];
};

_vehicle_961 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12838.767, 12759.997, -0.094604492], [], 0, "CAN_COLLIDE"];
  _vehicle_961 = _this;
  _this setDir 82.600548;
  _this setPos [12838.767, 12759.997, -0.094604492];
};

_vehicle_962 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12838.443, 12762.549, -0.13113403], [], 0, "CAN_COLLIDE"];
  _vehicle_962 = _this;
  _this setDir 82.600548;
  _this setPos [12838.443, 12762.549, -0.13113403];
};

_vehicle_968 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12842.012, 12739.653, -0.045047987], [], 0, "CAN_COLLIDE"];
  _vehicle_968 = _this;
  _this setDir 82.600548;
  _this setPos [12842.012, 12739.653, -0.045047987];
};

_vehicle_972 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12840.044, 12750.136, -0.0047339476], [], 0, "CAN_COLLIDE"];
  _vehicle_972 = _this;
  _this setDir 82.600548;
  _this setPos [12840.044, 12750.136, -0.0047339476];
};

_vehicle_979 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12842.293, 12737.136, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_979 = _this;
  _this setDir 82.600548;
  _this setPos [12842.293, 12737.136, 0.00012207031];
};

_vehicle_981 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12842.571, 12734.74, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_981 = _this;
  _this setDir 82.600548;
  _this setPos [12842.571, 12734.74, -9.1552734e-005];
};

_vehicle_984 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12877.442, 12726.666, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_984 = _this;
  _this setDir -4.220192;
  _this setPos [12877.442, 12726.666, -7.6293945e-005];
};

_vehicle_987 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12874.974, 12726.516, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_987 = _this;
  _this setDir -4.220192;
  _this setPos [12874.974, 12726.516, 3.0517578e-005];
};

_vehicle_989 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12872.477, 12726.339, -0.00019836426], [], 0, "CAN_COLLIDE"];
  _vehicle_989 = _this;
  _this setDir -4.220192;
  _this setPos [12872.477, 12726.339, -0.00019836426];
};

_vehicle_991 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12869.945, 12726.143, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_991 = _this;
  _this setDir -4.220192;
  _this setPos [12869.945, 12726.143, 0.00015258789];
};

_vehicle_997 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12867.513, 12725.881, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_997 = _this;
  _this setDir -4.220192;
  _this setPos [12867.513, 12725.881, -4.5776367e-005];
};

_vehicle_998 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12864.961, 12725.678, -0.054885864], [], 0, "CAN_COLLIDE"];
  _vehicle_998 = _this;
  _this setDir -4.220192;
  _this setPos [12864.961, 12725.678, -0.054885864];
};

_vehicle_999 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12862.464, 12725.501, -0.071472168], [], 0, "CAN_COLLIDE"];
  _vehicle_999 = _this;
  _this setDir -4.220192;
  _this setPos [12862.464, 12725.501, -0.071472168];
};

_vehicle_1000 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12859.933, 12725.305, -0.074356079], [], 0, "CAN_COLLIDE"];
  _vehicle_1000 = _this;
  _this setDir -4.220192;
  _this setPos [12859.933, 12725.305, -0.074356079];
};

_vehicle_1005 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12857.42, 12725.21, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_1005 = _this;
  _this setDir -4.220192;
  _this setPos [12857.42, 12725.21, -0.00018310547];
};

_vehicle_1006 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12854.866, 12725.006, -0.055908203], [], 0, "CAN_COLLIDE"];
  _vehicle_1006 = _this;
  _this setDir -4.220192;
  _this setPos [12854.866, 12725.006, -0.055908203];
};

_vehicle_1007 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12852.371, 12724.828, -0.065643311], [], 0, "CAN_COLLIDE"];
  _vehicle_1007 = _this;
  _this setDir -4.220192;
  _this setPos [12852.371, 12724.828, -0.065643311];
};

_vehicle_1008 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12849.839, 12724.634, -0.065505981], [], 0, "CAN_COLLIDE"];
  _vehicle_1008 = _this;
  _this setDir -4.220192;
  _this setPos [12849.839, 12724.634, -0.065505981];
};

_vehicle_1014 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_small", [12842.26, 12726.738, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1014 = _this;
  _this setDir 83.280586;
  _this setPos [12842.26, 12726.738, -0.00012207031];
};

_vehicle_1017 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12847.378, 12724.452, -0.00016784668], [], 0, "CAN_COLLIDE"];
  _vehicle_1017 = _this;
  _this setDir -4.220192;
  _this setPos [12847.378, 12724.452, -0.00016784668];
};

_vehicle_1020 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12842.779, 12732.313, -0.00022888184], [], 0, "CAN_COLLIDE"];
  _vehicle_1020 = _this;
  _this setDir 82.600548;
  _this setPos [12842.779, 12732.313, -0.00022888184];
};

_vehicle_1022 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12843.134, 12729.813], [], 0, "CAN_COLLIDE"];
  _vehicle_1022 = _this;
  _this setDir 82.600548;
  _this setPos [12843.134, 12729.813];
};

_vehicle_1025 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12845.06, 12724.25, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_1025 = _this;
  _this setDir -4.220192;
  _this setPos [12845.06, 12724.25, -0.00021362305];
};

_vehicle_1027 = objNull;
if (true) then
{
  _this = createVehicle ["Hhedgehog_concrete", [12820.12, 12740.431, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1027 = _this;
  _this setDir -14.168199;
  _this setPos [12820.12, 12740.431, -0.00012207031];
};

_vehicle_1028 = objNull;
if (true) then
{
  _this = createVehicle ["Hhedgehog_concreteBig", [12811.726, 12738.854, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1028 = _this;
  _this setDir -13.255455;
  _this setPos [12811.726, 12738.854, -6.1035156e-005];
};

_vehicle_1030 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [12858.582, 12752.625, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1030 = _this;
  _this setDir -109.39502;
  _this setPos [12858.582, 12752.625, 9.1552734e-005];
};

_vehicle_1035 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog", [12896.144, 12799.979, -0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_1035 = _this;
  _this setPos [12896.144, 12799.979, -0.0001373291];
};

_vehicle_1037 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12967.491, 12731.438, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1037 = _this;
  _this setDir -83.658722;
  _this setPos [12967.491, 12731.438, -9.1552734e-005];
};

_vehicle_1039 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12966.908, 12723.483, -0.00028991699], [], 0, "CAN_COLLIDE"];
  _vehicle_1039 = _this;
  _this setDir -83.658722;
  _this setPos [12966.908, 12723.483, -0.00028991699];
};

_vehicle_1042 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12966.217, 12715.622, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1042 = _this;
  _this setDir -83.658722;
  _this setPos [12966.217, 12715.622, -1.5258789e-005];
};

_vehicle_1044 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12960.506, 12712.704, -0.00054931641], [], 0, "CAN_COLLIDE"];
  _vehicle_1044 = _this;
  _this setDir -180.76732;
  _this setPos [12960.506, 12712.704, -0.00054931641];
};

_vehicle_1047 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12951.714, 12712.502, -0.00033569336], [], 0, "CAN_COLLIDE"];
  _vehicle_1047 = _this;
  _this setDir -180.76732;
  _this setPos [12951.714, 12712.502, -0.00033569336];
};

_vehicle_1049 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12942.866, 12712.306, -0.00028991699], [], 0, "CAN_COLLIDE"];
  _vehicle_1049 = _this;
  _this setDir -178.77251;
  _this setPos [12942.866, 12712.306, -0.00028991699];
};

_vehicle_1051 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12934.036, 12712.308, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1051 = _this;
  _this setDir -178.15535;
  _this setPos [12934.036, 12712.308, 9.1552734e-005];
};

_vehicle_1053 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12925.303, 12712.494, -0.00035095215], [], 0, "CAN_COLLIDE"];
  _vehicle_1053 = _this;
  _this setDir -172.20653;
  _this setPos [12925.303, 12712.494, -0.00035095215];
};

_vehicle_1055 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12920.272, 12717.859, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1055 = _this;
  _this setDir -105.75819;
  _this setPos [12920.272, 12717.859, 7.6293945e-005];
};

_vehicle_1058 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12968.889, 12739.913, -0.0004119873], [], 0, "CAN_COLLIDE"];
  _vehicle_1058 = _this;
  _this setDir -78.071266;
  _this setPos [12968.889, 12739.913, -0.0004119873];
};

_vehicle_1060 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12970.633, 12748.461, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1060 = _this;
  _this setDir -79.499252;
  _this setPos [12970.633, 12748.461, -1.5258789e-005];
};

_vehicle_1062 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12971.665, 12757.122, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1062 = _this;
  _this setDir -81.412933;
  _this setPos [12971.665, 12757.122, -3.0517578e-005];
};

_vehicle_1064 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12970.991, 12765.845, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1064 = _this;
  _this setDir -98.470856;
  _this setPos [12970.991, 12765.845, -6.1035156e-005];
};

_vehicle_1066 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12965.928, 12772.171, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1066 = _this;
  _this setDir -152.65721;
  _this setPos [12965.928, 12772.171, -1.5258789e-005];
};

_vehicle_1068 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12957.698, 12775.028, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1068 = _this;
  _this setDir -167.51506;
  _this setPos [12957.698, 12775.028, -1.5258789e-005];
};

_vehicle_1070 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12948.991, 12777.378, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1070 = _this;
  _this setDir 16.530716;
  _this setPos [12948.991, 12777.378, -1.5258789e-005];
};

_vehicle_1072 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12942.396, 12782.024], [], 0, "CAN_COLLIDE"];
  _vehicle_1072 = _this;
  _this setDir -123.56495;
  _this setPos [12942.396, 12782.024];
};

_vehicle_1075 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12879.948, 12726.872, -0.00050354004], [], 0, "CAN_COLLIDE"];
  _vehicle_1075 = _this;
  _this setDir -1.7844802;
  _this setPos [12879.948, 12726.872, -0.00050354004];
};

_vehicle_1081 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1E_EP1", [12891.194, 12787.448, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1081 = _this;
  _this setDir -3.3316078;
  _this setPos [12891.194, 12787.448, -9.1552734e-005];
};

_vehicle_1082 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1Bo_military", [12893.6, 12787.471, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1082 = _this;
  _this setDir -2.5884659;
  _this setPos [12893.6, 12787.471, -1.5258789e-005];
};

_vehicle_1084 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1E_EP1", [12896.159, 12787.459, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1084 = _this;
  _this setDir -3.3316078;
  _this setPos [12896.159, 12787.459, -3.0517578e-005];
};

_vehicle_1086 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BarGate2", [12893.447, 12799.011, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_1086 = _this;
  _this setPos [12893.447, 12799.011, -0.00010681152];
};

_vehicle_1087 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BarGate2", [12840.839, 12745.536, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1087 = _this;
  _this setDir 76.713951;
  _this setPos [12840.839, 12745.536, -4.5776367e-005];
};

_vehicle_1088 = objNull;
if (true) then
{
  _this = createVehicle ["Land_GuardShed", [12843.455, 12742.975, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1088 = _this;
  _this setDir 158.39484;
  _this setPos [12843.455, 12742.975, 9.1552734e-005];
};

_vehicle_1093 = objNull;
if (true) then
{
  _this = createVehicle ["ZavoraAnim", [12825.179, 12741.548], [], 0, "CAN_COLLIDE"];
  _vehicle_1093 = _this;
  _this setDir -112.54655;
  _this setPos [12825.179, 12741.548];
};

_vehicle_1095 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12841.654, 12742.117, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1095 = _this;
  _this setDir 82.600548;
  _this setPos [12841.654, 12742.117, -0.00012207031];
};

_vehicle_1098 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12839.526, 12747.929, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1098 = _this;
  _this setDir 155.28569;
  _this setPos [12839.526, 12747.929, -9.1552734e-005];
};

_vehicle_1101 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12839.952, 12741.913, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1101 = _this;
  _this setDir 150.78629;
  _this setPos [12839.952, 12741.913, -1.5258789e-005];
};

_vehicle_1104 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12837.372, 12746.901, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_1104 = _this;
  _this setDir 155.28569;
  _this setPos [12837.372, 12746.901, -0.00010681152];
};

_vehicle_1106 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12835.213, 12745.913, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1106 = _this;
  _this setDir 155.28569;
  _this setPos [12835.213, 12745.913, -4.5776367e-005];
};

_vehicle_1108 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12833.059, 12744.923, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1108 = _this;
  _this setDir 155.28569;
  _this setPos [12833.059, 12744.923, -7.6293945e-005];
};

_vehicle_1110 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12831.013, 12743.96, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1110 = _this;
  _this setDir 155.28569;
  _this setPos [12831.013, 12743.96, 4.5776367e-005];
};

_vehicle_1113 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12837.918, 12740.834, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_1113 = _this;
  _this setDir 150.78629;
  _this setPos [12837.918, 12740.834, -0.00010681152];
};

_vehicle_1115 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12835.717, 12739.619, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_1115 = _this;
  _this setDir 150.78629;
  _this setPos [12835.717, 12739.619, -0.00010681152];
};

_vehicle_1117 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12833.589, 12738.404, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1117 = _this;
  _this setDir 150.78629;
  _this setPos [12833.589, 12738.404, -1.5258789e-005];
};

_vehicle_1120 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12828.844, 12742.972, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1120 = _this;
  _this setDir 155.28569;
  _this setPos [12828.844, 12742.972, -4.5776367e-005];
};

_vehicle_1123 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12831.496, 12737.197, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_1123 = _this;
  _this setDir 150.78629;
  _this setPos [12831.496, 12737.197, -0.00010681152];
};

_vehicle_1125 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12829.271, 12735.981, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1125 = _this;
  _this setDir 150.78629;
  _this setPos [12829.271, 12735.981, -7.6293945e-005];
};

_vehicle_1127 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [12826.742, 12742.018, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1127 = _this;
  _this setDir 153.71193;
  _this setPos [12826.742, 12742.018, -9.1552734e-005];
};

_vehicle_1132 = objNull;
if (true) then
{
  _this = createVehicle ["Hhedgehog_concrete", [12823.573, 12732.782, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1132 = _this;
  _this setDir -203.55363;
  _this setPos [12823.573, 12732.782, -7.6293945e-005];
};

_vehicle_1135 = objNull;
if (true) then
{
  _this = createVehicle ["Hhedgehog_concreteBig", [12815.635, 12729.491, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1135 = _this;
  _this setDir -13.255455;
  _this setPos [12815.635, 12729.491, -3.0517578e-005];
};

_vehicle_1137 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [12842.271, 12748.764, -0.00024414063], [], 0, "CAN_COLLIDE"];
  _vehicle_1137 = _this;
  _this setDir -26.457409;
  _this setPos [12842.271, 12748.764, -0.00024414063];
};

_vehicle_1139 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog", [12896.222, 12801.483, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_1139 = _this;
  _this setPos [12896.222, 12801.483, 0.00015258789];
};

_vehicle_1141 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog", [12897.434, 12800.558, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1141 = _this;
  _this setPos [12897.434, 12800.558, 9.1552734e-005];
};

_vehicle_1143 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog", [12897.403, 12802.189, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1143 = _this;
  _this setPos [12897.403, 12802.189, 0.00012207031];
};

_vehicle_1145 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog", [12891.534, 12802, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1145 = _this;
  _this setPos [12891.534, 12802, -6.1035156e-005];
};

_vehicle_1147 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog", [12890.853, 12805.204, 0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_1147 = _this;
  _this setPos [12890.853, 12805.204, 0.0001373291];
};

_vehicle_1149 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog", [12890.788, 12803.711, 0.0002746582], [], 0, "CAN_COLLIDE"];
  _vehicle_1149 = _this;
  _this setPos [12890.788, 12803.711, 0.0002746582];
};

_vehicle_1151 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog", [12895.036, 12804.571, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_1151 = _this;
  _this setPos [12895.036, 12804.571, 0.00015258789];
};

_vehicle_1153 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog", [12895.441, 12805.473, 0.00036621094], [], 0, "CAN_COLLIDE"];
  _vehicle_1153 = _this;
  _this setPos [12895.441, 12805.473, 0.00036621094];
};

_vehicle_1155 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog", [12894.418, 12805.836, 0.0002746582], [], 0, "CAN_COLLIDE"];
  _vehicle_1155 = _this;
  _this setPos [12894.418, 12805.836, 0.0002746582];
};

_vehicle_1161 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12946.52, 12804.433, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1161 = _this;
  _this setDir -123.56495;
  _this setPos [12946.52, 12804.433, 4.5776367e-005];
};

_vehicle_1162 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12953.112, 12799.784, -0.22169495], [], 0, "CAN_COLLIDE"];
  _vehicle_1162 = _this;
  _this setDir 16.530716;
  _this setPos [12953.112, 12799.784, -0.22169495];
};

_vehicle_1163 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12961.82, 12797.435, 0.13827515], [], 0, "CAN_COLLIDE"];
  _vehicle_1163 = _this;
  _this setDir -167.51506;
  _this setPos [12961.82, 12797.435, 0.13827515];
};

_vehicle_1164 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12970.048, 12794.576, 0.58862305], [], 0, "CAN_COLLIDE"];
  _vehicle_1164 = _this;
  _this setDir -152.65721;
  _this setPos [12970.048, 12794.576, 0.58862305];
};

_vehicle_1170 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12939.128, 12807.997, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1170 = _this;
  _this setDir 4.4141917;
  _this setPos [12939.128, 12807.997, 3.0517578e-005];
};

_vehicle_1172 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12930.219, 12807.715, 0.00022888184], [], 0, "CAN_COLLIDE"];
  _vehicle_1172 = _this;
  _this setDir -180.44606;
  _this setPos [12930.219, 12807.715, 0.00022888184];
};

_vehicle_1174 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12921.447, 12808.101, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1174 = _this;
  _this setDir 3.9281347;
  _this setPos [12921.447, 12808.101, -1.5258789e-005];
};

_vehicle_1177 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12912.465, 12808.304, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1177 = _this;
  _this setDir 3.9281347;
  _this setPos [12912.465, 12808.304, 9.1552734e-005];
};

_vehicle_1179 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [12899.826, 12808.671, 0.00016784668], [], 0, "CAN_COLLIDE"];
  _vehicle_1179 = _this;
  _this setDir 3.9281347;
  _this setPos [12899.826, 12808.671, 0.00016784668];
};

_vehicle_1181 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [12968.351, 12763.134, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_1181 = _this;
  _this setDir 77.20562;
  _this setPos [12968.351, 12763.134, -0.00018310547];
};

_vehicle_1183 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [12968.022, 12764.477, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1183 = _this;
  _this setDir 77.20562;
  _this setPos [12968.022, 12764.477, -7.6293945e-005];
};

_vehicle_1185 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [12967.713, 12765.833, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1185 = _this;
  _this setDir 77.20562;
  _this setPos [12967.713, 12765.833, 1.5258789e-005];
};

_vehicle_1187 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [12967.397, 12767.229, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1187 = _this;
  _this setDir 77.20562;
  _this setPos [12967.397, 12767.229, -4.5776367e-005];
};

_vehicle_1189 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [12967.116, 12768.714, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1189 = _this;
  _this setDir 77.20562;
  _this setPos [12967.116, 12768.714, -0.00012207031];
};

_vehicle_1191 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [12968.756, 12761.516, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1191 = _this;
  _this setDir 77.20562;
  _this setPos [12968.756, 12761.516, -4.5776367e-005];
};

_vehicle_1193 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_kulna", [12960.746, 12768.526, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_1193 = _this;
  _this setDir 21.305693;
  _this setPos [12960.746, 12768.526, -0.00021362305];
};

_vehicle_1194 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Boogieman", [12954.443, 12728.172, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1194 = _this;
  _this setPos [12954.443, 12728.172, 4.5776367e-005];
};

_vehicle_1196 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Boogieman", [12947.431, 12725.624, 0.00033569336], [], 0, "CAN_COLLIDE"];
  _vehicle_1196 = _this;
  _this setPos [12947.431, 12725.624, 0.00033569336];
};

_vehicle_1198 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Boogieman", [12940.277, 12720.757, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_1198 = _this;
  _this setPos [12940.277, 12720.757, -0.00018310547];
};

_vehicle_1204 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ChickenCoop", [12936.059, 12726.339, -0.35641694], [], 0, "CAN_COLLIDE"];
  _vehicle_1204 = _this;
  _this setDir 86.290253;
  _this setPos [12936.059, 12726.339, -0.35641694];
};

_vehicle_1207 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ChickenCoop", [12936.348, 12723.921, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_1207 = _this;
  _this setDir 86.290253;
  _this setPos [12936.348, 12723.921, 0.00015258789];
};

_vehicle_1209 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ChickenCoop", [12936.641, 12721.829, -0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_1209 = _this;
  _this setDir 86.290253;
  _this setPos [12936.641, 12721.829, -0.0001373291];
};

_vehicle_1211 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Hutch", [12939.266, 12735.995, -0.00053405762], [], 0, "CAN_COLLIDE"];
  _vehicle_1211 = _this;
  _this setDir -1.4257205;
  _this setPos [12939.266, 12735.995, -0.00053405762];
};

_vehicle_1212 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Well", [12950.627, 12738.533, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_1212 = _this;
  _this setPos [12950.627, 12738.533, -0.00018310547];
};

_vehicle_1213 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_PowerGenerator", [12928.015, 12782.136, -0.00016784668], [], 0, "CAN_COLLIDE"];
  _vehicle_1213 = _this;
  _this setDir -6.0537043;
  _this setPos [12928.015, 12782.136, -0.00016784668];
};

_vehicle_1214 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_psi_bouda", [12941.041, 12757.995, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1214 = _this;
  _this setDir 179.1743;
  _this setPos [12941.041, 12757.995, 1.5258789e-005];
};

_vehicle_1215 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_pumpa", [12916.303, 12777.428], [], 0, "CAN_COLLIDE"];
  _vehicle_1215 = _this;
  _this setPos [12916.303, 12777.428];
};

_vehicle_1218 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_leseni4x", [12905.77, 12789.462, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1218 = _this;
  _this setPos [12905.77, 12789.462, 0.00012207031];
};

_vehicle_1221 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_P_Stavebni_kozy", [12906.859, 12782.656, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1221 = _this;
  _this setPos [12906.859, 12782.656, -1.5258789e-005];
};

_vehicle_1224 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Kontejner", [12927.341, 12747.703, -0.00016784668], [], 0, "CAN_COLLIDE"];
  _vehicle_1224 = _this;
  _this setPos [12927.341, 12747.703, -0.00016784668];
};

_vehicle_1227 = objNull;
if (true) then
{
  _this = createVehicle ["Land_covering_hut_EP1", [12927.576, 12743.433, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_1227 = _this;
  _this setDir -91.427933;
  _this setPos [12927.576, 12743.433, -0.00021362305];
};

_vehicle_1228 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Carpet_rack_EP1", [12929.203, 12745.978, -0.0004119873], [], 0, "CAN_COLLIDE"];
  _vehicle_1228 = _this;
  _this setPos [12929.203, 12745.978, -0.0004119873];
};

_vehicle_1229 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Coil_EP1", [12924.24, 12748.438, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1229 = _this;
  _this setPos [12924.24, 12748.438, -9.1552734e-005];
};

_vehicle_1230 = objNull;
if (true) then
{
  _this = createVehicle ["Land_sunshade_EP1", [12925.373, 12735.35, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1230 = _this;
  _this setPos [12925.373, 12735.35, -6.1035156e-005];
};

_vehicle_1231 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Campfire_burning", [12922.354, 12736.776, -0.00022888184], [], 0, "CAN_COLLIDE"];
  _vehicle_1231 = _this;
  _this setPos [12922.354, 12736.776, -0.00022888184];
};

_vehicle_1232 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [12928.273, 12737.733, -0.00025939941], [], 0, "CAN_COLLIDE"];
  _vehicle_1232 = _this;
  _this setPos [12928.273, 12737.733, -0.00025939941];
};

_vehicle_1233 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_EP1", [12924.714, 12734.154, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_1233 = _this;
  _this setPos [12924.714, 12734.154, -0.00010681152];
};

_vehicle_1234 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_IlluminantTower", [12842.096, 12750.922, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1234 = _this;
  _this setDir -17.616095;
  _this setPos [12842.096, 12750.922, -0.00012207031];
};

_vehicle_1236 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Hlidac_Budka_EP1", [12808.396, 12727.719, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1236 = _this;
  _this setDir -11.680705;
  _this setPos [12808.396, 12727.719, -3.0517578e-005];
};

_vehicle_1237 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Market_stalls_02_EP1", [12869.206, 12728.407, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1237 = _this;
  _this setDir -4.0732131;
  _this setPos [12869.206, 12728.407, -7.6293945e-005];
};

_vehicle_1239 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Campfire_burning", [12874.728, 12732.753, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1239 = _this;
  _this setPos [12874.728, 12732.753, -1.5258789e-005];
};

_vehicle_1241 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Campfire_burning", [12866.317, 12731.54, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1241 = _this;
  _this setPos [12866.317, 12731.54, -6.1035156e-005];
};

_vehicle_1243 = objNull;
if (true) then
{
  _this = createVehicle ["Notice_board", [12880.279, 12731.196, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1243 = _this;
  _this setDir -187.56432;
  _this setPos [12880.279, 12731.196, -4.5776367e-005];
};

_vehicle_1245 = objNull;
if (true) then
{
  _this = createVehicle ["Land_cages_EP1", [12861.76, 12727.421, -0.00019836426], [], 0, "CAN_COLLIDE"];
  _vehicle_1245 = _this;
  _this setPos [12861.76, 12727.421, -0.00019836426];
};

_vehicle_1249 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Reservoir_EP1", [12861.86, 12729.602, -0.00016784668], [], 0, "CAN_COLLIDE"];
  _vehicle_1249 = _this;
  _this setPos [12861.86, 12729.602, -0.00016784668];
};

_vehicle_1250 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall", [12892.097, 12728.355, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1250 = _this;
  _this setPos [12892.097, 12728.355, -7.6293945e-005];
};

_vehicle_1251 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall2", [12905.811, 12728.225, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1251 = _this;
  _this setPos [12905.811, 12728.225, -6.1035156e-005];
};

_vehicle_1252 = objNull;
if (true) then
{
  _this = createVehicle ["Land_stand_small_EP1", [12880.431, 12729.66, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_1252 = _this;
  _this setPos [12880.431, 12729.66, -0.00021362305];
};

_unit_134 = objNull;
if (true) then
{
  _this = createAgent ["RU_WorkWoman1", [12878.053, 12729.991, 0.98245567], [], 0, "CAN_COLLIDE"];
  _unit_134 = _this;
  _this setDir 357.53799;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};


_unit_137 = objNull;
if (true) then
{
  _this = createAgent ["Dr_Annie_Baker_EP1", [12928.425, 12743.494, 0.96225256], [], 0, "CAN_COLLIDE"];
  _unit_137 = _this;
  _this setDir 269.17081;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_vehicle_1256 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre2", [12869.626, 12726.252], [], 0, "CAN_COLLIDE"];
  _vehicle_1256 = _this;
  _this setPos [12869.626, 12726.252];
};

_vehicle_1258 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre1", [12927.674, 12746.078, 0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_1258 = _this;
  _this setDir -19.551653;
  _this setPos [12927.674, 12746.078, 0.0001373291];
};

_vehicle_1259 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_statue01", [12878.021, 12772.84, 0.53334039], [], 0, "CAN_COLLIDE"];
  _vehicle_1259 = _this;
  _this setDir 78.271095;
  _this setPos [12878.021, 12772.84, 0.53334039];
};

_vehicle_1260 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_statue02", [12885.243, 12746.112, 0.51266122], [], 0, "CAN_COLLIDE"];
  _vehicle_1260 = _this;
  _this setDir 172.47769;
  _this setPos [12885.243, 12746.112, 0.51266122];
};

_vehicle_1268 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_main", [12075.464, 12703.462], [], 0, "CAN_COLLIDE"];
  _vehicle_1268 = _this;
  _this setDir 289.07544;
  _this setPos [12075.464, 12703.462];
};

_vehicle_1272 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_main", [11999.727, 12729.536, -0.00019836426], [], 0, "CAN_COLLIDE"];
  _vehicle_1272 = _this;
  _this setDir 289.07544;
  _this setPos [11999.727, 12729.536, -0.00019836426];
};

_vehicle_1279 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_main", [12150.216, 12677.572], [], 0, "CAN_COLLIDE"];
  _vehicle_1279 = _this;
  _this setDir 289.07544;
  _this setPos [12150.216, 12677.572];
};

_vehicle_1285 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_main", [12225.304, 12651.632, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1285 = _this;
  _this setDir 289.07544;
  _this setPos [12225.304, 12651.632, -4.5776367e-005];
};

_vehicle_1289 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_main", [12300.886, 12625.527, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1289 = _this;
  _this setDir 289.07544;
  _this setPos [12300.886, 12625.527, 3.0517578e-005];
};

_vehicle_1297 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_main", [12376.15, 12599.488, -0.37809753], [], 0, "CAN_COLLIDE"];
  _vehicle_1297 = _this;
  _this setDir 289.07544;
  _this setPos [12376.15, 12599.488, -0.37809753];
};

_vehicle_1306 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_main", [12451.825, 12573.348, -0.26982117], [], 0, "CAN_COLLIDE"];
  _vehicle_1306 = _this;
  _this setDir 289.07544;
  _this setPos [12451.825, 12573.348, -0.26982117];
};

_vehicle_1318 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_main", [11924.654, 12755.802, -0.43156433], [], 0, "CAN_COLLIDE"];
  _vehicle_1318 = _this;
  _this setDir 289.07544;
  _this setPos [11924.654, 12755.802, -0.43156433];
};

_vehicle_1324 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_end33", [11830.039, 12788.546, 0.058955435], [], 0, "CAN_COLLIDE"];
  _vehicle_1324 = _this;
  _this setDir -70.800713;
  _this setPos [11830.039, 12788.546, 0.058955435];
};

_vehicle_1328 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_end33", [12470.276, 12567.067, -0.0070648193], [], 0, "CAN_COLLIDE"];
  _vehicle_1328 = _this;
  _this setDir 109.02832;
  _this setPos [12470.276, 12567.067, -0.0070648193];
};

_vehicle_1334 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11856.241, 12666.53, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1334 = _this;
  _this setDir -151.89603;
  _this setPos [11856.241, 12666.53, 3.0517578e-005];
};

_vehicle_1336 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11850.195, 12654.732, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1336 = _this;
  _this setDir -151.89603;
  _this setPos [11850.195, 12654.732, -6.1035156e-005];
};

_vehicle_1338 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11844.09, 12642.537, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1338 = _this;
  _this setDir -151.89603;
  _this setPos [11844.09, 12642.537, -1.5258789e-005];
};

_vehicle_1355 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11794.954, 12622.28, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1355 = _this;
  _this setDir 28.390318;
  _this setPos [11794.954, 12622.28, 6.1035156e-005];
};

_vehicle_1356 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11801.055, 12634.049, -0.061233521], [], 0, "CAN_COLLIDE"];
  _vehicle_1356 = _this;
  _this setDir 28.390318;
  _this setPos [11801.055, 12634.049, -0.061233521];
};

_vehicle_1357 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11807.218, 12646.221, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1357 = _this;
  _this setDir 28.390318;
  _this setPos [11807.218, 12646.221, 1.5258789e-005];
};

_vehicle_1358 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11813.872, 12659.396, -0.003616333], [], 0, "CAN_COLLIDE"];
  _vehicle_1358 = _this;
  _this setDir 28.390318;
  _this setPos [11813.872, 12659.396, -0.003616333];
};

_vehicle_1359 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11819.983, 12671.166, -0.018432617], [], 0, "CAN_COLLIDE"];
  _vehicle_1359 = _this;
  _this setDir 28.390318;
  _this setPos [11819.983, 12671.166, -0.018432617];
};

_vehicle_1360 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11826.155, 12683.333, 0.0067596436], [], 0, "CAN_COLLIDE"];
  _vehicle_1360 = _this;
  _this setDir 28.390318;
  _this setPos [11826.155, 12683.333, 0.0067596436];
};

_vehicle_1403 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11808.057, 12692.935, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1403 = _this;
  _this setDir -151.89603;
  _this setPos [11808.057, 12692.935, -4.5776367e-005];
};

_vehicle_1404 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11801.99, 12681.138, -0.012771606], [], 0, "CAN_COLLIDE"];
  _vehicle_1404 = _this;
  _this setDir -151.89603;
  _this setPos [11801.99, 12681.138, -0.012771606];
};

_vehicle_1405 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11795.889, 12668.958, -0.10009766], [], 0, "CAN_COLLIDE"];
  _vehicle_1405 = _this;
  _this setDir -151.89603;
  _this setPos [11795.889, 12668.958, -0.10009766];
};

_vehicle_1406 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11789.307, 12655.727, -0.10003662], [], 0, "CAN_COLLIDE"];
  _vehicle_1406 = _this;
  _this setDir -151.89603;
  _this setPos [11789.307, 12655.727, -0.10003662];
};

_vehicle_1407 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11783.239, 12643.928, -0.078842163], [], 0, "CAN_COLLIDE"];
  _vehicle_1407 = _this;
  _this setDir -151.89603;
  _this setPos [11783.239, 12643.928, -0.078842163];
};

_vehicle_1408 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11777.126, 12631.746, 0.015853882], [], 0, "CAN_COLLIDE"];
  _vehicle_1408 = _this;
  _this setDir -151.89603;
  _this setPos [11777.126, 12631.746, 0.015853882];
};

_vehicle_1409 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11746.751, 12648.691, 0.0038490854], [], 0, "CAN_COLLIDE"];
  _vehicle_1409 = _this;
  _this setDir 28.390318;
  _this setPos [11746.751, 12648.691, 0.0038490854];
};

_vehicle_1410 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11752.854, 12660.448, 0.0077138711], [], 0, "CAN_COLLIDE"];
  _vehicle_1410 = _this;
  _this setDir 28.390318;
  _this setPos [11752.854, 12660.448, 0.0077138711];
};

_vehicle_1411 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11759.013, 12672.636, -0.034671772], [], 0, "CAN_COLLIDE"];
  _vehicle_1411 = _this;
  _this setDir 28.390318;
  _this setPos [11759.013, 12672.636, -0.034671772];
};

_vehicle_1412 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11765.686, 12685.801, -0.038303364], [], 0, "CAN_COLLIDE"];
  _vehicle_1412 = _this;
  _this setDir 28.390318;
  _this setPos [11765.686, 12685.801, -0.038303364];
};

_vehicle_1413 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11771.784, 12697.563, -0.0076193409], [], 0, "CAN_COLLIDE"];
  _vehicle_1413 = _this;
  _this setDir 28.390318;
  _this setPos [11771.784, 12697.563, -0.0076193409];
};

_vehicle_1414 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [11777.957, 12709.72, 0.050425947], [], 0, "CAN_COLLIDE"];
  _vehicle_1414 = _this;
  _this setDir 28.390318;
  _this setPos [11777.957, 12709.72, 0.050425947];
};

_vehicle_1431 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Mil_Guardhouse", [11858.671, 12677.439, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1431 = _this;
  _this setDir 27.646231;
  _this setPos [11858.671, 12677.439, 0.00012207031];
};

_vehicle_1432 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Mil_House", [11870.404, 12695.014, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1432 = _this;
  _this setDir -62.310627;
  _this setPos [11870.404, 12695.014, 3.0517578e-005];
};

_vehicle_1433 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_SS_hangar", [11916.157, 12712.42, 0.18636087], [], 0, "CAN_COLLIDE"];
  _vehicle_1433 = _this;
  _this setDir -160.57736;
  _this setPos [11916.157, 12712.42, 0.18636087];
};

_vehicle_1434 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_vez", [11736.281, 12629.296, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1434 = _this;
  _this setDir -112.63396;
  _this setPos [11736.281, 12629.296, -3.0517578e-005];
};

_vehicle_1435 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Camo_Box", [11797.684, 12731.034], [], 0, "CAN_COLLIDE"];
  _vehicle_1435 = _this;
  _this setDir 24.549679;
  _this setPos [11797.684, 12731.034];
};

_vehicle_1440 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_prolejzacka", [11818.418, 12722.253, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_1440 = _this;
  _this setDir -70.708298;
  _this setPos [11818.418, 12722.253, -0.00010681152];
};

_vehicle_1442 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_prolejzacka", [11819.424, 12725.194, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1442 = _this;
  _this setDir -70.708298;
  _this setPos [11819.424, 12725.194, 6.1035156e-005];
};

_vehicle_1444 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_climbing_obstacle", [11827.048, 12722.55, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1444 = _this;
  _this setDir 12.837794;
  _this setPos [11827.048, 12722.55, -4.5776367e-005];
};

_vehicle_1446 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_climbing_obstacle", [11826.292, 12720.071], [], 0, "CAN_COLLIDE"];
  _vehicle_1446 = _this;
  _this setDir 16.422699;
  _this setPos [11826.292, 12720.071];
};

_vehicle_1448 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_obihacka", [11835.903, 12716.704], [], 0, "CAN_COLLIDE"];
  _vehicle_1448 = _this;
  _this setDir -71.771545;
  _this setPos [11835.903, 12716.704];
};

_vehicle_1450 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_obihacka", [11836.979, 12719.839, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1450 = _this;
  _this setDir -71.748749;
  _this setPos [11836.979, 12719.839, 6.1035156e-005];
};

_vehicle_1457 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Fort_EnvelopeBig", [11828.284, 12723.319, 0.21290876], [], 0, "CAN_COLLIDE"];
  _vehicle_1457 = _this;
  _this setDir 14.233709;
  _this setPos [11828.284, 12723.319, 0.21290876];
};

_vehicle_1459 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Fort_EnvelopeBig", [11823.621, 12724.622, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1459 = _this;
  _this setDir 14.233709;
  _this setPos [11823.621, 12724.622, 3.0517578e-005];
};

_vehicle_1463 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Fort_EnvelopeBig", [11826.846, 12718.653, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1463 = _this;
  _this setDir -162.1411;
  _this setPos [11826.846, 12718.653, -1.5258789e-005];
};

_vehicle_1464 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Fort_EnvelopeBig", [11822.291, 12720.27, 0.24188232], [], 0, "CAN_COLLIDE"];
  _vehicle_1464 = _this;
  _this setDir -162.1411;
  _this setPos [11822.291, 12720.27, 0.24188232];
};

_vehicle_1467 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_fort_rampart", [11811.406, 12727.527, -0.18452705], [], 0, "CAN_COLLIDE"];
  _vehicle_1467 = _this;
  _this setDir 110.71254;
  _this setPos [11811.406, 12727.527, -0.18452705];
};

_vehicle_1468 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_fort_watchtower", [11821.87, 12715.253], [], 0, "CAN_COLLIDE"];
  _vehicle_1468 = _this;
  _this setDir 109.08169;
  _this setPos [11821.87, 12715.253];
};

_vehicle_1470 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_GuardShed", [11826.576, 12726.742], [], 0, "CAN_COLLIDE"];
  _vehicle_1470 = _this;
  _this setDir 16.794359;
  _this setPos [11826.576, 12726.742];
};

_vehicle_1471 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11847.367, 12760.498, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1471 = _this;
  _this setDir 19.000994;
  _this setPos [11847.367, 12760.498, -1.5258789e-005];
};

_vehicle_1473 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11841.873, 12762.41, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1473 = _this;
  _this setDir 19.000994;
  _this setPos [11841.873, 12762.41, -4.5776367e-005];
};

_vehicle_1477 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11830.97, 12766.027], [], 0, "CAN_COLLIDE"];
  _vehicle_1477 = _this;
  _this setDir 19.000994;
  _this setPos [11830.97, 12766.027];
};

_vehicle_1478 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11836.453, 12764.204, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1478 = _this;
  _this setDir 19.000994;
  _this setPos [11836.453, 12764.204, 3.0517578e-005];
};

_vehicle_1481 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11820.045, 12769.807, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1481 = _this;
  _this setDir 19.000994;
  _this setPos [11820.045, 12769.807, -1.5258789e-005];
};

_vehicle_1482 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11825.437, 12767.87, -0.020111084], [], 0, "CAN_COLLIDE"];
  _vehicle_1482 = _this;
  _this setDir 19.000994;
  _this setPos [11825.437, 12767.87, -0.020111084];
};

_vehicle_1491 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11814.483, 12771.744, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1491 = _this;
  _this setDir 19.000994;
  _this setPos [11814.483, 12771.744, 1.5258789e-005];
};

_vehicle_1492 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11809.019, 12773.77, 0.034957886], [], 0, "CAN_COLLIDE"];
  _vehicle_1492 = _this;
  _this setDir 19.000994;
  _this setPos [11809.019, 12773.77, 0.034957886];
};

_vehicle_1493 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11798.113, 12777.39, -0.014633179], [], 0, "CAN_COLLIDE"];
  _vehicle_1493 = _this;
  _this setDir 19.000994;
  _this setPos [11798.113, 12777.39, -0.014633179];
};

_vehicle_1494 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11803.6, 12775.564, 0.044967651], [], 0, "CAN_COLLIDE"];
  _vehicle_1494 = _this;
  _this setDir 19.000994;
  _this setPos [11803.6, 12775.564, 0.044967651];
};

_vehicle_1495 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11787.19, 12781.168, -0.083486766], [], 0, "CAN_COLLIDE"];
  _vehicle_1495 = _this;
  _this setDir 19.000994;
  _this setPos [11787.19, 12781.168, -0.083486766];
};

_vehicle_1496 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11792.584, 12779.231, -0.26559448], [], 0, "CAN_COLLIDE"];
  _vehicle_1496 = _this;
  _this setDir 19.000994;
  _this setPos [11792.584, 12779.231, -0.26559448];
};

_vehicle_1517 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11896.459, 12743.327], [], 0, "CAN_COLLIDE"];
  _vehicle_1517 = _this;
  _this setDir 19.000994;
  _this setPos [11896.459, 12743.327];
};

_vehicle_1519 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11885.535, 12747.11, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1519 = _this;
  _this setDir 19.000994;
  _this setPos [11885.535, 12747.11, -1.5258789e-005];
};

_vehicle_1520 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11890.926, 12745.17, -0.020111084], [], 0, "CAN_COLLIDE"];
  _vehicle_1520 = _this;
  _this setDir 19.000994;
  _this setPos [11890.926, 12745.17, -0.020111084];
};

_vehicle_1521 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11879.971, 12749.045, -0.073532104], [], 0, "CAN_COLLIDE"];
  _vehicle_1521 = _this;
  _this setDir 19.000994;
  _this setPos [11879.971, 12749.045, -0.073532104];
};

_vehicle_1522 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11874.507, 12751.07, -0.035568237], [], 0, "CAN_COLLIDE"];
  _vehicle_1522 = _this;
  _this setDir 19.000994;
  _this setPos [11874.507, 12751.07, -0.035568237];
};

_vehicle_1523 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11863.604, 12754.69, -0.079849243], [], 0, "CAN_COLLIDE"];
  _vehicle_1523 = _this;
  _this setDir 19.000994;
  _this setPos [11863.604, 12754.69, -0.079849243];
};

_vehicle_1524 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11869.089, 12752.863, 0.0040893555], [], 0, "CAN_COLLIDE"];
  _vehicle_1524 = _this;
  _this setDir 19.000994;
  _this setPos [11869.089, 12752.863, 0.0040893555];
};

_vehicle_1526 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11858.241, 12756.616, -0.027147727], [], 0, "CAN_COLLIDE"];
  _vehicle_1526 = _this;
  _this setDir 18.905121;
  _this setPos [11858.241, 12756.616, -0.027147727];
};

_vehicle_1576 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11781.852, 12783.07, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1576 = _this;
  _this setDir 19.000994;
  _this setPos [11781.852, 12783.07, 3.0517578e-005];
};

_vehicle_1579 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11779.888, 12777.647], [], 0, "CAN_COLLIDE"];
  _vehicle_1579 = _this;
  _this setDir -68.762856;
  _this setPos [11779.888, 12777.647];
};

_vehicle_1582 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11777.824, 12772.284, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1582 = _this;
  _this setDir -68.762856;
  _this setPos [11777.824, 12772.284, -3.0517578e-005];
};

_vehicle_1586 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11775.764, 12766.874, 0.065823771], [], 0, "CAN_COLLIDE"];
  _vehicle_1586 = _this;
  _this setDir -68.762856;
  _this setPos [11775.764, 12766.874, 0.065823771];
};

_vehicle_1592 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11771.704, 12756.035], [], 0, "CAN_COLLIDE"];
  _vehicle_1592 = _this;
  _this setDir -68.762856;
  _this setPos [11771.704, 12756.035];
};

_vehicle_1593 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11773.764, 12761.444, -0.0035858154], [], 0, "CAN_COLLIDE"];
  _vehicle_1593 = _this;
  _this setDir -68.762856;
  _this setPos [11773.764, 12761.444, -0.0035858154];
};

_vehicle_1600 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11769.67, 12750.679, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1600 = _this;
  _this setDir -68.762856;
  _this setPos [11769.67, 12750.679, 3.0517578e-005];
};

_vehicle_1601 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11767.609, 12745.267, 0.016052246], [], 0, "CAN_COLLIDE"];
  _vehicle_1601 = _this;
  _this setDir -68.762856;
  _this setPos [11767.609, 12745.267, 0.016052246];
};

_vehicle_1602 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11763.549, 12734.429, -0.091842651], [], 0, "CAN_COLLIDE"];
  _vehicle_1602 = _this;
  _this setDir -68.762856;
  _this setPos [11763.549, 12734.429, -0.091842651];
};

_vehicle_1603 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11765.609, 12739.838, -0.086135864], [], 0, "CAN_COLLIDE"];
  _vehicle_1603 = _this;
  _this setDir -68.762856;
  _this setPos [11765.609, 12739.838, -0.086135864];
};

_vehicle_1608 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11761.207, 12729.177, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1608 = _this;
  _this setDir -62.529655;
  _this setPos [11761.207, 12729.177, -1.5258789e-005];
};

_vehicle_1609 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11758.572, 12724.024, 0.022705078], [], 0, "CAN_COLLIDE"];
  _vehicle_1609 = _this;
  _this setDir -62.529655;
  _this setPos [11758.572, 12724.024, 0.022705078];
};

_vehicle_1610 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11753.365, 12713.691, 0.078201294], [], 0, "CAN_COLLIDE"];
  _vehicle_1610 = _this;
  _this setDir -62.529655;
  _this setPos [11753.365, 12713.691, 0.078201294];
};

_vehicle_1611 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11755.998, 12718.843, 0.00730896], [], 0, "CAN_COLLIDE"];
  _vehicle_1611 = _this;
  _this setDir -62.529655;
  _this setPos [11755.998, 12718.843, 0.00730896];
};

_vehicle_1616 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11750.818, 12708.636, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1616 = _this;
  _this setDir -61.450489;
  _this setPos [11750.818, 12708.636, -6.1035156e-005];
};

_vehicle_1617 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11748.086, 12703.532, 0.0051879883], [], 0, "CAN_COLLIDE"];
  _vehicle_1617 = _this;
  _this setDir -61.450489;
  _this setPos [11748.086, 12703.532, 0.0051879883];
};

_vehicle_1618 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11742.681, 12693.298, 0.046870746], [], 0, "CAN_COLLIDE"];
  _vehicle_1618 = _this;
  _this setDir -61.450489;
  _this setPos [11742.681, 12693.298, 0.046870746];
};

_vehicle_1619 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11745.411, 12698.4, -0.0039215088], [], 0, "CAN_COLLIDE"];
  _vehicle_1619 = _this;
  _this setDir -61.450489;
  _this setPos [11745.411, 12698.4, -0.0039215088];
};

_vehicle_1624 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11739.943, 12688.325, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1624 = _this;
  _this setDir -60.194912;
  _this setPos [11739.943, 12688.325, 0.00012207031];
};

_vehicle_1625 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11737.103, 12683.285, -0.1920166], [], 0, "CAN_COLLIDE"];
  _vehicle_1625 = _this;
  _this setDir -60.194912;
  _this setPos [11737.103, 12683.285, -0.1920166];
};

_vehicle_1626 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11731.163, 12672.909, -0.053271588], [], 0, "CAN_COLLIDE"];
  _vehicle_1626 = _this;
  _this setDir -60.194912;
  _this setPos [11731.163, 12672.909, -0.053271588];
};

_vehicle_1632 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11731.158, 12666.892, 0.066460982], [], 0, "CAN_COLLIDE"];
  _vehicle_1632 = _this;
  _this setDir -92.559212;
  _this setPos [11731.158, 12666.892, 0.066460982];
};

_vehicle_1633 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11731.265, 12661.018, 0.017065328], [], 0, "CAN_COLLIDE"];
  _vehicle_1633 = _this;
  _this setDir -92.559212;
  _this setPos [11731.265, 12661.018, 0.017065328];
};

_vehicle_1634 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11731.685, 12649.416, 0.14892705], [], 0, "CAN_COLLIDE"];
  _vehicle_1634 = _this;
  _this setDir -92.559212;
  _this setPos [11731.685, 12649.416, 0.14892705];
};

_vehicle_1635 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11731.427, 12655.182, 0.068497188], [], 0, "CAN_COLLIDE"];
  _vehicle_1635 = _this;
  _this setDir -92.559212;
  _this setPos [11731.427, 12655.182, 0.068497188];
};

_vehicle_1651 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11732.74, 12631.481, 0.083800204], [], 0, "CAN_COLLIDE"];
  _vehicle_1651 = _this;
  _this setDir -92.559212;
  _this setPos [11732.74, 12631.481, 0.083800204];
};

_vehicle_1652 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11732.438, 12637.402, 0.16017941], [], 0, "CAN_COLLIDE"];
  _vehicle_1652 = _this;
  _this setDir -92.592697;
  _this setPos [11732.438, 12637.402, 0.16017941];
};

_vehicle_1653 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11732.089, 12643.359, 0.18069784], [], 0, "CAN_COLLIDE"];
  _vehicle_1653 = _this;
  _this setDir -92.559212;
  _this setPos [11732.089, 12643.359, 0.18069784];
};

_vehicle_1657 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11736.54, 12681.983, -0.077372544], [], 0, "CAN_COLLIDE"];
  _vehicle_1657 = _this;
  _this setDir 120.41821;
  _this setPos [11736.54, 12681.983, -0.077372544];
};

_vehicle_1660 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11737.318, 12627.573, 0.21013016], [], 0, "CAN_COLLIDE"];
  _vehicle_1660 = _this;
  _this setDir -144.8755;
  _this setPos [11737.318, 12627.573, 0.21013016];
};

_vehicle_1661 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11742.146, 12624.253, 0.1156895], [], 0, "CAN_COLLIDE"];
  _vehicle_1661 = _this;
  _this setDir -144.84201;
  _this setPos [11742.146, 12624.253, 0.1156895];
};

_vehicle_1664 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11743.313, 12623.654, 0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_1664 = _this;
  _this setDir 35.832588;
  _this setPos [11743.313, 12623.654, 0.0001373291];
};

_vehicle_1665 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11748.152, 12620.209, 0.054724842], [], 0, "CAN_COLLIDE"];
  _vehicle_1665 = _this;
  _this setDir 36.447994;
  _this setPos [11748.152, 12620.209, 0.054724842];
};

_vehicle_1666 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11756.563, 12614.239, 0.19469848], [], 0, "CAN_COLLIDE"];
  _vehicle_1666 = _this;
  _this setDir -144.66512;
  _this setPos [11756.563, 12614.239, 0.19469848];
};

_vehicle_1667 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11794.377, 12587.086, 0.28896758], [], 0, "CAN_COLLIDE"];
  _vehicle_1667 = _this;
  _this setDir -144.95169;
  _this setPos [11794.377, 12587.086, 0.28896758];
};

_vehicle_1677 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11757.58, 12613.379, 0.20687097], [], 0, "CAN_COLLIDE"];
  _vehicle_1677 = _this;
  _this setDir 36.447994;
  _this setPos [11757.58, 12613.379, 0.20687097];
};

_vehicle_1678 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11765.941, 12607.42, 0.22316734], [], 0, "CAN_COLLIDE"];
  _vehicle_1678 = _this;
  _this setDir -144.66512;
  _this setPos [11765.941, 12607.42, 0.22316734];
};

_vehicle_1679 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11770.671, 12604.004, 0.16291039], [], 0, "CAN_COLLIDE"];
  _vehicle_1679 = _this;
  _this setDir -144.95169;
  _this setPos [11770.671, 12604.004, 0.16291039];
};

_vehicle_1685 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11775.398, 12600.816, 0.18375547], [], 0, "CAN_COLLIDE"];
  _vehicle_1685 = _this;
  _this setDir -144.66512;
  _this setPos [11775.398, 12600.816, 0.18375547];
};

_vehicle_1686 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11780.159, 12597.393, 0.16103512], [], 0, "CAN_COLLIDE"];
  _vehicle_1686 = _this;
  _this setDir -144.95169;
  _this setPos [11780.159, 12597.393, 0.16103512];
};

_vehicle_1691 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11784.744, 12593.983, 0.22201203], [], 0, "CAN_COLLIDE"];
  _vehicle_1691 = _this;
  _this setDir -144.66512;
  _this setPos [11784.744, 12593.983, 0.22201203];
};

_vehicle_1692 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11789.481, 12590.639, 0.15262946], [], 0, "CAN_COLLIDE"];
  _vehicle_1692 = _this;
  _this setDir -144.95169;
  _this setPos [11789.481, 12590.639, 0.15262946];
};

_vehicle_1707 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11813.997, 12573.148, 0.2398247], [], 0, "CAN_COLLIDE"];
  _vehicle_1707 = _this;
  _this setDir -144.95169;
  _this setPos [11813.997, 12573.148, 0.2398247];
};

_vehicle_1708 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11799.303, 12583.636, 0.17680804], [], 0, "CAN_COLLIDE"];
  _vehicle_1708 = _this;
  _this setDir -144.95169;
  _this setPos [11799.303, 12583.636, 0.17680804];
};

_vehicle_1709 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11803.996, 12580.116, 0.17043336], [], 0, "CAN_COLLIDE"];
  _vehicle_1709 = _this;
  _this setDir -144.66512;
  _this setPos [11803.996, 12580.116, 0.17043336];
};

_vehicle_1710 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11809.04, 12576.618, 0.26518443], [], 0, "CAN_COLLIDE"];
  _vehicle_1710 = _this;
  _this setDir -144.95169;
  _this setPos [11809.04, 12576.618, 0.26518443];
};

_vehicle_1716 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11818.831, 12569.683, 0.19636314], [], 0, "CAN_COLLIDE"];
  _vehicle_1716 = _this;
  _this setDir -144.95169;
  _this setPos [11818.831, 12569.683, 0.19636314];
};

_vehicle_1718 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11819.897, 12568.968, -0.040670525], [], 0, "CAN_COLLIDE"];
  _vehicle_1718 = _this;
  _this setDir 35.291878;
  _this setPos [11819.897, 12568.968, -0.040670525];
};

_vehicle_1722 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Stan", [11821.393, 12573.823, 0.071114682], [], 0, "CAN_COLLIDE"];
  _vehicle_1722 = _this;
  _this setDir 32.41869;
  _this setPos [11821.393, 12573.823, 0.071114682];
};

_vehicle_1723 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_hromada_beden_dekorativniX", [11823.026, 12570.654, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1723 = _this;
  _this setPos [11823.026, 12570.654, 4.5776367e-005];
};

_vehicle_1736 = objNull;
if (true) then
{
  _this = createVehicle ["MASH_EP1", [11815.221, 12577.913, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1736 = _this;
  _this setDir 32.65506;
  _this setPos [11815.221, 12577.913, -1.5258789e-005];
};

_vehicle_1737 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Hangar_2", [11793.515, 12761.428, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1737 = _this;
  _this setDir 18.041735;
  _this setPos [11793.515, 12761.428, -1.5258789e-005];
};

_vehicle_1739 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Hangar_2", [11827.095, 12750.43, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1739 = _this;
  _this setDir 18.041735;
  _this setPos [11827.095, 12750.43, 6.1035156e-005];
};

_vehicle_1741 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_76n6_ClamShell", [11894.646, 12635.588, 0.00038146973], [], 0, "CAN_COLLIDE"];
  _vehicle_1741 = _this;
  _this setPos [11894.646, 12635.588, 0.00038146973];
};

_vehicle_1742 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Hlidac_budka", [11889.938, 12641.863], [], 0, "CAN_COLLIDE"];
  _vehicle_1742 = _this;
  _this setDir 88.736488;
  _this setPos [11889.938, 12641.863];
};

_vehicle_1743 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_A_Office01", [11871.264, 12742.652, 0.12011428], [], 0, "CAN_COLLIDE"];
  _vehicle_1743 = _this;
  _this setDir 18.71492;
  _this setPos [11871.264, 12742.652, 0.12011428];
};

_vehicle_1745 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_A_Pub_01", [11907.827, 12674.049], [], 0, "CAN_COLLIDE"];
  _vehicle_1745 = _this;
  _this setDir 295.07416;
  _this setPos [11907.827, 12674.049];
};

_vehicle_1747 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_A_Pub_01", [11893.276, 12681.162], [], 0, "CAN_COLLIDE"];
  _vehicle_1747 = _this;
  _this setDir 205.40508;
  _this setPos [11893.276, 12681.162];
};

_vehicle_1749 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_a_stationhouse", [11965.471, 12770.167, 0.2483993], [], 0, "CAN_COLLIDE"];
  _vehicle_1749 = _this;
  _this setDir 19.133028;
  _this setPos [11965.471, 12770.167, 0.2483993];
};

_vehicle_1750 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_SideRoof", [11805.189, 12710.09, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1750 = _this;
  _this setDir 112.17638;
  _this setPos [11805.189, 12710.09, 1.5258789e-005];
};

_vehicle_1751 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Farm_WTower", [11765.747, 12745.83, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1751 = _this;
  _this setDir -9.6126728;
  _this setPos [11765.747, 12745.83, 4.5776367e-005];
};

_vehicle_1755 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_A_Hospital", [11834.379, 12615.928, 0.11925079], [], 0, "CAN_COLLIDE"];
  _vehicle_1755 = _this;
  _this setDir 298.08664;
  _this setPos [11834.379, 12615.928, 0.11925079];
};

_vehicle_1768 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_HouseV2_02_Interier_dam", [11941.244, 12625.724, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1768 = _this;
  _this setDir 195.49277;
  _this setPos [11941.244, 12625.724, 1.5258789e-005];
};

_vehicle_1770 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_HouseV2_04_interier", [11955.394, 12605.104, -0.10629069], [], 0, "CAN_COLLIDE"];
  _vehicle_1770 = _this;
  _this setDir 106.63021;
  _this setPos [11955.394, 12605.104, -0.10629069];
};

_vehicle_1771 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_HouseV_1L2", [11946.477, 12589.247, -0.00025939941], [], 0, "CAN_COLLIDE"];
  _vehicle_1771 = _this;
  _this setDir 15.416292;
  _this setPos [11946.477, 12589.247, -0.00025939941];
};

_vehicle_1772 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_sara_domek_zluty", [11921.931, 12610.069, -0.00024414063], [], 0, "CAN_COLLIDE"];
  _vehicle_1772 = _this;
  _this setDir -67.496033;
  _this setPos [11921.931, 12610.069, -0.00024414063];
};

_vehicle_1773 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_HouseBlock_A1_1", [11905.91, 12662.148, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1773 = _this;
  _this setDir 115.96271;
  _this setPos [11905.91, 12662.148, -3.0517578e-005];
};

_vehicle_1779 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HouseBlock_A1", [11882.106, 12667.561, -0.065349728], [], 0, "CAN_COLLIDE"];
  _vehicle_1779 = _this;
  _this setDir -62.855961;
  _this setPos [11882.106, 12667.561, -0.065349728];
};

_vehicle_1786 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11819.31, 12542.714, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1786 = _this;
  _this setDir 28.802605;
  _this setPos [11819.31, 12542.714, 4.5776367e-005];
};

_vehicle_1790 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11825.106, 12553.434, 0.0061035156], [], 0, "CAN_COLLIDE"];
  _vehicle_1790 = _this;
  _this setDir 28.802605;
  _this setPos [11825.106, 12553.434, 0.0061035156];
};

_vehicle_1794 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11830.978, 12564.295, 0.010757446], [], 0, "CAN_COLLIDE"];
  _vehicle_1794 = _this;
  _this setDir 28.802605;
  _this setPos [11830.978, 12564.295, 0.010757446];
};

_vehicle_1797 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Boogieman", [11887.576, 12658.214], [], 0, "CAN_COLLIDE"];
  _vehicle_1797 = _this;
  _this setDir -20.884602;
  _this setPos [11887.576, 12658.214];
};

_vehicle_1798 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11836.746, 12574.986, -0.12113953], [], 0, "CAN_COLLIDE"];
  _vehicle_1798 = _this;
  _this setDir 28.802605;
  _this setPos [11836.746, 12574.986, -0.12113953];
};

_vehicle_1802 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11842.594, 12585.866, -0.11158752], [], 0, "CAN_COLLIDE"];
  _vehicle_1802 = _this;
  _this setDir 28.802605;
  _this setPos [11842.594, 12585.866, -0.11158752];
};

_vehicle_1806 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11848.474, 12596.647, -0.20635986], [], 0, "CAN_COLLIDE"];
  _vehicle_1806 = _this;
  _this setDir 28.802605;
  _this setPos [11848.474, 12596.647, -0.20635986];
};

_vehicle_1810 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11854.307, 12607.448, -0.20123291], [], 0, "CAN_COLLIDE"];
  _vehicle_1810 = _this;
  _this setDir 28.802605;
  _this setPos [11854.307, 12607.448, -0.20123291];
};

_vehicle_1814 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11860.141, 12618.281, -0.259552], [], 0, "CAN_COLLIDE"];
  _vehicle_1814 = _this;
  _this setDir 28.802605;
  _this setPos [11860.141, 12618.281, -0.259552];
};

_vehicle_1818 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11865.977, 12629.127, -0.3000946], [], 0, "CAN_COLLIDE"];
  _vehicle_1818 = _this;
  _this setDir 28.802605;
  _this setPos [11865.977, 12629.127, -0.3000946];
};

_vehicle_1837 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_kr_t_asf3_asf3", [11880.185, 12654.838], [], 0, "CAN_COLLIDE"];
  _vehicle_1837 = _this;
  _this setDir -60.554821;
  _this setPos [11880.185, 12654.838];
};

_vehicle_1841 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11871.997, 12640.063, -0.31304932], [], 0, "CAN_COLLIDE"];
  _vehicle_1841 = _this;
  _this setDir 28.802605;
  _this setPos [11871.997, 12640.063, -0.31304932];
};

_vehicle_1849 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_30_25", [11870.297, 12665.151, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1849 = _this;
  _this setDir 4.7967706;
  _this setPos [11870.297, 12665.151, -4.5776367e-005];
};

_vehicle_1854 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_60_10", [11875.792, 12657.169, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1854 = _this;
  _this setDir -59.824322;
  _this setPos [11875.792, 12657.169, -3.0517578e-005];
};

_vehicle_1858 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11874.555, 12676.631, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1858 = _this;
  _this setDir 27.599728;
  _this setPos [11874.555, 12676.631, 3.0517578e-005];
};

_vehicle_1860 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11880.079, 12687.588, 0.023345947], [], 0, "CAN_COLLIDE"];
  _vehicle_1860 = _this;
  _this setDir 26.06287;
  _this setPos [11880.079, 12687.588, 0.023345947];
};

_vehicle_1864 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11885.727, 12698.558, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1864 = _this;
  _this setDir 25.301119;
  _this setPos [11885.727, 12698.558, -1.5258789e-005];
};

_vehicle_1866 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11895.828, 12721.196, -0.047164917], [], 0, "CAN_COLLIDE"];
  _vehicle_1866 = _this;
  _this setDir 23.260342;
  _this setPos [11895.828, 12721.196, -0.047164917];
};

_vehicle_1871 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_60_10", [11894.243, 12655.471], [], 0, "CAN_COLLIDE"];
  _vehicle_1871 = _this;
  _this setDir -138.89079;
  _this setPos [11894.243, 12655.471];
};

_vehicle_1873 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_60_10", [11896.044, 12665.271], [], 0, "CAN_COLLIDE"];
  _vehicle_1873 = _this;
  _this setDir -200.15845;
  _this setPos [11896.044, 12665.271];
};

_vehicle_1878 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_kr_t_asf3_asf3", [11893.584, 12715.521], [], 0, "CAN_COLLIDE"];
  _vehicle_1878 = _this;
  _this setDir 24.405634;
  _this setPos [11893.584, 12715.521];
};

_vehicle_1883 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11900.816, 12732.536, -0.26599121], [], 0, "CAN_COLLIDE"];
  _vehicle_1883 = _this;
  _this setDir 23.642862;
  _this setPos [11900.816, 12732.536, -0.26599121];
};

_vehicle_1887 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11887.932, 12718.008, -0.26596069], [], 0, "CAN_COLLIDE"];
  _vehicle_1887 = _this;
  _this setDir -65.951103;
  _this setPos [11887.932, 12718.008, -0.26596069];
};

_vehicle_1893 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_12", [11876.546, 12722.972, -0.28390503], [], 0, "CAN_COLLIDE"];
  _vehicle_1893 = _this;
  _this setDir -65.951103;
  _this setPos [11876.546, 12722.972, -0.28390503];
};

_vehicle_1899 = objNull;
if (true) then
{
  _this = createVehicle ["ZavoraAnim", [11901.651, 12742.739, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1899 = _this;
  _this setDir -160.36075;
  _this setPos [11901.651, 12742.739, 1.5258789e-005];
};

_vehicle_1901 = objNull;
if (true) then
{
  _this = createVehicle ["ZavoraAnim", [11852.573, 12759.746, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1901 = _this;
  _this setDir -162.71327;
  _this setPos [11852.573, 12759.746, 1.5258789e-005];
};

_vehicle_1903 = objNull;
if (true) then
{
  _this = createVehicle ["ZavoraAnim", [11825.649, 12546.229, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1903 = _this;
  _this setDir 30.640642;
  _this setPos [11825.649, 12546.229, 9.1552734e-005];
};

_vehicle_1906 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Hlidac_budka", [11828.385, 12550.446, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1906 = _this;
  _this setDir 300.95187;
  _this setPos [11828.385, 12550.446, -1.5258789e-005];
};

_vehicle_1909 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11823.959, 12564.75], [], 0, "CAN_COLLIDE"];
  _vehicle_1909 = _this;
  _this setDir 89.224655;
  _this setPos [11823.959, 12564.75];
};

_vehicle_1912 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11831.771, 12558.022, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_1912 = _this;
  _this setDir 118.29693;
  _this setPos [11831.771, 12558.022, 0.00010681152];
};

_vehicle_1914 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11836.287, 12556.901, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1914 = _this;
  _this setDir 210.91397;
  _this setPos [11836.287, 12556.901, 1.5258789e-005];
};

_vehicle_1917 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_vez", [11826.555, 12566.692, 0.00022888184], [], 0, "CAN_COLLIDE"];
  _vehicle_1917 = _this;
  _this setDir 225.49513;
  _this setPos [11826.555, 12566.692, 0.00022888184];
};

_vehicle_1920 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_vez", [11781.231, 12779.64, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1920 = _this;
  _this setDir 323.12531;
  _this setPos [11781.231, 12779.64, 3.0517578e-005];
};

_vehicle_1923 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_vez", [11896.805, 12742.511, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1923 = _this;
  _this setDir 378.38812;
  _this setPos [11896.805, 12742.511, 1.5258789e-005];
};

_vehicle_1925 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Gate", [11505.545, 11320.661, -0.14696786], [], 0, "CAN_COLLIDE"];
  _vehicle_1925 = _this;
  _this setDir -235.40431;
  _this setPos [11505.545, 11320.661, -0.14696786];
};

_vehicle_1928 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Bergfrit", [11422.857, 11332.769], [], 0, "CAN_COLLIDE"];
  _vehicle_1928 = _this;
  _this setDir 214.27173;
  _this setPos [11422.857, 11332.769];
};

_vehicle_1929 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Donjon", [11477.589, 11285.115, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_1929 = _this;
  _this setDir 29.806688;
  _this setPos [11477.589, 11285.115, 0.00015258789];
};

_vehicle_1933 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Wall1_20_Turn", [11465.03, 11296.985, 0.40977576], [], 0, "CAN_COLLIDE"];
  _vehicle_1933 = _this;
  _this setDir 217.32486;
  _this setPos [11465.03, 11296.985, 0.40977576];
};

_vehicle_1946 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Wall1_20_Turn", [11514.078, 11364.22, -0.21188064], [], 0, "CAN_COLLIDE"];
  _vehicle_1946 = _this;
  _this setDir 52.474457;
  _this setPos [11514.078, 11364.22, -0.21188064];
};

_vehicle_1949 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Wall1_20", [11435.315, 11344.046, -0.91073126], [], 0, "CAN_COLLIDE"];
  _vehicle_1949 = _this;
  _this setDir -54.600849;
  _this setPos [11435.315, 11344.046, -0.91073126];
};

_vehicle_1952 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Wall1_20", [11458.363, 11377.758, 0.93807805], [], 0, "CAN_COLLIDE"];
  _vehicle_1952 = _this;
  _this setDir -54.854885;
  _this setPos [11458.363, 11377.758, 0.93807805];
};

_vehicle_1955 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Bergfrit", [11464.586, 11392.024, 0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_1955 = _this;
  _this setDir 213.92093;
  _this setPos [11464.586, 11392.024, 0.00018310547];
};

_vehicle_1958 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Wall1_20", [11431.745, 11319.859, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1958 = _this;
  _this setDir -144.81216;
  _this setPos [11431.745, 11319.859, 6.1035156e-005];
};

_vehicle_1961 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Wall1_20", [11480.931, 11389.499, -1.1527779], [], 0, "CAN_COLLIDE"];
  _vehicle_1961 = _this;
  _this setDir 34.865551;
  _this setPos [11480.931, 11389.499, -1.1527779];
};

_vehicle_1964 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Donjon", [11528.796, 11355.594, -0.00036621094], [], 0, "CAN_COLLIDE"];
  _vehicle_1964 = _this;
  _this setDir 38.166817;
  _this setPos [11528.796, 11355.594, -0.00036621094];
};

_vehicle_1967 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Wall1_20", [11487.834, 11292.231, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1967 = _this;
  _this setDir 126.25262;
  _this setPos [11487.834, 11292.231, -3.0517578e-005];
};

_vehicle_1970 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Bergfrit", [11496.231, 11305.718, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1970 = _this;
  _this setDir 33.774841;
  _this setPos [11496.231, 11305.718, 0.00012207031];
};

_vehicle_1973 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Bergfrit", [11515.58, 11333.605, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1973 = _this;
  _this setDir 35.313843;
  _this setPos [11515.58, 11333.605, 9.1552734e-005];
};

_vehicle_1979 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Wall1_20", [11527.178, 11343.805, -0.00036621094], [], 0, "CAN_COLLIDE"];
  _vehicle_1979 = _this;
  _this setDir 129.05325;
  _this setPos [11527.178, 11343.805, -0.00036621094];
};

_vehicle_1981 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11543.696, 11362.453, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1981 = _this;
  _this setDir -44.793457;
  _this setPos [11543.696, 11362.453, -6.1035156e-005];
};

_vehicle_1984 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11556.832, 11364.375, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1984 = _this;
  _this setDir 21.242786;
  _this setPos [11556.832, 11364.375, -6.1035156e-005];
};

_vehicle_1987 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11571.157, 11357.868, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1987 = _this;
  _this setDir 21.242786;
  _this setPos [11571.157, 11357.868, -3.0517578e-005];
};

_vehicle_1989 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11585.544, 11352.187, -0.0002746582], [], 0, "CAN_COLLIDE"];
  _vehicle_1989 = _this;
  _this setDir 21.242786;
  _this setPos [11585.544, 11352.187, -0.0002746582];
};

_vehicle_1991 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11596.945, 11342.48, 0.00073242188], [], 0, "CAN_COLLIDE"];
  _vehicle_1991 = _this;
  _this setDir 56.831329;
  _this setPos [11596.945, 11342.48, 0.00073242188];
};

_vehicle_1994 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11603.714, 11328.701, 0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_1994 = _this;
  _this setDir 67.099815;
  _this setPos [11603.714, 11328.701, 0.00018310547];
};

_vehicle_1997 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11603.313, 11314.295, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_1997 = _this;
  _this setDir 110.48499;
  _this setPos [11603.313, 11314.295, -0.00018310547];
};

_vehicle_2002 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11592.015, 11287.895, 0.00054931641], [], 0, "CAN_COLLIDE"];
  _vehicle_2002 = _this;
  _this setDir 113.36646;
  _this setPos [11592.015, 11287.895, 0.00054931641];
};

_vehicle_2005 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11582.502, 11276.444, 0.00033569336], [], 0, "CAN_COLLIDE"];
  _vehicle_2005 = _this;
  _this setDir 145.60268;
  _this setPos [11582.502, 11276.444, 0.00033569336];
};

_vehicle_2007 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11441.077, 11283.087, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_2007 = _this;
  _this setDir 216.59689;
  _this setPos [11441.077, 11283.087, -0.00018310547];
};

_vehicle_2012 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11449.263, 11249.676, -0.00024414063], [], 0, "CAN_COLLIDE"];
  _vehicle_2012 = _this;
  _this setDir 118.71387;
  _this setPos [11449.263, 11249.676, -0.00024414063];
};

_vehicle_2014 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11441.418, 11235.924, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_2014 = _this;
  _this setDir 120.20665;
  _this setPos [11441.418, 11235.924, 0.00015258789];
};

_vehicle_2016 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11433.534, 11222.101, -0.00057983398], [], 0, "CAN_COLLIDE"];
  _vehicle_2016 = _this;
  _this setDir 120.20665;
  _this setPos [11433.534, 11222.101, -0.00057983398];
};

_vehicle_2018 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11437.218, 11211.127, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_2018 = _this;
  _this setDir 217.4446;
  _this setPos [11437.218, 11211.127, 0.00015258789];
};

_vehicle_2020 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11449.557, 11201.968, 0.0002746582], [], 0, "CAN_COLLIDE"];
  _vehicle_2020 = _this;
  _this setDir 216.38086;
  _this setPos [11449.557, 11201.968, 0.0002746582];
};

_vehicle_2023 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11462.807, 11202.325, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2023 = _this;
  _this setDir 148.36118;
  _this setPos [11462.807, 11202.325, 0.00012207031];
};

_vehicle_2026 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11476.364, 11210.778, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_2026 = _this;
  _this setDir 148.36118;
  _this setPos [11476.364, 11210.778, -0.00018310547];
};

_vehicle_2028 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11489.732, 11219.002, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2028 = _this;
  _this setDir 148.36118;
  _this setPos [11489.732, 11219.002, 6.1035156e-005];
};

_vehicle_2030 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11503.084, 11227.29, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2030 = _this;
  _this setDir 148.36118;
  _this setPos [11503.084, 11227.29, 6.1035156e-005];
};

_vehicle_2032 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11516.453, 11235.426], [], 0, "CAN_COLLIDE"];
  _vehicle_2032 = _this;
  _this setDir 148.36118;
  _this setPos [11516.453, 11235.426];
};

_vehicle_2034 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11529.693, 11243.681, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_2034 = _this;
  _this setDir 148.36118;
  _this setPos [11529.693, 11243.681, -0.00021362305];
};

_vehicle_2036 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11543.169, 11251.839, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2036 = _this;
  _this setDir 148.36118;
  _this setPos [11543.169, 11251.839, -6.1035156e-005];
};

_vehicle_2038 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11556.42, 11260.118, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2038 = _this;
  _this setDir 148.36118;
  _this setPos [11556.42, 11260.118, -6.1035156e-005];
};

_vehicle_2040 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11569.386, 11268.19, -0.00033569336], [], 0, "CAN_COLLIDE"];
  _vehicle_2040 = _this;
  _this setDir 148.36118;
  _this setPos [11569.386, 11268.19, -0.00033569336];
};

_vehicle_2042 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Stairs_A", [11435.504, 11326.645, 0.060998779], [], 0, "CAN_COLLIDE"];
  _vehicle_2042 = _this;
  _this setDir -146.32259;
  _this setPos [11435.504, 11326.645, 0.060998779];
};

_vehicle_2050 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Stairs_A", [11477.342, 11385.425, -0.34662116], [], 0, "CAN_COLLIDE"];
  _vehicle_2050 = _this;
  _this setDir -142.69316;
  _this setPos [11477.342, 11385.425, -0.34662116];
};

_vehicle_2052 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Stairs_A", [11501.663, 11340.114, -0.096318491], [], 0, "CAN_COLLIDE"];
  _vehicle_2052 = _this;
  _this setDir -325.00604;
  _this setPos [11501.663, 11340.114, -0.096318491];
};

_vehicle_2055 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_Castle_Stairs_A", [11483.158, 11312.102, -0.13152319], [], 0, "CAN_COLLIDE"];
  _vehicle_2055 = _this;
  _this setDir -325.62106;
  _this setPos [11483.158, 11312.102, -0.13152319];
};

_vehicle_2058 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11451.712, 11308.659, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2058 = _this;
  _this setDir -2.3718979;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11451.712, 11308.659, -3.0517578e-005];
};

_vehicle_2060 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11500.541, 11327.415], [], 0, "CAN_COLLIDE"];
  _vehicle_2060 = _this;
  _this setDir 297.10449;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11500.541, 11327.415];
};

_vehicle_2063 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11496.243, 11320.813, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2063 = _this;
  _this setDir 297.10449;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11496.243, 11320.813, 6.1035156e-005];
};

_vehicle_2065 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11503.165, 11368.758, -0.00024414063], [], 0, "CAN_COLLIDE"];
  _vehicle_2065 = _this;
  _this setDir 232.73466;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11503.165, 11368.758, -0.00024414063];
};

_vehicle_2067 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11487.788, 11378.845, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_2067 = _this;
  _this setDir 184.51028;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11487.788, 11378.845, -0.00015258789];
};

_vehicle_2070 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11515.706, 11350.775, -0.5220319], [], 0, "CAN_COLLIDE"];
  _vehicle_2070 = _this;
  _this setDir -139.4446;
  _this setPos [11515.706, 11350.775, -0.5220319];
};

_vehicle_2073 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [11454.47, 11320.534], [], 0, "CAN_COLLIDE"];
  _vehicle_2073 = _this;
  _this setDir 36.966984;
  _this setPos [11454.47, 11320.534];
};

_vehicle_2077 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Stoh", [11464.422, 11312.022, 0.54179114], [], 0, "CAN_COLLIDE"];
  _vehicle_2077 = _this;
  _this setDir -58.278759;
  _this setPos [11464.422, 11312.022, 0.54179114];
};

_vehicle_2079 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Stoh", [11485.915, 11316.258, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2079 = _this;
  _this setDir -147.11571;
  _this setPos [11485.915, 11316.258, -9.1552734e-005];
};

_vehicle_2081 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_WellPump", [11502.713, 11331.516], [], 0, "CAN_COLLIDE"];
  _vehicle_2081 = _this;
  _this setPos [11502.713, 11331.516];
};

_vehicle_2084 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [11488.364, 11300.35, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2084 = _this;
  _this setDir 127.34814;
  _this setPos [11488.364, 11300.35, 3.0517578e-005];
};

_vehicle_2087 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [11487.102, 11298.964, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_2087 = _this;
  _this setDir 127.34814;
  _this setPos [11487.102, 11298.964, 0];
};

_vehicle_2089 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [11485.781, 11297.269, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2089 = _this;
  _this setDir 127.34814;
  _this setPos [11485.781, 11297.269, -9.1552734e-005];
};

_vehicle_2091 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [11484.428, 11295.497, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2091 = _this;
  _this setDir 127.34814;
  _this setPos [11484.428, 11295.497, -6.1035156e-005];
};

_vehicle_2093 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [11483.019, 11293.739, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_2093 = _this;
  _this setDir 127.34814;
  _this setPos [11483.019, 11293.739, 0];
};

_vehicle_2095 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [11464.843, 11302.398, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2095 = _this;
  _this setDir 211.22093;
  _this setPos [11464.843, 11302.398, -6.1035156e-005];
};

_vehicle_2098 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [11466.647, 11301.255, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2098 = _this;
  _this setDir 211.22093;
  _this setPos [11466.647, 11301.255, -3.0517578e-005];
};

_vehicle_2100 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [11468.609, 11299.932, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2100 = _this;
  _this setDir 211.22093;
  _this setPos [11468.609, 11299.932, -6.1035156e-005];
};

_vehicle_2102 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [11470.683, 11298.766], [], 0, "CAN_COLLIDE"];
  _vehicle_2102 = _this;
  _this setDir 211.22093;
  _this setPos [11470.683, 11298.766];
};

_vehicle_2104 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [11472.932, 11297.406, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2104 = _this;
  _this setDir 211.22093;
  _this setPos [11472.932, 11297.406, 3.0517578e-005];
};

_vehicle_2106 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_KBud", [11475.224, 11295.966, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_2106 = _this;
  _this setDir 211.22093;
  _this setPos [11475.224, 11295.966, -0.00018310547];
};

_vehicle_2108 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Hutch", [11478.832, 11294.547, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2108 = _this;
  _this setDir 206.97301;
  _this setPos [11478.832, 11294.547, -3.0517578e-005];
};

_vehicle_2111 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_campfire", [11476.634, 11306.276, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2111 = _this;
  _this setPos [11476.634, 11306.276, 3.0517578e-005];
};

_vehicle_2113 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Well", [11479.058, 11314.638], [], 0, "CAN_COLLIDE"];
  _vehicle_2113 = _this;
  _this setPos [11479.058, 11314.638];
};

_vehicle_2114 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_pumpa", [11436.62, 11322.85, 0.2375547], [], 0, "CAN_COLLIDE"];
  _vehicle_2114 = _this;
  _this setDir 0.096310884;
  _this setPos [11436.62, 11322.85, 0.2375547];
};

_vehicle_2115 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_stanek_3", [11469.903, 11311.497, 0.021150559], [], 0, "CAN_COLLIDE"];
  _vehicle_2115 = _this;
  _this setDir 211.55675;
  _this setPos [11469.903, 11311.497, 0.021150559];
};

_vehicle_2134 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_bouda2_vnitrek", [11439.021, 11337.543, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2134 = _this;
  _this setDir 31.563873;
  _this setPos [11439.021, 11337.543, 9.1552734e-005];
};

_vehicle_2136 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_bouda2_vnitrek", [11442.71, 11343.713], [], 0, "CAN_COLLIDE"];
  _vehicle_2136 = _this;
  _this setDir 32.580196;
  _this setPos [11442.71, 11343.713];
};

_vehicle_2140 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_deutshe_mini", [11465.704, 11370.019, 0.010994567], [], 0, "CAN_COLLIDE"];
  _vehicle_2140 = _this;
  _this setDir -54.832069;
  _this setPos [11465.704, 11370.019, 0.010994567];
};

_vehicle_2142 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_deutshe_mini", [11480.408, 11372.664, 0.10519373], [], 0, "CAN_COLLIDE"];
  _vehicle_2142 = _this;
  _this setDir 38.281898;
  _this setPos [11480.408, 11372.664, 0.10519373];
};

_vehicle_2146 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Hlidac_budka", [11410.618, 11379.497, -0.082029328], [], 0, "CAN_COLLIDE"];
  _vehicle_2146 = _this;
  _this setDir 34.907413;
  _this setPos [11410.618, 11379.497, -0.082029328];
};

_vehicle_2147 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_IlluminantTower", [11398.169, 11361.503], [], 0, "CAN_COLLIDE"];
  _vehicle_2147 = _this;
  _this setDir 124.08379;
  _this setPos [11398.169, 11361.503];
};

_vehicle_2150 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Mil_Guardhouse", [11425.223, 11347.026, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2150 = _this;
  _this setDir 36.926056;
  _this setPos [11425.223, 11347.026, 3.0517578e-005];
};

_vehicle_2152 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11401.322, 11368.312, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2152 = _this;
  _this setDir -55.408558;
  _this setPos [11401.322, 11368.312, 3.0517578e-005];
};

_vehicle_2157 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_MASH", [11478.028, 11355.844, 0.050317571], [], 0, "CAN_COLLIDE"];
  _vehicle_2157 = _this;
  _this setDir -144.71437;
  _this setPos [11478.028, 11355.844, 0.050317571];
};

_vehicle_2159 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_MASH", [11483.174, 11352.271, 0.050470155], [], 0, "CAN_COLLIDE"];
  _vehicle_2159 = _this;
  _this setDir -144.71437;
  _this setPos [11483.174, 11352.271, 0.050470155];
};

_vehicle_2161 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_MASH", [11487.755, 11348.736, 0.050439637], [], 0, "CAN_COLLIDE"];
  _vehicle_2161 = _this;
  _this setDir -144.71437;
  _this setPos [11487.755, 11348.736, 0.050439637];
};

_vehicle_2163 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_MASH", [11493.106, 11344.904, 0.050470155], [], 0, "CAN_COLLIDE"];
  _vehicle_2163 = _this;
  _this setDir -144.71437;
  _this setPos [11493.106, 11344.904, 0.050470155];
};

_vehicle_2166 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Stan", [11481.682, 11359.68, 0.050439637], [], 0, "CAN_COLLIDE"];
  _vehicle_2166 = _this;
  _this setDir 36.68084;
  _this setPos [11481.682, 11359.68, 0.050439637];
};

_vehicle_2168 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Stan", [11491.02, 11352.782, 0.050561707], [], 0, "CAN_COLLIDE"];
  _vehicle_2168 = _this;
  _this setDir 36.454399;
  _this setPos [11491.02, 11352.782, 0.050561707];
};

_vehicle_2171 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeeth", [11432.725, 11365.311], [], 0, "CAN_COLLIDE"];
  _vehicle_2171 = _this;
  _this setDir 33.304764;
  _this setPos [11432.725, 11365.311];
};

_vehicle_2184 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_statue01", [11470.285, 11345.048, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2184 = _this;
  _this setDir -146.99806;
  _this setPos [11470.285, 11345.048, 3.0517578e-005];
};

_vehicle_2187 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11453.917, 11361.085], [], 0, "CAN_COLLIDE"];
  _vehicle_2187 = _this;
  _this setDir 31.394398;
  _this setPos [11453.917, 11361.085];
};

_vehicle_2190 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11457.664, 11358.68, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2190 = _this;
  _this setDir 31.394398;
  _this setPos [11457.664, 11358.68, -6.1035156e-005];
};

_vehicle_2192 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11461.126, 11356.487, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2192 = _this;
  _this setDir 31.394398;
  _this setPos [11461.126, 11356.487, -3.0517578e-005];
};

_vehicle_2194 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11464.266, 11354.408, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2194 = _this;
  _this setDir 31.394398;
  _this setPos [11464.266, 11354.408, 3.0517578e-005];
};

_vehicle_2200 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11489.548, 11337.121, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2200 = _this;
  _this setDir 31.670145;
  _this setPos [11489.548, 11337.121, 6.1035156e-005];
};

_vehicle_2201 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11486.42, 11339.23, 0.0026855469], [], 0, "CAN_COLLIDE"];
  _vehicle_2201 = _this;
  _this setDir 31.670145;
  _this setPos [11486.42, 11339.23, 0.0026855469];
};

_vehicle_2202 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11482.965, 11341.429, 0.002746582], [], 0, "CAN_COLLIDE"];
  _vehicle_2202 = _this;
  _this setDir 31.670145;
  _this setPos [11482.965, 11341.429, 0.002746582];
};

_vehicle_2203 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11479.228, 11343.849, 0.0020751953], [], 0, "CAN_COLLIDE"];
  _vehicle_2203 = _this;
  _this setDir 31.670145;
  _this setPos [11479.228, 11343.849, 0.0020751953];
};

_vehicle_2208 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11500.089, 11330.322], [], 0, "CAN_COLLIDE"];
  _vehicle_2208 = _this;
  _this setDir 31.394398;
  _this setPos [11500.089, 11330.322];
};

_vehicle_2209 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11496.946, 11332.404, 0.00094604492], [], 0, "CAN_COLLIDE"];
  _vehicle_2209 = _this;
  _this setDir 31.394398;
  _this setPos [11496.946, 11332.404, 0.00094604492];
};

_vehicle_2210 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11493.483, 11334.592, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2210 = _this;
  _this setDir 31.394398;
  _this setPos [11493.483, 11334.592, 3.0517578e-005];
};

_vehicle_2217 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11468.337, 11351.977, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2217 = _this;
  _this setDir 31.394398;
  _this setPos [11468.337, 11351.977, -3.0517578e-005];
};

_vehicle_2220 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11474.413, 11319, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2220 = _this;
  _this setDir -6.5363855;
  _this setPos [11474.413, 11319, 3.0517578e-005];
};

_vehicle_2226 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11481.962, 11292.91, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2226 = _this;
  _this setDir 326.94351;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11481.962, 11292.91, -6.1035156e-005];
};

_vehicle_2228 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11467.186, 11381.185, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2228 = _this;
  _this setDir 147.96739;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11467.186, 11381.185, -9.1552734e-005];
};

_vehicle_2230 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11433.003, 11335.061, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_2230 = _this;
  _this setDir 494.85526;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11433.003, 11335.061, -0.00015258789];
};

_vehicle_2232 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11439.752, 11370.45, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2232 = _this;
  _this setDir 295.81778;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11439.752, 11370.45, -6.1035156e-005];
};

_vehicle_2234 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11435.269, 11363.705, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2234 = _this;
  _this setDir 297.10449;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11435.269, 11363.705, 9.1552734e-005];
};

_vehicle_2236 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11404.25, 11393.63, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2236 = _this;
  _this setDir 212.6264;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11404.25, 11393.63, -9.1552734e-005];
};

_vehicle_2238 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_statue02", [11422.323, 11388.137, 0.66674143], [], 0, "CAN_COLLIDE"];
  _vehicle_2238 = _this;
  _this setDir 211.25156;
  _this setPos [11422.323, 11388.137, 0.66674143];
};

_vehicle_2241 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_TankSmall2", [11416.625, 11326.692, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2241 = _this;
  _this setDir 31.582964;
  _this setPos [11416.625, 11326.692, -9.1552734e-005];
};

_vehicle_2244 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_WaterStation", [11435.645, 11312.713, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2244 = _this;
  _this setDir -145.98929;
  _this setPos [11435.645, 11312.713, 3.0517578e-005];
};

_vehicle_2250 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BigHBarrier", [11401.938, 11375.954, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2250 = _this;
  _this setDir -55.45892;
  _this setPos [11401.938, 11375.954, 3.0517578e-005];
};

_vehicle_2252 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_fort_bagfence_round", [11405.718, 11383.147], [], 0, "CAN_COLLIDE"];
  _vehicle_2252 = _this;
  _this setDir -27.948452;
  _this setPos [11405.718, 11383.147];
};

_vehicle_2255 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_fortified_nest_small", [11430.23, 11362.837, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2255 = _this;
  _this setDir -148.07434;
  _this setPos [11430.23, 11362.837, -6.1035156e-005];
};

_vehicle_2256 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_fortified_nest_big", [11390.602, 11341.427, 0.68681371], [], 0, "CAN_COLLIDE"];
  _vehicle_2256 = _this;
  _this setDir 36.050877;
  _this setPos [11390.602, 11341.427, 0.68681371];
};

_vehicle_2258 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_GuardShed", [11406.563, 11342.876, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2258 = _this;
  _this setDir -55.119476;
  _this setPos [11406.563, 11342.876, -6.1035156e-005];
};

_vehicle_2259 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11413.023, 11386.415, 0.22988279], [], 0, "CAN_COLLIDE"];
  _vehicle_2259 = _this;
  _this setDir 34.038662;
  _this setPos [11413.023, 11386.415, 0.22988279];
};

_vehicle_2260 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5_round15", [11410.011, 11393.026, -0.075741], [], 0, "CAN_COLLIDE"];
  _vehicle_2260 = _this;
  _this setDir 81.398842;
  _this setPos [11410.011, 11393.026, -0.075741];
};

_vehicle_2265 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_tent_east", [11511.84, 11304.164, 0.39954802], [], 0, "CAN_COLLIDE"];
  _vehicle_2265 = _this;
  _this setDir 125.72757;
  _this setPos [11511.84, 11304.164, 0.39954802];
};

_vehicle_2268 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier1", [11439.605, 11368.781, 0.10567138], [], 0, "CAN_COLLIDE"];
  _vehicle_2268 = _this;
  _this setDir 35.466499;
  _this setPos [11439.605, 11368.781, 0.10567138];
};

_vehicle_2270 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier1", [11438.293, 11369.586, 0.052510772], [], 0, "CAN_COLLIDE"];
  _vehicle_2270 = _this;
  _this setDir 38.499619;
  _this setPos [11438.293, 11369.586, 0.052510772];
};

_vehicle_2272 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier1", [11437.063, 11370.373, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2272 = _this;
  _this setDir 38.566025;
  _this setPos [11437.063, 11370.373, -3.0517578e-005];
};

_vehicle_2274 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier1", [11435.965, 11371.127, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2274 = _this;
  _this setDir 37.977707;
  _this setPos [11435.965, 11371.127, 3.0517578e-005];
};

_vehicle_2276 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11428.149, 11376.394, 0.2154199], [], 0, "CAN_COLLIDE"];
  _vehicle_2276 = _this;
  _this setDir 35.635464;
  _this setPos [11428.149, 11376.394, 0.2154199];
};

_vehicle_2277 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier3", [11433.042, 11373.113, 0.086514167], [], 0, "CAN_COLLIDE"];
  _vehicle_2277 = _this;
  _this setDir 35.31068;
  _this setPos [11433.042, 11373.113, 0.086514167];
};

_vehicle_2279 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeeth", [11425.631, 11370.08, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2279 = _this;
  _this setDir 35.186047;
  _this setPos [11425.631, 11370.08, 3.0517578e-005];
};

_vehicle_2282 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11423.505, 11379.865, 0.15896481], [], 0, "CAN_COLLIDE"];
  _vehicle_2282 = _this;
  _this setDir 36.585064;
  _this setPos [11423.505, 11379.865, 0.15896481];
};

_vehicle_2285 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11418.389, 11383.153, 0.14085694], [], 0, "CAN_COLLIDE"];
  _vehicle_2285 = _this;
  _this setDir 32.550106;
  _this setPos [11418.389, 11383.153, 0.14085694];
};

_vehicle_2288 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeeth", [11418.149, 11375.354, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2288 = _this;
  _this setDir 35.186047;
  _this setPos [11418.149, 11375.354, 6.1035156e-005];
};

_vehicle_2291 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_fortified_nest_small", [11423.371, 11367.018], [], 0, "CAN_COLLIDE"];
  _vehicle_2291 = _this;
  _this setDir -148.07434;
  _this setPos [11423.371, 11367.018];
};

_vehicle_2293 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_fortified_nest_small", [11416.982, 11371.073, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2293 = _this;
  _this setDir -148.07434;
  _this setPos [11416.982, 11371.073, -3.0517578e-005];
};

_vehicle_2296 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BigHBarrier", [11397.254, 11368.504, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2296 = _this;
  _this setDir -55.45892;
  _this setPos [11397.254, 11368.504, -3.0517578e-005];
};

_vehicle_2298 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BigHBarrier", [11392.428, 11361.025, -0.1365449], [], 0, "CAN_COLLIDE"];
  _vehicle_2298 = _this;
  _this setDir -57.966946;
  _this setPos [11392.428, 11361.025, -0.1365449];
};

_vehicle_2300 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BigHBarrier", [11390.263, 11352.849, -0.019983329], [], 0, "CAN_COLLIDE"];
  _vehicle_2300 = _this;
  _this setDir -88.163071;
  _this setPos [11390.263, 11352.849, -0.019983329];
};

_vehicle_2303 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11393.723, 11354.447, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2303 = _this;
  _this setDir -75.628304;
  _this setPos [11393.723, 11354.447, 3.0517578e-005];
};

_vehicle_2309 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BigHBarrier", [11413.081, 11335.346, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2309 = _this;
  _this setDir 33.364468;
  _this setPos [11413.081, 11335.346, 9.1552734e-005];
};

_vehicle_2313 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BigHBarrier", [11402.541, 11342.31, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2313 = _this;
  _this setDir 37.989735;
  _this setPos [11402.541, 11342.31, -6.1035156e-005];
};

_vehicle_2316 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11408.316, 11329.906, -0.072097152], [], 0, "CAN_COLLIDE"];
  _vehicle_2316 = _this;
  _this setDir 36.865345;
  _this setPos [11408.316, 11329.906, -0.072097152];
};

_vehicle_2319 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11399.145, 11383.607, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2319 = _this;
  _this setDir -57.129501;
  _this setPos [11399.145, 11383.607, -3.0517578e-005];
};

_vehicle_2323 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11396.216, 11385.741, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2323 = _this;
  _this setDir -57.129501;
  _this setPos [11396.216, 11385.741, -3.0517578e-005];
};

_vehicle_2325 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11389.847, 11389.951, 0.26923001], [], 0, "CAN_COLLIDE"];
  _vehicle_2325 = _this;
  _this setDir -57.129501;
  _this setPos [11389.847, 11389.951, 0.26923001];
};

_vehicle_2327 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11386.602, 11392.148, -0.09025757], [], 0, "CAN_COLLIDE"];
  _vehicle_2327 = _this;
  _this setDir -57.129501;
  _this setPos [11386.602, 11392.148, -0.09025757];
};

_vehicle_2329 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11392.943, 11387.934, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2329 = _this;
  _this setDir -57.129501;
  _this setPos [11392.943, 11387.934, -6.1035156e-005];
};

_vehicle_2338 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11407.774, 11395.938, -0.12669645], [], 0, "CAN_COLLIDE"];
  _vehicle_2338 = _this;
  _this setDir -57.895878;
  _this setPos [11407.774, 11395.938, -0.12669645];
};

_vehicle_2339 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11404.414, 11398.468, -0.10460887], [], 0, "CAN_COLLIDE"];
  _vehicle_2339 = _this;
  _this setDir -57.895878;
  _this setPos [11404.414, 11398.468, -0.10460887];
};

_vehicle_2340 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11397.444, 11403.185, -0.024179183], [], 0, "CAN_COLLIDE"];
  _vehicle_2340 = _this;
  _this setDir -57.895878;
  _this setPos [11397.444, 11403.185, -0.024179183];
};

_vehicle_2341 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11394.305, 11405.66, 0.050764292], [], 0, "CAN_COLLIDE"];
  _vehicle_2341 = _this;
  _this setDir -57.895878;
  _this setPos [11394.305, 11405.66, 0.050764292];
};

_vehicle_2342 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11400.889, 11400.863, -0.09952943], [], 0, "CAN_COLLIDE"];
  _vehicle_2342 = _this;
  _this setDir -57.895878;
  _this setPos [11400.889, 11400.863, -0.09952943];
};

_vehicle_2348 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11383.069, 11394.58, -0.098600768], [], 0, "CAN_COLLIDE"];
  _vehicle_2348 = _this;
  _this setDir -57.129501;
  _this setPos [11383.069, 11394.58, -0.098600768];
};

_vehicle_2349 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11379.785, 11396.783, 0.10022267], [], 0, "CAN_COLLIDE"];
  _vehicle_2349 = _this;
  _this setDir -57.129501;
  _this setPos [11379.785, 11396.783, 0.10022267];
};

_vehicle_2350 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11373.415, 11400.991, 0.00081539282], [], 0, "CAN_COLLIDE"];
  _vehicle_2350 = _this;
  _this setDir -57.129501;
  _this setPos [11373.415, 11400.991, 0.00081539282];
};

_vehicle_2351 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11370.171, 11403.19, 0.076097064], [], 0, "CAN_COLLIDE"];
  _vehicle_2351 = _this;
  _this setDir -57.129501;
  _this setPos [11370.171, 11403.19, 0.076097064];
};

_vehicle_2352 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11376.515, 11398.973, 0.063076206], [], 0, "CAN_COLLIDE"];
  _vehicle_2352 = _this;
  _this setDir -57.129501;
  _this setPos [11376.515, 11398.973, 0.063076206];
};

_vehicle_2358 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11391.021, 11407.861, 0.11436485], [], 0, "CAN_COLLIDE"];
  _vehicle_2358 = _this;
  _this setDir -57.129501;
  _this setPos [11391.021, 11407.861, 0.11436485];
};

_vehicle_2359 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11387.609, 11409.633, 0.20698206], [], 0, "CAN_COLLIDE"];
  _vehicle_2359 = _this;
  _this setDir -57.129501;
  _this setPos [11387.609, 11409.633, 0.20698206];
};

_vehicle_2360 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11380.846, 11414.006, 0.090833023], [], 0, "CAN_COLLIDE"];
  _vehicle_2360 = _this;
  _this setDir -57.129501;
  _this setPos [11380.846, 11414.006, 0.090833023];
};

_vehicle_2361 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11377.356, 11416.475, 0.031006519], [], 0, "CAN_COLLIDE"];
  _vehicle_2361 = _this;
  _this setDir -57.129501;
  _this setPos [11377.356, 11416.475, 0.031006519];
};

_vehicle_2362 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11384.358, 11411.904, 0.11484534], [], 0, "CAN_COLLIDE"];
  _vehicle_2362 = _this;
  _this setDir -57.129501;
  _this setPos [11384.358, 11411.904, 0.11484534];
};

_vehicle_2370 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_76n6_ClamShell_Lower", [11409.139, 11353.41, -0.12907717], [], 0, "CAN_COLLIDE"];
  _vehicle_2370 = _this;
  _this setDir -327.41052;
  _this setPos [11409.139, 11353.41, -0.12907717];
};

_vehicle_2383 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_plot_green_vrat_o", [11425.515, 11374.515, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2383 = _this;
  _this setDir -51.740097;
  _this setPos [11425.515, 11374.515, -0.00012207031];
};

_vehicle_2387 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_plot_vinice", [11368.078, 11404.186, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2387 = _this;
  _this setDir -58.322731;
  _this setPos [11368.078, 11404.186, 3.0517578e-005];
};

_vehicle_2389 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_plot_vinice", [11375.817, 11417.52, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2389 = _this;
  _this setDir -58.322731;
  _this setPos [11375.817, 11417.52, -9.1552734e-005];
};

_vehicle_2394 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Ind1_L", [11413.766, 11384.593, 0.065391555], [], 0, "CAN_COLLIDE"];
  _vehicle_2394 = _this;
  _this setDir -55.521072;
  _this setPos [11413.766, 11384.593, 0.065391555];
};

_vehicle_2398 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Kolchoz", [11374.349, 11409.528, 0.64291579], [], 0, "CAN_COLLIDE"];
  _vehicle_2398 = _this;
  _this setDir 124.00643;
  _this setPos [11374.349, 11409.528, 0.64291579];
};

_vehicle_2402 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [11369.263, 11408.304], [], 0, "CAN_COLLIDE"];
  _vehicle_2402 = _this;
  _this setPos [11369.263, 11408.304];
};

_vehicle_2404 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [11373.201, 11414.152, -0.016704995], [], 0, "CAN_COLLIDE"];
  _vehicle_2404 = _this;
  _this setDir -122.36862;
  _this setPos [11373.201, 11414.152, -0.016704995];
};

_vehicle_2415 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Gate_IndVar2_5", [11374.467, 11409.308, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2415 = _this;
  _this setDir 124.57077;
  _this setPos [11374.467, 11409.308, 3.0517578e-005];
};

_vehicle_2432 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndVar1_Pole", [11372.737, 11406.94, 0.84211212], [], 0, "CAN_COLLIDE"];
  _vehicle_2432 = _this;
  _this setDir 38.838799;
  _this setPos [11372.737, 11406.94, 0.84211212];
};

_vehicle_2434 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndVar1_Pole", [11376.145, 11411.683, 0.72968245], [], 0, "CAN_COLLIDE"];
  _vehicle_2434 = _this;
  _this setDir 35.881672;
  _this setPos [11376.145, 11411.683, 0.72968245];
};

_vehicle_2439 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11434.398, 11362.41], [], 0, "CAN_COLLIDE"];
  _vehicle_2439 = _this;
  _this setDir 34.192329;
  _this setPos [11434.398, 11362.41];
};

_vehicle_2442 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11432.199, 11363.918, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_2442 = _this;
  _this setDir 34.192329;
  _this setPos [11432.199, 11363.918, 0.00015258789];
};

_vehicle_2446 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11427.69, 11366.972, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_2446 = _this;
  _this setDir 34.192329;
  _this setPos [11427.69, 11366.972, -0.00015258789];
};

_vehicle_2447 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11429.89, 11365.465, -0.023376465], [], 0, "CAN_COLLIDE"];
  _vehicle_2447 = _this;
  _this setDir 34.192329;
  _this setPos [11429.89, 11365.465, -0.023376465];
};

_vehicle_2450 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11423.282, 11370.029, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2450 = _this;
  _this setDir 34.192329;
  _this setPos [11423.282, 11370.029, -6.1035156e-005];
};

_vehicle_2451 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11425.481, 11368.521, -0.061401367], [], 0, "CAN_COLLIDE"];
  _vehicle_2451 = _this;
  _this setDir 34.192329;
  _this setPos [11425.481, 11368.521, -0.061401367];
};

_vehicle_2454 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11418.706, 11373.182, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2454 = _this;
  _this setDir 34.192329;
  _this setPos [11418.706, 11373.182, -3.0517578e-005];
};

_vehicle_2455 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11420.906, 11371.674, 0.11129761], [], 0, "CAN_COLLIDE"];
  _vehicle_2455 = _this;
  _this setDir 34.192329;
  _this setPos [11420.906, 11371.674, 0.11129761];
};

_vehicle_2458 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11414.179, 11376.28, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2458 = _this;
  _this setDir 34.192329;
  _this setPos [11414.179, 11376.28, 0.00012207031];
};

_vehicle_2459 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11416.375, 11374.772, 0.11364746], [], 0, "CAN_COLLIDE"];
  _vehicle_2459 = _this;
  _this setDir 34.192329;
  _this setPos [11416.375, 11374.772, 0.11364746];
};

_vehicle_2463 = objNull;
if (true) then
{
  _this = createVehicle ["ZavoraAnim", [11408.013, 11382.052, 0.32181543], [], 0, "CAN_COLLIDE"];
  _vehicle_2463 = _this;
  _this setDir -234.83139;
  _this setPos [11408.013, 11382.052, 0.32181543];
};

_vehicle_2466 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [11402.288, 11381.984, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2466 = _this;
  _this setDir -57.129501;
  _this setPos [11402.288, 11381.984, 3.0517578e-005];
};

_vehicle_2469 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11407.051, 11384.127, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2469 = _this;
  _this setDir 20.801275;
  _this setPos [11407.051, 11384.127, 6.1035156e-005];
};

_vehicle_2471 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11407.933, 11390.923, 0.034746435], [], 0, "CAN_COLLIDE"];
  _vehicle_2471 = _this;
  _this setDir 37.642124;
  _this setPos [11407.933, 11390.923, 0.034746435];
};

_vehicle_2473 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11411.35, 11386.909, -0.038962189], [], 0, "CAN_COLLIDE"];
  _vehicle_2473 = _this;
  _this setDir 44.330608;
  _this setPos [11411.35, 11386.909, -0.038962189];
};

_vehicle_2475 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11404.168, 11337.688, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2475 = _this;
  _this setDir -51.980492;
  _this setPos [11404.168, 11337.688, -9.1552734e-005];
};

_vehicle_2477 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11407.535, 11335.231, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2477 = _this;
  _this setDir -51.861088;
  _this setPos [11407.535, 11335.231, -6.1035156e-005];
};

_vehicle_2479 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11405.905, 11333.163, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_2479 = _this;
  _this setDir -51.566307;
  _this setPos [11405.905, 11333.163, -0.00021362305];
};

_vehicle_2482 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11402.574, 11335.652, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_2482 = _this;
  _this setDir -51.980492;
  _this setPos [11402.574, 11335.652, -0.00018310547];
};

_vehicle_2485 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11389.889, 11338.145, -0.0002746582], [], 0, "CAN_COLLIDE"];
  _vehicle_2485 = _this;
  _this setDir 38.201557;
  _this setPos [11389.889, 11338.145, -0.0002746582];
};

_vehicle_2487 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11385.074, 11341.665, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2487 = _this;
  _this setDir 36.585064;
  _this setPos [11385.074, 11341.665, 3.0517578e-005];
};

_vehicle_2489 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11388.201, 11346.538, -0.85994542], [], 0, "CAN_COLLIDE"];
  _vehicle_2489 = _this;
  _this setDir 125.41142;
  _this setPos [11388.201, 11346.538, -0.85994542];
};

_vehicle_2491 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11397.142, 11339.873, -0.77766991], [], 0, "CAN_COLLIDE"];
  _vehicle_2491 = _this;
  _this setDir 126.78169;
  _this setPos [11397.142, 11339.873, -0.77766991];
};

_vehicle_2493 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11401.32, 11335.743], [], 0, "CAN_COLLIDE"];
  _vehicle_2493 = _this;
  _this setDir -53.362957;
  _this setPos [11401.32, 11335.743];
};

_vehicle_2495 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [11406.395, 11332.006, -0.00042724609], [], 0, "CAN_COLLIDE"];
  _vehicle_2495 = _this;
  _this setDir -51.423878;
  _this setPos [11406.395, 11332.006, -0.00042724609];
};

_vehicle_2498 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11398.991, 11337.372], [], 0, "CAN_COLLIDE"];
  _vehicle_2498 = _this;
  _this setDir 34.933071;
  _this setPos [11398.991, 11337.372];
};

_vehicle_2502 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11406.439, 11382.468], [], 0, "CAN_COLLIDE"];
  _vehicle_2502 = _this;
  _this setDir 352.68616;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11406.439, 11382.468];
};

_vehicle_2504 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11397.124, 11398.527, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2504 = _this;
  _this setDir 218.55365;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11397.124, 11398.527, -0.00012207031];
};

_vehicle_2507 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11387.078, 11405.372], [], 0, "CAN_COLLIDE"];
  _vehicle_2507 = _this;
  _this setDir 218.55365;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11387.078, 11405.372];
};

_vehicle_2509 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11380.475, 11409.73, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2509 = _this;
  _this setDir 218.55365;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11380.475, 11409.73, -9.1552734e-005];
};

_vehicle_2511 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11428.619, 11377.583, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2511 = _this;
  _this setDir 218.55365;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11428.619, 11377.583, -9.1552734e-005];
};

_vehicle_2513 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11420.937, 11382.665, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2513 = _this;
  _this setDir 218.55365;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11420.937, 11382.665, 6.1035156e-005];
};

_vehicle_2515 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11412.739, 11387.705], [], 0, "CAN_COLLIDE"];
  _vehicle_2515 = _this;
  _this setDir 218.55365;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11412.739, 11387.705];
};

_vehicle_2518 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11399.896, 11388.553, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2518 = _this;
  _this setDir 398.43439;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11399.896, 11388.553, 3.0517578e-005];
};

_vehicle_2521 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11391.784, 11393.292, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2521 = _this;
  _this setDir 398.43439;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11391.784, 11393.292, -9.1552734e-005];
};

_vehicle_2523 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11381.858, 11400.051, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2523 = _this;
  _this setDir 398.43439;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11381.858, 11400.051, 3.0517578e-005];
};

_vehicle_2525 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11375.42, 11404.19, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2525 = _this;
  _this setDir 388.01456;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11375.42, 11404.19, 6.1035156e-005];
};

_vehicle_2527 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11404.354, 11337.992, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2527 = _this;
  _this setDir 499.28552;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11404.354, 11337.992, 3.0517578e-005];
};

_vehicle_2529 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11418.535, 11346.838], [], 0, "CAN_COLLIDE"];
  _vehicle_2529 = _this;
  _this setDir 303.15881;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11418.535, 11346.838];
};

_vehicle_2531 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11427.034, 11366.876, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2531 = _this;
  _this setDir 398.43439;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11427.034, 11366.876, 9.1552734e-005];
};

_vehicle_2533 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11420.896, 11370.902, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2533 = _this;
  _this setDir 398.43439;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11420.896, 11370.902, 3.0517578e-005];
};

_vehicle_2537 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11414.659, 11375.245, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2537 = _this;
  _this setDir 398.43439;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11414.659, 11375.245, 3.0517578e-005];
};

_vehicle_2539 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11393.259, 11360.17, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2539 = _this;
  _this setDir 294.93298;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11393.259, 11360.17, 6.1035156e-005];
};

_vehicle_2542 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11398.299, 11367.647, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2542 = _this;
  _this setDir 294.93298;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11398.299, 11367.647, 6.1035156e-005];
};

_vehicle_2544 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11392.102, 11350.631, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2544 = _this;
  _this setDir 268.92078;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11392.102, 11350.631, -0.00012207031];
};

_vehicle_2546 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11413.951, 11336.177, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2546 = _this;
  _this setDir 218.66957;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11413.951, 11336.177, 3.0517578e-005];
};

_vehicle_2548 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11398.485, 11344.776, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2548 = _this;
  _this setDir 187.89502;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11398.485, 11344.776, 6.1035156e-005];
};

_vehicle_2552 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Hlidac_budka", [11448.27, 11352.424, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2552 = _this;
  _this setDir 32.429577;
  _this setPos [11448.27, 11352.424, -3.0517578e-005];
};

_vehicle_2553 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Ind1_L", [11450.038, 11360.281, 0.15990689], [], 0, "CAN_COLLIDE"];
  _vehicle_2553 = _this;
  _this setDir -56.445934;
  _this setPos [11450.038, 11360.281, 0.15990689];
};

_vehicle_2557 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier1", [11450.803, 11360.866, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2557 = _this;
  _this setDir 35.466499;
  _this setPos [11450.803, 11360.866, 3.0517578e-005];
};

_vehicle_2563 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier1", [11447.325, 11356.128, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2563 = _this;
  _this setDir 35.466499;
  _this setPos [11447.325, 11356.128, 3.0517578e-005];
};

_vehicle_2566 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11449.145, 11355.14, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2566 = _this;
  _this setDir 44.85487;
  _this setPos [11449.145, 11355.14, 3.0517578e-005];
};

_vehicle_2568 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11451.069, 11353.157, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2568 = _this;
  _this setDir 46.684566;
  _this setPos [11451.069, 11353.157, 3.0517578e-005];
};

_vehicle_2571 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_campfire", [11471.609, 11364.859, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_2571 = _this;
  _this setPos [11471.609, 11364.859, 0];
};

_vehicle_2577 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Ind1_L", [11401.727, 11334.556, 0.029002683], [], 0, "CAN_COLLIDE"];
  _vehicle_2577 = _this;
  _this setDir -142.14969;
  _this setPos [11401.727, 11334.556, 0.029002683];
};

_vehicle_2580 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Ind1_L", [11405.369, 11339.003, -0.1001621], [], 0, "CAN_COLLIDE"];
  _vehicle_2580 = _this;
  _this setDir -140.9473;
  _this setPos [11405.369, 11339.003, -0.1001621];
};

_vehicle_2583 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11411.18, 11327.738, -0.17083366], [], 0, "CAN_COLLIDE"];
  _vehicle_2583 = _this;
  _this setDir 36.865345;
  _this setPos [11411.18, 11327.738, -0.17083366];
};

_vehicle_2586 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Hlidac_budka", [11590.501, 11295.309, 0.46401042], [], 0, "CAN_COLLIDE"];
  _vehicle_2586 = _this;
  _this setDir 23.629942;
  _this setPos [11590.501, 11295.309, 0.46401042];
};

_vehicle_2598 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BigHBarrier", [11599.338, 11302.669, -0.53640956], [], 0, "CAN_COLLIDE"];
  _vehicle_2598 = _this;
  _this setDir -62.456257;
  _this setPos [11599.338, 11302.669, -0.53640956];
};

_vehicle_2599 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_GuardShed", [11591.387, 11303.417, 0.25180054], [], 0, "CAN_COLLIDE"];
  _vehicle_2599 = _this;
  _this setDir 21.415419;
  _this setPos [11591.387, 11303.417, 0.25180054];
};

_vehicle_2600 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Ind1_L", [11597.329, 11298.691, 0.57301956], [], 0, "CAN_COLLIDE"];
  _vehicle_2600 = _this;
  _this setDir -65.919495;
  _this setPos [11597.329, 11298.691, 0.57301956];
};

_vehicle_2601 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11595.631, 11299.944, 0.028167725], [], 0, "CAN_COLLIDE"];
  _vehicle_2601 = _this;
  _this setDir -157.9893;
  _this setPos [11595.631, 11299.944, 0.028167725];
};

_vehicle_2603 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11527.844, 11301.389, -0.25363159], [], 0, "CAN_COLLIDE"];
  _vehicle_2603 = _this;
  _this setDir -136.10277;
  _this setPos [11527.844, 11301.389, -0.25363159];
};

_vehicle_2604 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_IlluminantTower", [11518.959, 11294.428, -0.020906771], [], 0, "CAN_COLLIDE"];
  _vehicle_2604 = _this;
  _this setDir 34.308174;
  _this setPos [11518.959, 11294.428, -0.020906771];
};

_vehicle_2622 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_budova4_in", [11461.763, 11224.694, 0.40740031], [], 0, "CAN_COLLIDE"];
  _vehicle_2622 = _this;
  _this setDir -44.005077;
  _this setPos [11461.763, 11224.694, 0.40740031];
};

_vehicle_2624 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_budova4_in", [11480.114, 11242.003, 0.26952007], [], 0, "CAN_COLLIDE"];
  _vehicle_2624 = _this;
  _this setDir -44.005077;
  _this setPos [11480.114, 11242.003, 0.26952007];
};

_vehicle_2626 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_budova4_in", [11499.505, 11258.886, -0.025479985], [], 0, "CAN_COLLIDE"];
  _vehicle_2626 = _this;
  _this setDir -40.835175;
  _this setPos [11499.505, 11258.886, -0.025479985];
};

_vehicle_2629 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Fort_EnvelopeSmall", [11497.151, 11288.592, 0.5783416], [], 0, "CAN_COLLIDE"];
  _vehicle_2629 = _this;
  _this setDir -57.336582;
  _this setPos [11497.151, 11288.592, 0.5783416];
};

_vehicle_2631 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Fort_EnvelopeSmall", [11495.056, 11286.214, 0.43100712], [], 0, "CAN_COLLIDE"];
  _vehicle_2631 = _this;
  _this setDir -57.336582;
  _this setPos [11495.056, 11286.214, 0.43100712];
};

_vehicle_2634 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Fort_EnvelopeSmall", [11493.092, 11283.339, 0.52085751], [], 0, "CAN_COLLIDE"];
  _vehicle_2634 = _this;
  _this setDir -56.635006;
  _this setPos [11493.092, 11283.339, 0.52085751];
};

_vehicle_2638 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Fort_EnvelopeBig", [11496.609, 11281.402, 0.20581372], [], 0, "CAN_COLLIDE"];
  _vehicle_2638 = _this;
  _this setDir 178.53928;
  _this setPos [11496.609, 11281.402, 0.20581372];
};

_vehicle_2640 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Fort_EnvelopeBig", [11500.975, 11284.031, 0.13970992], [], 0, "CAN_COLLIDE"];
  _vehicle_2640 = _this;
  _this setDir 120.48364;
  _this setPos [11500.975, 11284.031, 0.13970992];
};

_vehicle_2644 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11504.622, 11287.365, -0.12832952], [], 0, "CAN_COLLIDE"];
  _vehicle_2644 = _this;
  _this setDir -86.512077;
  _this setPos [11504.622, 11287.365, -0.12832952];
};

_vehicle_2646 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11504.491, 11284.865, -0.076104671], [], 0, "CAN_COLLIDE"];
  _vehicle_2646 = _this;
  _this setDir -87.500816;
  _this setPos [11504.491, 11284.865, -0.076104671];
};

_vehicle_2649 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11504.178, 11282.262, -0.1051683], [], 0, "CAN_COLLIDE"];
  _vehicle_2649 = _this;
  _this setDir -78.195793;
  _this setPos [11504.178, 11282.262, -0.1051683];
};

_vehicle_2654 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11499.552, 11276.342, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2654 = _this;
  _this setDir -34.734413;
  _this setPos [11499.552, 11276.342, -0.00012207031];
};

_vehicle_2655 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11501.522, 11278.029, 0.0029602051], [], 0, "CAN_COLLIDE"];
  _vehicle_2655 = _this;
  _this setDir -47.475498;
  _this setPos [11501.522, 11278.029, 0.0029602051];
};

_vehicle_2656 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11503.207, 11279.964, -0.059570313], [], 0, "CAN_COLLIDE"];
  _vehicle_2656 = _this;
  _this setDir -53.37854;
  _this setPos [11503.207, 11279.964, -0.059570313];
};

_vehicle_2660 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11492.269, 11274.162, -0.078102253], [], 0, "CAN_COLLIDE"];
  _vehicle_2660 = _this;
  _this setDir -19.106176;
  _this setPos [11492.269, 11274.162, -0.078102253];
};

_vehicle_2661 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11494.674, 11274.756, -0.12794593], [], 0, "CAN_COLLIDE"];
  _vehicle_2661 = _this;
  _this setDir -11.988066;
  _this setPos [11494.674, 11274.756, -0.12794593];
};

_vehicle_2662 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11497.083, 11275.349, -0.12780762], [], 0, "CAN_COLLIDE"];
  _vehicle_2662 = _this;
  _this setDir -12.790641;
  _this setPos [11497.083, 11275.349, -0.12780762];
};

_vehicle_2666 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11503.621, 11289.781, -0.29340497], [], 0, "CAN_COLLIDE"];
  _vehicle_2666 = _this;
  _this setDir -140.10475;
  _this setPos [11503.621, 11289.781, -0.29340497];
};

_vehicle_2667 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11506.036, 11291.93, -0.15165141], [], 0, "CAN_COLLIDE"];
  _vehicle_2667 = _this;
  _this setDir -119.20876;
  _this setPos [11506.036, 11291.93, -0.15165141];
};

_vehicle_2668 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11499.762, 11293.022, -0.32679501], [], 0, "CAN_COLLIDE"];
  _vehicle_2668 = _this;
  _this setDir -138.46825;
  _this setPos [11499.762, 11293.022, -0.32679501];
};

_vehicle_2672 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11486.784, 11268.973], [], 0, "CAN_COLLIDE"];
  _vehicle_2672 = _this;
  _this setDir -48.068699;
  _this setPos [11486.784, 11268.973];
};

_vehicle_2673 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11488.444, 11270.989, -0.026763916], [], 0, "CAN_COLLIDE"];
  _vehicle_2673 = _this;
  _this setDir -48.306988;
  _this setPos [11488.444, 11270.989, -0.026763916];
};

_vehicle_2674 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11490.187, 11272.823, -0.14212036], [], 0, "CAN_COLLIDE"];
  _vehicle_2674 = _this;
  _this setDir -42.991634;
  _this setPos [11490.187, 11272.823, -0.14212036];
};

_vehicle_2678 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11484.987, 11267.115, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2678 = _this;
  _this setDir -44.25515;
  _this setPos [11484.987, 11267.115, -9.1552734e-005];
};

_vehicle_2679 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11483.054, 11265.371, -0.098876953], [], 0, "CAN_COLLIDE"];
  _vehicle_2679 = _this;
  _this setDir -39.498013;
  _this setPos [11483.054, 11265.371, -0.098876953];
};

_vehicle_2680 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11480.74, 11264.356, -0.2805481], [], 0, "CAN_COLLIDE"];
  _vehicle_2680 = _this;
  _this setDir -15.357757;
  _this setPos [11480.74, 11264.356, -0.2805481];
};

_vehicle_2685 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11475.565, 11264.175, -0.11141623], [], 0, "CAN_COLLIDE"];
  _vehicle_2685 = _this;
  _this setDir 3.3319407;
  _this setPos [11475.565, 11264.175, -0.11141623];
};

_vehicle_2687 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11478.145, 11264.042, -0.1573782], [], 0, "CAN_COLLIDE"];
  _vehicle_2687 = _this;
  _this setDir 2.9556897;
  _this setPos [11478.145, 11264.042, -0.1573782];
};

_vehicle_2689 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11473.116, 11264.313, -0.10482358], [], 0, "CAN_COLLIDE"];
  _vehicle_2689 = _this;
  _this setDir 4.940794;
  _this setPos [11473.116, 11264.313, -0.10482358];
};

_vehicle_2691 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11470.624, 11264.701, -0.12274097], [], 0, "CAN_COLLIDE"];
  _vehicle_2691 = _this;
  _this setDir 6.5942464;
  _this setPos [11470.624, 11264.701, -0.12274097];
};

_vehicle_2694 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11468.09, 11265.137, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_2694 = _this;
  _this setDir 12.911315;
  _this setPos [11468.09, 11265.137, -0.00021362305];
};

_vehicle_2696 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11465.623, 11265.741, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_2696 = _this;
  _this setDir 14.453624;
  _this setPos [11465.623, 11265.741, -0.00015258789];
};

_vehicle_2698 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11463.262, 11266.869, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_2698 = _this;
  _this setDir 32.221649;
  _this setPos [11463.262, 11266.869, -0.00021362305];
};

_vehicle_2700 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11461.067, 11268.237, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2700 = _this;
  _this setDir 32.647202;
  _this setPos [11461.067, 11268.237, -9.1552734e-005];
};

_vehicle_2703 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11453.898, 11274.089, -0.00033569336], [], 0, "CAN_COLLIDE"];
  _vehicle_2703 = _this;
  _this setDir 213.729;
  _this setPos [11453.898, 11274.089, -0.00033569336];
};

_vehicle_2705 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11429.088, 11296.424, -0.00030517578], [], 0, "CAN_COLLIDE"];
  _vehicle_2705 = _this;
  _this setDir 131.00328;
  _this setPos [11429.088, 11296.424, -0.00030517578];
};

_vehicle_2708 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Ind2A_R", [11430.519, 11289.078, -0.44268575], [], 0, "CAN_COLLIDE"];
  _vehicle_2708 = _this;
  _this setDir 38.317677;
  _this setPos [11430.519, 11289.078, -0.44268575];
};

_vehicle_2709 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Ind2A_L", [11430.517, 11289.008, -0.32575333], [], 0, "CAN_COLLIDE"];
  _vehicle_2709 = _this;
  _this setDir 41.296921;
  _this setPos [11430.517, 11289.008, -0.32575333];
};

_vehicle_2716 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Ind2A_L", [11420.937, 11278.415, -0.00033569336], [], 0, "CAN_COLLIDE"];
  _vehicle_2716 = _this;
  _this setDir 46.37418;
  _this setPos [11420.937, 11278.415, -0.00033569336];
};

_vehicle_2717 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Ind2A_R", [11420.949, 11278.482, -0.12020874], [], 0, "CAN_COLLIDE"];
  _vehicle_2717 = _this;
  _this setDir 43.394939;
  _this setPos [11420.949, 11278.482, -0.12020874];
};

_vehicle_2722 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11418.815, 11284.992, -0.00045776367], [], 0, "CAN_COLLIDE"];
  _vehicle_2722 = _this;
  _this setDir 132.17041;
  _this setPos [11418.815, 11284.992, -0.00045776367];
};

_vehicle_2724 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11429.393, 11280.435, -0.013357746], [], 0, "CAN_COLLIDE"];
  _vehicle_2724 = _this;
  _this setDir 132.89075;
  _this setPos [11429.393, 11280.435, -0.013357746];
};

_vehicle_2727 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11512.036, 11309.741, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2727 = _this;
  _this setDir 34.933071;
  _this setPos [11512.036, 11309.741, -3.0517578e-005];
};

_vehicle_2729 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11508.91, 11311.886], [], 0, "CAN_COLLIDE"];
  _vehicle_2729 = _this;
  _this setDir 34.933071;
  _this setPos [11508.91, 11311.886];
};

_vehicle_2731 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11516.905, 11306.419, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2731 = _this;
  _this setDir 34.933071;
  _this setPos [11516.905, 11306.419, -9.1552734e-005];
};

_vehicle_2733 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11519.987, 11304.298, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2733 = _this;
  _this setDir 34.933071;
  _this setPos [11519.987, 11304.298, 9.1552734e-005];
};

_vehicle_2737 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11523.103, 11302.117, -0.14405906], [], 0, "CAN_COLLIDE"];
  _vehicle_2737 = _this;
  _this setDir 34.933071;
  _this setPos [11523.103, 11302.117, -0.14405906];
};

_vehicle_2738 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11528.182, 11297.131, -0.10453185], [], 0, "CAN_COLLIDE"];
  _vehicle_2738 = _this;
  _this setDir 80.629265;
  _this setPos [11528.182, 11297.131, -0.10453185];
};

_vehicle_2742 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11528.903, 11293.466, -0.079179741], [], 0, "CAN_COLLIDE"];
  _vehicle_2742 = _this;
  _this setDir 80.629265;
  _this setPos [11528.903, 11293.466, -0.079179741];
};

_vehicle_2744 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11529.569, 11289.783, -0.064120166], [], 0, "CAN_COLLIDE"];
  _vehicle_2744 = _this;
  _this setDir 80.629265;
  _this setPos [11529.569, 11289.783, -0.064120166];
};

_vehicle_2746 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11530.188, 11286.118, -0.00024414063], [], 0, "CAN_COLLIDE"];
  _vehicle_2746 = _this;
  _this setDir 80.629265;
  _this setPos [11530.188, 11286.118, -0.00024414063];
};

_vehicle_2748 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11530.859, 11282.416, -0.06354852], [], 0, "CAN_COLLIDE"];
  _vehicle_2748 = _this;
  _this setDir 80.629265;
  _this setPos [11530.859, 11282.416, -0.06354852];
};

_vehicle_2750 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11531.683, 11278.684, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2750 = _this;
  _this setDir 80.629265;
  _this setPos [11531.683, 11278.684, 0.00012207031];
};

_vehicle_2752 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11532.353, 11274.961, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2752 = _this;
  _this setDir 80.629265;
  _this setPos [11532.353, 11274.961, -3.0517578e-005];
};

_vehicle_2754 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11533.073, 11271.134], [], 0, "CAN_COLLIDE"];
  _vehicle_2754 = _this;
  _this setDir 80.629265;
  _this setPos [11533.073, 11271.134];
};

_vehicle_2768 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11508.664, 11298.137], [], 0, "CAN_COLLIDE"];
  _vehicle_2768 = _this;
  _this setDir 124.83362;
  _this setPos [11508.664, 11298.137];
};

_vehicle_2771 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11507.298, 11299.671], [], 0, "CAN_COLLIDE"];
  _vehicle_2771 = _this;
  _this setDir 126.63454;
  _this setPos [11507.298, 11299.671];
};

_vehicle_2773 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11506.529, 11289.527, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2773 = _this;
  _this setDir 137.1053;
  _this setPos [11506.529, 11289.527, -6.1035156e-005];
};

_vehicle_2775 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11509.016, 11248.345, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2775 = _this;
  _this setDir 141.36978;
  _this setPos [11509.016, 11248.345, -3.0517578e-005];
};

_vehicle_2778 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11506.023, 11246.172, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2778 = _this;
  _this setDir 141.36978;
  _this setPos [11506.023, 11246.172, -0.00012207031];
};

_vehicle_2782 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11503.079, 11243.859, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2782 = _this;
  _this setDir 141.36978;
  _this setPos [11503.079, 11243.859, 0.00012207031];
};

_vehicle_2783 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11500.172, 11241.566, -0.01071167], [], 0, "CAN_COLLIDE"];
  _vehicle_2783 = _this;
  _this setDir 141.36978;
  _this setPos [11500.172, 11241.566, -0.01071167];
};

_vehicle_2790 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11491.307, 11234.602, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_2790 = _this;
  _this setDir 141.36978;
  _this setPos [11491.307, 11234.602, -0.00021362305];
};

_vehicle_2791 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11488.291, 11232.384, -0.048400879], [], 0, "CAN_COLLIDE"];
  _vehicle_2791 = _this;
  _this setDir 141.36978;
  _this setPos [11488.291, 11232.384, -0.048400879];
};

_vehicle_2792 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11494.255, 11236.954, 0.057739258], [], 0, "CAN_COLLIDE"];
  _vehicle_2792 = _this;
  _this setDir 141.36978;
  _this setPos [11494.255, 11236.954, 0.057739258];
};

_vehicle_2793 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11497.241, 11239.225, 0.056915283], [], 0, "CAN_COLLIDE"];
  _vehicle_2793 = _this;
  _this setDir 141.36978;
  _this setPos [11497.241, 11239.225, 0.056915283];
};

_vehicle_2798 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11479.489, 11225.474, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2798 = _this;
  _this setDir 141.36978;
  _this setPos [11479.489, 11225.474, -9.1552734e-005];
};

_vehicle_2799 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11476.557, 11223.169, -0.10458374], [], 0, "CAN_COLLIDE"];
  _vehicle_2799 = _this;
  _this setDir 141.36978;
  _this setPos [11476.557, 11223.169, -0.10458374];
};

_vehicle_2800 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11482.417, 11227.759, 0.15585327], [], 0, "CAN_COLLIDE"];
  _vehicle_2800 = _this;
  _this setDir 141.36978;
  _this setPos [11482.417, 11227.759, 0.15585327];
};

_vehicle_2801 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11485.332, 11230.061, 0.18774414], [], 0, "CAN_COLLIDE"];
  _vehicle_2801 = _this;
  _this setDir 141.36978;
  _this setPos [11485.332, 11230.061, 0.18774414];
};

_vehicle_2806 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11467.846, 11216.004, -0.05100546], [], 0, "CAN_COLLIDE"];
  _vehicle_2806 = _this;
  _this setDir 141.36978;
  _this setPos [11467.846, 11216.004, -0.05100546];
};

_vehicle_2807 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11464.951, 11213.698, -0.061438903], [], 0, "CAN_COLLIDE"];
  _vehicle_2807 = _this;
  _this setDir 141.36978;
  _this setPos [11464.951, 11213.698, -0.061438903];
};

_vehicle_2808 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11470.683, 11218.443, 0.11049359], [], 0, "CAN_COLLIDE"];
  _vehicle_2808 = _this;
  _this setDir 141.36978;
  _this setPos [11470.683, 11218.443, 0.11049359];
};

_vehicle_2809 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11473.623, 11220.806, -0.0012092586], [], 0, "CAN_COLLIDE"];
  _vehicle_2809 = _this;
  _this setDir 141.36978;
  _this setPos [11473.623, 11220.806, -0.0012092586];
};

_vehicle_2814 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11450.301, 11214.125, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2814 = _this;
  _this setDir 221.15659;
  _this setPos [11450.301, 11214.125, -0.00012207031];
};

_vehicle_2815 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11447.425, 11216.634, -0.064941406], [], 0, "CAN_COLLIDE"];
  _vehicle_2815 = _this;
  _this setDir 221.15659;
  _this setPos [11447.425, 11216.634, -0.064941406];
};

_vehicle_2816 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11453.183, 11211.648, -0.032318115], [], 0, "CAN_COLLIDE"];
  _vehicle_2816 = _this;
  _this setDir 221.15659;
  _this setPos [11453.183, 11211.648, -0.032318115];
};

_vehicle_2817 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11456.094, 11209.247, 0.040344238], [], 0, "CAN_COLLIDE"];
  _vehicle_2817 = _this;
  _this setDir 221.15659;
  _this setPos [11456.094, 11209.247, 0.040344238];
};

_vehicle_2822 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11456.347, 11234.186, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_2822 = _this;
  _this setDir 132.21425;
  _this setPos [11456.347, 11234.186, -0.00018310547];
};

_vehicle_2823 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11453.838, 11231.301, -0.16055298], [], 0, "CAN_COLLIDE"];
  _vehicle_2823 = _this;
  _this setDir 132.21425;
  _this setPos [11453.838, 11231.301, -0.16055298];
};

_vehicle_2824 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11458.901, 11236.95, -0.010955811], [], 0, "CAN_COLLIDE"];
  _vehicle_2824 = _this;
  _this setDir 132.21425;
  _this setPos [11458.901, 11236.95, -0.010955811];
};

_vehicle_2825 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11461.423, 11239.706, -0.086334229], [], 0, "CAN_COLLIDE"];
  _vehicle_2825 = _this;
  _this setDir 132.21425;
  _this setPos [11461.423, 11239.706, -0.086334229];
};

_vehicle_2830 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11466.736, 11245.013, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2830 = _this;
  _this setDir 136.9911;
  _this setPos [11466.736, 11245.013, -6.1035156e-005];
};

_vehicle_2831 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11464.073, 11242.388, -0.015955035], [], 0, "CAN_COLLIDE"];
  _vehicle_2831 = _this;
  _this setDir 136.9911;
  _this setPos [11464.073, 11242.388, -0.015955035];
};

_vehicle_2832 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11469.45, 11247.587, -0.028286211], [], 0, "CAN_COLLIDE"];
  _vehicle_2832 = _this;
  _this setDir 136.9911;
  _this setPos [11469.45, 11247.587, -0.028286211];
};

_vehicle_2833 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11472.215, 11250.04, 0.063113391], [], 0, "CAN_COLLIDE"];
  _vehicle_2833 = _this;
  _this setDir 136.9911;
  _this setPos [11472.215, 11250.04, 0.063113391];
};

_vehicle_2838 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11477.979, 11254.802, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2838 = _this;
  _this setDir 141.36978;
  _this setPos [11477.979, 11254.802, -3.0517578e-005];
};

_vehicle_2839 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11475.002, 11252.473, 0.074219219], [], 0, "CAN_COLLIDE"];
  _vehicle_2839 = _this;
  _this setDir 141.36978;
  _this setPos [11475.002, 11252.473, 0.074219219];
};

_vehicle_2840 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11480.899, 11257.137, -0.10217285], [], 0, "CAN_COLLIDE"];
  _vehicle_2840 = _this;
  _this setDir 141.36978;
  _this setPos [11480.899, 11257.137, -0.10217285];
};

_vehicle_2841 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11483.818, 11259.504, -0.14559937], [], 0, "CAN_COLLIDE"];
  _vehicle_2841 = _this;
  _this setDir 141.36978;
  _this setPos [11483.818, 11259.504, -0.14559937];
};

_vehicle_2846 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11489.357, 11264.553, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2846 = _this;
  _this setDir 136.70053;
  _this setPos [11489.357, 11264.553, -0.00012207031];
};

_vehicle_2847 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11486.65, 11261.97, -0.09072876], [], 0, "CAN_COLLIDE"];
  _vehicle_2847 = _this;
  _this setDir 136.70053;
  _this setPos [11486.65, 11261.97, -0.09072876];
};

_vehicle_2848 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11492.08, 11267.16, 0.11380005], [], 0, "CAN_COLLIDE"];
  _vehicle_2848 = _this;
  _this setDir 136.70053;
  _this setPos [11492.08, 11267.16, 0.11380005];
};

_vehicle_2849 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11494.779, 11269.75, 0.087499924], [], 0, "CAN_COLLIDE"];
  _vehicle_2849 = _this;
  _this setDir 136.70053;
  _this setPos [11494.779, 11269.75, 0.087499924];
};

_vehicle_2854 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11515.031, 11253.103, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2854 = _this;
  _this setDir 141.36978;
  _this setPos [11515.031, 11253.103, -3.0517578e-005];
};

_vehicle_2855 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11511.962, 11250.669, -0.0068054199], [], 0, "CAN_COLLIDE"];
  _vehicle_2855 = _this;
  _this setDir 141.36978;
  _this setPos [11511.962, 11250.669, -0.0068054199];
};

_vehicle_2856 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11517.962, 11255.388, -0.019104004], [], 0, "CAN_COLLIDE"];
  _vehicle_2856 = _this;
  _this setDir 141.36978;
  _this setPos [11517.962, 11255.388, -0.019104004];
};

_vehicle_2857 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11520.884, 11257.772, 0.042359125], [], 0, "CAN_COLLIDE"];
  _vehicle_2857 = _this;
  _this setDir 141.36978;
  _this setPos [11520.884, 11257.772, 0.042359125];
};

_vehicle_2862 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11529.548, 11264.837, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2862 = _this;
  _this setDir 130.16747;
  _this setPos [11529.548, 11264.837, -6.1035156e-005];
};

_vehicle_2863 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11532.08, 11267.754, 0.042365395], [], 0, "CAN_COLLIDE"];
  _vehicle_2863 = _this;
  _this setDir 131.67801;
  _this setPos [11532.08, 11267.754, 0.042365395];
};

_vehicle_2864 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11526.803, 11262.311, -0.063934326], [], 0, "CAN_COLLIDE"];
  _vehicle_2864 = _this;
  _this setDir 141.36978;
  _this setPos [11526.803, 11262.311, -0.063934326];
};

_vehicle_2865 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11523.804, 11260.123, -0.039122436], [], 0, "CAN_COLLIDE"];
  _vehicle_2865 = _this;
  _this setDir 141.36978;
  _this setPos [11523.804, 11260.123, -0.039122436];
};

_vehicle_2871 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11462.026, 11211.406, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2871 = _this;
  _this setDir 141.36978;
  _this setPos [11462.026, 11211.406, -0.00012207031];
};

_vehicle_2873 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11459.041, 11209.14, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_2873 = _this;
  _this setDir 141.36978;
  _this setPos [11459.041, 11209.14, -0.00021362305];
};

_vehicle_2876 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11445.563, 11219.772, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2876 = _this;
  _this setDir 255.37566;
  _this setPos [11445.563, 11219.772, -9.1552734e-005];
};

_vehicle_2879 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11446.32, 11222.945, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2879 = _this;
  _this setDir 132.21425;
  _this setPos [11446.32, 11222.945, 9.1552734e-005];
};

_vehicle_2881 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11448.841, 11225.721, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2881 = _this;
  _this setDir 132.21425;
  _this setPos [11448.841, 11225.721, -9.1552734e-005];
};

_vehicle_2883 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11451.329, 11228.56, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2883 = _this;
  _this setDir 132.21425;
  _this setPos [11451.329, 11228.56, 9.1552734e-005];
};

_vehicle_2886 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11497.518, 11272.349, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2886 = _this;
  _this setDir 136.70053;
  _this setPos [11497.518, 11272.349, 6.1035156e-005];
};

_vehicle_2888 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11500.731, 11274.493], [], 0, "CAN_COLLIDE"];
  _vehicle_2888 = _this;
  _this setDir 152.19786;
  _this setPos [11500.731, 11274.493];
};

_vehicle_2890 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11503.662, 11276.726, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2890 = _this;
  _this setDir 136.70053;
  _this setPos [11503.662, 11276.726, -3.0517578e-005];
};

_vehicle_2892 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11506.366, 11279.349, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2892 = _this;
  _this setDir 136.70053;
  _this setPos [11506.366, 11279.349, -3.0517578e-005];
};

_vehicle_2894 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11509.143, 11281.903], [], 0, "CAN_COLLIDE"];
  _vehicle_2894 = _this;
  _this setDir 136.70053;
  _this setPos [11509.143, 11281.903];
};

_vehicle_2896 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11511.848, 11284.487, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2896 = _this;
  _this setDir 136.70053;
  _this setPos [11511.848, 11284.487, -9.1552734e-005];
};

_vehicle_2898 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11513.31, 11287.625, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_2898 = _this;
  _this setDir 95.817604;
  _this setPos [11513.31, 11287.625, -0.00021362305];
};

_vehicle_2900 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11517.175, 11290.148, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2900 = _this;
  _this setDir 184.67451;
  _this setPos [11517.175, 11290.148, 3.0517578e-005];
};

_vehicle_2902 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11520.641, 11288.58, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_2902 = _this;
  _this setDir 220.51781;
  _this setPos [11520.641, 11288.58, -0.00021362305];
};

_vehicle_2905 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11523.472, 11286.196, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2905 = _this;
  _this setDir 220.51781;
  _this setPos [11523.472, 11286.196, -0.00012207031];
};

_vehicle_2907 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11526.157, 11283.328, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2907 = _this;
  _this setDir 225.15909;
  _this setPos [11526.157, 11283.328, 3.0517578e-005];
};

_vehicle_2909 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11529.251, 11281.271, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2909 = _this;
  _this setDir 200.44519;
  _this setPos [11529.251, 11281.271, -9.1552734e-005];
};

_vehicle_2912 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11515.321, 11287.797, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2912 = _this;
  _this setDir 220.90475;
  _this setPos [11515.321, 11287.797, -6.1035156e-005];
};

_vehicle_2914 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11518.089, 11285.441, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2914 = _this;
  _this setDir 220.51781;
  _this setPos [11518.089, 11285.441, -3.0517578e-005];
};

_vehicle_2917 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Ind1_L", [11522.694, 11281.677, 0.17152326], [], 0, "CAN_COLLIDE"];
  _vehicle_2917 = _this;
  _this setDir 35.947578;
  _this setPos [11522.694, 11281.677, 0.17152326];
};

_vehicle_2920 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11523.718, 11283.308, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2920 = _this;
  _this setDir 125.76356;
  _this setPos [11523.718, 11283.308, -0.00012207031];
};

_vehicle_2924 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11525.107, 11287.389, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2924 = _this;
  _this setDir -139.00792;
  _this setPos [11525.107, 11287.389, -0.00012207031];
};

_vehicle_2926 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11533.138, 11277.672, 0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_2926 = _this;
  _this setDir -97.27092;
  _this setPos [11533.138, 11277.672, 0.00018310547];
};

_vehicle_2928 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11533.187, 11265.292, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2928 = _this;
  _this setDir -43.423748;
  _this setPos [11533.187, 11265.292, -9.1552734e-005];
};

_vehicle_2930 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11524.637, 11257.378, -0.00024414063], [], 0, "CAN_COLLIDE"];
  _vehicle_2930 = _this;
  _this setDir -35.402554;
  _this setPos [11524.637, 11257.378, -0.00024414063];
};

_vehicle_2933 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11515.413, 11250.415, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2933 = _this;
  _this setDir -35.402554;
  _this setPos [11515.413, 11250.415, -9.1552734e-005];
};

_vehicle_2935 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11503.559, 11241.176, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2935 = _this;
  _this setDir -35.402554;
  _this setPos [11503.559, 11241.176, 3.0517578e-005];
};

_vehicle_2937 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11494.62, 11234.237, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2937 = _this;
  _this setDir -35.402554;
  _this setPos [11494.62, 11234.237, -6.1035156e-005];
};

_vehicle_2939 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11482.936, 11225.688, 0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_2939 = _this;
  _this setDir -35.402554;
  _this setPos [11482.936, 11225.688, 0.00018310547];
};

_vehicle_2941 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11474.237, 11218.64, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_2941 = _this;
  _this setDir -39.816315;
  _this setPos [11474.237, 11218.64, -0.00021362305];
};

_vehicle_2943 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11465.215, 11211.335, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_2943 = _this;
  _this setDir -40.671955;
  _this setPos [11465.215, 11211.335, -0.00015258789];
};

_vehicle_2945 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11453.36, 11207.083, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2945 = _this;
  _this setDir 42.361851;
  _this setPos [11453.36, 11207.083, -3.0517578e-005];
};

_vehicle_2947 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11444.745, 11214.05, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2947 = _this;
  _this setDir 41.695751;
  _this setPos [11444.745, 11214.05, -6.1035156e-005];
};

_vehicle_2952 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11445.5, 11225.307, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2952 = _this;
  _this setDir 128.24001;
  _this setPos [11445.5, 11225.307, -3.0517578e-005];
};

_vehicle_2954 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11452.875, 11233.189], [], 0, "CAN_COLLIDE"];
  _vehicle_2954 = _this;
  _this setDir 128.24001;
  _this setPos [11452.875, 11233.189];
};

_vehicle_2956 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11459.942, 11241.353, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2956 = _this;
  _this setDir 128.24001;
  _this setPos [11459.942, 11241.353, -9.1552734e-005];
};

_vehicle_2958 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11468.43, 11249.932, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2958 = _this;
  _this setDir 135.80925;
  _this setPos [11468.43, 11249.932, -6.1035156e-005];
};

_vehicle_2960 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11478.275, 11258.075, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_2960 = _this;
  _this setDir 140.36746;
  _this setPos [11478.275, 11258.075, -0.00015258789];
};

_vehicle_2962 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11492.861, 11271.037, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2962 = _this;
  _this setDir 134.55501;
  _this setPos [11492.861, 11271.037, -6.1035156e-005];
};

_vehicle_2964 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11511.555, 11286.944, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2964 = _this;
  _this setDir 119.48725;
  _this setPos [11511.555, 11286.944, -6.1035156e-005];
};

_vehicle_2966 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11470.695, 11260.966, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_2966 = _this;
  _this setDir 2.4411035;
  _this setPos [11470.695, 11260.966, -0.00015258789];
};

_vehicle_2968 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11462.075, 11264.208, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2968 = _this;
  _this setDir 25.31469;
  _this setPos [11462.075, 11264.208, -9.1552734e-005];
};

_vehicle_2970 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11454.556, 11269.567, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_2970 = _this;
  _this setDir 34.387169;
  _this setPos [11454.556, 11269.567, -0.00015258789];
};

_vehicle_2972 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11446.262, 11275.354, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2972 = _this;
  _this setDir 34.229187;
  _this setPos [11446.262, 11275.354, -6.1035156e-005];
};

_vehicle_2974 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11436.98, 11280.8, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_2974 = _this;
  _this setDir -3.3190243;
  _this setPos [11436.98, 11280.8, -0.00021362305];
};

_vehicle_2976 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [11430.05, 11274.685, -0.0007019043], [], 0, "CAN_COLLIDE"];
  _vehicle_2976 = _this;
  _this setDir -50.48243;
  _this setPos [11430.05, 11274.685, -0.0007019043];
};

_vehicle_2979 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11432.785, 11269.956, -0.00057983398], [], 0, "CAN_COLLIDE"];
  _vehicle_2979 = _this;
  _this setDir 220.04556;
  _this setPos [11432.785, 11269.956, -0.00057983398];
};

_vehicle_2981 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [11445.247, 11260.146], [], 0, "CAN_COLLIDE"];
  _vehicle_2981 = _this;
  _this setDir 216.59689;
  _this setPos [11445.247, 11260.146];
};

_vehicle_2984 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11531.587, 11267.669, -0.051747128], [], 0, "CAN_COLLIDE"];
  _vehicle_2984 = _this;
  _this setDir -51.861088;
  _this setPos [11531.587, 11267.669, -0.051747128];
};

_vehicle_2986 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11528.981, 11264.797, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2986 = _this;
  _this setDir -51.861088;
  _this setPos [11528.981, 11264.797, 3.0517578e-005];
};

_vehicle_2988 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11526.193, 11262.353, -0.051651444], [], 0, "CAN_COLLIDE"];
  _vehicle_2988 = _this;
  _this setDir -43.682056;
  _this setPos [11526.193, 11262.353, -0.051651444];
};

_vehicle_2990 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11523.241, 11259.932, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_2990 = _this;
  _this setDir -36.419365;
  _this setPos [11523.241, 11259.932, -0.00018310547];
};

_vehicle_2992 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11520.104, 11257.571, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2992 = _this;
  _this setDir -37.14502;
  _this setPos [11520.104, 11257.571, 6.1035156e-005];
};

_vehicle_2994 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11516.587, 11254.573, -0.006560469], [], 0, "CAN_COLLIDE"];
  _vehicle_2994 = _this;
  _this setDir -39.070621;
  _this setPos [11516.587, 11254.573, -0.006560469];
};

_vehicle_2996 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11513.736, 11252.266, -0.070052855], [], 0, "CAN_COLLIDE"];
  _vehicle_2996 = _this;
  _this setDir -40.974377;
  _this setPos [11513.736, 11252.266, -0.070052855];
};

_vehicle_2999 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11510.554, 11249.826, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2999 = _this;
  _this setDir -40.974377;
  _this setPos [11510.554, 11249.826, -9.1552734e-005];
};

_vehicle_3001 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11507.419, 11247.623, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_3001 = _this;
  _this setDir -40.974377;
  _this setPos [11507.419, 11247.623, 0.00015258789];
};

_vehicle_3003 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11504.347, 11245.382, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3003 = _this;
  _this setDir -40.974377;
  _this setPos [11504.347, 11245.382, -6.1035156e-005];
};

_vehicle_3005 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11501.472, 11242.969, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3005 = _this;
  _this setDir -40.974377;
  _this setPos [11501.472, 11242.969, -6.1035156e-005];
};

_vehicle_3007 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11498.573, 11240.552, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_3007 = _this;
  _this setDir -40.974377;
  _this setPos [11498.573, 11240.552, -0.00018310547];
};

_vehicle_3009 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11495.627, 11238.362, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3009 = _this;
  _this setDir -40.974377;
  _this setPos [11495.627, 11238.362, 3.0517578e-005];
};

_vehicle_3011 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11492.672, 11236.04, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3011 = _this;
  _this setDir -40.974377;
  _this setPos [11492.672, 11236.04, 6.1035156e-005];
};

_vehicle_3013 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11489.642, 11233.873, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3013 = _this;
  _this setDir -40.974377;
  _this setPos [11489.642, 11233.873, -9.1552734e-005];
};

_vehicle_3015 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11486.657, 11231.366, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3015 = _this;
  _this setDir -40.974377;
  _this setPos [11486.657, 11231.366, 3.0517578e-005];
};

_vehicle_3017 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11483.765, 11229.111, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3017 = _this;
  _this setDir -40.974377;
  _this setPos [11483.765, 11229.111, 0.00012207031];
};

_vehicle_3019 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11480.879, 11226.863, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_3019 = _this;
  _this setDir -40.974377;
  _this setPos [11480.879, 11226.863, -0.00018310547];
};

_vehicle_3021 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11477.953, 11224.604, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3021 = _this;
  _this setDir -40.974377;
  _this setPos [11477.953, 11224.604, -0.00012207031];
};

_vehicle_3023 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11474.921, 11222.233, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3023 = _this;
  _this setDir -40.974377;
  _this setPos [11474.921, 11222.233, -0.00012207031];
};

_vehicle_3025 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11472.013, 11219.816, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3025 = _this;
  _this setDir -40.974377;
  _this setPos [11472.013, 11219.816, -0.00012207031];
};

_vehicle_3027 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11469.166, 11217.363, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3027 = _this;
  _this setDir -40.974377;
  _this setPos [11469.166, 11217.363, -9.1552734e-005];
};

_vehicle_3029 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11466.223, 11215.22, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3029 = _this;
  _this setDir -40.974377;
  _this setPos [11466.223, 11215.22, 0.00012207031];
};

_vehicle_3031 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11463.43, 11212.879, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3031 = _this;
  _this setDir -40.974377;
  _this setPos [11463.43, 11212.879, -3.0517578e-005];
};

_vehicle_3033 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11460.385, 11210.543, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_3033 = _this;
  _this setDir -40.974377;
  _this setPos [11460.385, 11210.543, 0];
};

_vehicle_3035 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11454.859, 11210.843, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3035 = _this;
  _this setDir 43.733856;
  _this setPos [11454.859, 11210.843, -6.1035156e-005];
};

_vehicle_3038 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11451.943, 11213.174, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3038 = _this;
  _this setDir 43.733856;
  _this setPos [11451.943, 11213.174, -9.1552734e-005];
};

_vehicle_3040 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11449.057, 11215.672, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_3040 = _this;
  _this setDir 43.733856;
  _this setPos [11449.057, 11215.672, 0];
};

_vehicle_3042 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11446.652, 11218.142, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3042 = _this;
  _this setDir 61.488163;
  _this setPos [11446.652, 11218.142, -9.1552734e-005];
};

_vehicle_3044 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11445.9, 11221.342, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3044 = _this;
  _this setDir 99.925247;
  _this setPos [11445.9, 11221.342, 6.1035156e-005];
};

_vehicle_3046 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11447.834, 11224.207, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3046 = _this;
  _this setDir 132.62;
  _this setPos [11447.834, 11224.207, 9.1552734e-005];
};

_vehicle_3049 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11450.416, 11226.97, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3049 = _this;
  _this setDir 132.62;
  _this setPos [11450.416, 11226.97, 3.0517578e-005];
};

_vehicle_3051 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11452.907, 11229.754, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3051 = _this;
  _this setDir 132.62;
  _this setPos [11452.907, 11229.754, -9.1552734e-005];
};

_vehicle_3053 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11455.342, 11232.575, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3053 = _this;
  _this setDir 132.62;
  _this setPos [11455.342, 11232.575, -6.1035156e-005];
};

_vehicle_3055 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11457.847, 11235.318, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_3055 = _this;
  _this setDir 132.62;
  _this setPos [11457.847, 11235.318, -0.00015258789];
};

_vehicle_3057 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11460.393, 11238.104, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_3057 = _this;
  _this setDir 132.62;
  _this setPos [11460.393, 11238.104, -0.00018310547];
};

_vehicle_3059 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11462.912, 11240.821, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3059 = _this;
  _this setDir 132.62;
  _this setPos [11462.912, 11240.821, 6.1035156e-005];
};

_vehicle_3061 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11465.647, 11243.542, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_3061 = _this;
  _this setDir 132.62;
  _this setPos [11465.647, 11243.542, -0.00021362305];
};

_vehicle_3063 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11468.395, 11246.091, -0.00024414063], [], 0, "CAN_COLLIDE"];
  _vehicle_3063 = _this;
  _this setDir 132.62;
  _this setPos [11468.395, 11246.091, -0.00024414063];
};

_vehicle_3065 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11471.12, 11248.522, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_3065 = _this;
  _this setDir 132.62;
  _this setPos [11471.12, 11248.522, -0.00021362305];
};

_vehicle_3067 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11473.825, 11251.041, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3067 = _this;
  _this setDir 132.62;
  _this setPos [11473.825, 11251.041, 0.00012207031];
};

_vehicle_3069 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11476.724, 11253.427, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3069 = _this;
  _this setDir 132.62;
  _this setPos [11476.724, 11253.427, -9.1552734e-005];
};

_vehicle_3071 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11479.631, 11255.813, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3071 = _this;
  _this setDir 141.01219;
  _this setPos [11479.631, 11255.813, 3.0517578e-005];
};

_vehicle_3074 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11482.53, 11258.076, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3074 = _this;
  _this setDir 141.01219;
  _this setPos [11482.53, 11258.076, 6.1035156e-005];
};

_vehicle_3076 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11485.466, 11260.51, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3076 = _this;
  _this setDir 141.01219;
  _this setPos [11485.466, 11260.51, -6.1035156e-005];
};

_vehicle_3078 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11488.147, 11263.001, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3078 = _this;
  _this setDir 141.01219;
  _this setPos [11488.147, 11263.001, -0.00012207031];
};

_vehicle_3080 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11490.922, 11265.673, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3080 = _this;
  _this setDir 141.01219;
  _this setPos [11490.922, 11265.673, -0.00012207031];
};

_vehicle_3082 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11493.601, 11268.248, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3082 = _this;
  _this setDir 141.01219;
  _this setPos [11493.601, 11268.248, -6.1035156e-005];
};

_vehicle_3084 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11496.359, 11270.916, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_3084 = _this;
  _this setDir 141.01219;
  _this setPos [11496.359, 11270.916, 0];
};

_vehicle_3086 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11499.112, 11273.41, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_3086 = _this;
  _this setDir 141.01219;
  _this setPos [11499.112, 11273.41, 0];
};

_vehicle_3088 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11502.631, 11275.243, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3088 = _this;
  _this setDir 141.01219;
  _this setPos [11502.631, 11275.243, -3.0517578e-005];
};

_vehicle_3090 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11505.293, 11277.769, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3090 = _this;
  _this setDir 135.60175;
  _this setPos [11505.293, 11277.769, 0.00012207031];
};

_vehicle_3093 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11508.05, 11280.419, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3093 = _this;
  _this setDir 135.60175;
  _this setPos [11508.05, 11280.419, -3.0517578e-005];
};

_vehicle_3095 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11510.754, 11283.054, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3095 = _this;
  _this setDir 135.60175;
  _this setPos [11510.754, 11283.054, -3.0517578e-005];
};

_vehicle_3097 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11513.168, 11285.33, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3097 = _this;
  _this setDir 135.60175;
  _this setPos [11513.168, 11285.33, -0.00012207031];
};

_vehicle_3099 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11516.481, 11286.503, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3099 = _this;
  _this setDir 40.56535;
  _this setPos [11516.481, 11286.503, 3.0517578e-005];
};

_vehicle_3102 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11527.042, 11281.862], [], 0, "CAN_COLLIDE"];
  _vehicle_3102 = _this;
  _this setDir 40.56535;
  _this setPos [11527.042, 11281.862];
};

_vehicle_3104 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11531.735, 11276.917, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3104 = _this;
  _this setDir 77.527565;
  _this setPos [11531.735, 11276.917, -3.0517578e-005];
};

_vehicle_3107 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11532.44, 11273.072, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_3107 = _this;
  _this setDir 77.527565;
  _this setPos [11532.44, 11273.072, -0.00018310547];
};

_vehicle_3109 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11532.634, 11270.193, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3109 = _this;
  _this setDir 92.103722;
  _this setPos [11532.634, 11270.193, -3.0517578e-005];
};

_vehicle_3111 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11530.232, 11280.551, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_3111 = _this;
  _this setDir 27.740816;
  _this setPos [11530.232, 11280.551, -0.00018310547];
};

_vehicle_3114 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11524.588, 11283.313, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3114 = _this;
  _this setDir -16.864437;
  _this setPos [11524.588, 11283.313, -9.1552734e-005];
};

_vehicle_3117 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_IlluminantTower", [11455.858, 11200.842, 0.20853014], [], 0, "CAN_COLLIDE"];
  _vehicle_3117 = _this;
  _this setDir 40.599667;
  _this setPos [11455.858, 11200.842, 0.20853014];
};

_vehicle_3119 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_IlluminantTower", [11435.167, 11216.833, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3119 = _this;
  _this setDir 76.816734;
  _this setPos [11435.167, 11216.833, -3.0517578e-005];
};

_vehicle_3121 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_IlluminantTower", [11439.739, 11267.021, 0.15853599], [], 0, "CAN_COLLIDE"];
  _vehicle_3121 = _this;
  _this setDir 34.308174;
  _this setPos [11439.739, 11267.021, 0.15853599];
};

_vehicle_3124 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11529.371, 11261.947, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3124 = _this;
  _this setDir 322.7417;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11529.371, 11261.947, -6.1035156e-005];
};

_vehicle_3127 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11520.481, 11255.006, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3127 = _this;
  _this setDir 322.7417;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11520.481, 11255.006, 0.00012207031];
};

_vehicle_3129 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11509.601, 11246.481, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3129 = _this;
  _this setDir 322.7417;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11509.601, 11246.481, -3.0517578e-005];
};

_vehicle_3131 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11499.79, 11238.196, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_3131 = _this;
  _this setDir 322.7417;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11499.79, 11238.196, -0.00018310547];
};

_vehicle_3133 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11489.146, 11230.971, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3133 = _this;
  _this setDir 322.7417;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11489.146, 11230.971, -6.1035156e-005];
};

_vehicle_3135 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11478.347, 11222.531, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3135 = _this;
  _this setDir 322.7417;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11478.347, 11222.531, -6.1035156e-005];
};

_vehicle_3137 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11470.37, 11215.252, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3137 = _this;
  _this setDir 322.7417;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11470.37, 11215.252, 3.0517578e-005];
};

_vehicle_3139 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11461.114, 11208.316, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3139 = _this;
  _this setDir 322.7417;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11461.114, 11208.316, -3.0517578e-005];
};

_vehicle_3141 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11471.584, 11235.226, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3141 = _this;
  _this setDir 247.38408;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11471.584, 11235.226, 3.0517578e-005];
};

_vehicle_3143 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11489.824, 11252.975], [], 0, "CAN_COLLIDE"];
  _vehicle_3143 = _this;
  _this setDir 220.13118;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11489.824, 11252.975];
};

_vehicle_3145 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11449.169, 11228.557], [], 0, "CAN_COLLIDE"];
  _vehicle_3145 = _this;
  _this setDir 128.46634;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11449.169, 11228.557];
};

_vehicle_3147 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11451.339, 11210.874, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_3147 = _this;
  _this setDir 392.25055;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11451.339, 11210.874, -0.00021362305];
};

_vehicle_3149 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11444.935, 11219.095, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3149 = _this;
  _this setDir 448.24292;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11444.935, 11219.095, 6.1035156e-005];
};

_vehicle_3152 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11455.413, 11236.19, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_3152 = _this;
  _this setDir 128.46634;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11455.413, 11236.19, -0.00021362305];
};

_vehicle_3154 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11463.842, 11245.029, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3154 = _this;
  _this setDir 128.46634;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11463.842, 11245.029, -3.0517578e-005];
};

_vehicle_3156 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11472.674, 11253.494, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3156 = _this;
  _this setDir 128.46634;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11472.674, 11253.494, -9.1552734e-005];
};

_vehicle_3158 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11485.66, 11263.67, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_3158 = _this;
  _this setDir 128.46634;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11485.66, 11263.67, -0.00021362305];
};

_vehicle_3160 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11506.398, 11281.376, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_3160 = _this;
  _this setDir 128.46634;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11506.398, 11281.376, 0];
};

_vehicle_3162 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11493.461, 11296.015, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3162 = _this;
  _this setDir 128.46634;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11493.461, 11296.015, -3.0517578e-005];
};

_vehicle_3164 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11466.432, 11284.476, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3164 = _this;
  _this setDir 191.24258;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11466.432, 11284.476, 6.1035156e-005];
};

_vehicle_3167 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11452.103, 11294.854, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_3167 = _this;
  _this setDir 191.24258;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11452.103, 11294.854, 0];
};

_vehicle_3169 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11430.52, 11299.747, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3169 = _this;
  _this setDir 144.53822;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11430.52, 11299.747, 9.1552734e-005];
};

_vehicle_3172 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11420.648, 11289.643, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_3172 = _this;
  _this setDir 144.53822;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11420.648, 11289.643, 0];
};

_vehicle_3174 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11433.523, 11280.303, -0.00030517578], [], 0, "CAN_COLLIDE"];
  _vehicle_3174 = _this;
  _this setDir 347.73132;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11433.523, 11280.303, -0.00030517578];
};

_vehicle_3176 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11442.685, 11277.749, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_3176 = _this;
  _this setDir 31.110023;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11442.685, 11277.749, -0.00018310547];
};

_vehicle_3179 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11451.596, 11271.913, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3179 = _this;
  _this setDir 31.110023;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11451.596, 11271.913, 3.0517578e-005];
};

_vehicle_3181 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11460.47, 11266.824, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3181 = _this;
  _this setDir 31.110023;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11460.47, 11266.824, -3.0517578e-005];
};

_vehicle_3183 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [11468.614, 11263.295, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_3183 = _this;
  _this setDir 31.110023;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [11468.614, 11263.295, 0.00015258789];
};

_vehicle_3189 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_GuardShed", [11424.797, 11271.731, -0.00045776367], [], 0, "CAN_COLLIDE"];
  _vehicle_3189 = _this;
  _this setDir 132.92166;
  _this setPos [11424.797, 11271.731, -0.00045776367];
};

_vehicle_3191 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_GuardShed", [11504.452, 11297.785, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3191 = _this;
  _this setDir -47.48386;
  _this setPos [11504.452, 11297.785, -9.1552734e-005];
};

_vehicle_3193 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [11488.691, 11287.771, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3193 = _this;
  _this setPos [11488.691, 11287.771, -0.00012207031];
};

_vehicle_3195 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [11490.561, 11288.304, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3195 = _this;
  _this setPos [11490.561, 11288.304, -3.0517578e-005];
};

_vehicle_3197 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [11489.723, 11288.296, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3197 = _this;
  _this setPos [11489.723, 11288.296, -3.0517578e-005];
};

_vehicle_3199 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [11492.306, 11288.17], [], 0, "CAN_COLLIDE"];
  _vehicle_3199 = _this;
  _this setPos [11492.306, 11288.17];
};

_vehicle_3201 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [11491.467, 11288.068, 0.20109344], [], 0, "CAN_COLLIDE"];
  _vehicle_3201 = _this;
  _this setPos [11491.467, 11288.068, 0.20109344];
};

_vehicle_3203 = objNull;
if (true) then
{
  _this = createVehicle ["Mass_grave", [11498.173, 11284.481, 0.057546932], [], 0, "CAN_COLLIDE"];
  _vehicle_3203 = _this;
  _this setDir 32.908401;
  _this setPos [11498.173, 11284.481, 0.057546932];
};

_vehicle_3205 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Church_tomb_1", [11492.754, 11283.642, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3205 = _this;
  _this setDir 125.54503;
  _this setPos [11492.754, 11283.642, -9.1552734e-005];
};

_vehicle_3206 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Church_tomb_2", [11494.658, 11286.352, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3206 = _this;
  _this setDir 116.68907;
  _this setPos [11494.658, 11286.352, -3.0517578e-005];
};

_vehicle_3207 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Church_tomb_3", [11496.854, 11288.915, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3207 = _this;
  _this setDir 131.84438;
  _this setPos [11496.854, 11288.915, 6.1035156e-005];
};

_vehicle_3208 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [11500.771, 11290.849, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3208 = _this;
  _this setPos [11500.771, 11290.849, -3.0517578e-005];
};

_vehicle_3210 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [11503.708, 11288.258, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3210 = _this;
  _this setPos [11503.708, 11288.258, 6.1035156e-005];
};

_vehicle_3212 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [11506.384, 11265.01, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_3212 = _this;
  _this setPos [11506.384, 11265.01, -0.00015258789];
};

_vehicle_3214 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [11486.966, 11248.62, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_3214 = _this;
  _this setPos [11486.966, 11248.62, -0.00018310547];
};

_vehicle_3216 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [11468.5, 11231.236, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3216 = _this;
  _this setPos [11468.5, 11231.236, -3.0517578e-005];
};

_vehicle_3218 = objNull;
if (true) then
{
  _this = createVehicle ["Body2", [11494.172, 11282.855, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_3218 = _this;
  _this setPos [11494.172, 11282.855, -0.00018310547];
};

_vehicle_3219 = objNull;
if (true) then
{
  _this = createVehicle ["Body1", [11498.036, 11288.188, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3219 = _this;
  _this setPos [11498.036, 11288.188, 6.1035156e-005];
};

_vehicle_3220 = objNull;
if (true) then
{
  _this = createVehicle ["Body2", [11501.638, 11287.454, 0.037225634], [], 0, "CAN_COLLIDE"];
  _vehicle_3220 = _this;
  _this setPos [11501.638, 11287.454, 0.037225634];
};

_vehicle_3222 = objNull;
if (true) then
{
  _this = createVehicle ["Body2", [11500.632, 11288.427, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3222 = _this;
  _this setPos [11500.632, 11288.427, 3.0517578e-005];
};

_vehicle_3224 = objNull;
if (true) then
{
  _this = createVehicle ["Body2", [11492.537, 11281.098, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3224 = _this;
  _this setPos [11492.537, 11281.098, -3.0517578e-005];
};

_vehicle_3226 = objNull;
if (true) then
{
  _this = createVehicle ["Body2", [11495.624, 11279.302, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3226 = _this;
  _this setPos [11495.624, 11279.302, -9.1552734e-005];
};

_vehicle_3228 = objNull;
if (true) then
{
  _this = createVehicle ["Body1", [11493.111, 11279.337, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3228 = _this;
  _this setPos [11493.111, 11279.337, 9.1552734e-005];
};

_vehicle_3229 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [11486.058, 11280.861, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3229 = _this;
  _this setDir 36.306293;
  _this setPos [11486.058, 11280.861, 9.1552734e-005];
};

_vehicle_3232 = objNull;
if (true) then
{
  _this = createVehicle ["Body2", [11451.834, 11287.631, -0.00030517578], [], 0, "CAN_COLLIDE"];
  _vehicle_3232 = _this;
  _this setPos [11451.834, 11287.631, -0.00030517578];
};

_vehicle_3234 = objNull;
if (true) then
{
  _this = createVehicle ["Body2", [11458.471, 11278.24, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_3234 = _this;
  _this setPos [11458.471, 11278.24, -0.00015258789];
};

_vehicle_3236 = objNull;
if (true) then
{
  _this = createVehicle ["Body2", [11471.356, 11275.859, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3236 = _this;
  _this setPos [11471.356, 11275.859, -6.1035156e-005];
};

_vehicle_3238 = objNull;
if (true) then
{
  _this = createVehicle ["Body2", [11474.427, 11267.921, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3238 = _this;
  _this setPos [11474.427, 11267.921, -6.1035156e-005];
};

_vehicle_3242 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [11488.456, 11283.104, 1.41359], [], 0, "CAN_COLLIDE"];
  _vehicle_3242 = _this;
  _this setPos [11488.456, 11283.104, 1.41359];
};

_vehicle_3244 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [11485.828, 11277.89], [], 0, "CAN_COLLIDE"];
  _vehicle_3244 = _this;
  _this setPos [11485.828, 11277.89];
};

_vehicle_3251 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [11489.251, 11283.19, 1.5204655], [], 0, "CAN_COLLIDE"];
  _vehicle_3251 = _this;
  _this setPos [11489.251, 11283.19, 1.5204655];
};

_vehicle_3255 = objNull;
if (true) then
{
  _this = createVehicle ["Body1", [11476.309, 11272.671, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_3255 = _this;
  _this setPos [11476.309, 11272.671, 0];
};

_vehicle_3257 = objNull;
if (true) then
{
  _this = createVehicle ["Body1", [11464.257, 11273.306, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_3257 = _this;
  _this setPos [11464.257, 11273.306, 0];
};

_vehicle_3259 = objNull;
if (true) then
{
  _this = createVehicle ["Body1", [11465.399, 11277.367, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_3259 = _this;
  _this setPos [11465.399, 11277.367, 0];
};

_vehicle_3261 = objNull;
if (true) then
{
  _this = createVehicle ["Body1", [11453.349, 11283.078, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_3261 = _this;
  _this setPos [11453.349, 11283.078, 0];
};

_vehicle_3264 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11593.275, 11300.997, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3264 = _this;
  _this setDir -156.73857;
  _this setPos [11593.275, 11300.997, -6.1035156e-005];
};

_vehicle_3266 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [11590.817, 11302.013, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3266 = _this;
  _this setDir -157.83759;
  _this setPos [11590.817, 11302.013, -6.1035156e-005];
};

_vehicle_3269 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Ind1_L", [11589.571, 11302.03, 0.93457901], [], 0, "CAN_COLLIDE"];
  _vehicle_3269 = _this;
  _this setDir -68.151176;
  _this setPos [11589.571, 11302.03, 0.93457901];
};

_vehicle_3274 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeeth", [11597.421, 11304.14, -0.088759869], [], 0, "CAN_COLLIDE"];
  _vehicle_3274 = _this;
  _this setDir 293.57465;
  _this setPos [11597.421, 11304.14, -0.088759869];
};

_vehicle_3277 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeeth", [11595.151, 11304.906, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3277 = _this;
  _this setDir 293.57465;
  _this setPos [11595.151, 11304.906, -3.0517578e-005];
};

_vehicle_3280 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeeth", [11590.314, 11307.548, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3280 = _this;
  _this setDir 293.57465;
  _this setPos [11590.314, 11307.548, -6.1035156e-005];
};

_vehicle_3282 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeeth", [11588.037, 11308.367, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3282 = _this;
  _this setDir 293.57465;
  _this setPos [11588.037, 11308.367, -3.0517578e-005];
};

_vehicle_3286 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [11547.939, 11350.5], [], 0, "CAN_COLLIDE"];
  _vehicle_3286 = _this;
  _this setDir 36.966984;
  _this setPos [11547.939, 11350.5];
};

_vehicle_3288 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [11563.825, 11343.494, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_3288 = _this;
  _this setDir 36.966984;
  _this setPos [11563.825, 11343.494, 0];
};

_vehicle_3290 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [11577.399, 11335.378], [], 0, "CAN_COLLIDE"];
  _vehicle_3290 = _this;
  _this setDir 36.966984;
  _this setPos [11577.399, 11335.378];
};

_vehicle_3292 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [11586.404, 11322.162, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_3292 = _this;
  _this setDir 36.966984;
  _this setPos [11586.404, 11322.162, 0.00015258789];
};

_vehicle_3294 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [11539.631, 11333.618, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_3294 = _this;
  _this setDir 36.966984;
  _this setPos [11539.631, 11333.618, -0.00015258789];
};

_vehicle_3296 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [11554.931, 11323.37, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3296 = _this;
  _this setDir 36.966984;
  _this setPos [11554.931, 11323.37, 9.1552734e-005];
};

_vehicle_3298 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [11569.335, 11315.441, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3298 = _this;
  _this setDir 36.966984;
  _this setPos [11569.335, 11315.441, -9.1552734e-005];
};

_vehicle_3301 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11505.53, 11289.645, -0.22710949], [], 0, "CAN_COLLIDE"];
  _vehicle_3301 = _this;
  _this setDir -46.492641;
  _this setPos [11505.53, 11289.645, -0.22710949];
};

_vehicle_3303 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11501.709, 11291.388, -0.32585713], [], 0, "CAN_COLLIDE"];
  _vehicle_3303 = _this;
  _this setDir 43.558712;
  _this setPos [11501.709, 11291.388, -0.32585713];
};

_vehicle_3306 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11502.784, 11295.562, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3306 = _this;
  _this setDir -216.61887;
  _this setPos [11502.784, 11295.562, 3.0517578e-005];
};

_vehicle_3308 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11500.852, 11296.343, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3308 = _this;
  _this setDir -140.10475;
  _this setPos [11500.852, 11296.343, -6.1035156e-005];
};

_vehicle_3310 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11498.888, 11297.943, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3310 = _this;
  _this setDir -140.10475;
  _this setPos [11498.888, 11297.943, 6.1035156e-005];
};

_vehicle_3312 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11497.401, 11293.401, -0.2078137], [], 0, "CAN_COLLIDE"];
  _vehicle_3312 = _this;
  _this setDir -192.92529;
  _this setPos [11497.401, 11293.401, -0.2078137];
};

_vehicle_3318 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11495.271, 11291.993, -0.14681295], [], 0, "CAN_COLLIDE"];
  _vehicle_3318 = _this;
  _this setDir -233.38382;
  _this setPos [11495.271, 11291.993, -0.14681295];
};

_vehicle_3321 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [11493.812, 11290.068, -0.075282], [], 0, "CAN_COLLIDE"];
  _vehicle_3321 = _this;
  _this setDir -233.38382;
  _this setPos [11493.812, 11290.068, -0.075282];
};

_vehicle_3323 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_net2", [11514.683, 11297.934, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3323 = _this;
  _this setPos [11514.683, 11297.934, 6.1035156e-005];
};

_vehicle_3329 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tent_east", [11510.811, 11293.102, 0.25417036], [], 0, "CAN_COLLIDE"];
  _vehicle_3329 = _this;
  _this setDir 39.67794;
  _this setPos [11510.811, 11293.102, 0.25417036];
};

_vehicle_3331 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BarbGate", [11526.241, 11299.895, -0.064838655], [], 0, "CAN_COLLIDE"];
  _vehicle_3331 = _this;
  _this setDir 32.362076;
  _this setPos [11526.241, 11299.895, -0.064838655];
};

_vehicle_3334 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_net2", [11516.72, 11301.549, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3334 = _this;
  _this setPos [11516.72, 11301.549, -3.0517578e-005];
};

_vehicle_3340 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_MBG_GER_PUB_2", [6339.0938, 7776.0698], [], 0, "CAN_COLLIDE"];
  _vehicle_3340 = _this;
  _this setDir 35.13089;
  _this setPos [6339.0938, 7776.0698];
};

_vehicle_3342 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6332.6323, 7769.665, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3342 = _this;
  _this setDir 34.820972;
  _this setPos [6332.6323, 7769.665, -9.1552734e-005];
};

_vehicle_3350 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Gate_IndVar2_5", [11438.792, 11365.445, 0.038330182], [], 0, "CAN_COLLIDE"];
  _vehicle_3350 = _this;
  _this setDir 123.21021;
  _this setPos [11438.792, 11365.445, 0.038330182];
};

_vehicle_3351 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndVar1_Pole", [11440.421, 11367.833, 0.91854775], [], 0, "CAN_COLLIDE"];
  _vehicle_3351 = _this;
  _this setDir 34.521111;
  _this setPos [11440.421, 11367.833, 0.91854775];
};

_vehicle_3352 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndVar1_Pole", [11437.129, 11363.042, 0.88101196], [], 0, "CAN_COLLIDE"];
  _vehicle_3352 = _this;
  _this setDir 37.478237;
  _this setPos [11437.129, 11363.042, 0.88101196];
};

_vehicle_3380 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Gate_IndVar2_5", [11510.392, 11315.881, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3380 = _this;
  _this setDir 125.00763;
  _this setPos [11510.392, 11315.881, -6.1035156e-005];
};

_vehicle_3381 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndVar1_Pole", [11512, 11318.354, 0.86337173], [], 0, "CAN_COLLIDE"];
  _vehicle_3381 = _this;
  _this setDir 34.652122;
  _this setPos [11512, 11318.354, 0.86337173];
};

_vehicle_3382 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndVar1_Pole", [11508.608, 11313.499, 0.87362671], [], 0, "CAN_COLLIDE"];
  _vehicle_3382 = _this;
  _this setDir 34.702385;
  _this setPos [11508.608, 11313.499, 0.87362671];
};

_vehicle_3384 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_76n6_ClamShell_Lower", [6358.1787, 7813.7646, 0.23444387], [], 0, "CAN_COLLIDE"];
  _vehicle_3384 = _this;
  _this setDir -145.34125;
  _this setPos [6358.1787, 7813.7646, 0.23444387];
};

_vehicle_3385 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Barrack2", [6345.501, 7816.5684, 0.13429207], [], 0, "CAN_COLLIDE"];
  _vehicle_3385 = _this;
  _this setDir 33.124096;
  _this setPos [6345.501, 7816.5684, 0.13429207];
};

_vehicle_3388 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Barrack2", [6337.7061, 7822.0259, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3388 = _this;
  _this setDir 33.124096;
  _this setPos [6337.7061, 7822.0259, 6.1035156e-005];
};

_vehicle_3390 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Barrack2", [6331.4258, 7826.1357], [], 0, "CAN_COLLIDE"];
  _vehicle_3390 = _this;
  _this setDir 33.124096;
  _this setPos [6331.4258, 7826.1357];
};

_vehicle_3392 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Barrack2", [6325.772, 7830.1211, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3392 = _this;
  _this setDir 33.124096;
  _this setPos [6325.772, 7830.1211, 6.1035156e-005];
};

_vehicle_3395 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_budova4_in", [6353.0347, 7769.9941, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3395 = _this;
  _this setDir -53.924206;
  _this setPos [6353.0347, 7769.9941, 3.0517578e-005];
};

_vehicle_3396 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Mil_Guardhouse", [6239.2666, 7818.0488, -0.10043561], [], 0, "CAN_COLLIDE"];
  _vehicle_3396 = _this;
  _this setDir -237.89185;
  _this setPos [6239.2666, 7818.0488, -0.10043561];
};

_vehicle_3398 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6225.0981, 7796.6426, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3398 = _this;
  _this setDir -150.34586;
  _this setPos [6225.0981, 7796.6426, -6.1035156e-005];
};

_vehicle_3399 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_PowGen_Big", [6303.6934, 7841.2988], [], 0, "CAN_COLLIDE"];
  _vehicle_3399 = _this;
  _this setPos [6303.6934, 7841.2988];
};

_vehicle_3400 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Camo_Box", [6247.4468, 7854.3125, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3400 = _this;
  _this setDir 219.57541;
  _this setPos [6247.4468, 7854.3125, 9.1552734e-005];
};

_vehicle_3403 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Pristresek", [6256.8481, 7859.5347, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3403 = _this;
  _this setPos [6256.8481, 7859.5347, -6.1035156e-005];
};

_vehicle_3407 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_BagFenceLong", [6290.0142, 7841.8774], [], 0, "CAN_COLLIDE"];
  _vehicle_3407 = _this;
  _this setDir -55.592155;
  _this setPos [6290.0142, 7841.8774];
};

_vehicle_3417 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Barbedwire", [6247.9023, 7796.0483, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3417 = _this;
  _this setDir 120.11841;
  _this setPos [6247.9023, 7796.0483, -3.0517578e-005];
};

_vehicle_3419 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [6307.9268, 7861.73, -0.24877903], [], 0, "CAN_COLLIDE"];
  _vehicle_3419 = _this;
  _this setDir 34.023617;
  _this setPos [6307.9268, 7861.73, -0.24877903];
};

_vehicle_3421 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Fort_Razorwire", [6299.667, 7853.7524, 0.091854498], [], 0, "CAN_COLLIDE"];
  _vehicle_3421 = _this;
  _this setDir 127.05444;
  _this setPos [6299.667, 7853.7524, 0.091854498];
};

_vehicle_3428 = objNull;
if (true) then
{
  _this = createVehicle ["Bunker_PMC", [6276.7119, 7794.2515, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3428 = _this;
  _this setDir 217.61929;
  _this setPos [6276.7119, 7794.2515, -9.1552734e-005];
};

_vehicle_3430 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1E_EP1", [6374.3442, 7779.8462, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_3430 = _this;
  _this setDir -45.955284;
  _this setPos [6374.3442, 7779.8462, -0.00018310547];
};

_vehicle_3432 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_small_EP1", [6375.501, 7813.7422, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3432 = _this;
  _this setDir 24.609259;
  _this setPos [6375.501, 7813.7422, 9.1552734e-005];
};

_vehicle_3433 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_tiny", [6334.6108, 7784.8691, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_3433 = _this;
  _this setDir -55.3167;
  _this setPos [6334.6108, 7784.8691, -0.00015258789];
};

_vehicle_3439 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big", [6331.4658, 7781.6182], [], 0, "CAN_COLLIDE"];
  _vehicle_3439 = _this;
  _this setDir 33.806545;
  _this setPos [6331.4658, 7781.6182];
};

_vehicle_3441 = objNull;
if (true) then
{
  _this = createVehicle ["WarfareBDepot", [6392.1572, 7800.1187, -0.16253376], [], 0, "CAN_COLLIDE"];
  _vehicle_3441 = _this;
  _this setDir 242.60794;
  _this setPos [6392.1572, 7800.1187, -0.16253376];
};

_vehicle_3443 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6293.9102, 7796.7627, 0.19590767], [], 0, "CAN_COLLIDE"];
  _vehicle_3443 = _this;
  _this setDir 35.687778;
  _this setPos [6293.9102, 7796.7627, 0.19590767];
};

_vehicle_3445 = objNull;
if (true) then
{
  _this = createVehicle ["USMC_WarfareBFieldhHospital", [6314.9731, 7839.2681, 0.051763531], [], 0, "CAN_COLLIDE"];
  _vehicle_3445 = _this;
  _this setDir 302.21497;
  _this setPos [6314.9731, 7839.2681, 0.051763531];
};

_vehicle_3454 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Ind1_L", [6244.2529, 7809.4385, 0.18501242], [], 0, "CAN_COLLIDE"];
  _vehicle_3454 = _this;
  _this setDir 38.702961;
  _this setPos [6244.2529, 7809.4385, 0.18501242];
};

_vehicle_3455 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Ind1_R", [6244.252, 7809.4375, 0.18722197], [], 0, "CAN_COLLIDE"];
  _vehicle_3455 = _this;
  _this setDir 38.974079;
  _this setPos [6244.252, 7809.4375, 0.18722197];
};

_vehicle_3456 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Kolchoz", [6229.25, 7790.0103, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3456 = _this;
  _this setDir 31.558176;
  _this setPos [6229.25, 7790.0103, -3.0517578e-005];
};

_vehicle_3459 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_D", [6245.5742, 7821.8896, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3459 = _this;
  _this setDir 33.5494;
  _this setPos [6245.5742, 7821.8896, 3.0517578e-005];
};

_vehicle_3461 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Gate_IndVar2_5", [6229.957, 7791.0566, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3461 = _this;
  _this setDir 28.81546;
  _this setPos [6229.957, 7791.0566, -3.0517578e-005];
};

_vehicle_3476 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndVar1_Pole", [6232.4536, 7789.5615, 0.56315339], [], 0, "CAN_COLLIDE"];
  _vehicle_3476 = _this;
  _this setDir 30.855549;
  _this setPos [6232.4536, 7789.5615, 0.56315339];
};

_vehicle_3481 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndVar1_5", [6235.4575, 7787.7275, 0.54660434], [], 0, "CAN_COLLIDE"];
  _vehicle_3481 = _this;
  _this setDir 211.54591;
  _this setPos [6235.4575, 7787.7275, 0.54660434];
};

_vehicle_3482 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndVar1_5_2", [6224.2285, 7794.0034, 0.61292428], [], 0, "CAN_COLLIDE"];
  _vehicle_3482 = _this;
  _this setDir 28.860023;
  _this setPos [6224.2285, 7794.0034, 0.61292428];
};

_vehicle_3485 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndVar1_5_D_2", [6218.875, 7796.9277, 0.64507759], [], 0, "CAN_COLLIDE"];
  _vehicle_3485 = _this;
  _this setDir 28.310003;
  _this setPos [6218.875, 7796.9277, 0.64507759];
};

_vehicle_3488 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndVar1_Pole", [6227.2974, 7792.3984, 0.57515031], [], 0, "CAN_COLLIDE"];
  _vehicle_3488 = _this;
  _this setDir 31.144793;
  _this setPos [6227.2974, 7792.3984, 0.57515031];
};

_vehicle_3492 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndVar1_5", [6240.5078, 7784.4785, 0.61595064], [], 0, "CAN_COLLIDE"];
  _vehicle_3492 = _this;
  _this setDir 211.54591;
  _this setPos [6240.5078, 7784.4785, 0.61595064];
};

_vehicle_3494 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndVar1_5", [6244.3691, 7785.5781, 0.68107814], [], 0, "CAN_COLLIDE"];
  _vehicle_3494 = _this;
  _this setDir 120.06056;
  _this setPos [6244.3691, 7785.5781, 0.68107814];
};

_vehicle_3497 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndVar1_5_D_2", [6247.3398, 7790.7661, 0.80065054], [], 0, "CAN_COLLIDE"];
  _vehicle_3497 = _this;
  _this setDir 118.95605;
  _this setPos [6247.3398, 7790.7661, 0.80065054];
};

_vehicle_3501 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6237.5557, 7789.2588], [], 0, "CAN_COLLIDE"];
  _vehicle_3501 = _this;
  _this setDir -150.34586;
  _this setPos [6237.5557, 7789.2588];
};

_vehicle_3504 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [6235.02, 7785.4287, -0.23714726], [], 0, "CAN_COLLIDE"];
  _vehicle_3504 = _this;
  _this setDir 33.40004;
  _this setPos [6235.02, 7785.4287, -0.23714726];
};

_vehicle_3507 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [6222.6177, 7792.5225, 0.019842561], [], 0, "CAN_COLLIDE"];
  _vehicle_3507 = _this;
  _this setDir -148.56981;
  _this setPos [6222.6177, 7792.5225, 0.019842561];
};

_vehicle_3510 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6212.9878, 7807.1826, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3510 = _this;
  _this setDir 26.23461;
  _this setPos [6212.9878, 7807.1826, -6.1035156e-005];
};

_vehicle_3512 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6217.8506, 7799.3403, 0.001255183], [], 0, "CAN_COLLIDE"];
  _vehicle_3512 = _this;
  _this setDir -60.223759;
  _this setPos [6217.8506, 7799.3403, 0.001255183];
};

_vehicle_3515 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6212.418, 7802.353, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3515 = _this;
  _this setDir -60.223759;
  _this setPos [6212.418, 7802.353, -6.1035156e-005];
};

_vehicle_3518 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6215.8096, 7812.7651, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3518 = _this;
  _this setDir 26.23461;
  _this setPos [6215.8096, 7812.7651, 6.1035156e-005];
};

_vehicle_3520 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6218.6328, 7818.2705], [], 0, "CAN_COLLIDE"];
  _vehicle_3520 = _this;
  _this setDir 26.23461;
  _this setPos [6218.6328, 7818.2705];
};

_vehicle_3522 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6221.3994, 7823.7979, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3522 = _this;
  _this setDir 26.23461;
  _this setPos [6221.3994, 7823.7979, -3.0517578e-005];
};

_vehicle_3524 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6224.2212, 7829.2393, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3524 = _this;
  _this setDir 26.23461;
  _this setPos [6224.2212, 7829.2393, -6.1035156e-005];
};

_vehicle_3526 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6226.8945, 7834.9131, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3526 = _this;
  _this setDir 26.23461;
  _this setPos [6226.8945, 7834.9131, -9.1552734e-005];
};

_vehicle_3528 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6229.812, 7840.3613, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3528 = _this;
  _this setDir 26.23461;
  _this setPos [6229.812, 7840.3613, 3.0517578e-005];
};

_vehicle_3530 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6232.8027, 7845.7778, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3530 = _this;
  _this setDir 26.23461;
  _this setPos [6232.8027, 7845.7778, -9.1552734e-005];
};

_vehicle_3532 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6235.4263, 7851.3589, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3532 = _this;
  _this setDir 26.23461;
  _this setPos [6235.4263, 7851.3589, -0.00012207031];
};

_vehicle_3534 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6238.2773, 7857.1436, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3534 = _this;
  _this setDir 33.001793;
  _this setPos [6238.2773, 7857.1436, -9.1552734e-005];
};

_vehicle_3537 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6242.0532, 7862.293, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_3537 = _this;
  _this setDir 39.071682;
  _this setPos [6242.0532, 7862.293, 0.00015258789];
};

_vehicle_3539 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6247.2139, 7866.2578, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_3539 = _this;
  _this setDir 63.084747;
  _this setPos [6247.2139, 7866.2578, -0.00015258789];
};

_vehicle_3541 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6253.1123, 7868.5503, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3541 = _this;
  _this setDir 74.383171;
  _this setPos [6253.1123, 7868.5503, -9.1552734e-005];
};

_vehicle_3545 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6259.3799, 7869.6714, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_3545 = _this;
  _this setDir 85.458961;
  _this setPos [6259.3799, 7869.6714, -0.00021362305];
};

_vehicle_3548 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6265.7148, 7869.9365, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3548 = _this;
  _this setDir 91.657074;
  _this setPos [6265.7148, 7869.9365, -0.00012207031];
};

_vehicle_3550 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6272.0049, 7869.7412, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3550 = _this;
  _this setDir 93.049149;
  _this setPos [6272.0049, 7869.7412, -0.00012207031];
};

_vehicle_3552 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6278.2236, 7869.3325, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3552 = _this;
  _this setDir 93.52951;
  _this setPos [6278.2236, 7869.3325, 3.0517578e-005];
};

_vehicle_3555 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6284.5371, 7868.3076, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3555 = _this;
  _this setDir 106.53265;
  _this setPos [6284.5371, 7868.3076, -9.1552734e-005];
};

_vehicle_3558 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6290.5024, 7865.9038, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3558 = _this;
  _this setDir 116.97227;
  _this setPos [6290.5024, 7865.9038, -3.0517578e-005];
};

_vehicle_3561 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6295.8896, 7862.9165, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3561 = _this;
  _this setDir 120.47413;
  _this setPos [6295.8896, 7862.9165, 9.1552734e-005];
};

_vehicle_3563 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6301.2671, 7859.5547, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_3563 = _this;
  _this setDir 124.9029;
  _this setPos [6301.2671, 7859.5547, -0.00015258789];
};

_vehicle_3566 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1Bo_military", [6304.4053, 7856.8179, -0.039311536], [], 0, "CAN_COLLIDE"];
  _vehicle_3566 = _this;
  _this setDir 34.650299;
  _this setPos [6304.4053, 7856.8179, -0.039311536];
};

_vehicle_3569 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6308.1431, 7854.332, -0.092894956], [], 0, "CAN_COLLIDE"];
  _vehicle_3569 = _this;
  _this setDir 124.29785;
  _this setPos [6308.1431, 7854.332, -0.092894956];
};

_vehicle_3572 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6312.834, 7849.9736, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3572 = _this;
  _this setDir 124.29785;
  _this setPos [6312.834, 7849.9736, -0.00012207031];
};

_vehicle_3575 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6318.0903, 7846.665, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3575 = _this;
  _this setDir 120.39277;
  _this setPos [6318.0903, 7846.665, -9.1552734e-005];
};

_vehicle_3577 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6323.4795, 7843.6045, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3577 = _this;
  _this setDir 117.41238;
  _this setPos [6323.4795, 7843.6045, -3.0517578e-005];
};

_vehicle_3579 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6328.9258, 7840.501, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3579 = _this;
  _this setDir 121.15743;
  _this setPos [6328.9258, 7840.501, -3.0517578e-005];
};

_vehicle_3583 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6334.1182, 7837.1665, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3583 = _this;
  _this setDir 121.15743;
  _this setPos [6334.1182, 7837.1665, -3.0517578e-005];
};

_vehicle_3585 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6339.2827, 7833.8438, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3585 = _this;
  _this setDir 122.94334;
  _this setPos [6339.2827, 7833.8438, 3.0517578e-005];
};

_vehicle_3587 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6344.5327, 7830.4873], [], 0, "CAN_COLLIDE"];
  _vehicle_3587 = _this;
  _this setDir 121.15743;
  _this setPos [6344.5327, 7830.4873];
};

_vehicle_3589 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6349.6792, 7827.165], [], 0, "CAN_COLLIDE"];
  _vehicle_3589 = _this;
  _this setDir 121.15743;
  _this setPos [6349.6792, 7827.165];
};

_vehicle_3591 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6355.0098, 7823.9409, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3591 = _this;
  _this setDir 121.15743;
  _this setPos [6355.0098, 7823.9409, -6.1035156e-005];
};

_vehicle_3593 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6360.3882, 7820.7524], [], 0, "CAN_COLLIDE"];
  _vehicle_3593 = _this;
  _this setDir 121.15743;
  _this setPos [6360.3882, 7820.7524];
};

_vehicle_3595 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6365.9492, 7817.8755, -0.013299827], [], 0, "CAN_COLLIDE"];
  _vehicle_3595 = _this;
  _this setDir 113.99426;
  _this setPos [6365.9492, 7817.8755, -0.013299827];
};

_vehicle_3597 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6371.5547, 7815.3301, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3597 = _this;
  _this setDir 113.70024;
  _this setPos [6371.5547, 7815.3301, -3.0517578e-005];
};

_vehicle_3599 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6250.4585, 7788.7036], [], 0, "CAN_COLLIDE"];
  _vehicle_3599 = _this;
  _this setDir 121.15743;
  _this setPos [6250.4585, 7788.7036];
};

_vehicle_3601 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6255.5474, 7785.6172, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3601 = _this;
  _this setDir 121.15743;
  _this setPos [6255.5474, 7785.6172, -3.0517578e-005];
};

_vehicle_3603 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6261.0186, 7782.2993, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3603 = _this;
  _this setDir 121.15743;
  _this setPos [6261.0186, 7782.2993, -6.1035156e-005];
};

_vehicle_3605 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6261.9985, 7787.4985, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3605 = _this;
  _this setDir 34.672794;
  _this setPos [6261.9985, 7787.4985, -6.1035156e-005];
};

_vehicle_3607 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6259.7046, 7788.9355, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3607 = _this;
  _this setDir 215.88901;
  _this setPos [6259.7046, 7788.9355, -0.00012207031];
};

_vehicle_3609 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6260.5483, 7787.8325, 2.5997939], [], 0, "CAN_COLLIDE"];
  _vehicle_3609 = _this;
  _this setDir 36.267845;
  _this setPos [6260.5483, 7787.8325, 2.5997939];
};

_vehicle_3613 = objNull;
if (true) then
{
  _this = createVehicle ["ZavoraAnim", [6246.6821, 7806.627, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3613 = _this;
  _this setDir 35.963467;
  _this setPos [6246.6821, 7806.627, -6.1035156e-005];
};

_vehicle_3614 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Hlidac_budka", [6250.6284, 7807.9043, -0.018899359], [], 0, "CAN_COLLIDE"];
  _vehicle_3614 = _this;
  _this setDir 312.25674;
  _this setPos [6250.6284, 7807.9043, -0.018899359];
};

_vehicle_3618 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6235.2383, 7790.7676], [], 0, "CAN_COLLIDE"];
  _vehicle_3618 = _this;
  _this setDir -56.246136;
  _this setPos [6235.2383, 7790.7676];
};

_vehicle_3620 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6224.8647, 7788.3882], [], 0, "CAN_COLLIDE"];
  _vehicle_3620 = _this;
  _this setPos [6224.8647, 7788.3882];
};

_vehicle_3623 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6230.6025, 7784.8838], [], 0, "CAN_COLLIDE"];
  _vehicle_3623 = _this;
  _this setDir 81.969086;
  _this setPos [6230.6025, 7784.8838];
};

_vehicle_3625 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6228.3174, 7794.2598], [], 0, "CAN_COLLIDE"];
  _vehicle_3625 = _this;
  _this setDir -56.786755;
  _this setPos [6228.3174, 7794.2598];
};

_vehicle_3628 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6229.8687, 7796.5557, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3628 = _this;
  _this setDir -56.786755;
  _this setPos [6229.8687, 7796.5557, -9.1552734e-005];
};

_vehicle_3630 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6231.3657, 7798.8735, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3630 = _this;
  _this setDir -56.786755;
  _this setPos [6231.3657, 7798.8735, -6.1035156e-005];
};

_vehicle_3632 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6232.8926, 7801.1938], [], 0, "CAN_COLLIDE"];
  _vehicle_3632 = _this;
  _this setDir -56.786755;
  _this setPos [6232.8926, 7801.1938];
};

_vehicle_3634 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6234.2788, 7803.3921, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3634 = _this;
  _this setDir -57.793396;
  _this setPos [6234.2788, 7803.3921, -6.1035156e-005];
};

_vehicle_3636 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6235.7158, 7805.6147, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3636 = _this;
  _this setDir -56.786755;
  _this setPos [6235.7158, 7805.6147, -3.0517578e-005];
};

_vehicle_3638 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6237.1421, 7807.7871, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3638 = _this;
  _this setDir -56.786755;
  _this setPos [6237.1421, 7807.7871, -0.00012207031];
};

_vehicle_3640 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6244.6816, 7802.7446, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3640 = _this;
  _this setDir -80.869141;
  _this setPos [6244.6816, 7802.7446, -3.0517578e-005];
};

_vehicle_3642 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6245.6084, 7805.3223, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3642 = _this;
  _this setDir -56.786755;
  _this setPos [6245.6084, 7805.3223, -6.1035156e-005];
};

_vehicle_3644 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6239.439, 7811.0693], [], 0, "CAN_COLLIDE"];
  _vehicle_3644 = _this;
  _this setDir -56.786755;
  _this setPos [6239.439, 7811.0693];
};

_vehicle_3646 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6245.6768, 7800.687, -0.013924009], [], 0, "CAN_COLLIDE"];
  _vehicle_3646 = _this;
  _this setDir 31.42251;
  _this setPos [6245.6768, 7800.687, -0.013924009];
};

_vehicle_3649 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier3", [6245.856, 7803.71, 0.10496907], [], 0, "CAN_COLLIDE"];
  _vehicle_3649 = _this;
  _this setDir 33.67857;
  _this setPos [6245.856, 7803.71, 0.10496907];
};

_vehicle_3652 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier3", [6248.9131, 7801.6602, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3652 = _this;
  _this setDir 33.67857;
  _this setPos [6248.9131, 7801.6602, -0.00012207031];
};

_vehicle_3654 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier3", [6271.4395, 7802.8813, 0.1985369], [], 0, "CAN_COLLIDE"];
  _vehicle_3654 = _this;
  _this setDir 33.67857;
  _this setPos [6271.4395, 7802.8813, 0.1985369];
};

_vehicle_3658 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [6266.5718, 7806.3516, 0.33122572], [], 0, "CAN_COLLIDE"];
  _vehicle_3658 = _this;
  _this setDir 36.008823;
  _this setPos [6266.5718, 7806.3516, 0.33122572];
};

_vehicle_3661 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [6261.8232, 7810.0093, 0.20205401], [], 0, "CAN_COLLIDE"];
  _vehicle_3661 = _this;
  _this setDir 36.008823;
  _this setPos [6261.8232, 7810.0093, 0.20205401];
};

_vehicle_3670 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6258.5928, 7807.2378, -0.037853442], [], 0, "CAN_COLLIDE"];
  _vehicle_3670 = _this;
  _this setDir 219.41907;
  _this setPos [6258.5928, 7807.2378, -0.037853442];
};

_vehicle_3673 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6254.4507, 7802.165, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3673 = _this;
  _this setDir 219.41907;
  _this setPos [6254.4507, 7802.165, 3.0517578e-005];
};

_vehicle_3676 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6247.9316, 7799.3345, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3676 = _this;
  _this setDir 31.42251;
  _this setPos [6247.9316, 7799.3345, -6.1035156e-005];
};

_vehicle_3678 = objNull;
if (true) then
{
  _this = createVehicle ["BRDMWreck", [6267.3052, 7799.5493, -0.23639445], [], 0, "CAN_COLLIDE"];
  _vehicle_3678 = _this;
  _this setPos [6267.3052, 7799.5493, -0.23639445];
};

_vehicle_3679 = objNull;
if (true) then
{
  _this = createVehicle ["BMP2Wreck", [6262.8003, 7795.3433, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3679 = _this;
  _this setPos [6262.8003, 7795.3433, -9.1552734e-005];
};

_vehicle_3680 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [6250.7378, 7795.5073, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3680 = _this;
  _this setPos [6250.7378, 7795.5073, -6.1035156e-005];
};

_vehicle_3681 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [6263.1206, 7803.6543, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3681 = _this;
  _this setPos [6263.1206, 7803.6543, -3.0517578e-005];
};

_vehicle_3682 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [6259.0566, 7799.3955, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3682 = _this;
  _this setDir -89.239426;
  _this setPos [6259.0566, 7799.3955, -6.1035156e-005];
};

_vehicle_3683 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [6256.0576, 7793.5347, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3683 = _this;
  _this setDir -53.194759;
  _this setPos [6256.0576, 7793.5347, -9.1552734e-005];
};

_vehicle_3685 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6216.7422, 7804.7061, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3685 = _this;
  _this setDir -127.78981;
  _this setPos [6216.7422, 7804.7061, 6.1035156e-005];
};

_vehicle_3687 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6244.1235, 7788.5088], [], 0, "CAN_COLLIDE"];
  _vehicle_3687 = _this;
  _this setDir -228.77864;
  _this setPos [6244.1235, 7788.5088];
};

_vehicle_3689 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6225.8872, 7826.0693, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3689 = _this;
  _this setDir -427.27106;
  _this setPos [6225.8872, 7826.0693, -3.0517578e-005];
};

_vehicle_3692 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6237.4316, 7846.4424, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3692 = _this;
  _this setDir -427.27106;
  _this setPos [6237.4316, 7846.4424, -9.1552734e-005];
};

_vehicle_3694 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6248.1011, 7862.6641, 0.21702123], [], 0, "CAN_COLLIDE"];
  _vehicle_3694 = _this;
  _this setDir -386.35324;
  _this setPos [6248.1011, 7862.6641, 0.21702123];
};

_vehicle_3696 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6271.0171, 7865.876, 0.17032294], [], 0, "CAN_COLLIDE"];
  _vehicle_3696 = _this;
  _this setDir -355.88397;
  _this setPos [6271.0171, 7865.876, 0.17032294];
};

_vehicle_3698 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6291.8774, 7860.127, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3698 = _this;
  _this setDir -326.34384;
  _this setPos [6291.8774, 7860.127, 6.1035156e-005];
};

_vehicle_3701 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [6310.0059, 7864.9907, -0.35168567], [], 0, "CAN_COLLIDE"];
  _vehicle_3701 = _this;
  _this setDir 215.7316;
  _this setPos [6310.0059, 7864.9907, -0.35168567];
};

_vehicle_3719 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_plot_green_draty", [6300.7603, 7853.2334, -0.08370772], [], 0, "CAN_COLLIDE"];
  _vehicle_3719 = _this;
  _this setDir -54.32711;
  _this setPos [6300.7603, 7853.2334, -0.08370772];
};

_vehicle_3724 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_plot_green_draty", [6299.1431, 7851.3237, -0.055961251], [], 0, "CAN_COLLIDE"];
  _vehicle_3724 = _this;
  _this setDir -47.10379;
  _this setPos [6299.1431, 7851.3237, -0.055961251];
};

_vehicle_3729 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [6297.418, 7849.5068, -0.11425882], [], 0, "CAN_COLLIDE"];
  _vehicle_3729 = _this;
  _this setDir 132.93637;
  _this setPos [6297.418, 7849.5068, -0.11425882];
};

_vehicle_3735 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_GuardShed", [6289.1348, 7842.7759, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3735 = _this;
  _this setDir -55.977848;
  _this setPos [6289.1348, 7842.7759, -3.0517578e-005];
};

_vehicle_3754 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_fortified_nest_small", [6292.228, 7847.9268, -0.013776274], [], 0, "CAN_COLLIDE"];
  _vehicle_3754 = _this;
  _this setDir -49.625149;
  _this setPos [6292.228, 7847.9268, -0.013776274];
};

_vehicle_3762 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [6295.3774, 7849.1006, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3762 = _this;
  _this setDir 227.22942;
  _this setPos [6295.3774, 7849.1006, -6.1035156e-005];
};

_vehicle_3786 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_zidka_branka", [6286.9897, 7841.4272, 0.15162706], [], 0, "CAN_COLLIDE"];
  _vehicle_3786 = _this;
  _this setDir 35.469906;
  _this setPos [6286.9897, 7841.4272, 0.15162706];
};

_vehicle_3787 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_zidka01", [6293.6401, 7837.3008, 0.15846159], [], 0, "CAN_COLLIDE"];
  _vehicle_3787 = _this;
  _this setDir -53.947502;
  _this setPos [6293.6401, 7837.3008, 0.15846159];
};

_vehicle_3788 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_zidka02", [6289.9634, 7844.0728, 0.11709072], [], 0, "CAN_COLLIDE"];
  _vehicle_3788 = _this;
  _this setDir -54.679829;
  _this setPos [6289.9634, 7844.0728, 0.11709072];
};

_vehicle_3791 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_zidka01", [6295.1226, 7839.3306, 0.11801933], [], 0, "CAN_COLLIDE"];
  _vehicle_3791 = _this;
  _this setDir -53.947502;
  _this setPos [6295.1226, 7839.3306, 0.11801933];
};

_vehicle_3793 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_zidka01", [6296.6025, 7841.3486, 0.11666359], [], 0, "CAN_COLLIDE"];
  _vehicle_3793 = _this;
  _this setDir -53.947502;
  _this setPos [6296.6025, 7841.3486, 0.11666359];
};

_vehicle_3796 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_zidka01", [6298.063, 7843.3379, 0.12748763], [], 0, "CAN_COLLIDE"];
  _vehicle_3796 = _this;
  _this setDir -53.959095;
  _this setPos [6298.063, 7843.3379, 0.12748763];
};

_vehicle_3800 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_zidka01", [6301.0044, 7847.3496, 0.091744117], [], 0, "CAN_COLLIDE"];
  _vehicle_3800 = _this;
  _this setDir -53.959095;
  _this setPos [6301.0044, 7847.3496, 0.091744117];
};

_vehicle_3801 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_zidka01", [6299.5439, 7845.3604, 0.14051118], [], 0, "CAN_COLLIDE"];
  _vehicle_3801 = _this;
  _this setDir -53.947502;
  _this setPos [6299.5439, 7845.3604, 0.14051118];
};

_vehicle_3804 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_zidka01", [6303.9277, 7851.3628, 0.033691298], [], 0, "CAN_COLLIDE"];
  _vehicle_3804 = _this;
  _this setDir -53.959095;
  _this setPos [6303.9277, 7851.3628, 0.033691298];
};

_vehicle_3805 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_zidka01", [6302.4673, 7849.3735, 0.075907625], [], 0, "CAN_COLLIDE"];
  _vehicle_3805 = _this;
  _this setDir -53.947502;
  _this setPos [6302.4673, 7849.3735, 0.075907625];
};

_vehicle_3811 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_plot_rust_brank_o", [6290.5796, 7839.7471, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3811 = _this;
  _this setDir 395.30081;
  _this setPos [6290.5796, 7839.7471, -6.1035156e-005];
};

_vehicle_3814 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier3", [6231.146, 7818.9941], [], 0, "CAN_COLLIDE"];
  _vehicle_3814 = _this;
  _this setDir 33.67857;
  _this setPos [6231.146, 7818.9941];
};

_vehicle_3816 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier3", [6228.2383, 7821.0889, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3816 = _this;
  _this setDir 33.67857;
  _this setPos [6228.2383, 7821.0889, 6.1035156e-005];
};

_vehicle_3818 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier3", [6225.1162, 7822.813, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3818 = _this;
  _this setDir 28.516285;
  _this setPos [6225.1162, 7822.813, -6.1035156e-005];
};

_vehicle_3820 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier3", [6224.5903, 7824.3564, -0.064804032], [], 0, "CAN_COLLIDE"];
  _vehicle_3820 = _this;
  _this setDir 121.47375;
  _this setPos [6224.5903, 7824.3564, -0.064804032];
};

_vehicle_3823 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [6286.0986, 7797.5229, -0.11941425], [], 0, "CAN_COLLIDE"];
  _vehicle_3823 = _this;
  _this setDir 216.24893;
  _this setPos [6286.0986, 7797.5229, -0.11941425];
};

_vehicle_3826 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_SideRoof", [6268.2808, 7811.1401, 1.1262474], [], 0, "CAN_COLLIDE"];
  _vehicle_3826 = _this;
  _this setDir 124.98798;
  _this setPos [6268.2808, 7811.1401, 1.1262474];
};

_vehicle_3845 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_repair_center", [6305.2012, 7804.0762, -0.13704152], [], 0, "CAN_COLLIDE"];
  _vehicle_3845 = _this;
  _this setDir 128.48996;
  _this setPos [6305.2012, 7804.0762, -0.13704152];
};

_vehicle_3848 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6307.231, 7807.335, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3848 = _this;
  _this setDir 313.45294;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6307.231, 7807.335, 3.0517578e-005];
};

_vehicle_3850 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6304.5464, 7850.5508, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3850 = _this;
  _this setDir 313.45294;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6304.5464, 7850.5508, 9.1552734e-005];
};

_vehicle_3852 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6302.1997, 7847.6426, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3852 = _this;
  _this setDir 313.45294;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6302.1997, 7847.6426, 6.1035156e-005];
};

_vehicle_3854 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6298.3228, 7842.6108, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3854 = _this;
  _this setDir 313.45294;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6298.3228, 7842.6108, 3.0517578e-005];
};

_vehicle_3856 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6295.9443, 7839.6089, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_3856 = _this;
  _this setDir 313.45294;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6295.9443, 7839.6089, 0];
};

_vehicle_3858 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6291.9121, 7837.5581, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3858 = _this;
  _this setDir 397.12415;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6291.9121, 7837.5581, 3.0517578e-005];
};

_vehicle_3860 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6288.5938, 7839.9023], [], 0, "CAN_COLLIDE"];
  _vehicle_3860 = _this;
  _this setDir 397.71426;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6288.5938, 7839.9023];
};

_vehicle_3862 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6233.2148, 7789.4106, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3862 = _this;
  _this setDir 241.97142;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6233.2148, 7789.4106, 3.0517578e-005];
};

_vehicle_3865 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6226.9873, 7793.3145, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3865 = _this;
  _this setDir 170.72256;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6226.9873, 7793.3145, 6.1035156e-005];
};

_vehicle_3867 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6246.5752, 7805.4995, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3867 = _this;
  _this setDir 241.97142;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6246.5752, 7805.4995, 3.0517578e-005];
};

_vehicle_3869 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6239.3252, 7811.8618, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3869 = _this;
  _this setDir 161.97876;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6239.3252, 7811.8618, 3.0517578e-005];
};

_vehicle_3871 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6242.3237, 7784.334], [], 0, "CAN_COLLIDE"];
  _vehicle_3871 = _this;
  _this setDir 219.51965;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6242.3237, 7784.334];
};

_vehicle_3873 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6271.4233, 7800.145, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3873 = _this;
  _this setDir 259.98154;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6271.4233, 7800.145, -9.1552734e-005];
};

_vehicle_3876 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_D", [6243.4482, 7823.2554, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3876 = _this;
  _this setDir 33.5494;
  _this setPos [6243.4482, 7823.2554, -0.00012207031];
};

_vehicle_3878 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_D", [6241.2515, 7824.6982, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3878 = _this;
  _this setDir 33.5494;
  _this setPos [6241.2515, 7824.6982, 9.1552734e-005];
};

_vehicle_3881 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Pristresek", [6267.5264, 7858.6143, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3881 = _this;
  _this setDir 12.314199;
  _this setPos [6267.5264, 7858.6143, -6.1035156e-005];
};

_vehicle_3883 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Pristresek", [6232.7886, 7829.1851, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3883 = _this;
  _this setDir -58.992405;
  _this setPos [6232.7886, 7829.1851, -6.1035156e-005];
};

_vehicle_3886 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Camo_Box", [6240.0918, 7841.6245, 0.096403249], [], 0, "CAN_COLLIDE"];
  _vehicle_3886 = _this;
  _this setDir 211.42769;
  _this setPos [6240.0918, 7841.6245, 0.096403249];
};

_vehicle_3889 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6301.7827, 7800.7407, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3889 = _this;
  _this setDir 134.02243;
  _this setPos [6301.7827, 7800.7407, -6.1035156e-005];
};

_vehicle_3891 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6299.3901, 7797.9561, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3891 = _this;
  _this setDir 127.65169;
  _this setPos [6299.3901, 7797.9561, 3.0517578e-005];
};

_vehicle_3894 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [6310.0303, 7809.1812, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3894 = _this;
  _this setDir 126.09799;
  _this setPos [6310.0303, 7809.1812, -3.0517578e-005];
};

_vehicle_3896 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [6311.5527, 7811.1904, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3896 = _this;
  _this setDir 126.09799;
  _this setPos [6311.5527, 7811.1904, -3.0517578e-005];
};

_vehicle_3899 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [6315.7666, 7805.6997], [], 0, "CAN_COLLIDE"];
  _vehicle_3899 = _this;
  _this setPos [6315.7666, 7805.6997];
};

_vehicle_3901 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_AdvertisingColumn", [6341.3296, 7788.7065, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3901 = _this;
  _this setPos [6341.3296, 7788.7065, -3.0517578e-005];
};

_vehicle_3904 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_chair_2", [6337.2827, 7783.8086], [], 0, "CAN_COLLIDE"];
  _vehicle_3904 = _this;
  _this setDir 188.29582;
  _this setPos [6337.2827, 7783.8086];
};

_vehicle_3911 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_campfire", [6350.2417, 7784.4248, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3911 = _this;
  _this setPos [6350.2417, 7784.4248, 3.0517578e-005];
};

_vehicle_3915 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_psi_bouda", [6349.0435, 7776.1016], [], 0, "CAN_COLLIDE"];
  _vehicle_3915 = _this;
  _this setDir 30.486841;
  _this setPos [6349.0435, 7776.1016];
};

_vehicle_3917 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_stanek_3", [6337.4507, 7784.5786, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3917 = _this;
  _this setDir 125.46144;
  _this setPos [6337.4507, 7784.5786, -3.0517578e-005];
};

_vehicle_3924 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_popelnice", [6339.1274, 7783.1162, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3924 = _this;
  _this setPos [6339.1274, 7783.1162, 3.0517578e-005];
};

_vehicle_3926 = objNull;
if (true) then
{
  _this = createVehicle ["Park_bench2_noRoad", [6347.2861, 7783.3062], [], 0, "CAN_COLLIDE"];
  _vehicle_3926 = _this;
  _this setDir 35.463745;
  _this setPos [6347.2861, 7783.3062];
};

_vehicle_3929 = objNull;
if (true) then
{
  _this = createVehicle ["Park_bench2_noRoad", [6350.3081, 7780.9248, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3929 = _this;
  _this setDir 35.463745;
  _this setPos [6350.3081, 7780.9248, 3.0517578e-005];
};

_vehicle_3931 = objNull;
if (true) then
{
  _this = createVehicle ["Park_bench1", [6350.0908, 7786.0664, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3931 = _this;
  _this setPos [6350.0908, 7786.0664, -3.0517578e-005];
};

_vehicle_3933 = objNull;
if (true) then
{
  _this = createVehicle ["Park_bench1", [6352.1948, 7784.5171, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3933 = _this;
  _this setDir 84.077797;
  _this setPos [6352.1948, 7784.5171, 6.1035156e-005];
};

_vehicle_3935 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Canister_EP1", [6357.8428, 7763.498, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3935 = _this;
  _this setDir 1.5782489;
  _this setPos [6357.8428, 7763.498, -3.0517578e-005];
};

_vehicle_3937 = objNull;
if (true) then
{
  _this = createVehicle ["SmallTable", [6357.4858, 7765.2793, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3937 = _this;
  _this setDir -6.4805765;
  _this setPos [6357.4858, 7765.2793, -3.0517578e-005];
};

_vehicle_3939 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Table_EP1", [6351.1948, 7778.9717, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3939 = _this;
  _this setDir 34.066784;
  _this setPos [6351.1948, 7778.9717, -3.0517578e-005];
};

_vehicle_3942 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6345.5693, 7760.6597, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3942 = _this;
  _this setDir 34.820972;
  _this setPos [6345.5693, 7760.6597, -3.0517578e-005];
};

_vehicle_3944 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6358.8799, 7759.9526, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3944 = _this;
  _this setDir -38.270348;
  _this setPos [6358.8799, 7759.9526, 3.0517578e-005];
};

_vehicle_3947 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6366.8364, 7751.2515], [], 0, "CAN_COLLIDE"];
  _vehicle_3947 = _this;
  _this setDir -38.270348;
  _this setPos [6366.8364, 7751.2515];
};

_vehicle_3949 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6370.4033, 7771.0283, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3949 = _this;
  _this setDir -49.610882;
  _this setPos [6370.4033, 7771.0283, 3.0517578e-005];
};

_vehicle_3951 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6379.0254, 7760.9414, 0.16221391], [], 0, "CAN_COLLIDE"];
  _vehicle_3951 = _this;
  _this setDir -38.270348;
  _this setPos [6379.0254, 7760.9414, 0.16221391];
};

_vehicle_3953 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6390.9551, 7771.2017, 0.079718664], [], 0, "CAN_COLLIDE"];
  _vehicle_3953 = _this;
  _this setDir -43.293777;
  _this setPos [6390.9551, 7771.2017, 0.079718664];
};

_vehicle_3955 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6396.7188, 7785.0469, 0.093315907], [], 0, "CAN_COLLIDE"];
  _vehicle_3955 = _this;
  _this setDir 63.424911;
  _this setPos [6396.7188, 7785.0469, 0.093315907];
};

_vehicle_3957 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6384.7881, 7810.7461, 0.076965407], [], 0, "CAN_COLLIDE"];
  _vehicle_3957 = _this;
  _this setDir 13.809887;
  _this setPos [6384.7881, 7810.7461, 0.076965407];
};

_vehicle_3960 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6354.4937, 7760.0776, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3960 = _this;
  _this setDir -522.77686;
  _this setPos [6354.4937, 7760.0776, 3.0517578e-005];
};

_vehicle_3962 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6326.3354, 7777.9614, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3962 = _this;
  _this setDir -502.34207;
  _this setPos [6326.3354, 7777.9614, -3.0517578e-005];
};

_vehicle_3965 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6296.7422, 7799.3135, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3965 = _this;
  _this setDir -502.34207;
  _this setPos [6296.7422, 7799.3135, 3.0517578e-005];
};

_vehicle_3967 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6345.1089, 7765.355, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3967 = _this;
  _this setDir -506.74527;
  _this setPos [6345.1089, 7765.355, 3.0517578e-005];
};

_vehicle_3970 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Hlidac_budka", [6384.1865, 7772.1621, -0.075865254], [], 0, "CAN_COLLIDE"];
  _vehicle_3970 = _this;
  _this setDir 227.10204;
  _this setPos [6384.1865, 7772.1621, -0.075865254];
};

_vehicle_3978 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Ind1_R", [6353.1055, 7748.9893, -0.17999069], [], 0, "CAN_COLLIDE"];
  _vehicle_3978 = _this;
  _this setDir 46.37746;
  _this setPos [6353.1055, 7748.9893, -0.17999069];
};

_vehicle_3980 = objNull;
if (true) then
{
  _this = createVehicle ["ZavoraAnim", [6358.9556, 7748.9312, 0.24307251], [], 0, "CAN_COLLIDE"];
  _vehicle_3980 = _this;
  _this setDir 52.732628;
  _this setPos [6358.9556, 7748.9312, 0.24307251];
};

_vehicle_3991 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_D", [6375.9302, 7776.1426], [], 0, "CAN_COLLIDE"];
  _vehicle_3991 = _this;
  _this setDir 136.80908;
  _this setPos [6375.9302, 7776.1426];
};

_vehicle_4013 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Kolchoz", [6353.2446, 7748.9268, 0.22576904], [], 0, "CAN_COLLIDE"];
  _vehicle_4013 = _this;
  _this setDir 47.55405;
  _this setPos [6353.2446, 7748.9268, 0.22576904];
};

_vehicle_4014 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Gate_IndVar2_5", [6378.9414, 7775.3262, -0.038524188], [], 0, "CAN_COLLIDE"];
  _vehicle_4014 = _this;
  _this setDir 45.091881;
  _this setPos [6378.9414, 7775.3262, -0.038524188];
};

_vehicle_4019 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndVar1_Pole", [6376.8569, 7777.3672, 0.70175171], [], 0, "CAN_COLLIDE"];
  _vehicle_4019 = _this;
  _this setDir 44.895309;
  _this setPos [6376.8569, 7777.3672, 0.70175171];
};

_vehicle_4027 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6354.2729, 7754.0039, 0.16314697], [], 0, "CAN_COLLIDE"];
  _vehicle_4027 = _this;
  _this setDir -43.041382;
  _this setPos [6354.2729, 7754.0039, 0.16314697];
};

_vehicle_4051 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6357.9463, 7748.5396, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4051 = _this;
  _this setDir -37.809429;
  _this setPos [6357.9463, 7748.5396, -9.1552734e-005];
};

_vehicle_4054 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [6358.2642, 7743.564, -0.18960495], [], 0, "CAN_COLLIDE"];
  _vehicle_4054 = _this;
  _this setDir 51.874847;
  _this setPos [6358.2642, 7743.564, -0.18960495];
};

_vehicle_4057 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dragonTeethBig", [6348.4888, 7755.2173, -0.28058335], [], 0, "CAN_COLLIDE"];
  _vehicle_4057 = _this;
  _this setDir -125.57093;
  _this setPos [6348.4888, 7755.2173, -0.28058335];
};

_vehicle_4060 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_Gate_Ind1_L", [6353.1978, 7749.021, -0.21894887], [], 0, "CAN_COLLIDE"];
  _vehicle_4060 = _this;
  _this setDir 46.484818;
  _this setPos [6353.1978, 7749.021, -0.21894887];
};

_vehicle_4063 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_D", [6380.3218, 7772.062, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4063 = _this;
  _this setDir 110.11713;
  _this setPos [6380.3218, 7772.062, -3.0517578e-005];
};

_vehicle_4066 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [6348.8379, 7749.8486, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4066 = _this;
  _this setDir -15.292681;
  _this setPos [6348.8379, 7749.8486, -6.1035156e-005];
};

_vehicle_4069 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [6349.5928, 7753.0288, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_4069 = _this;
  _this setDir 145.56294;
  _this setPos [6349.5928, 7753.0288, -0.00012207031];
};

_vehicle_4071 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [6351.6265, 7754.4609, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4071 = _this;
  _this setDir 145.02461;
  _this setPos [6351.6265, 7754.4609, -9.1552734e-005];
};

_vehicle_4073 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [6356.6729, 7745.4814], [], 0, "CAN_COLLIDE"];
  _vehicle_4073 = _this;
  _this setDir 146.59273;
  _this setPos [6356.6729, 7745.4814];
};

_vehicle_4075 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [6358.7886, 7746.8154, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_4075 = _this;
  _this setDir 149.13112;
  _this setPos [6358.7886, 7746.8154, -0.00012207031];
};

_vehicle_4078 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1Bo_military", [6397.9019, 7777.6021, -0.017981801], [], 0, "CAN_COLLIDE"];
  _vehicle_4078 = _this;
  _this setDir -44.137894;
  _this setPos [6397.9019, 7777.6021, -0.017981801];
};

_vehicle_4081 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6367.813, 7741.3203, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4081 = _this;
  _this setDir -129.36047;
  _this setPos [6367.813, 7741.3203, -6.1035156e-005];
};

_vehicle_4084 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6377.7129, 7729.1167, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4084 = _this;
  _this setDir -129.36047;
  _this setPos [6377.7129, 7729.1167, -6.1035156e-005];
};

_vehicle_4086 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6387.6489, 7716.8438, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4086 = _this;
  _this setDir -129.36047;
  _this setPos [6387.6489, 7716.8438, -3.0517578e-005];
};

_vehicle_4088 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6397.5244, 7704.6284, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4088 = _this;
  _this setDir -129.36047;
  _this setPos [6397.5244, 7704.6284, -3.0517578e-005];
};

_vehicle_4090 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6409.8853, 7696.1523], [], 0, "CAN_COLLIDE"];
  _vehicle_4090 = _this;
  _this setDir -160.28372;
  _this setPos [6409.8853, 7696.1523];
};

_vehicle_4092 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6421.9214, 7699.5303], [], 0, "CAN_COLLIDE"];
  _vehicle_4092 = _this;
  _this setDir -64.250031;
  _this setPos [6421.9214, 7699.5303];
};

_vehicle_4095 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6429.0078, 7713.3794, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4095 = _this;
  _this setDir -64.250031;
  _this setPos [6429.0078, 7713.3794, 3.0517578e-005];
};

_vehicle_4097 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6436.4805, 7727.3066, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4097 = _this;
  _this setDir -59.078789;
  _this setPos [6436.4805, 7727.3066, 3.0517578e-005];
};

_vehicle_4099 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6407.812, 7773.8662, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4099 = _this;
  _this setDir 29.031942;
  _this setPos [6407.812, 7773.8662, -9.1552734e-005];
};

_vehicle_4102 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6421.8701, 7766.8364, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_4102 = _this;
  _this setDir 25.113356;
  _this setPos [6421.8701, 7766.8364, -0.00018310547];
};

_vehicle_4105 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6436.3179, 7759.9893, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4105 = _this;
  _this setDir 25.113356;
  _this setPos [6436.3179, 7759.9893, 3.0517578e-005];
};

_vehicle_4107 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6448.4673, 7750.335, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4107 = _this;
  _this setDir 51.957428;
  _this setPos [6448.4673, 7750.335, -9.1552734e-005];
};

_vehicle_4109 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6445.5635, 7739.9263, 0.064879559], [], 0, "CAN_COLLIDE"];
  _vehicle_4109 = _this;
  _this setDir 138.83871;
  _this setPos [6445.5635, 7739.9263, 0.064879559];
};

_vehicle_4112 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6397.1763, 7775.3701, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4112 = _this;
  _this setDir 850.17072;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6397.1763, 7775.3701, -3.0517578e-005];
};

_vehicle_4114 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6355.3501, 7759.9946, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4114 = _this;
  _this setDir 854.52765;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6355.3501, 7759.9946, -9.1552734e-005];
};

_vehicle_4117 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6363.8442, 7767.5659, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4117 = _this;
  _this setDir 854.52765;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6363.8442, 7767.5659, 3.0517578e-005];
};

_vehicle_4119 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6372.5532, 7777.9956, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4119 = _this;
  _this setDir 854.52765;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6372.5532, 7777.9956, 3.0517578e-005];
};

_vehicle_4121 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6366.8779, 7750.4106, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_4121 = _this;
  _this setDir 653.10187;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6366.8779, 7750.4106, -0.00012207031];
};

_vehicle_4123 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6417.5923, 7695.6143], [], 0, "CAN_COLLIDE"];
  _vehicle_4123 = _this;
  _this setDir 854.52765;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6417.5923, 7695.6143];
};

_vehicle_4125 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6438.9673, 7735.1836, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4125 = _this;
  _this setDir 854.52765;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6438.9673, 7735.1836, 0];
};

_vehicle_4127 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6442.6885, 7755.6982, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4127 = _this;
  _this setDir 765.93915;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6442.6885, 7755.6982, 6.1035156e-005];
};

_vehicle_4129 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6417.4512, 7768.0811], [], 0, "CAN_COLLIDE"];
  _vehicle_4129 = _this;
  _this setDir 750.77875;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6417.4512, 7768.0811];
};

_vehicle_4131 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6385.4775, 7763.8652, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4131 = _this;
  _this setDir 682.0979;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6385.4775, 7763.8652, -3.0517578e-005];
};

_vehicle_4133 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6384.2598, 7723.3716], [], 0, "CAN_COLLIDE"];
  _vehicle_4133 = _this;
  _this setDir 943.45203;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6384.2598, 7723.3716];
};

_vehicle_4135 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6373.6216, 7736.4565], [], 0, "CAN_COLLIDE"];
  _vehicle_4135 = _this;
  _this setDir 775.38361;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6373.6216, 7736.4565];
};

_vehicle_4138 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6402.7729, 7700.8535, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4138 = _this;
  _this setDir 733.08276;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6402.7729, 7700.8535, -3.0517578e-005];
};

_vehicle_4140 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6430.0698, 7721.5049], [], 0, "CAN_COLLIDE"];
  _vehicle_4140 = _this;
  _this setDir 641.29053;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6430.0698, 7721.5049];
};

_vehicle_4142 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [6428.1636, 7761.9419, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4142 = _this;
  _this setDir 927.89575;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [6428.1636, 7761.9419, -3.0517578e-005];
};

_vehicle_4147 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6369.9844, 7773.7715, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4147 = _this;
  _this setDir -584.36243;
  _this setPos [6369.9844, 7773.7715, -3.0517578e-005];
};

_vehicle_4149 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6371.896, 7749.8394, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4149 = _this;
  _this setDir -399.77045;
  _this setPos [6371.896, 7749.8394, -3.0517578e-005];
};

_vehicle_4151 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6392.2368, 7775.8423, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4151 = _this;
  _this setDir -581.10059;
  _this setPos [6392.2368, 7775.8423, 3.0517578e-005];
};

_vehicle_4153 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6418.5923, 7764.7725, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4153 = _this;
  _this setDir -333.59784;
  _this setPos [6418.5923, 7764.7725, -3.0517578e-005];
};

_vehicle_4155 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6448.9976, 7744.4819, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4155 = _this;
  _this setDir -626.97656;
  _this setPos [6448.9976, 7744.4819, -6.1035156e-005];
};

_vehicle_4157 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6411.7842, 7697.3853, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4157 = _this;
  _this setDir -516.96082;
  _this setPos [6411.7842, 7697.3853, 6.1035156e-005];
};

_vehicle_4159 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6433.3896, 7728.2236, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4159 = _this;
  _this setDir -596.36475;
  _this setPos [6433.3896, 7728.2236, -3.0517578e-005];
};

_vehicle_4161 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_posed", [6380.1519, 7730.4028], [], 0, "CAN_COLLIDE"];
  _vehicle_4161 = _this;
  _this setDir -490.44296;
  _this setPos [6380.1519, 7730.4028];
};

_vehicle_4164 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [6435.3647, 7747.6948], [], 0, "CAN_COLLIDE"];
  _vehicle_4164 = _this;
  _this setPos [6435.3647, 7747.6948];
};

_vehicle_4169 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [6424.2944, 7730.9019, -0.067169189], [], 0, "CAN_COLLIDE"];
  _vehicle_4169 = _this;
  _this setPos [6424.2944, 7730.9019, -0.067169189];
};

_vehicle_4173 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [6414.5547, 7711.8579, -0.046417236], [], 0, "CAN_COLLIDE"];
  _vehicle_4173 = _this;
  _this setPos [6414.5547, 7711.8579, -0.046417236];
};

_vehicle_4177 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [6402.0957, 7727.8862, 0.0093994141], [], 0, "CAN_COLLIDE"];
  _vehicle_4177 = _this;
  _this setPos [6402.0957, 7727.8862, 0.0093994141];
};

_vehicle_4181 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [6415.7163, 7749.4727, 0.11401367], [], 0, "CAN_COLLIDE"];
  _vehicle_4181 = _this;
  _this setPos [6415.7163, 7749.4727, 0.11401367];
};

_vehicle_4185 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [6405.6001, 7760.167, 0.10696411], [], 0, "CAN_COLLIDE"];
  _vehicle_4185 = _this;
  _this setPos [6405.6001, 7760.167, 0.10696411];
};

_vehicle_4189 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [6387.9653, 7744.9492, 0.12884521], [], 0, "CAN_COLLIDE"];
  _vehicle_4189 = _this;
  _this setPos [6387.9653, 7744.9492, 0.12884521];
};

_vehicle_4193 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_stanek_3", [6333.2197, 7787.5879, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4193 = _this;
  _this setDir 127.18062;
  _this setPos [6333.2197, 7787.5879, 9.1552734e-005];
};

_vehicle_4196 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_chair_2", [6333.0835, 7786.6304, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4196 = _this;
  _this setDir 188.29582;
  _this setPos [6333.0835, 7786.6304, -3.0517578e-005];
};

_vehicle_4199 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_tiny", [6330.8848, 7784.8101], [], 0, "CAN_COLLIDE"];
  _vehicle_4199 = _this;
  _this setDir -55.11071;
  _this setPos [6330.8848, 7784.8101];
};

_vehicle_4201 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_tiny", [6312.2036, 7808.3125, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4201 = _this;
  _this setDir -50.740166;
  _this setPos [6312.2036, 7808.3125, 3.0517578e-005];
};

_vehicle_4204 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6336.5654, 7792.582, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4204 = _this;
  _this setDir 38.242935;
  _this setPos [6336.5654, 7792.582, -3.0517578e-005];
};

_vehicle_4207 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6339.4829, 7790.3911, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4207 = _this;
  _this setDir 38.242935;
  _this setPos [6339.4829, 7790.3911, 6.1035156e-005];
};

_vehicle_4209 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6343.5215, 7787.4536], [], 0, "CAN_COLLIDE"];
  _vehicle_4209 = _this;
  _this setDir 38.242935;
  _this setPos [6343.5215, 7787.4536];
};

_vehicle_4211 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6345.8325, 7784.7065], [], 0, "CAN_COLLIDE"];
  _vehicle_4211 = _this;
  _this setDir 71.730797;
  _this setPos [6345.8325, 7784.7065];
};

_vehicle_4213 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6332.8618, 7793.7661], [], 0, "CAN_COLLIDE"];
  _vehicle_4213 = _this;
  _this setDir 5.9711747;
  _this setPos [6332.8618, 7793.7661];
};

_vehicle_4216 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6329.3716, 7793.9282, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4216 = _this;
  _this setDir 5.9711747;
  _this setPos [6329.3716, 7793.9282, 3.0517578e-005];
};

_vehicle_4218 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6327.1597, 7793.3062], [], 0, "CAN_COLLIDE"];
  _vehicle_4218 = _this;
  _this setDir -41.667316;
  _this setPos [6327.1597, 7793.3062];
};

_vehicle_4220 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6324.5298, 7790.728, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4220 = _this;
  _this setDir -49.046036;
  _this setPos [6324.5298, 7790.728, -3.0517578e-005];
};

_vehicle_4222 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6256.0757, 7810.3462, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4222 = _this;
  _this setDir 5.9711747;
  _this setPos [6256.0757, 7810.3462, -9.1552734e-005];
};

_vehicle_4224 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_SS_Hangar", [4783.5479, 10118.768, 0.026955815], [], 0, "CAN_COLLIDE"];
  _vehicle_4224 = _this;
  _this setDir -119.37865;
  _this setPos [4783.5479, 10118.768, 0.026955815];
};

_vehicle_4226 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_SS_Hangar", [4803.4067, 10079.786, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_4226 = _this;
  _this setDir -119.37865;
  _this setPos [4803.4067, 10079.786, -0.00012207031];
};

_vehicle_4228 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_SS_Hangar", [4825.313, 10041.785], [], 0, "CAN_COLLIDE"];
  _vehicle_4228 = _this;
  _this setDir -119.37865;
  _this setPos [4825.313, 10041.785];
};

_vehicle_4230 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_SS_Hangar", [4847.2979, 10003.663, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4230 = _this;
  _this setDir -119.37865;
  _this setPos [4847.2979, 10003.663, 9.1552734e-005];
};

_vehicle_4232 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_SS_Hangar", [4868.9692, 9966.7061], [], 0, "CAN_COLLIDE"];
  _vehicle_4232 = _this;
  _this setDir -119.37865;
  _this setPos [4868.9692, 9966.7061];
};

_vehicle_4234 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_SS_Hangar", [4890.2227, 9929.3086, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4234 = _this;
  _this setDir -119.37865;
  _this setPos [4890.2227, 9929.3086, -3.0517578e-005];
};

_vehicle_4236 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_SS_Hangar", [4915.2681, 9886.3096, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4236 = _this;
  _this setDir -119.37865;
  _this setPos [4915.2681, 9886.3096, 3.0517578e-005];
};

_vehicle_4238 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_SS_Hangar", [4422.8003, 10738.611, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4238 = _this;
  _this setDir -120.17226;
  _this setPos [4422.8003, 10738.611, -9.1552734e-005];
};

_vehicle_4241 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_SS_Hangar", [4401.4048, 10775.737, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4241 = _this;
  _this setDir -120.17226;
  _this setPos [4401.4048, 10775.737, 6.1035156e-005];
};

_vehicle_4243 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_SS_Hangar", [4444.2085, 10701.803], [], 0, "CAN_COLLIDE"];
  _vehicle_4243 = _this;
  _this setDir -120.17226;
  _this setPos [4444.2085, 10701.803];
};

_vehicle_4245 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_SS_Hangar", [4465.4941, 10664.688, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4245 = _this;
  _this setDir -120.17226;
  _this setPos [4465.4941, 10664.688, 3.0517578e-005];
};

_vehicle_4247 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Mil_ControlTower", [4471.3638, 10286.405], [], 0, "CAN_COLLIDE"];
  _vehicle_4247 = _this;
  _this setDir -206.58981;
  _this setPos [4471.3638, 10286.405];
};

_vehicle_4248 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [4112.918, 10782.697, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4248 = _this;
  _this setDir -209.88889;
  _this setPos [4112.918, 10782.697, -3.0517578e-005];
};

_vehicle_4250 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [4118.7695, 10772.236, 0.034795653], [], 0, "CAN_COLLIDE"];
  _vehicle_4250 = _this;
  _this setDir -209.88889;
  _this setPos [4118.7695, 10772.236, 0.034795653];
};

_vehicle_4252 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [4124.208, 10762.473, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4252 = _this;
  _this setDir -209.88889;
  _this setPos [4124.208, 10762.473, 9.1552734e-005];
};

_vehicle_4254 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [4129.8521, 10752.747, -0.076820493], [], 0, "CAN_COLLIDE"];
  _vehicle_4254 = _this;
  _this setDir -209.88889;
  _this setPos [4129.8521, 10752.747, -0.076820493];
};

_vehicle_4256 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [4135.624, 10742.559], [], 0, "CAN_COLLIDE"];
  _vehicle_4256 = _this;
  _this setDir -209.88889;
  _this setPos [4135.624, 10742.559];
};

_vehicle_4258 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [4142.0928, 10731.376], [], 0, "CAN_COLLIDE"];
  _vehicle_4258 = _this;
  _this setDir -209.88889;
  _this setPos [4142.0928, 10731.376];
};

_vehicle_4260 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [4148.3291, 10720.377, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4260 = _this;
  _this setDir -209.88889;
  _this setPos [4148.3291, 10720.377, 9.1552734e-005];
};

_vehicle_4262 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Hlidac_budka", [4099.811, 10789.41, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4262 = _this;
  _this setDir 59.889977;
  _this setPos [4099.811, 10789.41, 6.1035156e-005];
};

_vehicle_4263 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Mil_House", [4162.4004, 10691.76, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4263 = _this;
  _this setDir 240.05278;
  _this setPos [4162.4004, 10691.76, 6.1035156e-005];
};

_vehicle_4264 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_hospital", [4187.5425, 10656.596, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4264 = _this;
  _this setDir -29.892908;
  _this setPos [4187.5425, 10656.596, 3.0517578e-005];
};

_vehicle_4266 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_A_Office01", [4196.1147, 10634.132, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4266 = _this;
  _this setDir 59.269367;
  _this setPos [4196.1147, 10634.132, -3.0517578e-005];
};

_vehicle_4267 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_A_Office02", [4125.2021, 10683.202, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4267 = _this;
  _this setDir 59.758297;
  _this setPos [4125.2021, 10683.202, -3.0517578e-005];
};

_vehicle_4269 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_a_stationhouse", [4196.4585, 10562.196, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4269 = _this;
  _this setDir -120.03132;
  _this setPos [4196.4585, 10562.196, 3.0517578e-005];
};

_vehicle_4270 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dum01", [4186.2568, 10696.39], [], 0, "CAN_COLLIDE"];
  _vehicle_4270 = _this;
  _this setDir 61.507576;
  _this setPos [4186.2568, 10696.39];
};

_vehicle_4272 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dum01", [4179.8765, 10709.337, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4272 = _this;
  _this setDir 61.507576;
  _this setPos [4179.8765, 10709.337, 3.0517578e-005];
};

_vehicle_4274 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dum01", [4173.5981, 10722.19, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4274 = _this;
  _this setDir 61.507576;
  _this setPos [4173.5981, 10722.19, 3.0517578e-005];
};

_vehicle_4276 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_SideRoof", [4166.9639, 10731.067, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_4276 = _this;
  _this setDir 58.446941;
  _this setPos [4166.9639, 10731.067, 0.00012207031];
};

_vehicle_4278 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_SideRoof", [4163.2866, 10741.778, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4278 = _this;
  _this setDir 58.446941;
  _this setPos [4163.2866, 10741.778, -6.1035156e-005];
};

_vehicle_4280 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_sara_stodola", [4153.061, 10753.707, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4280 = _this;
  _this setDir 149.05812;
  _this setPos [4153.061, 10753.707, 6.1035156e-005];
};

_vehicle_4281 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_stodola_open", [4148.3872, 10768.967], [], 0, "CAN_COLLIDE"];
  _vehicle_4281 = _this;
  _this setDir 62.283428;
  _this setPos [4148.3872, 10768.967];
};

_vehicle_4282 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_A_Hospital", [4222.1953, 10593.109, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4282 = _this;
  _this setDir 59.924194;
  _this setPos [4222.1953, 10593.109, -9.1552734e-005];
};

_vehicle_4283 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_A_BuildingWIP", [4297.1084, 10901.563, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4283 = _this;
  _this setDir -31.888628;
  _this setPos [4297.1084, 10901.563, 3.0517578e-005];
};

_vehicle_4285 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_A_BuildingWIP", [4213.8589, 10514.667, 0.19724496], [], 0, "CAN_COLLIDE"];
  _vehicle_4285 = _this;
  _this setDir 60.678429;
  _this setPos [4213.8589, 10514.667, 0.19724496];
};

_vehicle_4289 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Mil_Guardhouse", [3964.0127, 11674.548, 0.037936825], [], 0, "CAN_COLLIDE"];
  _vehicle_4289 = _this;
  _this setDir -145.97968;
  _this setPos [3964.0127, 11674.548, 0.037936825];
};

_vehicle_4291 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_budova4_in", [3959.0049, 11664.243, 0.17568253], [], 0, "CAN_COLLIDE"];
  _vehicle_4291 = _this;
  _this setDir 29.05464;
  _this setPos [3959.0049, 11664.243, 0.17568253];
};

_vehicle_4293 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_budova4_in", [3954.5828, 11654.566, 0.11384568], [], 0, "CAN_COLLIDE"];
  _vehicle_4293 = _this;
  _this setDir 27.362982;
  _this setPos [3954.5828, 11654.566, 0.11384568];
};

_vehicle_4296 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [3958.4658, 11645.901, 0.28898668], [], 0, "CAN_COLLIDE"];
  _vehicle_4296 = _this;
  _this setDir 71.998108;
  _this setPos [3958.4658, 11645.901, 0.28898668];
};

_vehicle_4298 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [3969.9868, 11673.499, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4298 = _this;
  _this setDir -37.201057;
  _this setPos [3969.9868, 11673.499, 6.1035156e-005];
};

_unit_143 = objNull;
if (true) then
{
  _this = createAgent ["Sportswoman1", [3969.4766, 11672.694, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _unit_143 = _this;
  _this setDir 132.50819;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_vehicle_4304 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [3979.3774, 11652.143], [], 0, "CAN_COLLIDE"];
  _vehicle_4304 = _this;
  _this setPos [3979.3774, 11652.143];
};

_vehicle_4305 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [3966.8206, 11667.246, -0.93234253], [], 0, "CAN_COLLIDE"];
  _vehicle_4305 = _this;
  _this setDir 854.52765;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [3966.8206, 11667.246, -0.93234253];
};

_vehicle_4308 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [4047.6545, 11675.094], [], 0, "CAN_COLLIDE"];
  _vehicle_4308 = _this;
  _this setPos [4047.6545, 11675.094];
};

_vehicle_4317 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [4485.0947, 10296.567, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_4317 = _this;
  _this setDir -219.15619;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [4485.0947, 10296.567, -0.00012207031];
};

_vehicle_4320 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [4469.1494, 10324.549], [], 0, "CAN_COLLIDE"];
  _vehicle_4320 = _this;
  _this setDir -174.05048;
  _this setPos [4469.1494, 10324.549];
};

_unit_147 = objNull;
if (true) then
{
  _this = createAgent ["RU_Commander", [4486.4316, 10295.168], [], 0, "CAN_COLLIDE"];
  _unit_147 = _this;
  _this setDir 19.92712;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

_vehicle_4328 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [4485.4844, 10294.814, -0.020874023], [], 0, "CAN_COLLIDE"];
  _vehicle_4328 = _this;
  _this setDir 216.27287;
  _this setVehicleInit "this allowDammage false;this enableSimulation false;";
  _this setPos [4485.4844, 10294.814, -0.020874023];
};

_vehicle_4329 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [4486.4365, 10295.87, -0.020874023], [], 0, "CAN_COLLIDE"];
  _vehicle_4329 = _this;
  _this setDir 17.306128;
  _this setVehicleInit "this allowDammage false;this enableSimulation false;";
  _this setPos [4486.4365, 10295.87, -0.020874023];
};

_vehicle_4332 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Campfire_burning", [4490.2085, 10299.346], [], 0, "CAN_COLLIDE"];
  _vehicle_4332 = _this;
  _this setPos [4490.2085, 10299.346];
};

_vehicle_4333 = objNull;
if (true) then
{
  _this = createVehicle ["Land_covering_hut_EP1", [4486.7407, 10295.834, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4333 = _this;
  _this setDir 21.449871;
  _this setPos [4486.7407, 10295.834, -6.1035156e-005];
};

_vehicle_4334 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo2E_EP1", [4481.1904, 10279.071], [], 0, "CAN_COLLIDE"];
  _vehicle_4334 = _this;
  _this setDir 135.44089;
  _this setPos [4481.1904, 10279.071];
};

_vehicle_4335 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo2E", [4488.4956, 10277.98], [], 0, "CAN_COLLIDE"];
  _vehicle_4335 = _this;
  _this setDir -101.53866;
  _this setPos [4488.4956, 10277.98];
};

_vehicle_4336 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Coil_EP1", [4491.856, 10286.15, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4336 = _this;
  _this setPos [4491.856, 10286.15, -3.0517578e-005];
};

_vehicle_4338 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_ConcBox_EP1", [4480.4688, 10299.684, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4338 = _this;
  _this setDir -119.84611;
  _this setPos [4480.4688, 10299.684, 9.1552734e-005];
};

_vehicle_4339 = objNull;
if (true) then
{
  _this = createVehicle ["Land_psi_bouda", [4484.1157, 10298.074, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4339 = _this;
  _this setDir -28.456959;
  _this setPos [4484.1157, 10298.074, 3.0517578e-005];
};

_vehicle_4341 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_GContainer_Big", [4473.9575, 10297.722, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4341 = _this;
  _this setPos [4473.9575, 10297.722, -6.1035156e-005];
};

_vehicle_4343 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall2_EP1", [4464.7324, 10282.383], [], 0, "CAN_COLLIDE"];
  _vehicle_4343 = _this;
  _this setDir 61.871265;
  _this setPos [4464.7324, 10282.383];
};

_vehicle_4346 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeap", [4485.001, 10280.112, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4346 = _this;
  _this setPos [4485.001, 10280.112, -6.1035156e-005];
};

_vehicle_4347 = objNull;
if (true) then
{
  _this = createVehicle ["Axe_woodblock", [4491.4116, 10298.148, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_4347 = _this;
  _this setPos [4491.4116, 10298.148, 0.00012207031];
};

_vehicle_4348 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [4477.4653, 10301.21, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4348 = _this;
  _this setPos [4477.4653, 10301.21, -3.0517578e-005];
};

_vehicle_4349 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall2_EP1", [6270.5664, 7807.6201, -0.28241414], [], 0, "CAN_COLLIDE"];
  _vehicle_4349 = _this;
  _this setDir 33.852913;
  _this setPos [6270.5664, 7807.6201, -0.28241414];
};

_vehicle_4351 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall2_EP1", [6264.7202, 7811.8833, -0.2631585], [], 0, "CAN_COLLIDE"];
  _vehicle_4351 = _this;
  _this setDir 36.79306;
  _this setPos [6264.7202, 7811.8833, -0.2631585];
};

_vehicle_4353 = objNull;
if (true) then
{
  _this = createVehicle ["FuelPump_DZ", [6271.6763, 7809.6743], [], 0, "CAN_COLLIDE"];
  _vehicle_4353 = _this;
  _this setDir 33.4897;
  _this setPos [6271.6763, 7809.6743];
};

_vehicle_4355 = objNull;
if (true) then
{
  _this = createVehicle ["FuelPump_DZ", [6265.4995, 7814.2676, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4355 = _this;
  _this setDir 33.4897;
  _this setPos [6265.4995, 7814.2676, -3.0517578e-005];
};

_vehicle_4359 = objNull;
if (true) then
{
  _this = createVehicle ["FuelPump_DZ", [11522.788, 11329.892, -0.026587056], [], 0, "CAN_COLLIDE"];
  _vehicle_4359 = _this;
  _this setDir 118.1346;
  _this setPos [11522.788, 11329.892, -0.026587056];
};

_vehicle_4360 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall2_EP1", [11521.337, 11330.752, -0.31711459], [], 0, "CAN_COLLIDE"];
  _vehicle_4360 = _this;
  _this setDir 121.43796;
  _this setPos [11521.337, 11330.752, -0.31711459];
};

_vehicle_4363 = objNull;
if (true) then
{
  _this = createVehicle ["FuelPump_DZ", [11420.945, 11320.379, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_4363 = _this;
  _this setDir 209.32063;
  _this setPos [11420.945, 11320.379, -0.00018310547];
};

_vehicle_4364 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall2_EP1", [11421.553, 11322.815, -0.28518677], [], 0, "CAN_COLLIDE"];
  _vehicle_4364 = _this;
  _this setDir 212.62399;
  _this setPos [11421.553, 11322.815, -0.28518677];
};

_vehicle_4367 = objNull;
if (true) then
{
  _this = createVehicle ["FuelPump_DZ", [11865.885, 12710.443, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4367 = _this;
  _this setDir -67.068336;
  _this setPos [11865.885, 12710.443, -7.6293945e-005];
};

_vehicle_4368 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall2_EP1", [11868.369, 12710.122, -0.42590332], [], 0, "CAN_COLLIDE"];
  _vehicle_4368 = _this;
  _this setDir -63.76498;
  _this setPos [11868.369, 12710.122, -0.42590332];
};

_vehicle_4371 = objNull;
if (true) then
{
  _this = createVehicle ["FuelPump_DZ", [12841.671, 12771.312, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4371 = _this;
  _this setDir 80.621277;
  _this setPos [12841.671, 12771.312, 1.5258789e-005];
};

_vehicle_4372 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall2_EP1", [12839.391, 12770.262, -0.47131348], [], 0, "CAN_COLLIDE"];
  _vehicle_4372 = _this;
  _this setDir 83.924637;
  _this setPos [12839.391, 12770.262, -0.47131348];
};

_vehicle_4375 = objNull;
if (true) then
{
  _this = createVehicle ["FuelPump_DZ", [12401.006, 12549.264, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4375 = _this;
  _this setDir 95.332993;
  _this setPos [12401.006, 12549.264, -4.5776367e-005];
};

_vehicle_4376 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall2_EP1", [12399.257, 12549.526, -0.43470764], [], 0, "CAN_COLLIDE"];
  _vehicle_4376 = _this;
  _this setDir 94.609848;
  _this setPos [12399.257, 12549.526, -0.43470764];
};

_vehicle_4379 = objNull;
if (true) then
{
  _this = createVehicle ["FireBarrel_DZ", [12422.244, 12529.397], [], 0, "CAN_COLLIDE"];
  _vehicle_4379 = _this;
  _this setPos [12422.244, 12529.397];
};

_vehicle_4380 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [12419.529, 12530.595, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4380 = _this;
  _this setPos [12419.529, 12530.595, -1.5258789e-005];
};

_vehicle_4384 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [12422.831, 12535.155], [], 0, "CAN_COLLIDE"];
  _vehicle_4384 = _this;
  _this setDir 17.248632;
  _this setPos [12422.831, 12535.155];
};

_vehicle_4386 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [12418.898, 12536.52, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_4386 = _this;
  _this setDir 17.248632;
  _this setPos [12418.898, 12536.52, 0.00010681152];
};

_vehicle_4388 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [12414.631, 12538.06, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4388 = _this;
  _this setDir 17.248632;
  _this setPos [12414.631, 12538.06, 1.5258789e-005];
};

_vehicle_4390 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [12430.168, 12532.591, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4390 = _this;
  _this setDir 17.248632;
  _this setPos [12430.168, 12532.591, 3.0517578e-005];
};

_vehicle_4392 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [12426.73, 12533.833, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4392 = _this;
  _this setDir 17.248632;
  _this setPos [12426.73, 12533.833, 1.5258789e-005];
};

_vehicle_4394 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [12400.887, 12546.978, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4394 = _this;
  _this setDir 94.546158;
  _this setPos [12400.887, 12546.978, -1.5258789e-005];
};

_vehicle_4396 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [12401.43, 12551.46], [], 0, "CAN_COLLIDE"];
  _vehicle_4396 = _this;
  _this setDir 94.546158;
  _this setPos [12401.43, 12551.46];
};

_vehicle_4398 = objNull;
if (true) then
{
  _this = createVehicle ["Land_psi_bouda", [12417.185, 12527.392, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4398 = _this;
  _this setPos [12417.185, 12527.392, 1.5258789e-005];
};

_vehicle_4399 = objNull;
if (true) then
{
  _this = createVehicle ["EntranceGate_EP1", [12422.668, 12537.179, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4399 = _this;
  _this setDir 18.525642;
  _this setPos [12422.668, 12537.179, 4.5776367e-005];
};

_vehicle_4400 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [12421.773, 12527.802, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4400 = _this;
  _this setPos [12421.773, 12527.802, -7.6293945e-005];
};

_vehicle_4401 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Hlidac_budka", [12418.718, 12524.182, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4401 = _this;
  _this setDir 197.10342;
  _this setPos [12418.718, 12524.182, -1.5258789e-005];
};

_vehicle_4402 = objNull;
if (true) then
{
  _this = createVehicle ["Land_radar_EP1", [12394.682, 12552.649, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4402 = _this;
  _this setDir 91.169968;
  _this setPos [12394.682, 12552.649, -4.5776367e-005];
};

_vehicle_4403 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_water", [12422.208, 12525.948, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4403 = _this;
  _this setPos [12422.208, 12525.948, 1.5258789e-005];
};

_vehicle_4404 = objNull;
if (true) then
{
  _this = createVehicle ["PowerGenerator_EP1", [12422.723, 12523.932, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4404 = _this;
  _this setDir 13.50677;
  _this setPos [12422.723, 12523.932, 4.5776367e-005];
};

_vehicle_4405 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Shed_wooden", [12395.473, 12532.737, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4405 = _this;
  _this setDir 102.88589;
  _this setPos [12395.473, 12532.737, -6.1035156e-005];
};

_vehicle_4406 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeap", [12439.006, 12527.151, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4406 = _this;
  _this setPos [12439.006, 12527.151, -7.6293945e-005];
};

_vehicle_4408 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeap", [12441.341, 12528.968, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4408 = _this;
  _this setPos [12441.341, 12528.968, 1.5258789e-005];
};

_vehicle_4410 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeap", [12442.067, 12525.158, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4410 = _this;
  _this setPos [12442.067, 12525.158, 1.5258789e-005];
};

_vehicle_4412 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeap", [12438.385, 12522.312, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4412 = _this;
  _this setPos [12438.385, 12522.312, -1.5258789e-005];
};

_vehicle_4416 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Barrack2", [12425.861, 12521.249], [], 0, "CAN_COLLIDE"];
  _vehicle_4416 = _this;
  _this setDir 194.2536;
  _this setPos [12425.861, 12521.249];
};

_vehicle_4418 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Barrack2", [12411.086, 12523.58, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4418 = _this;
  _this setDir 194.2536;
  _this setPos [12411.086, 12523.58, 1.5258789e-005];
};

_vehicle_4420 = objNull;
if (true) then
{
  _this = createVehicle ["Land_sunshade_EP1", [12420.751, 12527.884, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4420 = _this;
  _this setPos [12420.751, 12527.884, 1.5258789e-005];
};

_vehicle_4421 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo2E_EP1", [12405.762, 12529.048, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4421 = _this;
  _this setDir -61.556835;
  _this setPos [12405.762, 12529.048, -3.0517578e-005];
};

_vehicle_4423 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo2E_EP1", [12432.95, 12522.036, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4423 = _this;
  _this setDir -102.2855;
  _this setPos [12432.95, 12522.036, -3.0517578e-005];
};

_vehicle_4425 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo2E_EP1", [12392.077, 12539.058, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4425 = _this;
  _this setDir -3.1580381;
  _this setPos [12392.077, 12539.058, 4.5776367e-005];
};

_vehicle_4427 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo2E_EP1", [12391.245, 12549.992, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4427 = _this;
  _this setDir 5.9022675;
  _this setPos [12391.245, 12549.992, 4.5776367e-005];
};

_vehicle_4429 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo2E_EP1", [12392.842, 12560.355, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_4429 = _this;
  _this setDir 19.508432;
  _this setPos [12392.842, 12560.355, -0.00015258789];
};

_vehicle_4431 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo2E", [12410.957, 12537.209, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4431 = _this;
  _this setDir 24.460052;
  _this setPos [12410.957, 12537.209, 3.0517578e-005];
};

_vehicle_4433 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo2E", [12435.489, 12528.929, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4433 = _this;
  _this setDir 18.515385;
  _this setPos [12435.489, 12528.929, -3.0517578e-005];
};

_vehicle_4435 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [12435.445, 12532.795], [], 0, "CAN_COLLIDE"];
  _vehicle_4435 = _this;
  _this setDir 6.3258748;
  _this setPos [12435.445, 12532.795];
};

_vehicle_4437 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [12412.579, 12540.944, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_4437 = _this;
  _this setDir 24.046799;
  _this setPos [12412.579, 12540.944, 0.00012207031];
};

_vehicle_4439 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [12401.839, 12553.594, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4439 = _this;
  _this setDir 24.054955;
  _this setPos [12401.839, 12553.594, 3.0517578e-005];
};

_vehicle_4441 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [12393.07, 12564.223, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4441 = _this;
  _this setDir 9.85919;
  _this setPos [12393.07, 12564.223, -1.5258789e-005];
};

_vehicle_4443 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_concrete_High", [12414.077, 12543.959, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4443 = _this;
  _this setPos [12414.077, 12543.959, 3.0517578e-005];
};

_vehicle_4446 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_HouseV2_02_Interier_dam", [12412.466, 12501.156, -0.0073542153], [], 0, "CAN_COLLIDE"];
  _vehicle_4446 = _this;
  _this setDir 17.435104;
  _this setPos [12412.466, 12501.156, -0.0073542153];
};

_vehicle_4447 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [12436.935, 12574.364, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_4447 = _this;
  _this setPos [12436.935, 12574.364, -0.00010681152];
};

_vehicle_4452 = objNull;
if (true) then
{
  _this = createVehicle ["FuelPump_DZ", [4462.791, 10281.417, 0.15147033], [], 0, "CAN_COLLIDE"];
  _vehicle_4452 = _this;
  _this setDir 61.269783;
  _this setPos [4462.791, 10281.417, 0.15147033];
};

_vehicle_4453 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_SS_Hangar", [4849.8955, 2510.0981], [], 0, "CAN_COLLIDE"];
  _vehicle_4453 = _this;
  _this setDir 64.447472;
  _this setPos [4849.8955, 2510.0981];
};

_vehicle_4455 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [4809.8066, 2215.1296, -0.069138281], [], 0, "CAN_COLLIDE"];
  _vehicle_4455 = _this;
  _this setDir -74.821136;
  _this setPos [4809.8066, 2215.1296, -0.069138281];
};

_vehicle_4457 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [4819.5225, 2212.3994, 0.010397989], [], 0, "CAN_COLLIDE"];
  _vehicle_4457 = _this;
  _this setDir -74.821136;
  _this setPos [4819.5225, 2212.3994, 0.010397989];
};

_vehicle_4461 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [4829.3862, 2209.5493, -0.044229273], [], 0, "CAN_COLLIDE"];
  _vehicle_4461 = _this;
  _this setDir -74.821136;
  _this setPos [4829.3862, 2209.5493, -0.044229273];
};

_vehicle_4462 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [4839.9854, 2206.6514, -0.059306812], [], 0, "CAN_COLLIDE"];
  _vehicle_4462 = _this;
  _this setDir -74.821136;
  _this setPos [4839.9854, 2206.6514, -0.059306812];
};

_vehicle_4466 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [4849.9175, 2203.8398, 0.036267407], [], 0, "CAN_COLLIDE"];
  _vehicle_4466 = _this;
  _this setDir -74.821136;
  _this setPos [4849.9175, 2203.8398, 0.036267407];
};

_vehicle_4472 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_A_Office01", [4733.8315, 2267.3596, -0.035503585], [], 0, "CAN_COLLIDE"];
  _vehicle_4472 = _this;
  _this setDir 16.392576;
  _this setPos [4733.8315, 2267.3596, -0.035503585];
};

_vehicle_4474 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_a_stationhouse", [4705.9585, 2251.5369, 0.092987061], [], 0, "CAN_COLLIDE"];
  _vehicle_4474 = _this;
  _this setDir -73.353386;
  _this setPos [4705.9585, 2251.5369, 0.092987061];
};

_vehicle_4476 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_A_Hospital", [4777.6816, 2228.3628, -0.045935079], [], 0, "CAN_COLLIDE"];
  _vehicle_4476 = _this;
  _this setDir 196.14464;
  _this setPos [4777.6816, 2228.3628, -0.045935079];
};

_vehicle_4479 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_A_BuildingWIP", [4751.0269, 2305.0891, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4479 = _this;
  _this setDir 24.673536;
  _this setPos [4751.0269, 2305.0891, 3.0517578e-005];
};

_vehicle_4481 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4813.3638, 2322.3372, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4481 = _this;
  _this setDir 30.032606;
  _this setPos [4813.3638, 2322.3372, 1.9073486e-005];
};

_vehicle_4485 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4807.1777, 2311.6816, -0.032121658], [], 0, "CAN_COLLIDE"];
  _vehicle_4485 = _this;
  _this setDir 30.032606;
  _this setPos [4807.1777, 2311.6816, -0.032121658];
};

_vehicle_4489 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4800.8867, 2300.9224, -0.032764435], [], 0, "CAN_COLLIDE"];
  _vehicle_4489 = _this;
  _this setDir 30.032606;
  _this setPos [4800.8867, 2300.9224, -0.032764435];
};

_vehicle_4493 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4794.6572, 2290.2183, -0.032746792], [], 0, "CAN_COLLIDE"];
  _vehicle_4493 = _this;
  _this setDir 30.032606;
  _this setPos [4794.6572, 2290.2183, -0.032746792];
};

_vehicle_4497 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4788.4839, 2279.4038, -0.032753468], [], 0, "CAN_COLLIDE"];
  _vehicle_4497 = _this;
  _this setDir 30.032606;
  _this setPos [4788.4839, 2279.4038, -0.032753468];
};

_vehicle_4500 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4762.5229, 2261.3708, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4500 = _this;
  _this setDir -74.445572;
  _this setPos [4762.5229, 2261.3708, 1.1444092e-005];
};

_vehicle_4501 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4726.0283, 2254.5723, -0.032132626], [], 0, "CAN_COLLIDE"];
  _vehicle_4501 = _this;
  _this setDir -74.445572;
  _this setPos [4726.0283, 2254.5723, -0.032132626];
};

_vehicle_4506 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4765.8613, 2264.4065, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4506 = _this;
  _this setDir -74.445572;
  _this setPos [4765.8613, 2264.4065, 7.6293945e-006];
};

_vehicle_4507 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4737.8047, 2251.3237, -0.082893372], [], 0, "CAN_COLLIDE"];
  _vehicle_4507 = _this;
  _this setDir -74.445572;
  _this setPos [4737.8047, 2251.3237, -0.082893372];
};

_vehicle_4510 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4765.7007, 2259.6716, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4510 = _this;
  _this setDir -74.445572;
  _this setPos [4765.7007, 2259.6716, 1.9073486e-006];
};

_vehicle_4511 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4749.7051, 2247.9954, -0.082899094], [], 0, "CAN_COLLIDE"];
  _vehicle_4511 = _this;
  _this setDir -74.445572;
  _this setPos [4749.7051, 2247.9954, -0.082899094];
};

_vehicle_4514 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4770.2305, 2264.6284], [], 0, "CAN_COLLIDE"];
  _vehicle_4514 = _this;
  _this setDir -74.445572;
  _this setPos [4770.2305, 2264.6284];
};

_vehicle_4515 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4761.7017, 2244.6646, -0.082901001], [], 0, "CAN_COLLIDE"];
  _vehicle_4515 = _this;
  _this setDir -74.445572;
  _this setPos [4761.7017, 2244.6646, -0.082901001];
};

_vehicle_4518 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4770.0664, 2259.5139, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4518 = _this;
  _this setDir -77.415543;
  _this setPos [4770.0664, 2259.5139, -5.7220459e-006];
};

_vehicle_4519 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4773.1274, 2241.248, -0.082906723], [], 0, "CAN_COLLIDE"];
  _vehicle_4519 = _this;
  _this setDir -72.758331;
  _this setPos [4773.1274, 2241.248, -0.082906723];
};

_vehicle_4522 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4794.7397, 2255.645, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4522 = _this;
  _this setDir -73.607025;
  _this setPos [4794.7397, 2255.645, -1.9073486e-006];
};

_vehicle_4523 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4784.9033, 2238.0535, -0.082902908], [], 0, "CAN_COLLIDE"];
  _vehicle_4523 = _this;
  _this setDir -74.60405;
  _this setPos [4784.9033, 2238.0535, -0.082902908];
};

_vehicle_4526 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4798.2432, 2256.623, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4526 = _this;
  _this setDir -70.894928;
  _this setPos [4798.2432, 2256.623, 1.1444092e-005];
};

_vehicle_4527 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4796.9336, 2234.7888, -0.097657204], [], 0, "CAN_COLLIDE"];
  _vehicle_4527 = _this;
  _this setDir -74.555115;
  _this setPos [4796.9336, 2234.7888, -0.097657204];
};

_vehicle_4530 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4797.9238, 2250.1528, 1.9550323e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4530 = _this;
  _this setDir -74.445572;
  _this setPos [4797.9238, 2250.1528, 1.9550323e-005];
};

_vehicle_4531 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4808.9409, 2231.4771, -0.12953043], [], 0, "CAN_COLLIDE"];
  _vehicle_4531 = _this;
  _this setDir -74.445572;
  _this setPos [4808.9409, 2231.4771, -0.12953043];
};

_vehicle_4534 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4799.5239, 2253.7827, -6.7710876e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4534 = _this;
  _this setDir -74.445572;
  _this setPos [4799.5239, 2253.7827, -6.7710876e-005];
};

_vehicle_4535 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4820.8887, 2228.1736, -0.12029791], [], 0, "CAN_COLLIDE"];
  _vehicle_4535 = _this;
  _this setDir -74.445572;
  _this setPos [4820.8887, 2228.1736, -0.12029791];
};

_vehicle_4538 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4795.9443, 2252.0347, 1.5735626e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4538 = _this;
  _this setDir -74.445572;
  _this setPos [4795.9443, 2252.0347, 1.5735626e-005];
};

_vehicle_4539 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4832.9233, 2224.8035, -0.10142756], [], 0, "CAN_COLLIDE"];
  _vehicle_4539 = _this;
  _this setDir -74.445572;
  _this setPos [4832.9233, 2224.8035, -0.10142756];
};

_vehicle_4543 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4844.9355, 2221.4014, -0.082899094], [], 0, "CAN_COLLIDE"];
  _vehicle_4543 = _this;
  _this setDir -74.445572;
  _this setPos [4844.9355, 2221.4014, -0.082899094];
};

_vehicle_4547 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4856.895, 2218.0679, -0.082883835], [], 0, "CAN_COLLIDE"];
  _vehicle_4547 = _this;
  _this setDir -74.445572;
  _this setPos [4856.895, 2218.0679, -0.082883835];
};

_vehicle_4551 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_12", [4868.7329, 2214.7917, -0.082906723], [], 0, "CAN_COLLIDE"];
  _vehicle_4551 = _this;
  _this setDir -74.445572;
  _this setPos [4868.7329, 2214.7917, -0.082906723];
};

_vehicle_4554 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_15_75", [4781.2681, 2261.3584, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4554 = _this;
  _this setDir 14.303602;
  _this setPos [4781.2681, 2261.3584, 1.9073486e-006];
};

_vehicle_4555 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_22_50", [4781.0938, 2242.4143, -4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4555 = _this;
  _this setDir -10.194337;
  _this setPos [4781.0938, 2242.4143, -4.2915344e-006];
};

_vehicle_4559 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_60_10", [4878.1802, 2217.522, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4559 = _this;
  _this setDir -136.30986;
  _this setPos [4878.1802, 2217.522, -2.8610229e-006];
};

_vehicle_4562 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_7_100", [4880.3877, 2226.9868, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_4562 = _this;
  _this setDir -15.650337;
  _this setPos [4880.3877, 2226.9868, -9.5367432e-007];
};

_vehicle_4568 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_60_10", [4880.4697, 2227.093, 0.030714035], [], 0, "CAN_COLLIDE"];
  _vehicle_4568 = _this;
  _this setDir -195.81497;
  _this setPos [4880.4697, 2227.093, 0.030714035];
};

_vehicle_4573 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_7_100", [4877.6147, 2239.7725, -2.5749207e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4573 = _this;
  _this setDir -8.1955519;
  _this setPos [4877.6147, 2239.7725, -2.5749207e-005];
};

_vehicle_4577 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_7_100", [4876.6514, 2252.7561, 6.1988831e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4577 = _this;
  _this setDir -1.4224958;
  _this setPos [4876.6514, 2252.7561, 6.1988831e-006];
};

_vehicle_4583 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_7_100", [4877.1152, 2265.7603, 8.1062317e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4583 = _this;
  _this setDir 6.3717895;
  _this setPos [4877.1152, 2265.7603, 8.1062317e-006];
};

_vehicle_4587 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_7_100", [4879.3384, 2278.5496, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4587 = _this;
  _this setDir 13.457069;
  _this setPos [4879.3384, 2278.5496, 1.9073486e-005];
};

_vehicle_4593 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf1_7_100", [4881.8682, 2287.0784, 2.4318695e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4593 = _this;
  _this setDir 15.872824;
  _this setPos [4881.8682, 2287.0784, 2.4318695e-005];
};

_vehicle_4597 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_A_GeneralStore_01", [4847.647, 2241.0815, -0.28652424], [], 0, "CAN_COLLIDE"];
  _vehicle_4597 = _this;
  _this setDir -164.88718;
  _this setPos [4847.647, 2241.0815, -0.28652424];
};

_vehicle_4599 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [4828.1182, 2242.2798, -0.084558912], [], 0, "CAN_COLLIDE"];
  _vehicle_4599 = _this;
  _this setDir 105.95067;
  _this setPos [4828.1182, 2242.2798, -0.084558912];
};

_vehicle_4602 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [4818.9258, 2245.1543, -0.0018042107], [], 0, "CAN_COLLIDE"];
  _vehicle_4602 = _this;
  _this setDir 105.95067;
  _this setPos [4818.9258, 2245.1543, -0.0018042107];
};

_vehicle_4604 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Mil_Barracks_i", [4809.5049, 2247.6174, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4604 = _this;
  _this setDir 105.95067;
  _this setPos [4809.5049, 2247.6174, -1.5258789e-005];
};

_vehicle_4606 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_SideRoof", [4820.2266, 2260.4802, -0.050533194], [], 0, "CAN_COLLIDE"];
  _vehicle_4606 = _this;
  _this setDir 107.13834;
  _this setPos [4820.2266, 2260.4802, -0.050533194];
};

_vehicle_4607 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Shed_Ind02", [4795.2686, 2323.6858, 0.109014], [], 0, "CAN_COLLIDE"];
  _vehicle_4607 = _this;
  _this setDir -57.373741;
  _this setPos [4795.2686, 2323.6858, 0.109014];
};

_vehicle_4611 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_CraneCon", [4739.2607, 2284.396, -0.025910828], [], 0, "CAN_COLLIDE"];
  _vehicle_4611 = _this;
  _this setDir -40.470394;
  _this setPos [4739.2607, 2284.396, -0.025910828];
};

_vehicle_4614 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Ind_Expedice_1", [4840.9009, 2301.0986, -0.19604313], [], 0, "CAN_COLLIDE"];
  _vehicle_4614 = _this;
  _this setDir -61.207088;
  _this setPos [4840.9009, 2301.0986, -0.19604313];
};

_vehicle_4618 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_Pec_02", [4830.0796, 2273.2915, 0.18163842], [], 0, "CAN_COLLIDE"];
  _vehicle_4618 = _this;
  _this setDir 114.67517;
  _this setPos [4830.0796, 2273.2915, 0.18163842];
};

_vehicle_4619 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Ind_Pec_03a", [4907.0068, 2243.604, 5.2576571], [], 0, "CAN_COLLIDE"];
  _vehicle_4619 = _this;
  _this setDir 309.4906;
  _this setPos [4907.0068, 2243.604, 5.2576571];
};

_vehicle_4621 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Ind_Workshop01_01", [4897.168, 2231.0481, 0.030123008], [], 0, "CAN_COLLIDE"];
  _vehicle_4621 = _this;
  _this setDir -52.83643;
  _this setPos [4897.168, 2231.0481, 0.030123008];
};

_vehicle_4622 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Ind_Workshop01_L", [4899.6343, 2212.2766, 0.17588481], [], 0, "CAN_COLLIDE"];
  _vehicle_4622 = _this;
  _this setDir -230.16356;
  _this setPos [4899.6343, 2212.2766, 0.17588481];
};

_vehicle_4623 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_komin", [4917.8472, 2220.0369, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4623 = _this;
  _this setDir -48.890781;
  _this setPos [4917.8472, 2220.0369, -7.6293945e-006];
};

_vehicle_4624 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Cargo1A", [4917.293, 2212.2065, 1.8119812e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4624 = _this;
  _this setDir -49.964001;
  _this setPos [4917.293, 2212.2065, 1.8119812e-005];
};

_vehicle_4626 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Cargo1A", [4913.7324, 2208.5664, 7.1525574e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4626 = _this;
  _this setDir -49.964001;
  _this setPos [4913.7324, 2208.5664, 7.1525574e-005];
};

_vehicle_4628 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Cargo1A", [4908.9141, 2204.1648, 6.2465668e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4628 = _this;
  _this setDir -49.964001;
  _this setPos [4908.9141, 2204.1648, 6.2465668e-005];
};

_vehicle_4630 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Cargo1A", [4915.5796, 2202.7756, 2.1934509e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4630 = _this;
  _this setDir -49.964001;
  _this setPos [4915.5796, 2202.7756, 2.1934509e-005];
};

_vehicle_4632 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Cargo1A", [4922.1284, 2214.6458, 4.1007996e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4632 = _this;
  _this setDir -49.964001;
  _this setPos [4922.1284, 2214.6458, 4.1007996e-005];
};

_vehicle_4634 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Cargo1A", [4819.6797, 2295.2102, -6.1988831e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4634 = _this;
  _this setDir -49.964001;
  _this setPos [4819.6797, 2295.2102, -6.1988831e-006];
};

_vehicle_4636 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Cargo1A", [4828.9048, 2294.2153, 1.6689301e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4636 = _this;
  _this setDir -49.964001;
  _this setPos [4828.9048, 2294.2153, 1.6689301e-005];
};

_vehicle_4638 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Cargo1A", [4798.3267, 2263.0757, 2.1934509e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4638 = _this;
  _this setDir -49.964001;
  _this setPos [4798.3267, 2263.0757, 2.1934509e-005];
};

_vehicle_4640 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Cargo1A", [4813.7988, 2266.0364], [], 0, "CAN_COLLIDE"];
  _vehicle_4640 = _this;
  _this setDir -49.964001;
  _this setPos [4813.7988, 2266.0364];
};

_vehicle_4642 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Cargo1A", [4804.0688, 2262.9148, 2.0503998e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4642 = _this;
  _this setDir -49.964001;
  _this setPos [4804.0688, 2262.9148, 2.0503998e-005];
};

_vehicle_4644 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Misc_Cargo1Bo", [4804.4639, 2272.5945, 5.4836273e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4644 = _this;
  _this setDir 48.769455;
  _this setPos [4804.4639, 2272.5945, 5.4836273e-005];
};

_vehicle_4645 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Cargo1A", [4924.5879, 2207.5562, -1.2397766e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4645 = _this;
  _this setDir -49.964001;
  _this setPos [4924.5879, 2207.5562, -1.2397766e-005];
};

_vehicle_4647 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Misc_Cargo1Bo", [4921.603, 2201.5161, 5.3882599e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4647 = _this;
  _this setPos [4921.603, 2201.5161, 5.3882599e-005];
};

_vehicle_4648 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_Misc_Cargo1Bo", [4823.1255, 2301.699, 3.194809e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4648 = _this;
  _this setDir 67.109634;
  _this setPos [4823.1255, 2301.699, 3.194809e-005];
};

_vehicle_4650 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_SideRoof", [4931.2061, 2223.8457, 3.3855438e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4650 = _this;
  _this setDir 219.78249;
  _this setPos [4931.2061, 2223.8457, 3.3855438e-005];
};

_vehicle_4653 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4762.5869, 2267.188, 9.059906e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4653 = _this;
  _this setDir -74.445572;
  _this setPos [4762.5869, 2267.188, 9.059906e-006];
};

_vehicle_4655 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4770.8003, 2269.7268, 1.6689301e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4655 = _this;
  _this setDir -74.445572;
  _this setPos [4770.8003, 2269.7268, 1.6689301e-005];
};

_vehicle_4657 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4758.9893, 2260.8975, 4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4657 = _this;
  _this setDir -74.445572;
  _this setPos [4758.9893, 2260.8975, 4.7683716e-006];
};

_vehicle_4659 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4792.3838, 2255.717, 3.3378601e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4659 = _this;
  _this setDir -74.445572;
  _this setPos [4792.3838, 2255.717, 3.3378601e-005];
};

_vehicle_4661 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4785.916, 2318.5547, -3.4809113e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4661 = _this;
  _this setDir -74.445572;
  _this setPos [4785.916, 2318.5547, -3.4809113e-005];
};

_vehicle_4663 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4787.917, 2315.3794, 2.4318695e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4663 = _this;
  _this setDir -74.445572;
  _this setPos [4787.917, 2315.3794, 2.4318695e-005];
};

_vehicle_4665 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4784.4067, 2313.5171, -1.3828278e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4665 = _this;
  _this setDir -74.445572;
  _this setPos [4784.4067, 2313.5171, -1.3828278e-005];
};

_vehicle_4667 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4728.5503, 2288.0222, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4667 = _this;
  _this setDir -74.445572;
  _this setPos [4728.5503, 2288.0222, 1.4305115e-006];
};

_vehicle_4669 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4727.1147, 2293.0398, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4669 = _this;
  _this setDir -74.445572;
  _this setPos [4727.1147, 2293.0398, 1.4305115e-006];
};

_vehicle_4671 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4867.6523, 2227.1079, -1.2397766e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4671 = _this;
  _this setDir -74.445572;
  _this setPos [4867.6523, 2227.1079, -1.2397766e-005];
};

_vehicle_4673 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [4870.3721, 2224.2397, 2.7179718e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4673 = _this;
  _this setDir -74.445572;
  _this setPos [4870.3721, 2224.2397, 2.7179718e-005];
};

_vehicle_4676 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre1", [4883.9727, 2262.7351, 2.7179718e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4676 = _this;
  _this setDir -7.9790878;
  _this setPos [4883.9727, 2262.7351, 2.7179718e-005];
};

_vehicle_4678 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre1", [4872.082, 2222.5701, 1.2874603e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4678 = _this;
  _this setDir -114.87685;
  _this setPos [4872.082, 2222.5701, 1.2874603e-005];
};

_vehicle_4680 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre1", [4831.916, 2231.7646, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4680 = _this;
  _this setDir -77.99781;
  _this setPos [4831.916, 2231.7646, 1.5258789e-005];
};

_vehicle_4682 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre1", [4773.4155, 2248.0918, 9.059906e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4682 = _this;
  _this setDir -76.416603;
  _this setPos [4773.4155, 2248.0918, 9.059906e-006];
};

_vehicle_4684 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre1", [4725.2681, 2247.8018, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4684 = _this;
  _this setDir -249.16985;
  _this setPos [4725.2681, 2247.8018, 1.9073486e-005];
};

_vehicle_4686 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre1", [4756.9165, 2238.7256, 2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4686 = _this;
  _this setDir -254.31496;
  _this setPos [4756.9165, 2238.7256, 2.2888184e-005];
};

_vehicle_4689 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre1", [4848.3989, 2213.522, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4689 = _this;
  _this setDir -254.31496;
  _this setPos [4848.3989, 2213.522, 3.8146973e-006];
};

_vehicle_4691 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre1", [4789.8613, 2264.8611, -8.5830688e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4691 = _this;
  _this setDir -331.19849;
  _this setPos [4789.8613, 2264.8611, -8.5830688e-006];
};

_vehicle_4694 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre1", [4809.9468, 2301.7659, 3.2901764e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4694 = _this;
  _this setDir -331.19849;
  _this setPos [4809.9468, 2301.7659, 3.2901764e-005];
};

_vehicle_4696 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre1", [4824.5615, 2326.9246, 9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4696 = _this;
  _this setDir -331.19849;
  _this setPos [4824.5615, 2326.9246, 9.5367432e-006];
};

_vehicle_4698 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12355.253, 12604.79, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4698 = _this;
  _this setDir -7.4119859;
  _this setPos [12355.253, 12604.79, 0];
};

_vehicle_4700 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12498.493, 12569.09, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4700 = _this;
  _this setDir -7.4119859;
  _this setPos [12498.493, 12569.09, -3.0517578e-005];
};

_vehicle_4702 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12512.253, 12568.923, 0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_4702 = _this;
  _this setDir -7.4119859;
  _this setPos [12512.253, 12568.923, 0.0001373291];
};

_vehicle_4704 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12505.028, 12552.391, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4704 = _this;
  _this setDir -7.4119859;
  _this setPos [12505.028, 12552.391, -1.5258789e-005];
};

_vehicle_4706 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12491.18, 12542.68, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4706 = _this;
  _this setDir -7.4119859;
  _this setPos [12491.18, 12542.68, 6.1035156e-005];
};

_vehicle_4708 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12491.196, 12558.367, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4708 = _this;
  _this setDir -7.4119859;
  _this setPos [12491.196, 12558.367, 0];
};

_vehicle_4710 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12476.352, 12549.39, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4710 = _this;
  _this setDir -7.4119859;
  _this setPos [12476.352, 12549.39, -3.0517578e-005];
};

_vehicle_4712 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12480.332, 12565.702, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4712 = _this;
  _this setDir -7.4119859;
  _this setPos [12480.332, 12565.702, -3.0517578e-005];
};

_vehicle_4714 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12483.558, 12579.687, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4714 = _this;
  _this setDir -7.4119859;
  _this setPos [12483.558, 12579.687, 0];
};

_vehicle_4716 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12469.229, 12583.697, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4716 = _this;
  _this setDir -7.4119859;
  _this setPos [12469.229, 12583.697, -3.0517578e-005];
};

_vehicle_4718 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12464.647, 12570.582, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4718 = _this;
  _this setDir -7.4119859;
  _this setPos [12464.647, 12570.582, 1.5258789e-005];
};

_vehicle_4720 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12460.58, 12556.788, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4720 = _this;
  _this setDir -7.4119859;
  _this setPos [12460.58, 12556.788, 3.0517578e-005];
};

_vehicle_4725 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12446.072, 12561.583], [], 0, "CAN_COLLIDE"];
  _vehicle_4725 = _this;
  _this setDir -7.4119859;
  _this setPos [12446.072, 12561.583];
};

_vehicle_4726 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12450.14, 12575.377, 0.12324524], [], 0, "CAN_COLLIDE"];
  _vehicle_4726 = _this;
  _this setDir -7.4119859;
  _this setPos [12450.14, 12575.377, 0.12324524];
};

_vehicle_4727 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12454.721, 12588.492, -0.028015137], [], 0, "CAN_COLLIDE"];
  _vehicle_4727 = _this;
  _this setDir -7.4119859;
  _this setPos [12454.721, 12588.492, -0.028015137];
};

_vehicle_4731 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12431.938, 12566.82, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4731 = _this;
  _this setDir -7.4119859;
  _this setPos [12431.938, 12566.82, 0];
};

_vehicle_4732 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12436.006, 12580.614, -0.064941406], [], 0, "CAN_COLLIDE"];
  _vehicle_4732 = _this;
  _this setDir -7.4119859;
  _this setPos [12436.006, 12580.614, -0.064941406];
};

_vehicle_4733 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12440.587, 12593.729, -0.16499329], [], 0, "CAN_COLLIDE"];
  _vehicle_4733 = _this;
  _this setDir -7.4119859;
  _this setPos [12440.587, 12593.729, -0.16499329];
};

_vehicle_4737 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12415.973, 12571.533, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4737 = _this;
  _this setDir -7.4119859;
  _this setPos [12415.973, 12571.533, 0];
};

_vehicle_4738 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12420.04, 12585.327, -0.044494629], [], 0, "CAN_COLLIDE"];
  _vehicle_4738 = _this;
  _this setDir -7.4119859;
  _this setPos [12420.04, 12585.327, -0.044494629];
};

_vehicle_4739 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12424.621, 12598.442, -0.14454651], [], 0, "CAN_COLLIDE"];
  _vehicle_4739 = _this;
  _this setDir -7.4119859;
  _this setPos [12424.621, 12598.442, -0.14454651];
};

_vehicle_4743 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12397.915, 12577.818, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4743 = _this;
  _this setDir -7.4119859;
  _this setPos [12397.915, 12577.818, 0];
};

_vehicle_4744 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12401.982, 12591.612, 0.087112427], [], 0, "CAN_COLLIDE"];
  _vehicle_4744 = _this;
  _this setDir -7.4119859;
  _this setPos [12401.982, 12591.612, 0.087112427];
};

_vehicle_4745 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12406.563, 12604.728, -0.04447937], [], 0, "CAN_COLLIDE"];
  _vehicle_4745 = _this;
  _this setDir -7.4119859;
  _this setPos [12406.563, 12604.728, -0.04447937];
};

_vehicle_4749 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12379.33, 12584.364, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4749 = _this;
  _this setDir -7.4119859;
  _this setPos [12379.33, 12584.364, 0];
};

_vehicle_4750 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12383.397, 12598.158, 0.12249756], [], 0, "CAN_COLLIDE"];
  _vehicle_4750 = _this;
  _this setDir -7.4119859;
  _this setPos [12383.397, 12598.158, 0.12249756];
};

_vehicle_4751 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12387.979, 12611.273, 0.017776489], [], 0, "CAN_COLLIDE"];
  _vehicle_4751 = _this;
  _this setDir -7.4119859;
  _this setPos [12387.979, 12611.273, 0.017776489];
};

_vehicle_4764 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12325.416, 12602.696, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4764 = _this;
  _this setDir -7.4119859;
  _this setPos [12325.416, 12602.696, 0];
};

_vehicle_4765 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12329.483, 12616.49, 0.035064697], [], 0, "CAN_COLLIDE"];
  _vehicle_4765 = _this;
  _this setDir -7.4119859;
  _this setPos [12329.483, 12616.49, 0.035064697];
};

_vehicle_4766 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12334.064, 12629.605, -0.036560059], [], 0, "CAN_COLLIDE"];
  _vehicle_4766 = _this;
  _this setDir -7.4119859;
  _this setPos [12334.064, 12629.605, -0.036560059];
};

_vehicle_4767 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12344.001, 12596.15, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4767 = _this;
  _this setDir -7.4119859;
  _this setPos [12344.001, 12596.15, 0];
};

_vehicle_4768 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12348.068, 12609.944, 0.035064697], [], 0, "CAN_COLLIDE"];
  _vehicle_4768 = _this;
  _this setDir -7.4119859;
  _this setPos [12348.068, 12609.944, 0.035064697];
};

_vehicle_4769 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12352.649, 12623.06, -0.025344849], [], 0, "CAN_COLLIDE"];
  _vehicle_4769 = _this;
  _this setDir -7.4119859;
  _this setPos [12352.649, 12623.06, -0.025344849];
};

_vehicle_4770 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12362.059, 12589.865, -0.079559326], [], 0, "CAN_COLLIDE"];
  _vehicle_4770 = _this;
  _this setDir -7.4119859;
  _this setPos [12362.059, 12589.865, -0.079559326];
};

_vehicle_4771 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12366.126, 12603.659, -0.044494629], [], 0, "CAN_COLLIDE"];
  _vehicle_4771 = _this;
  _this setDir -7.4119859;
  _this setPos [12366.126, 12603.659, -0.044494629];
};

_vehicle_4772 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12370.707, 12616.774, -0.050262451], [], 0, "CAN_COLLIDE"];
  _vehicle_4772 = _this;
  _this setDir -7.4119859;
  _this setPos [12370.707, 12616.774, -0.050262451];
};

_vehicle_4782 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12269.93, 12622.073, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4782 = _this;
  _this setDir -7.4119859;
  _this setPos [12269.93, 12622.073, 0];
};

_vehicle_4783 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12273.997, 12635.867, 0.035064697], [], 0, "CAN_COLLIDE"];
  _vehicle_4783 = _this;
  _this setDir -7.4119859;
  _this setPos [12273.997, 12635.867, 0.035064697];
};

_vehicle_4784 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12278.578, 12648.982, -0.064987183], [], 0, "CAN_COLLIDE"];
  _vehicle_4784 = _this;
  _this setDir -7.4119859;
  _this setPos [12278.578, 12648.982, -0.064987183];
};

_vehicle_4785 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12288.515, 12615.527, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4785 = _this;
  _this setDir -7.4119859;
  _this setPos [12288.515, 12615.527, 0];
};

_vehicle_4786 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12292.582, 12629.321, 0.035064697], [], 0, "CAN_COLLIDE"];
  _vehicle_4786 = _this;
  _this setDir -7.4119859;
  _this setPos [12292.582, 12629.321, 0.035064697];
};

_vehicle_4787 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12297.163, 12642.437, -0.064987183], [], 0, "CAN_COLLIDE"];
  _vehicle_4787 = _this;
  _this setDir -7.4119859;
  _this setPos [12297.163, 12642.437, -0.064987183];
};

_vehicle_4788 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12306.572, 12609.242, -0.079559326], [], 0, "CAN_COLLIDE"];
  _vehicle_4788 = _this;
  _this setDir -7.4119859;
  _this setPos [12306.572, 12609.242, -0.079559326];
};

_vehicle_4789 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12310.64, 12623.036, -0.044494629], [], 0, "CAN_COLLIDE"];
  _vehicle_4789 = _this;
  _this setDir -7.4119859;
  _this setPos [12310.64, 12623.036, -0.044494629];
};

_vehicle_4790 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12315.221, 12636.151, -0.14454651], [], 0, "CAN_COLLIDE"];
  _vehicle_4790 = _this;
  _this setDir -7.4119859;
  _this setPos [12315.221, 12636.151, -0.14454651];
};

_vehicle_4800 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12224.388, 12638.833, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4800 = _this;
  _this setDir -7.4119859;
  _this setPos [12224.388, 12638.833, 0];
};

_vehicle_4801 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12228.455, 12652.627, 0.035064697], [], 0, "CAN_COLLIDE"];
  _vehicle_4801 = _this;
  _this setDir -7.4119859;
  _this setPos [12228.455, 12652.627, 0.035064697];
};

_vehicle_4802 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12233.036, 12665.742, -0.064987183], [], 0, "CAN_COLLIDE"];
  _vehicle_4802 = _this;
  _this setDir -7.4119859;
  _this setPos [12233.036, 12665.742, -0.064987183];
};

_vehicle_4803 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12242.973, 12632.287, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4803 = _this;
  _this setDir -7.4119859;
  _this setPos [12242.973, 12632.287, 0];
};

_vehicle_4804 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12247.04, 12646.081, 0.035064697], [], 0, "CAN_COLLIDE"];
  _vehicle_4804 = _this;
  _this setDir -7.4119859;
  _this setPos [12247.04, 12646.081, 0.035064697];
};

_vehicle_4805 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12251.621, 12659.196, -0.064987183], [], 0, "CAN_COLLIDE"];
  _vehicle_4805 = _this;
  _this setDir -7.4119859;
  _this setPos [12251.621, 12659.196, -0.064987183];
};

_vehicle_4806 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12261.03, 12626.002, -0.079559326], [], 0, "CAN_COLLIDE"];
  _vehicle_4806 = _this;
  _this setDir -7.4119859;
  _this setPos [12261.03, 12626.002, -0.079559326];
};

_vehicle_4807 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12265.098, 12639.796, -0.044494629], [], 0, "CAN_COLLIDE"];
  _vehicle_4807 = _this;
  _this setDir -7.4119859;
  _this setPos [12265.098, 12639.796, -0.044494629];
};

_vehicle_4808 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12269.679, 12652.911, -0.14454651], [], 0, "CAN_COLLIDE"];
  _vehicle_4808 = _this;
  _this setDir -7.4119859;
  _this setPos [12269.679, 12652.911, -0.14454651];
};

_vehicle_4818 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12176.492, 12656.639, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4818 = _this;
  _this setDir -7.4119859;
  _this setPos [12176.492, 12656.639, 0];
};

_vehicle_4819 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12180.56, 12670.433, -0.0097503662], [], 0, "CAN_COLLIDE"];
  _vehicle_4819 = _this;
  _this setDir -7.4119859;
  _this setPos [12180.56, 12670.433, -0.0097503662];
};

_vehicle_4820 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12185.141, 12683.548, -0.078353882], [], 0, "CAN_COLLIDE"];
  _vehicle_4820 = _this;
  _this setDir -7.4119859;
  _this setPos [12185.141, 12683.548, -0.078353882];
};

_vehicle_4821 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12195.077, 12650.093, -0.044815063], [], 0, "CAN_COLLIDE"];
  _vehicle_4821 = _this;
  _this setDir -7.4119859;
  _this setPos [12195.077, 12650.093, -0.044815063];
};

_vehicle_4822 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12199.145, 12663.887, -0.0026397705], [], 0, "CAN_COLLIDE"];
  _vehicle_4822 = _this;
  _this setDir -7.4119859;
  _this setPos [12199.145, 12663.887, -0.0026397705];
};

_vehicle_4823 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12203.726, 12677.002, -0.10980225], [], 0, "CAN_COLLIDE"];
  _vehicle_4823 = _this;
  _this setDir -7.4119859;
  _this setPos [12203.726, 12677.002, -0.10980225];
};

_vehicle_4824 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12213.135, 12643.808, -0.12437439], [], 0, "CAN_COLLIDE"];
  _vehicle_4824 = _this;
  _this setDir -7.4119859;
  _this setPos [12213.135, 12643.808, -0.12437439];
};

_vehicle_4825 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12217.202, 12657.602, -0.021270752], [], 0, "CAN_COLLIDE"];
  _vehicle_4825 = _this;
  _this setDir -7.4119859;
  _this setPos [12217.202, 12657.602, -0.021270752];
};

_vehicle_4826 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12221.783, 12670.717, -0.18936157], [], 0, "CAN_COLLIDE"];
  _vehicle_4826 = _this;
  _this setDir -7.4119859;
  _this setPos [12221.783, 12670.717, -0.18936157];
};

_vehicle_4836 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12120.479, 12675.755, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4836 = _this;
  _this setDir -7.4119859;
  _this setPos [12120.479, 12675.755, 0];
};

_vehicle_4837 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12124.547, 12689.549, 0.035064697], [], 0, "CAN_COLLIDE"];
  _vehicle_4837 = _this;
  _this setDir -7.4119859;
  _this setPos [12124.547, 12689.549, 0.035064697];
};

_vehicle_4838 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12129.128, 12702.664, 0.025588989], [], 0, "CAN_COLLIDE"];
  _vehicle_4838 = _this;
  _this setDir -7.4119859;
  _this setPos [12129.128, 12702.664, 0.025588989];
};

_vehicle_4839 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12139.064, 12669.209, 0.023010254], [], 0, "CAN_COLLIDE"];
  _vehicle_4839 = _this;
  _this setDir -7.4119859;
  _this setPos [12139.064, 12669.209, 0.023010254];
};

_vehicle_4840 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12143.132, 12683.003, 0.035064697], [], 0, "CAN_COLLIDE"];
  _vehicle_4840 = _this;
  _this setDir -7.4119859;
  _this setPos [12143.132, 12683.003, 0.035064697];
};

_vehicle_4841 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12147.713, 12696.118, 0.035018921], [], 0, "CAN_COLLIDE"];
  _vehicle_4841 = _this;
  _this setDir -7.4119859;
  _this setPos [12147.713, 12696.118, 0.035018921];
};

_vehicle_4842 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12157.122, 12662.924, -0.079559326], [], 0, "CAN_COLLIDE"];
  _vehicle_4842 = _this;
  _this setDir -7.4119859;
  _this setPos [12157.122, 12662.924, -0.079559326];
};

_vehicle_4843 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12161.189, 12676.718, -0.044494629], [], 0, "CAN_COLLIDE"];
  _vehicle_4843 = _this;
  _this setDir -7.4119859;
  _this setPos [12161.189, 12676.718, -0.044494629];
};

_vehicle_4844 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12165.771, 12689.833, -0.044540405], [], 0, "CAN_COLLIDE"];
  _vehicle_4844 = _this;
  _this setDir -7.4119859;
  _this setPos [12165.771, 12689.833, -0.044540405];
};

_vehicle_4854 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12069.965, 12690.157, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4854 = _this;
  _this setDir -7.4119859;
  _this setPos [12069.965, 12690.157, 0];
};

_vehicle_4855 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12074.032, 12703.951, 0.12109375], [], 0, "CAN_COLLIDE"];
  _vehicle_4855 = _this;
  _this setDir -7.4119859;
  _this setPos [12074.032, 12703.951, 0.12109375];
};

_vehicle_4856 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12078.613, 12717.066, -0.025878906], [], 0, "CAN_COLLIDE"];
  _vehicle_4856 = _this;
  _this setDir -7.4119859;
  _this setPos [12078.613, 12717.066, -0.025878906];
};

_vehicle_4857 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12088.55, 12683.611, 0.17033386], [], 0, "CAN_COLLIDE"];
  _vehicle_4857 = _this;
  _this setDir -7.4119859;
  _this setPos [12088.55, 12683.611, 0.17033386];
};

_vehicle_4858 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12092.617, 12697.405, 0.10142517], [], 0, "CAN_COLLIDE"];
  _vehicle_4858 = _this;
  _this setDir -7.4119859;
  _this setPos [12092.617, 12697.405, 0.10142517];
};

_vehicle_4859 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12097.198, 12710.521, -0.064987183], [], 0, "CAN_COLLIDE"];
  _vehicle_4859 = _this;
  _this setDir -7.4119859;
  _this setPos [12097.198, 12710.521, -0.064987183];
};

_vehicle_4860 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12106.607, 12677.326, -0.079559326], [], 0, "CAN_COLLIDE"];
  _vehicle_4860 = _this;
  _this setDir -7.4119859;
  _this setPos [12106.607, 12677.326, -0.079559326];
};

_vehicle_4861 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12110.675, 12691.12, -0.044494629], [], 0, "CAN_COLLIDE"];
  _vehicle_4861 = _this;
  _this setDir -7.4119859;
  _this setPos [12110.675, 12691.12, -0.044494629];
};

_vehicle_4862 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12115.256, 12704.235, -0.1179657], [], 0, "CAN_COLLIDE"];
  _vehicle_4862 = _this;
  _this setDir -7.4119859;
  _this setPos [12115.256, 12704.235, -0.1179657];
};

_vehicle_4872 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12020.236, 12707.702, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4872 = _this;
  _this setDir -7.4119859;
  _this setPos [12020.236, 12707.702, 0];
};

_vehicle_4873 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12024.304, 12721.496, 0.035064697], [], 0, "CAN_COLLIDE"];
  _vehicle_4873 = _this;
  _this setDir -7.4119859;
  _this setPos [12024.304, 12721.496, 0.035064697];
};

_vehicle_4874 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12028.885, 12734.611, -0.064987183], [], 0, "CAN_COLLIDE"];
  _vehicle_4874 = _this;
  _this setDir -7.4119859;
  _this setPos [12028.885, 12734.611, -0.064987183];
};

_vehicle_4875 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12038.821, 12701.156, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4875 = _this;
  _this setDir -7.4119859;
  _this setPos [12038.821, 12701.156, 0];
};

_vehicle_4876 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12042.889, 12714.95, 0.067749023], [], 0, "CAN_COLLIDE"];
  _vehicle_4876 = _this;
  _this setDir -7.4119859;
  _this setPos [12042.889, 12714.95, 0.067749023];
};

_vehicle_4877 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12047.47, 12728.065, 0.027481079], [], 0, "CAN_COLLIDE"];
  _vehicle_4877 = _this;
  _this setDir -7.4119859;
  _this setPos [12047.47, 12728.065, 0.027481079];
};

_vehicle_4878 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12056.879, 12694.871, -0.079559326], [], 0, "CAN_COLLIDE"];
  _vehicle_4878 = _this;
  _this setDir -7.4119859;
  _this setPos [12056.879, 12694.871, -0.079559326];
};

_vehicle_4879 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12060.946, 12708.665, 0.016998291], [], 0, "CAN_COLLIDE"];
  _vehicle_4879 = _this;
  _this setDir -7.4119859;
  _this setPos [12060.946, 12708.665, 0.016998291];
};

_vehicle_4880 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12065.527, 12721.78, -0.068283081], [], 0, "CAN_COLLIDE"];
  _vehicle_4880 = _this;
  _this setDir -7.4119859;
  _this setPos [12065.527, 12721.78, -0.068283081];
};

_vehicle_4890 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11973.648, 12721.057, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4890 = _this;
  _this setDir -7.4119859;
  _this setPos [11973.648, 12721.057, 0];
};

_vehicle_4891 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11977.716, 12734.851, 0.035064697], [], 0, "CAN_COLLIDE"];
  _vehicle_4891 = _this;
  _this setDir -7.4119859;
  _this setPos [11977.716, 12734.851, 0.035064697];
};

_vehicle_4892 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11982.297, 12747.966, -0.064987183], [], 0, "CAN_COLLIDE"];
  _vehicle_4892 = _this;
  _this setDir -7.4119859;
  _this setPos [11982.297, 12747.966, -0.064987183];
};

_vehicle_4893 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11992.233, 12714.511, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4893 = _this;
  _this setDir -7.4119859;
  _this setPos [11992.233, 12714.511, 0];
};

_vehicle_4894 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11996.301, 12728.305, 0.035064697], [], 0, "CAN_COLLIDE"];
  _vehicle_4894 = _this;
  _this setDir -7.4119859;
  _this setPos [11996.301, 12728.305, 0.035064697];
};

_vehicle_4895 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12000.882, 12741.42, -0.064987183], [], 0, "CAN_COLLIDE"];
  _vehicle_4895 = _this;
  _this setDir -7.4119859;
  _this setPos [12000.882, 12741.42, -0.064987183];
};

_vehicle_4896 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12010.291, 12708.226, -0.079559326], [], 0, "CAN_COLLIDE"];
  _vehicle_4896 = _this;
  _this setDir -7.4119859;
  _this setPos [12010.291, 12708.226, -0.079559326];
};

_vehicle_4897 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12014.358, 12722.02, -0.044494629], [], 0, "CAN_COLLIDE"];
  _vehicle_4897 = _this;
  _this setDir -7.4119859;
  _this setPos [12014.358, 12722.02, -0.044494629];
};

_vehicle_4898 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12018.939, 12735.135, -0.14454651], [], 0, "CAN_COLLIDE"];
  _vehicle_4898 = _this;
  _this setDir -7.4119859;
  _this setPos [12018.939, 12735.135, -0.14454651];
};

_vehicle_4908 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11920.779, 12742.006, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4908 = _this;
  _this setDir -7.4119859;
  _this setPos [11920.779, 12742.006, 0];
};

_vehicle_4909 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11924.847, 12755.8, 0.035064697], [], 0, "CAN_COLLIDE"];
  _vehicle_4909 = _this;
  _this setDir -7.4119859;
  _this setPos [11924.847, 12755.8, 0.035064697];
};

_vehicle_4910 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11929.428, 12768.915, -0.012771606], [], 0, "CAN_COLLIDE"];
  _vehicle_4910 = _this;
  _this setDir -7.4119859;
  _this setPos [11929.428, 12768.915, -0.012771606];
};

_vehicle_4911 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11939.364, 12735.46, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4911 = _this;
  _this setDir -7.4119859;
  _this setPos [11939.364, 12735.46, 0];
};

_vehicle_4912 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11943.432, 12749.254, 0.035064697], [], 0, "CAN_COLLIDE"];
  _vehicle_4912 = _this;
  _this setDir -7.4119859;
  _this setPos [11943.432, 12749.254, 0.035064697];
};

_vehicle_4913 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11948.013, 12762.369, -0.064987183], [], 0, "CAN_COLLIDE"];
  _vehicle_4913 = _this;
  _this setDir -7.4119859;
  _this setPos [11948.013, 12762.369, -0.064987183];
};

_vehicle_4914 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11957.422, 12729.175, -0.079559326], [], 0, "CAN_COLLIDE"];
  _vehicle_4914 = _this;
  _this setDir -7.4119859;
  _this setPos [11957.422, 12729.175, -0.079559326];
};

_vehicle_4915 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11961.489, 12742.969, -0.044494629], [], 0, "CAN_COLLIDE"];
  _vehicle_4915 = _this;
  _this setDir -7.4119859;
  _this setPos [11961.489, 12742.969, -0.044494629];
};

_vehicle_4916 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11966.07, 12756.084, -0.14454651], [], 0, "CAN_COLLIDE"];
  _vehicle_4916 = _this;
  _this setDir -7.4119859;
  _this setPos [11966.07, 12756.084, -0.14454651];
};

_vehicle_4926 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11860.057, 12764.525, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4926 = _this;
  _this setDir -7.4119859;
  _this setPos [11860.057, 12764.525, 0];
};

_vehicle_4927 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11864.124, 12778.319, 0.1126709], [], 0, "CAN_COLLIDE"];
  _vehicle_4927 = _this;
  _this setDir -7.4119859;
  _this setPos [11864.124, 12778.319, 0.1126709];
};

_vehicle_4928 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11868.705, 12791.435, 0.035018921], [], 0, "CAN_COLLIDE"];
  _vehicle_4928 = _this;
  _this setDir -7.4119859;
  _this setPos [11868.705, 12791.435, 0.035018921];
};

_vehicle_4929 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11878.642, 12757.979, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4929 = _this;
  _this setDir -7.4119859;
  _this setPos [11878.642, 12757.979, 0];
};

_vehicle_4930 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11882.709, 12771.773, 0.035064697], [], 0, "CAN_COLLIDE"];
  _vehicle_4930 = _this;
  _this setDir -7.4119859;
  _this setPos [11882.709, 12771.773, 0.035064697];
};

_vehicle_4931 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11887.29, 12784.889, 0.035018921], [], 0, "CAN_COLLIDE"];
  _vehicle_4931 = _this;
  _this setDir -7.4119859;
  _this setPos [11887.29, 12784.889, 0.035018921];
};

_vehicle_4932 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11896.699, 12751.694, -0.02482605], [], 0, "CAN_COLLIDE"];
  _vehicle_4932 = _this;
  _this setDir -7.4119859;
  _this setPos [11896.699, 12751.694, -0.02482605];
};

_vehicle_4933 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11900.767, 12765.488, -0.044494629], [], 0, "CAN_COLLIDE"];
  _vehicle_4933 = _this;
  _this setDir -7.4119859;
  _this setPos [11900.767, 12765.488, -0.044494629];
};

_vehicle_4934 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11905.348, 12778.604, -0.044540405], [], 0, "CAN_COLLIDE"];
  _vehicle_4934 = _this;
  _this setDir -7.4119859;
  _this setPos [11905.348, 12778.604, -0.044540405];
};

_vehicle_4944 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11809.281, 12782.856, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4944 = _this;
  _this setDir -7.4119859;
  _this setPos [11809.281, 12782.856, 0];
};

_vehicle_4945 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11813.349, 12796.65, -0.02684021], [], 0, "CAN_COLLIDE"];
  _vehicle_4945 = _this;
  _this setDir -7.4119859;
  _this setPos [11813.349, 12796.65, -0.02684021];
};

_vehicle_4946 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11817.93, 12809.766, -0.057601929], [], 0, "CAN_COLLIDE"];
  _vehicle_4946 = _this;
  _this setDir -7.4119859;
  _this setPos [11817.93, 12809.766, -0.057601929];
};

_vehicle_4947 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11827.866, 12776.311, -0.061904907], [], 0, "CAN_COLLIDE"];
  _vehicle_4947 = _this;
  _this setDir -7.4119859;
  _this setPos [11827.866, 12776.311, -0.061904907];
};

_vehicle_4948 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11831.934, 12790.104, 0.038421631], [], 0, "CAN_COLLIDE"];
  _vehicle_4948 = _this;
  _this setDir -7.4119859;
  _this setPos [11831.934, 12790.104, 0.038421631];
};

_vehicle_4949 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11836.515, 12803.22, -0.11727905], [], 0, "CAN_COLLIDE"];
  _vehicle_4949 = _this;
  _this setDir -7.4119859;
  _this setPos [11836.515, 12803.22, -0.11727905];
};

_vehicle_4950 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11845.924, 12770.025, -0.14146423], [], 0, "CAN_COLLIDE"];
  _vehicle_4950 = _this;
  _this setDir -7.4119859;
  _this setPos [11845.924, 12770.025, -0.14146423];
};

_vehicle_4951 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11849.991, 12783.819, -0.05557251], [], 0, "CAN_COLLIDE"];
  _vehicle_4951 = _this;
  _this setDir -7.4119859;
  _this setPos [11849.991, 12783.819, -0.05557251];
};

_vehicle_4952 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11854.572, 12796.935, -0.14547729], [], 0, "CAN_COLLIDE"];
  _vehicle_4952 = _this;
  _this setDir -7.4119859;
  _this setPos [11854.572, 12796.935, -0.14547729];
};

_vehicle_4962 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11771.067, 12798.566, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4962 = _this;
  _this setDir -7.4119859;
  _this setPos [11771.067, 12798.566, 0];
};

_vehicle_4963 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11775.135, 12812.36, 0.29595947], [], 0, "CAN_COLLIDE"];
  _vehicle_4963 = _this;
  _this setDir -7.4119859;
  _this setPos [11775.135, 12812.36, 0.29595947];
};

_vehicle_4964 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11779.716, 12825.476, 0.38096619], [], 0, "CAN_COLLIDE"];
  _vehicle_4964 = _this;
  _this setDir -7.4119859;
  _this setPos [11779.716, 12825.476, 0.38096619];
};

_vehicle_4965 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11789.652, 12792.021, 0.45729065], [], 0, "CAN_COLLIDE"];
  _vehicle_4965 = _this;
  _this setDir -7.4119859;
  _this setPos [11789.652, 12792.021, 0.45729065];
};

_vehicle_4966 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11793.72, 12805.814, 0.44274902], [], 0, "CAN_COLLIDE"];
  _vehicle_4966 = _this;
  _this setDir -7.4119859;
  _this setPos [11793.72, 12805.814, 0.44274902];
};

_vehicle_4967 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11798.301, 12818.93, 0.39230347], [], 0, "CAN_COLLIDE"];
  _vehicle_4967 = _this;
  _this setDir -7.4119859;
  _this setPos [11798.301, 12818.93, 0.39230347];
};

_vehicle_4968 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11807.71, 12785.735, 0.30125427], [], 0, "CAN_COLLIDE"];
  _vehicle_4968 = _this;
  _this setDir -7.4119859;
  _this setPos [11807.71, 12785.735, 0.30125427];
};

_vehicle_4969 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11811.777, 12799.529, 0.31278992], [], 0, "CAN_COLLIDE"];
  _vehicle_4969 = _this;
  _this setDir -7.4119859;
  _this setPos [11811.777, 12799.529, 0.31278992];
};

_vehicle_4970 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11816.358, 12812.645, 0.29945374], [], 0, "CAN_COLLIDE"];
  _vehicle_4970 = _this;
  _this setDir -7.4119859;
  _this setPos [11816.358, 12812.645, 0.29945374];
};

_vehicle_4982 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11909, 12746.457, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4982 = _this;
  _this setDir -7.4119859;
  _this setPos [11909, 12746.457, 0];
};

_vehicle_4984 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11913.188, 12761.646, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4984 = _this;
  _this setDir -7.4119859;
  _this setPos [11913.188, 12761.646, 0];
};

_vehicle_4986 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11917.638, 12773.953, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_4986 = _this;
  _this setDir -7.4119859;
  _this setPos [11917.638, 12773.953, 0];
};

_vehicle_4991 = objNull;
if (true) then
{
  _this = createVehicle ["FuelPump_DZ", [11583.241, 11348.535, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4991 = _this;
  _this setDir 198.33005;
  _this setPos [11583.241, 11348.535, 3.0517578e-005];
};

_vehicle_4992 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall2_EP1", [11583.845, 11350.116, -0.44500732], [], 0, "CAN_COLLIDE"];
  _vehicle_4992 = _this;
  _this setDir 201.63341;
  _this setPos [11583.845, 11350.116, -0.44500732];
};

_vehicle_4994 = objNull;
if (true) then
{
  _this = createVehicle ["Land_MBG_GER_ESTATE_2", [13693.26, 2950.1663, -0.1770957], [], 0, "CAN_COLLIDE"];
  _vehicle_4994 = _this;
  _this setDir 54.329586;
  _this setPos [13693.26, 2950.1663, -0.1770957];
};

_vehicle_4995 = objNull;
if (true) then
{
  _this = createVehicle ["Land_MBG_GER_ESTATE_1", [13705.43, 2932.8188, -0.046494201], [], 0, "CAN_COLLIDE"];
  _vehicle_4995 = _this;
  _this setDir 54.095268;
  _this setPos [13705.43, 2932.8188, -0.046494201];
};

_vehicle_4996 = objNull;
if (true) then
{
  _this = createVehicle ["Land_MBG_Garage_Single_A", [13708.199, 2921.27, -0.096196093], [], 0, "CAN_COLLIDE"];
  _vehicle_4996 = _this;
  _this setDir 54.392937;
  _this setPos [13708.199, 2921.27, -0.096196093];
};

_vehicle_4998 = objNull;
if (true) then
{
  _this = createVehicle ["Land_MBG_Garage_Single_A", [13682.576, 2958.5732, -0.10891908], [], 0, "CAN_COLLIDE"];
  _vehicle_4998 = _this;
  _this setDir 54.451469;
  _this setPos [13682.576, 2958.5732, -0.10891908];
};

_vehicle_5001 = objNull;
if (true) then
{
  _this = createVehicle ["Land_MBG_ATC_Base", [13722.317, 2909.6421, 0.50177509], [], 0, "CAN_COLLIDE"];
  _vehicle_5001 = _this;
  _this setDir 56.860809;
  _this setPos [13722.317, 2909.6421, 0.50177509];
};

_vehicle_5003 = objNull;
if (true) then
{
  _this = createVehicle ["Land_MBG_GER_PUB_1", [13704.678, 2886.7759, -0.044289112], [], 0, "CAN_COLLIDE"];
  _vehicle_5003 = _this;
  _this setDir 56.068516;
  _this setPos [13704.678, 2886.7759, -0.044289112];
};

_vehicle_5007 = objNull;
if (true) then
{
  _this = createVehicle ["MBG_Killhouse_2_InEditor", [13684.453, 2917.8557, -5.7220459e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5007 = _this;
  _this setDir 54.507248;
  _this setPos [13684.453, 2917.8557, -5.7220459e-005];
};

_vehicle_5014 = objNull;
if (true) then
{
  _this = createVehicle ["Land_radar_EP1", [13677.484, 2930.6367, 0.0075468756], [], 0, "CAN_COLLIDE"];
  _vehicle_5014 = _this;
  _this setDir 148.22899;
  _this setPos [13677.484, 2930.6367, 0.0075468756];
};

_vehicle_5015 = objNull;
if (true) then
{
  _this = createVehicle ["Loudspeakers_EP1", [13685.634, 2909.7178, 7.4412513], [], 0, "CAN_COLLIDE"];
  _vehicle_5015 = _this;
  _this setDir 148.26581;
  _this setPos [13685.634, 2909.7178, 7.4412513];
};

_vehicle_5016 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Market_stalls_02_EP1", [14051.624, 2798.061, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_5016 = _this;
  _this setDir 308.70035;
  _this setPos [14051.624, 2798.061, 3.8146973e-006];
};

_vehicle_5018 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall", [13673.056, 2922.4395, 0.0001335144], [], 0, "CAN_COLLIDE"];
  _vehicle_5018 = _this;
  _this setDir 142.04506;
  _this setPos [13673.056, 2922.4395, 0.0001335144];
};

_vehicle_5021 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [13675.38, 2926.2751, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5021 = _this;
  _this setPos [13675.38, 2926.2751, 3.0517578e-005];
};

_vehicle_5022 = objNull;
if (true) then
{
  _this = createVehicle ["Barrack2", [13689.136, 2871.0649, 0.11671253], [], 0, "CAN_COLLIDE"];
  _vehicle_5022 = _this;
  _this setDir 150.8181;
  _this setPos [13689.136, 2871.0649, 0.11671253];
};

_vehicle_5023 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrack2_EP1", [13695.488, 2874.8513, 0.12998894], [], 0, "CAN_COLLIDE"];
  _vehicle_5023 = _this;
  _this setDir 151.0538;
  _this setPos [13695.488, 2874.8513, 0.12998894];
};

_vehicle_5028 = objNull;
if (true) then
{
  _this = createVehicle ["hruzdum", [13673.884, 2935.8005, 0.1508899], [], 0, "CAN_COLLIDE"];
  _vehicle_5028 = _this;
  _this setDir -124.6711;
  _this setPos [13673.884, 2935.8005, 0.1508899];
};

_vehicle_5029 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Panelak", [13646.32, 2879.1748, 0.60231972], [], 0, "CAN_COLLIDE"];
  _vehicle_5029 = _this;
  _this setDir 151.08316;
  _this setPos [13646.32, 2879.1748, 0.60231972];
};

_vehicle_5030 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Panelak2", [13665.804, 2888.4607, 0.16772389], [], 0, "CAN_COLLIDE"];
  _vehicle_5030 = _this;
  _this setDir 62.896072;
  _this setPos [13665.804, 2888.4607, 0.16772389];
};

_vehicle_5031 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Panelak3", [13620.896, 2912.9075, 0.034917582], [], 0, "CAN_COLLIDE"];
  _vehicle_5031 = _this;
  _this setDir 336.80624;
  _this setPos [13620.896, 2912.9075, 0.034917582];
};

_vehicle_5034 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_GeneralStore_01", [13645.271, 2912.5417, -0.15032588], [], 0, "CAN_COLLIDE"];
  _vehicle_5034 = _this;
  _this setDir 60.351597;
  _this setPos [13645.271, 2912.5417, -0.15032588];
};

_vehicle_5036 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_a_stationhouse", [13661.415, 2861.7073, 0.041040678], [], 0, "CAN_COLLIDE"];
  _vehicle_5036 = _this;
  _this setDir 152.12399;
  _this setPos [13661.415, 2861.7073, 0.041040678];
};

_unit_148 = objNull;
if (true) then
{
  _this = createAgent ["arma1_us_soldier_sabass", [11429.779, 11362.841], [], 0, "CAN_COLLIDE"];
  _unit_148 = _this;
  _this setDir 26.72625;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};
 
_unit_150 = objNull;
if (true) then
{
  _this = createAgent ["FR_Assault_GL", [11422.791, 11367.217, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _unit_150 = _this;
  _this setDir 36.712833;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};
 
_unit_152 = objNull;
if (true) then
{
  _this = createAgent ["FR_Assault_R", [11416.163, 11371.031, 0.00018310547], [], 0, "CAN_COLLIDE"];
  _unit_152 = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};
 
_unit_153 = objNull;
if (true) then
{
  _this = createAgent ["BAF_Soldier_AAA_MTP", [11406.371, 11381.394, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _unit_153 = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};
 
_vehicle_5038 = objNull;
if (true) then
{
  _this = createVehicle ["hruzdum", [14060.824, 2811.012, -0.074367248], [], 0, "CAN_COLLIDE"];
  _vehicle_5038 = _this;
  _this setDir 96.43985;
  _this setPos [14060.824, 2811.012, -0.074367248];
};

_vehicle_5042 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_kr_t_asf3_asf3", [13648.603, 2939.4224, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5042 = _this;
  _this setDir -121.27028;
  _this setPos [13648.603, 2939.4224, -2.2888184e-005];
};

_vehicle_5047 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_22_50", [13653.649, 2942.5613, -0.00023269653], [], 0, "CAN_COLLIDE"];
  _vehicle_5047 = _this;
  _this setDir 57.594734;
  _this setPos [13653.649, 2942.5613, -0.00023269653];
};

_vehicle_5050 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_60_10", [13671.509, 2949.5454, -0.00016021729], [], 0, "CAN_COLLIDE"];
  _vehicle_5050 = _this;
  _this setDir 83.508606;
  _this setPos [13671.509, 2949.5454, -0.00016021729];
};

_vehicle_5054 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_1_1000", [13690.575, 2931.6494, 0.00016403198], [], 0, "CAN_COLLIDE"];
  _vehicle_5054 = _this;
  _this setDir 144.89731;
  _this setPos [13690.575, 2931.6494, 0.00016403198];
};

_vehicle_5058 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_1_1000", [13700.532, 2917.4177], [], 0, "CAN_COLLIDE"];
  _vehicle_5058 = _this;
  _this setDir 144.89731;
  _this setPos [13700.532, 2917.4177];
};

_vehicle_5059 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [13703.402, 2924.8596, -0.037612915], [], 0, "CAN_COLLIDE"];
  _vehicle_5059 = _this;
  _this setDir 144.89731;
  _this setPos [13703.402, 2924.8596, -0.037612915];
};

_vehicle_5062 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_1_1000", [13710.598, 2903.2517, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5062 = _this;
  _this setDir 144.89731;
  _this setPos [13710.598, 2903.2517, 6.1035156e-005];
};

_vehicle_5066 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_1_1000", [13680.549, 2945.8193, 0.00011825562], [], 0, "CAN_COLLIDE"];
  _vehicle_5066 = _this;
  _this setDir 144.89731;
  _this setPos [13680.549, 2945.8193, 0.00011825562];
};

_vehicle_5079 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [13674.945, 2960.2891, -0.12477493], [], 0, "CAN_COLLIDE"];
  _vehicle_5079 = _this;
  _this setDir 264.27829;
  _this setPos [13674.945, 2960.2891, -0.12477493];
};

_vehicle_5094 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_0_2000", [13559.935, 2916.4353, -0.00032806396], [], 0, "CAN_COLLIDE"];
  _vehicle_5094 = _this;
  _this setDir 91.33844;
  _this setPos [13559.935, 2916.4353, -0.00032806396];
};

_vehicle_5098 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_0_2000", [13651.869, 2934.3728, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5098 = _this;
  _this setDir 149.49565;
  _this setPos [13651.869, 2934.3728, -7.6293945e-005];
};

_vehicle_5102 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_0_2000", [13660.557, 2919.3677, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_5102 = _this;
  _this setDir 150.31134;
  _this setPos [13660.557, 2919.3677, -0.00021362305];
};

_vehicle_5106 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_0_2000", [13669.198, 2904.5044, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5106 = _this;
  _this setDir 151.17091;
  _this setPos [13669.198, 2904.5044, -4.5776367e-005];
};

_vehicle_5112 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_kr_t_asf3_asf3", [13680.563, 2883.7969, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5112 = _this;
  _this setDir -28.470381;
  _this setPos [13680.563, 2883.7969, -7.6293945e-005];
};

_vehicle_5122 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_0_2000", [13675.322, 2880.9626, 1.0075264], [], 0, "CAN_COLLIDE"];
  _vehicle_5122 = _this;
  _this setDir 241.74266;
  _this setPos [13675.322, 2880.9626, 1.0075264];
};

_vehicle_5130 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_0_2000", [13659.928, 2872.7715, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5130 = _this;
  _this setDir 241.8054;
  _this setPos [13659.928, 2872.7715, 1.9073486e-005];
};

_vehicle_5134 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_0_2000", [13644.787, 2864.6711, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_5134 = _this;
  _this setDir 241.78603;
  _this setPos [13644.787, 2864.6711, 3.8146973e-006];
};

_vehicle_5140 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_60_10", [13629.48, 2856.4207, -5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5140 = _this;
  _this setDir 241.91205;
  _this setPos [13629.48, 2856.4207, -5.3405762e-005];
};

_vehicle_5144 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_60_10", [13609.53, 2857.3835, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5144 = _this;
  _this setDir 64.469536;
  _this setPos [13609.53, 2857.3835, -6.1035156e-005];
};

_vehicle_5150 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_0_2000", [13593.964, 2849.896, -0.00014877319], [], 0, "CAN_COLLIDE"];
  _vehicle_5150 = _this;
  _this setDir 64.054214;
  _this setPos [13593.964, 2849.896, -0.00014877319];
};

_vehicle_5156 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_60_10", [13594.335, 2849.9751, -0.00057983398], [], 0, "CAN_COLLIDE"];
  _vehicle_5156 = _this;
  _this setDir 241.91205;
  _this setPos [13594.335, 2849.9751, -0.00057983398];
};

_vehicle_5160 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_60_10", [13584.631, 2850.0544, -0.00016021729], [], 0, "CAN_COLLIDE"];
  _vehicle_5160 = _this;
  _this setDir 301.32248;
  _this setPos [13584.631, 2850.0544, -0.00016021729];
};

_vehicle_5166 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_0_2000", [13580.803, 2876.0037, 0.0002784729], [], 0, "CAN_COLLIDE"];
  _vehicle_5166 = _this;
  _this setDir 183.0408;
  _this setPos [13580.803, 2876.0037, 0.0002784729];
};

_vehicle_5170 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_0_2000", [13581.793, 2893.3586, -0.00032806396], [], 0, "CAN_COLLIDE"];
  _vehicle_5170 = _this;
  _this setDir 183.41487;
  _this setPos [13581.793, 2893.3586, -0.00032806396];
};

_vehicle_5174 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_0_2000", [13583.403, 2910.5137, -0.00026321411], [], 0, "CAN_COLLIDE"];
  _vehicle_5174 = _this;
  _this setDir 185.5844;
  _this setPos [13583.403, 2910.5137, -0.00026321411];
};

_vehicle_5180 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_kr_t_asf3_asf3", [13583.398, 2915.874, -3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5180 = _this;
  _this setDir -89.128288;
  _this setPos [13583.398, 2915.874, -3.4332275e-005];
};

_vehicle_5208 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_22_50", [13643.69, 2936.2581, -0.00011825562], [], 0, "CAN_COLLIDE"];
  _vehicle_5208 = _this;
  _this setDir 238.05653;
  _this setPos [13643.69, 2936.2581, -0.00011825562];
};

_vehicle_5212 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_22_50", [13607.253, 2922.45, -0.00016403198], [], 0, "CAN_COLLIDE"];
  _vehicle_5212 = _this;
  _this setDir 57.594734;
  _this setPos [13607.253, 2922.45, -0.00016403198];
};

_vehicle_5216 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_22_50", [13607.34, 2922.6899], [], 0, "CAN_COLLIDE"];
  _vehicle_5216 = _this;
  _this setDir 237.96063;
  _this setPos [13607.34, 2922.6899];
};

_vehicle_5223 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_asf3_0_2000", [13542.788, 2916.9084, 0.019891739], [], 0, "CAN_COLLIDE"];
  _vehicle_5223 = _this;
  _this setDir 91.33844;
  _this setPos [13542.788, 2916.9084, 0.019891739];
};

_vehicle_5229 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_kr_t_asf3_asf3", [13536.568, 2916.9551, 0.00039672852], [], 0, "CAN_COLLIDE"];
  _vehicle_5229 = _this;
  _this setDir -179.26132;
  _this setPos [13536.568, 2916.9551, 0.00039672852];
};

_vehicle_5231 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock", [13687.188, 2880.0542, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5231 = _this;
  _this setDir -30.119204;
  _this setPos [13687.188, 2880.0542, -1.5258789e-005];
};

_vehicle_5232 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [13682.554, 2877.4612, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5232 = _this;
  _this setDir -28.105717;
  _this setPos [13682.554, 2877.4612, -2.2888184e-005];
};

_vehicle_5234 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [13684.847, 2878.7664, -6.4849854e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5234 = _this;
  _this setDir -28.105717;
  _this setPos [13684.847, 2878.7664, -6.4849854e-005];
};

_vehicle_5236 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [13721.788, 2889.4226, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_5236 = _this;
  _this setDir -32.521126;
  _this setPos [13721.788, 2889.4226, -7.6293945e-006];
};

_vehicle_5238 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_CncBlock_stripes", [13719.525, 2887.8896, -5.7220459e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5238 = _this;
  _this setDir -32.900055;
  _this setPos [13719.525, 2887.8896, -5.7220459e-005];
};

_vehicle_5241 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Panelak3", [13604.054, 2904.9465, -0.060669545], [], 0, "CAN_COLLIDE"];
  _vehicle_5241 = _this;
  _this setDir 338.50204;
  _this setPos [13604.054, 2904.9465, -0.060669545];
};

_vehicle_5243 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Panelak3", [13612.592, 2940.0349, 0.3123621], [], 0, "CAN_COLLIDE"];
  _vehicle_5243 = _this;
  _this setDir 158.19994;
  _this setPos [13612.592, 2940.0349, 0.3123621];
};

_vehicle_5245 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Panelak3", [13596.349, 2932.0356, 0.48165005], [], 0, "CAN_COLLIDE"];
  _vehicle_5245 = _this;
  _this setDir 154.70444;
  _this setPos [13596.349, 2932.0356, 0.48165005];
};

_vehicle_5248 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Panelak", [13599.209, 2865.2351, 0.62456185], [], 0, "CAN_COLLIDE"];
  _vehicle_5248 = _this;
  _this setDir 155.60461;
  _this setPos [13599.209, 2865.2351, 0.62456185];
};

_vehicle_5251 = objNull;
if (true) then
{
  _this = createVehicle ["Land_radar_EP1", [13531.778, 2917.729, -8.392334e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5251 = _this;
  _this setDir 4.5373669;
  _this setPos [13531.778, 2917.729, -8.392334e-005];
};

_vehicle_5255 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_bouda2_vnitrek", [13627.812, 2898.0461, -4.9591064e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5255 = _this;
  _this setDir 154.48151;
  _this setPos [13627.812, 2898.0461, -4.9591064e-005];
};

_vehicle_5257 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_bouda2_vnitrek", [13619.621, 2893.9177, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5257 = _this;
  _this setDir 155.01477;
  _this setPos [13619.621, 2893.9177, 4.5776367e-005];
};

_vehicle_5260 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_bouda2_vnitrek", [13610.605, 2889.7219, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_5260 = _this;
  _this setDir 156.70277;
  _this setPos [13610.605, 2889.7219, 7.6293945e-006];
};

_vehicle_5262 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_bouda2_vnitrek", [13613.677, 2882.0273, -0.00017166138], [], 0, "CAN_COLLIDE"];
  _vehicle_5262 = _this;
  _this setDir 157.37601;
  _this setPos [13613.677, 2882.0273, -0.00017166138];
};

_vehicle_5264 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_bouda2_vnitrek", [13622.8, 2886.0679, -0.0001411438], [], 0, "CAN_COLLIDE"];
  _vehicle_5264 = _this;
  _this setDir 156.26701;
  _this setPos [13622.8, 2886.0679, -0.0001411438];
};

_vehicle_5266 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_bouda2_vnitrek", [13631.267, 2889.6509, 0.00015640259], [], 0, "CAN_COLLIDE"];
  _vehicle_5266 = _this;
  _this setDir 156.73282;
  _this setPos [13631.267, 2889.6509, 0.00015640259];
};

_vehicle_5268 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_deutshe", [13571.117, 2908.6318, 0.00050926208], [], 0, "CAN_COLLIDE"];
  _vehicle_5268 = _this;
  _this setPos [13571.117, 2908.6318, 0.00050926208];
};

_vehicle_5269 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_deutshe_mini", [13559.933, 2906.1213, 0.23714289], [], 0, "CAN_COLLIDE"];
  _vehicle_5269 = _this;
  _this setDir 0.030292168;
  _this setPos [13559.933, 2906.1213, 0.23714289];
};

_vehicle_5270 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_domek_rosa", [13572.454, 2875.0918, -0.075299121], [], 0, "CAN_COLLIDE"];
  _vehicle_5270 = _this;
  _this setDir 2.7762792;
  _this setPos [13572.454, 2875.0918, -0.075299121];
};

_vehicle_5271 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dum_istan3_hromada2", [14033.952, 2825.8767, 0.13515122], [], 0, "CAN_COLLIDE"];
  _vehicle_5271 = _this;
  _this setDir -32.041641;
  _this setPos [14033.952, 2825.8767, 0.13515122];
};

_vehicle_5272 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14020.829, 2828.6904, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_5272 = _this;
  _this setDir -12.675054;
  _this setPos [14020.829, 2828.6904, 3.8146973e-006];
};

_vehicle_5274 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14015.241, 2826.9006, 0.15548645], [], 0, "CAN_COLLIDE"];
  _vehicle_5274 = _this;
  _this setDir -12.675054;
  _this setPos [14015.241, 2826.9006, 0.15548645];
};

_vehicle_5277 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14009.475, 2825.4731, 0.17934108], [], 0, "CAN_COLLIDE"];
  _vehicle_5277 = _this;
  _this setDir -12.675054;
  _this setPos [14009.475, 2825.4731, 0.17934108];
};

_vehicle_5279 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14009.793, 2824.1001, -0.10492195], [], 0, "CAN_COLLIDE"];
  _vehicle_5279 = _this;
  _this setDir 72.204308;
  _this setPos [14009.793, 2824.1001, -0.10492195];
};

_vehicle_5282 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14011.383, 2818.7212, -0.00013923645], [], 0, "CAN_COLLIDE"];
  _vehicle_5282 = _this;
  _this setDir 72.204308;
  _this setPos [14011.383, 2818.7212, -0.00013923645];
};

_vehicle_5284 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14013.106, 2813.395, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5284 = _this;
  _this setDir 72.204308;
  _this setPos [14013.106, 2813.395, -3.0517578e-005];
};

_vehicle_5286 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14014.916, 2807.832, -4.9591064e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5286 = _this;
  _this setDir 72.204308;
  _this setPos [14014.916, 2807.832, -4.9591064e-005];
};

_vehicle_5288 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14016.688, 2802.4729, 2.0980835e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5288 = _this;
  _this setDir 72.204308;
  _this setPos [14016.688, 2802.4729, 2.0980835e-005];
};

_vehicle_5290 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14018.388, 2797.075, -1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5290 = _this;
  _this setDir 72.204308;
  _this setPos [14018.388, 2797.075, -1.335144e-005];
};

_vehicle_5292 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14020.191, 2791.6685, -2.0980835e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5292 = _this;
  _this setDir 72.204308;
  _this setPos [14020.191, 2791.6685, -2.0980835e-005];
};

_vehicle_5294 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14022.099, 2786.0569, -2.0980835e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5294 = _this;
  _this setDir 72.204308;
  _this setPos [14022.099, 2786.0569, -2.0980835e-005];
};

_vehicle_5296 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14029.35, 2784.1462, 0.0028741779], [], 0, "CAN_COLLIDE"];
  _vehicle_5296 = _this;
  _this setDir 159.3674;
  _this setPos [14029.35, 2784.1462, 0.0028741779];
};

_vehicle_5298 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14039.313, 2837.6008, 0.23797074], [], 0, "CAN_COLLIDE"];
  _vehicle_5298 = _this;
  _this setDir -25.882563;
  _this setPos [14039.313, 2837.6008, 0.23797074];
};

_vehicle_5300 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14045.113, 2839.1277, 0.22227018], [], 0, "CAN_COLLIDE"];
  _vehicle_5300 = _this;
  _this setDir 29.491177;
  _this setPos [14045.113, 2839.1277, 0.22227018];
};

_vehicle_5303 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14050.191, 2836.333, 0.14718804], [], 0, "CAN_COLLIDE"];
  _vehicle_5303 = _this;
  _this setDir 32.849503;
  _this setPos [14050.191, 2836.333, 0.14718804];
};

_vehicle_5305 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14055.044, 2832.8662, 0.14685874], [], 0, "CAN_COLLIDE"];
  _vehicle_5305 = _this;
  _this setDir 40.443527;
  _this setPos [14055.044, 2832.8662, 0.14685874];
};

_vehicle_5307 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14059.723, 2820.1763, 0.13624625], [], 0, "CAN_COLLIDE"];
  _vehicle_5307 = _this;
  _this setDir 95.594978;
  _this setPos [14059.723, 2820.1763, 0.13624625];
};

_vehicle_5310 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14060.19, 2826.0479, 0.20800117], [], 0, "CAN_COLLIDE"];
  _vehicle_5310 = _this;
  _this setDir 95.594978;
  _this setPos [14060.19, 2826.0479, 0.20800117];
};

_vehicle_5312 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14062.631, 2805.9048, 0.14842995], [], 0, "CAN_COLLIDE"];
  _vehicle_5312 = _this;
  _this setDir 129.95447;
  _this setPos [14062.631, 2805.9048, 0.14842995];
};

_vehicle_5315 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14058.952, 2801.3093, 0.051365994], [], 0, "CAN_COLLIDE"];
  _vehicle_5315 = _this;
  _this setDir 129.95447;
  _this setPos [14058.952, 2801.3093, 0.051365994];
};

_vehicle_5318 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14054.816, 2796.4607, -0.069842562], [], 0, "CAN_COLLIDE"];
  _vehicle_5318 = _this;
  _this setDir 129.95447;
  _this setPos [14054.816, 2796.4607, -0.069842562];
};

_vehicle_5320 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Pristresek_mensi", [14057.556, 2828.3091, 0.024734801], [], 0, "CAN_COLLIDE"];
  _vehicle_5320 = _this;
  _this setDir 69.027481;
  _this setPos [14057.556, 2828.3091, 0.024734801];
};

_vehicle_5321 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14048.034, 2788.7478, 0.24521403], [], 0, "CAN_COLLIDE"];
  _vehicle_5321 = _this;
  _this setDir 312.32907;
  _this setPos [14048.034, 2788.7478, 0.24521403];
};

_vehicle_5323 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HBarrier5", [14047.299, 2790.3425, -0.013070597], [], 0, "CAN_COLLIDE"];
  _vehicle_5323 = _this;
  _this setDir 223.1976;
  _this setPos [14047.299, 2790.3425, -0.013070597];
};

_vehicle_5326 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_deutshe", [13571.982, 2923.7065, 0.00081220863], [], 0, "CAN_COLLIDE"];
  _vehicle_5326 = _this;
  _this setPos [13571.982, 2923.7065, 0.00081220863];
};

_vehicle_5329 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_deutshe_mini", [13560.592, 2920.4392, 0.23401661], [], 0, "CAN_COLLIDE"];
  _vehicle_5329 = _this;
  _this setDir 0.030292168;
  _this setPos [13560.592, 2920.4392, 0.23401661];
};

_vehicle_5331 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_deutshe_mini", [13576.776, 2890.2935, 0.046804044], [], 0, "CAN_COLLIDE"];
  _vehicle_5331 = _this;
  _this setDir -87.48069;
  _this setPos [13576.776, 2890.2935, 0.046804044];
};

_vehicle_5333 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dum_mesto_in", [13576.364, 2866.2412, -0.1917038], [], 0, "CAN_COLLIDE"];
  _vehicle_5333 = _this;
  _this setDir -89.610023;
  _this setPos [13576.364, 2866.2412, -0.1917038];
};

_vehicle_5334 = objNull;
if (true) then
{
  _this = createVehicle ["dum_rasovna", [13603.898, 2847.6443, -0.016194584], [], 0, "CAN_COLLIDE"];
  _vehicle_5334 = _this;
  _this setDir 66.033592;
  _this setPos [13603.898, 2847.6443, -0.016194584];
};

_vehicle_5336 = objNull;
if (true) then
{
  _this = createVehicle ["dum_rasovna", [13591.488, 2841.7603, 0.10808452], [], 0, "CAN_COLLIDE"];
  _vehicle_5336 = _this;
  _this setDir 66.033592;
  _this setPos [13591.488, 2841.7603, 0.10808452];
};

_vehicle_5338 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HouseV2_01A", [13657.837, 2955.0342, 3.8146973e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5338 = _this;
  _this setDir -26.739841;
  _this setPos [13657.837, 2955.0342, 3.8146973e-005];
};

_vehicle_5339 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_HouseV2_01B", [13635.248, 2944.1404, -0.45132786], [], 0, "CAN_COLLIDE"];
  _vehicle_5339 = _this;
  _this setDir -20.63401;
  _this setPos [13635.248, 2944.1404, -0.45132786];
};

_unit_159 = objNull;
if (true) then
{
  _this = createAgent ["HouseWife1", [13395.396, 2870.1475, 1.6311519], [], 0, "CAN_COLLIDE"];
  _unit_159 = _this;
  _this setDir -188.65977;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};
 

_vehicle_5341 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHEmpty", [13399.175, 2876.1941], [], 0, "CAN_COLLIDE"];
  _vehicle_5341 = _this;
  _this setPos [13399.175, 2876.1941];
};

_unit_162 = objNull;
if (true) then
{
  _this = createAgent ["GUE_Soldier_MG", [14061.903, 2808.8008, 0.065800212], [], 0, "CAN_COLLIDE"];
  _unit_162 = _this;
  _this setDir 274.59872;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;  ";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};


_unit_165 = objNull;
if (true) then
{
  _this = createAgent ["RU_WorkWoman1", [14047.706, 2795.7104, 0.94509113], [], 0, "CAN_COLLIDE"];
  _unit_165 = _this;
  _this setDir 306.30441;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};


_vehicle_5348 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [14032.633, 2803.1235, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5348 = _this;
  _this setPos [14032.633, 2803.1235, -1.1444092e-005];
};

_vehicle_5350 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre2", [13651.194, 2928.4302, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5350 = _this;
  _this setPos [13651.194, 2928.4302, -1.5258789e-005];
};

_vehicle_5351 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre1", [13665.138, 2901.5674, -0.00017929077], [], 0, "CAN_COLLIDE"];
  _vehicle_5351 = _this;
  _this setDir 152.3262;
  _this setPos [13665.138, 2901.5674, -0.00017929077];
};

_vehicle_5353 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre1", [13695.762, 2912.4536, -4.9591064e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5353 = _this;
  _this setDir 152.3262;
  _this setPos [13695.762, 2912.4536, -4.9591064e-005];
};

_vehicle_5355 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre1", [13716.647, 2883.8921, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_5355 = _this;
  _this setDir 152.3262;
  _this setPos [13716.647, 2883.8921, -3.8146973e-006];
};

_vehicle_5357 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSSidl3", [13622.894, 2859.7717, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5357 = _this;
  _this setDir -10.808642;
  _this setPos [13622.894, 2859.7717, 9.1552734e-005];
};

_vehicle_5358 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHS_lampa_sidlconc", [13576.576, 2881.3115, -0.00028991699], [], 0, "CAN_COLLIDE"];
  _vehicle_5358 = _this;
  _this setDir 180.58081;
  _this setPos [13576.576, 2881.3115, -0.00028991699];
};

_vehicle_5359 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre2", [13578.995, 2911.5635, -5.7220459e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5359 = _this;
  _this setDir -91.147888;
  _this setPos [13578.995, 2911.5635, -5.7220459e-005];
};

_vehicle_5360 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSStre2", [13607.654, 2918.1135, 0.00012969971], [], 0, "CAN_COLLIDE"];
  _vehicle_5360 = _this;
  _this setDir -21.719189;
  _this setPos [13607.654, 2918.1135, 0.00012969971];
};

_vehicle_5361 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSSidl3", [14056.921, 2819.2053, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_5361 = _this;
  _this setPos [14056.921, 2819.2053, -7.6293945e-006];
};

_vehicle_5362 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSSidl3", [14012.815, 2821.8567, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_5362 = _this;
  _this setPos [14012.815, 2821.8567, 0];
};

_vehicle_5363 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSSidl3", [14053.122, 2797.0493, -0.00010490417], [], 0, "CAN_COLLIDE"];
  _vehicle_5363 = _this;
  _this setPos [14053.122, 2797.0493, -0.00010490417];
};

_vehicle_5364 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSIndE", [13395.945, 2870.9783, -3.2981207], [], 0, "CAN_COLLIDE"];
  _vehicle_5364 = _this;
  _this setDir -75.063026;
  _this setPos [13395.945, 2870.9783, -3.2981207];
};

_vehicle_5365 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [13409.08, 2824.5989, -3.7193298e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5365 = _this;
  _this setDir 85.435501;
  _this setPos [13409.08, 2824.5989, -3.7193298e-005];
};

processInitCommands;