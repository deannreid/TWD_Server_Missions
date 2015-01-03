_unit_2 = objNull;
if (true) then
{
  _this = createAgent ["RU_Worker1", [7599.0649, 2941.6804, 6.8351331], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_2 = _this;
  _this setDir -10.198197;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_unit_11 = objNull;
if (true) then
{
  _this = createAgent ["Citizen2_EP1", [1420.2545, 1879.6658, -0.19162595], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_11 = _this;
  _this setDir 115.88759;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_60 = objNull;
if (true) then
{
  _this = createVehicle ["WoodChair", [7600.124, 2941.6226, 2.9508789], [], 0, "CAN_COLLIDE"];
  _vehicle_60 = _this;
  _this setDir -219.86963;
  _this setPos [7600.124, 2941.6226, 2.9508789];
};
_vehicle_61 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Chest_EP1", [7600.9536, 2942.2781, 3.2799809], [], 0, "CAN_COLLIDE"];
  _vehicle_61 = _this;
  _this setDir 179.62175;
  _this setPos [7600.9536, 2942.2781, 3.2799809];
};
_unit_15 = objNull;
if (true) then
{
  _this = createAgent ["Worker1", [1416.2598, 1873.1958, 0.32208273], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_15 = _this;
  _this setDir 119.3735;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
_this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_62 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tires_EP1", [1422.3208, 1880.1792, 0.0025018305], [], 0, "CAN_COLLIDE"];
  _vehicle_62 = _this;
  _this setDir -59.247307;
  _this setPos [1422.3208, 1880.1792, 0.0025018305];
};
_vehicle_63 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Wheel_cart_EP1", [1416.6805, 1868.7782, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_63 = _this;
  _this setDir 206.8531;
  _this setPos [1416.6805, 1868.7782, -3.8146973e-006];
};
_vehicle_64 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [7601.0078, 2947.7715, 2.9357584], [], 0, "CAN_COLLIDE"];
  _vehicle_64 = _this;
  _this setPos [7601.0078, 2947.7715, 2.9357584];
};
_vehicle_65 = objNull;
if (true) then
{
  _this = createVehicle ["VaultStorageLocked", [1417.9733, 1881.5151, 3.6900375], [], 0, "CAN_COLLIDE"];
  _vehicle_65 = _this;
  _this setDir 26.022161;
  _this setPos [1417.9733, 1881.5151, 3.6900375];
};
_vehicle_73 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tires_EP1", [6012.7847, 6630.7202, 4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_73 = _this;
  _this setDir 136.34302;
  _this setPos [6012.7847, 6630.7202, 4.7683716e-006];
};
_vehicle_74 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [6011.2813, 6624.6587, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_74 = _this;
  _this setDir 8.7853069;
  _this setPos [6011.2813, 6624.6587, 9.5367432e-007];
};
_vehicle_75 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [6013.127, 6628.1973, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_75 = _this;
  _this setDir 0.77082282;
  _this setPos [6013.127, 6628.1973, 9.5367432e-007];
};
_vehicle_76 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [6011.9268, 6629.4814, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_76 = _this;
  _this setDir -54.061131;
  _this setPos [6011.9268, 6629.4814, 2.8610229e-006];
};
_unit_20 = objNull;
if (true) then
{
  _this = createAgent ["Worker2", [6013.0737, 6629.2124, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_20 = _this;
  _this setDir 138.41472;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_78 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [6010.9263, 6629.5459, -0.52930099], [], 0, "CAN_COLLIDE"];
  _vehicle_78 = _this;
  _this setDir 91.918221;
  _this setPos [6010.9263, 6629.5459, -0.52930099];
};
_vehicle_80 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [6010.8105, 6625.5591, -0.52279139], [], 0, "CAN_COLLIDE"];
  _vehicle_80 = _this;
  _this setDir 91.918221;
  _this setPos [6010.8105, 6625.5591, -0.52279139];
};
_vehicle_89 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [6012.6953, 6623.6016, -0.48468429], [], 0, "CAN_COLLIDE"];
  _vehicle_89 = _this;
  _this setDir 359.37524;
  _this setPos [6012.6953, 6623.6016, -0.48468429];
};
_vehicle_93 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [6015.3022, 6631.5132, -0.83070749], [], 0, "CAN_COLLIDE"];
  _vehicle_93 = _this;
  _this setDir 272.03046;
  _this setPos [6015.3022, 6631.5132, -0.83070749];
};
_vehicle_94 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [6015.1797, 6627.5254, -0.83721638], [], 0, "CAN_COLLIDE"];
  _vehicle_94 = _this;
  _this setDir 272.03046;
  _this setPos [6015.1797, 6627.5254, -0.83721638];
};
_vehicle_98 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Stoplight01", [4069.2266, 1501.7034, -4.529953e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_98 = _this;
  _this setDir 187.51984;
  _this setPos [4069.2266, 1501.7034, -4.529953e-006];
};
_vehicle_100 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Stoplight01", [4069.2222, 1511.67, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_100 = _this;
  _this setDir 267.54846;
  _this setPos [4069.2222, 1511.67, 1.5258789e-005];
};
_vehicle_153 = objNull;
if (true) then
{
  _this = createVehicle ["LADAWreck", [7002.1836, 6718.5122, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_153 = _this;
  _this setDir -32.674587;
  _this setPos [7002.1836, 6718.5122, 3.8146973e-006];
};
_vehicle_163 = objNull;
if (true) then
{
  _this = createVehicle ["LADAWreck", [6960.6968, 6716.687, -2.0980835e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_163 = _this;
  _this setDir -75.767067;
  _this setPos [6960.6968, 6716.687, -2.0980835e-005];
};
_vehicle_165 = objNull;
if (true) then
{
  _this = createVehicle ["LADAWreck", [7036.2305, 6720.0811, -0.02806766], [], 0, "CAN_COLLIDE"];
  _vehicle_165 = _this;
  _this setDir -32.674587;
  _this setPos [7036.2305, 6720.0811, -0.02806766];
};
_vehicle_167 = objNull;
if (true) then
{
  _this = createVehicle ["LADAWreck", [7174.3286, 6719.7095, 8.6372004], [], 0, "CAN_COLLIDE"];
  _vehicle_167 = _this;
  _this setDir -32.674587;
  _this setPos [7174.3286, 6719.7095, 8.6372004];
};
_vehicle_169 = objNull;
if (true) then
{
  _this = createVehicle ["BRDMWreck", [6972.0547, 6716.2876, -9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_169 = _this;
  _this setPos [6972.0547, 6716.2876, -9.5367432e-006];
};
_vehicle_173 = objNull;
if (true) then
{
  _this = createVehicle ["Body1", [7024.21, 6714.582, 2.0980835e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_173 = _this;
  _this setPos [7024.21, 6714.582, 2.0980835e-005];
};
_vehicle_174 = objNull;
if (true) then
{
  _this = createVehicle ["Body2", [7032.5601, 6720.2114, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_174 = _this;
  _this setPos [7032.5601, 6720.2114, -2.2888184e-005];
};
_vehicle_177 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [7020.8237, 6717.3867, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_177 = _this;
  _this setDir -100.86343;
  _this setPos [7020.8237, 6717.3867, -5.7220459e-006];
};
_vehicle_179 = objNull;
if (true) then
{
  _this = createVehicle ["Mi8Wreck", [7126.4229, 6678.9072, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_179 = _this;
  _this setDir 112.1351;
  _this setPos [7126.4229, 6678.9072, 7.6293945e-006];
};
_vehicle_180 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [7030.0659, 6718.7505, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_180 = _this;
  _this setDir -85.205856;
  _this setPos [7030.0659, 6718.7505, -5.7220459e-006];
};
_vehicle_182 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [6998.6372, 6706.4907, -0.13066408], [], 0, "CAN_COLLIDE"];
  _vehicle_182 = _this;
  _this setDir -234.43153;
  _this setPos [6998.6372, 6706.4907, -0.13066408];
};

_vehicle_184 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [7006.8306, 6711.436, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_184 = _this;
  _this setPos [7006.8306, 6711.436, 1.9073486e-006];
};
_vehicle_186 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [6984.7051, 6719.5889, 1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_186 = _this;
  _this setDir -129.17189;
  _this setPos [6984.7051, 6719.5889, 1.335144e-005];
};
_vehicle_188 = objNull;
if (true) then
{
  _this = createVehicle ["datsun02Wreck", [7005.3413, 6712.9321, -9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_188 = _this;
  _this setPos [7005.3413, 6712.9321, -9.5367432e-006];
};
_vehicle_189 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [7038.5918, 6722.856, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_189 = _this;
  _this setDir 95.071053;
  _this setPos [7038.5918, 6722.856, -1.9073486e-006];
};
_vehicle_191 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [7038.4966, 6719.8979, -9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_191 = _this;
  _this setDir 95.071053;
  _this setPos [7038.4966, 6719.8979, -9.5367432e-006];
};
_vehicle_193 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [7029.064, 6715.8281, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_193 = _this;
  _this setDir 89.523254;
  _this setPos [7029.064, 6715.8281, -1.5258789e-005];
};
_vehicle_195 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [7038.1792, 6712.5532], [], 0, "CAN_COLLIDE"];
  _vehicle_195 = _this;
  _this setDir 92.07534;
  _this setPos [7038.1792, 6712.5532];
};
_vehicle_197 = objNull;
if (true) then
{
  _this = createVehicle ["Land_GuardShed", [7035.9502, 6723.7271, 0.098142877], [], 0, "CAN_COLLIDE"];
  _vehicle_197 = _this;
  _this setDir 93.618011;
  _this setPos [7035.9502, 6723.7271, 0.098142877];
};
_vehicle_200 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [7010.833, 6727.2344, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_200 = _this;
  _this setDir -235.33638;
  _this setPos [7010.833, 6727.2344, -1.9073486e-006];
};
_vehicle_202 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [7013.7979, 6719.1035, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_202 = _this;
  _this setDir -94.321419;
  _this setPos [7013.7979, 6719.1035, -7.6293945e-006];
};
_vehicle_204 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [6990.6025, 6715.5903, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_204 = _this;
  _this setDir -67.565224;
  _this setPos [6990.6025, 6715.5903, -1.9073486e-006];
};
_vehicle_206 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [7037.21, 7088.1753, -3.6239624e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_206 = _this;
  _this setDir -5.3128109;
  _this setPos [7037.21, 7088.1753, -3.6239624e-005];
};
_vehicle_208 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [7009.8228, 7103.9951, -4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_208 = _this;
  _this setDir 61.908318;
  _this setPos [7009.8228, 7103.9951, -4.7683716e-006];
};
_vehicle_210 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10x", [7024.0229, 7095.5371, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_210 = _this;
  _this setDir 29.150982;
  _this setPos [7024.0229, 7095.5371, 1.9073486e-005];
};
_unit_49 = objNull;
if (true) then
{
  _this = createAgent ["Pilot_EP1", [7033.144, 7103.0996, -1.8119812e-005], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_49 = _this;
  _this setDir -50.393272;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_218 = objNull;
if (true) then
{
  _this = createVehicle ["US_WarfareBAircraftFactory_Base_EP1", [7032.6265, 7101.5986, -0.30294973], [], 0, "CAN_COLLIDE"];
  _vehicle_218 = _this;
  _this setDir 91.5569;
  _this setPos [7032.6265, 7101.5986, -0.30294973];
};
_vehicle_221 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [7046.355, 7097.1211, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_221 = _this;
  _this setDir -79.75882;
  _this setPos [7046.355, 7097.1211, 9.5367432e-007];
};
_vehicle_224 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [7048.9663, 7112.625, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_224 = _this;
  _this setDir -81.812408;
  _this setPos [7048.9663, 7112.625, -1.9073486e-006];
};
_vehicle_227 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [7001.2275, 7115.7017, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_227 = _this;
  _this setDir 45.435726;
  _this setPos [7001.2275, 7115.7017, 1.5258789e-005];
};
_vehicle_230 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [7051.7598, 7127.8184, 6.6757202e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_230 = _this;
  _this setDir -76.161797;
  _this setPos [7051.7598, 7127.8184, 6.6757202e-005];
};
_vehicle_232 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [7056.0059, 7142.7363, 4.3869019e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_232 = _this;
  _this setDir -70.717758;
  _this setPos [7056.0059, 7142.7363, 4.3869019e-005];
};
_vehicle_234 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6990.8672, 7125.5278, -1.0490417e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_234 = _this;
  _this setDir -148.35767;
  _this setPos [6990.8672, 7125.5278, -1.0490417e-005];
};
_vehicle_237 = objNull;
if (true) then
{
  _this = createVehicle ["C130J_wreck_EP1", [7151.8945, 7030.0732, 0.8013888], [], 0, "CAN_COLLIDE"];
  _vehicle_237 = _this;
  _this setDir -93.734474;
  _this setPos [7151.8945, 7030.0732, 0.8013888];
};
_unit_51 = objNull;
if (true) then
{
  _this = createAgent ["Worker2", [7035.3267, 7107.6118, 0.004121698], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_51 = _this;
  _this setDir -84.394981;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_238 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [7035.9658, 7112.4722, 0.027919902], [], 0, "CAN_COLLIDE"];
  _vehicle_238 = _this;
  _this setDir 165.20537;
  _this setPos [7035.9658, 7112.4722, 0.027919902];
};
_vehicle_242 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [7042.8677, 7097.895, -0.0073328661], [], 0, "CAN_COLLIDE"];
  _vehicle_242 = _this;
  _this setDir 455.36975;
  _this setPos [7042.8677, 7097.895, -0.0073328661];
};
_vehicle_243 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_container", [7045.8838, 7109.3184, -0.025139401], [], 0, "CAN_COLLIDE"];
  _vehicle_243 = _this;
  _this setDir 187.55515;
  _this setPos [7045.8838, 7109.3184, -0.025139401];
};
_vehicle_244 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [7034.4453, 7105.6333, 0.0020065343], [], 0, "CAN_COLLIDE"];
  _vehicle_244 = _this;
  _this setDir 50.050522;
  _this setPos [7034.4453, 7105.6333, 0.0020065343];
};
_vehicle_246 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_water", [7035.7148, 7110.3921, -0.039990574], [], 0, "CAN_COLLIDE"];
  _vehicle_246 = _this;
  _this setPos [7035.7148, 7110.3921, -0.039990574];
};
_vehicle_247 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Rubble_EP1", [6535.2529, 6882.0449, 2.4795532e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_247 = _this;
  _this setDir -3.6153793;
  _this setPos [6535.2529, 6882.0449, 2.4795532e-005];
};
_vehicle_248 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [7036.7852, 7111.3252, 0.016125865], [], 0, "CAN_COLLIDE"];
  _vehicle_248 = _this;
  _this setDir -175.17001;
  _this setPos [7036.7852, 7111.3252, 0.016125865];
};
_vehicle_253 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [7034.6631, 7107.5923, 0.0021844413], [], 0, "CAN_COLLIDE"];
  _vehicle_253 = _this;
  _this setDir -87.616402;
  _this setPos [7034.6631, 7107.5923, 0.0021844413];
};
_unit_59 = objNull;
if (true) then
{
  _this = createAgent ["Worker4", [7604.5034, 2943.2598, 0.98590052], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_59 = _this;
  _this setDir 102.47784;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_265 = objNull;
if (true) then
{
  _this = createVehicle ["LADAWreck", [7604.5518, 2940.0476, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_265 = _this;
  _this setDir -50.938438;
  _this setPos [7604.5518, 2940.0476, -9.5367432e-007];
};
_vehicle_275 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [4134.1299, 1468.5542, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_275 = _this;
  _this setDir 90.429932;
  _this setPos [4134.1299, 1468.5542, 1.9073486e-006];
};
_vehicle_276 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [4137.3975, 1468.6536, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_276 = _this;
  _this setDir 90.429932;
  _this setPos [4137.3975, 1468.6536, 3.8146973e-006];
};
_vehicle_277 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [4135.7041, 1468.5054, 2.5109596], [], 0, "CAN_COLLIDE"];
  _vehicle_277 = _this;
  _this setDir 90.429932;
  _this setPos [4135.7041, 1468.5054, 2.5109596];
};
_vehicle_287 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [4134.1709, 1484.2555, 1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_287 = _this;
  _this setDir 90.429932;
  _this setPos [4134.1709, 1484.2555, 1.335144e-005];
};
_vehicle_288 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [4137.4385, 1484.3549, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_288 = _this;
  _this setDir 90.429932;
  _this setPos [4137.4385, 1484.3549, 1.5258789e-005];
};
_vehicle_289 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [4135.7461, 1484.2067, 2.5109711], [], 0, "CAN_COLLIDE"];
  _vehicle_289 = _this;
  _this setDir 90.429932;
  _this setPos [4135.7461, 1484.2067, 2.5109711];
};
_vehicle_308 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [4137.5332, 1492.9086, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_308 = _this;
  _this setDir 2.3165083;
  _this setPos [4137.5332, 1492.9086, 1.1444092e-005];
};
_vehicle_310 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [4138.2363, 1459.2627, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_310 = _this;
  _this setDir 2.3165083;
  _this setPos [4138.2363, 1459.2627, 7.6293945e-006];
};
_vehicle_326 = objNull;
if (true) then
{
  _this = createVehicle ["US_WarfareBVehicleServicePoint_Base_EP1", [4140.6611, 1479.0856, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_326 = _this;
  _this setDir 180.37967;
  _this setPos [4140.6611, 1479.0856, 3.8146973e-006];
};
_unit_65 = objNull;
if (true) then
{
  _this = createAgent ["Pilot", [4143.9258, 1481.0282, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_65 = _this;
  _this setDir 71.022041;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_unit_66 = objNull;
if (true) then
{
  _this = createAgent ["RU_Madam3", [7604.7041, 2948.7622, 8.4292526], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_66 = _this;
  _this setDir 273.64359;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_330 = objNull;
if (true) then
{
  _this = createVehicle ["Land_sunshade_EP1", [7604.0171, 2943.2197, 0.47457555], [], 0, "CAN_COLLIDE"];
  _vehicle_330 = _this;
  _this setPos [7604.0171, 2943.2197, 0.47457555];
};
_vehicle_331 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [7606.6055, 2944.981, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_331 = _this;
  _this setPos [7606.6055, 2944.981, 2.8610229e-006];
};
_vehicle_332 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Carpet_rack_EP1", [7596.2139, 2948.4326, 0.018559452], [], 0, "CAN_COLLIDE"];
  _vehicle_332 = _this;
  _this setDir 270.56854;
  _this setPos [7596.2139, 2948.4326, 0.018559452];
};
_vehicle_333 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_EP1", [7601.1743, 2944.6284, 2.9578028], [], 0, "CAN_COLLIDE"];
  _vehicle_333 = _this;
  _this setDir -80.907913;
  _this setPos [7601.1743, 2944.6284, 2.9578028];
};
_vehicle_382 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big", [1415.1305, 1886.6373], [], 0, "CAN_COLLIDE"];
  _vehicle_382 = _this;
  _this setDir -58.995243;
  _this setPos [1415.1305, 1886.6373];
};
_unit_71 = objNull;
if (true) then
{
  _this = createAgent ["CIV_EuroMan01_EP1", [1416.7739, 1880.6857, 3.9660115], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_71 = _this;
  _this setDir -121.72263;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_unit_72 = objNull;
if (true) then
{
  _this = createAgent ["CIV_EuroMan02_EP1", [1411.0114, 1876.745, 3.9463224], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_72 = _this;
  _this setDir 94.256027;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_unit_76 = objNull;
if (true) then
{
  _this = createAgent ["Dr_Annie_Baker_EP1", [1411.74, 1871.8092, 1.1316851], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_76 = _this;
  _this setDir -3.6318746;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_unit_77 = objNull;
if (true) then
{
  _this = createAgent ["CIV_EuroWoman01_EP1", [1415.8571, 1881.3663, 1.142189], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_77 = _this;
  _this setDir 201.97797;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_416 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall", [871.35272, 5270.3936, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_416 = _this;
  _this setDir 88.226517;
  _this setPos [871.35272, 5270.3936, 5.7220459e-006];
};
_unit_80 = objNull;
if (true) then
{
  _this = createAgent ["Citizen3_EP1", [1462.0436, 1453.7813, 2.6637368], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_80 = _this;
  _this setDir -112.72415;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_422 = objNull;
if (true) then
{
  _this = createVehicle ["LADAWreck", [1420.8499, 1882.8003, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_422 = _this;
  _this setDir -85.603584;
  _this setPos [1420.8499, 1882.8003, 1.1444092e-005];
};
_vehicle_423 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [7601.1616, 2936.321, 0.070877217], [], 0, "CAN_COLLIDE"];
  _vehicle_423 = _this;
  _this setDir 90.854195;
  _this setPos [7601.1616, 2936.321, 0.070877217];
};
_vehicle_424 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrate_NoInteractive_", [7598.8672, 2941.425, 0.28364724], [], 0, "CAN_COLLIDE"];
  _vehicle_424 = _this;
  _this setDir 2.070982;
  _this setPos [7598.8672, 2941.425, 0.28364724];
};
_vehicle_425 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [7600.8555, 2945.1567, 0.32887137], [], 0, "CAN_COLLIDE"];
  _vehicle_425 = _this;
  _this setDir 274.17166;
  _this setPos [7600.8555, 2945.1567, 0.32887137];
};
_vehicle_426 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [7597.2041, 2949.0066, 0.31542817], [], 0, "CAN_COLLIDE"];
  _vehicle_426 = _this;
  _this setDir 190.84195;
  _this setPos [7597.2041, 2949.0066, 0.31542817];
};
_vehicle_427 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Small", [7597.3389, 2944.3103, 0.32013208], [], 0, "CAN_COLLIDE"];
  _vehicle_427 = _this;
  _this setDir -75.110085;
  _this setPos [7597.3389, 2944.3103, 0.32013208];
};
_vehicle_428 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Antenna", [7511.041, 2958.074, 6.3968663], [], 0, "CAN_COLLIDE"];
  _vehicle_428 = _this;
  _this setDir -33.135361;
  _this setPos [7511.041, 2958.074, 6.3968663];
};
_vehicle_430 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [3409.7051, 8239.6934, -0.052429717], [], 0, "CAN_COLLIDE"];
  _vehicle_430 = _this;
  _this setDir -83.460388;
  _this setPos [3409.7051, 8239.6934, -0.052429717];
};
_vehicle_432 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [3410.1555, 8242.6592, 0.011697167], [], 0, "CAN_COLLIDE"];
  _vehicle_432 = _this;
  _this setDir -83.460388;
  _this setPos [3410.1555, 8242.6592, 0.011697167];
};
_vehicle_436 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [3409.8862, 8252.2354, -1.0490417e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_436 = _this;
  _this setDir -92.218681;
  _this setPos [3409.8862, 8252.2354, -1.0490417e-005];
};
_vehicle_437 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [3402.2314, 8252.1855, -1.7166138e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_437 = _this;
  _this setDir -89.472824;
  _this setPos [3402.2314, 8252.1855, -1.7166138e-005];
};
_unit_85 = objNull;
if (true) then
{
  _this = createAgent ["ibr_lingorman2s", [3408.9478, 8247.0439, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_85 = _this;
  _this setDir -75.48159;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_440 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [3407.7329, 8246.9414, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_440 = _this;
  _this setDir 86.5588;
  _this setPos [3407.7329, 8246.9414, 3.8146973e-006];
};
_vehicle_441 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [3409.4597, 8246.3633, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_441 = _this;
  _this setDir 135.78561;
  _this setPos [3409.4597, 8246.3633, 8.5830688e-006];
};
_vehicle_442 = objNull;
if (true) then
{
  _this = createVehicle ["Land_covering_hut_big_EP1", [3408.6941, 8246.04, 4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_442 = _this;
  _this setDir 175.17145;
  _this setPos [3408.6941, 8246.04, 4.7683716e-006];
};
_vehicle_443 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled", [3411.3538, 8242.9102, 9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_443 = _this;
  _this setDir 7.7950034;
  _this setPos [3411.3538, 8242.9102, 9.5367432e-006];
};
_vehicle_444 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [3409.647, 8243.8301, 0.00040435803], [], 0, "CAN_COLLIDE"];
  _vehicle_444 = _this;
  _this setPos [3409.647, 8243.8301, 0.00040435803];
};
_vehicle_445 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta1", [3409.9707, 8236.9473, -0.019773765], [], 0, "CAN_COLLIDE"];
  _vehicle_445 = _this;
  _this setPos [3409.9707, 8236.9473, -0.019773765];
};
_vehicle_446 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_water", [3409.291, 8245.2998, 0.037566625], [], 0, "CAN_COLLIDE"];
  _vehicle_446 = _this;
  _this setPos [3409.291, 8245.2998, 0.037566625];
};
_vehicle_447 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall", [3414.7546, 8246.8027, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_447 = _this;
  _this setDir 85.964737;
  _this setPos [3414.7546, 8246.8027, -3.8146973e-006];
};
_unit_87 = objNull;
if (true) then
{
  _this = createAgent ["ibr_lingorman3s", [8348.2188, 8739.2813, 8.5592041], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_87 = _this;
  _this setDir 367.17648;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_448 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo2E", [8339.4473, 8742.9619, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_448 = _this;
  _this setDir 24.328873;
  _this setPos [8339.4473, 8742.9619, 7.6293945e-006];
};
_vehicle_449 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled_heap", [8342.9619, 8738.874, 7.9894919], [], 0, "CAN_COLLIDE"];
  _vehicle_449 = _this;
  _this setDir 295.72287;
  _this setPos [8342.9619, 8738.874, 7.9894919];
};
_unit_90 = objNull;
if (true) then
{
  _this = createAgent ["ibr_lingorman5", [7597.9819, 2950.1475, 0.30288413], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_90 = _this;
  _this setDir 141.41713;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_450 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierRedCross_EP1", [6679.5654, 4293.8071, 3.8700938], [], 0, "CAN_COLLIDE"];
  _vehicle_450 = _this;
  _this setDir 96.069023;
  _this setPos [6679.5654, 4293.8071, 3.8700938];
};
_vehicle_452 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Backpackheap_EP1", [7597.6895, 2950.4919, 3.094198], [], 0, "CAN_COLLIDE"];
  _vehicle_452 = _this;
  _this setDir 163.89236;
  _this setPos [7597.6895, 2950.4919, 3.094198];
};
_vehicle_454 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [1450.4888, 1445.2593, -0.066950358], [], 0, "CAN_COLLIDE"];
  _vehicle_454 = _this;
  _this setPos [1450.4888, 1445.2593, -0.066950358];
};
_vehicle_456 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_net3", [1467.0399, 1449.2507, -0.071431682], [], 0, "CAN_COLLIDE"];
  _vehicle_456 = _this;
  _this setDir -272.28799;
  _this setPos [1467.0399, 1449.2507, -0.071431682];
};
_vehicle_457 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [1462.5848, 1452.3096, 2.703191], [], 0, "CAN_COLLIDE"];
  _vehicle_457 = _this;
  _this setDir 94.572945;
  _this setPos [1462.5848, 1452.3096, 2.703191];
};
_vehicle_459 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [1724.5776, 4134.0972, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_459 = _this;
  _this setPos [1724.5776, 4134.0972, 3.8146973e-006];
};
_vehicle_460 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [1768.2799, 4140.96], [], 0, "CAN_COLLIDE"];
  _vehicle_460 = _this;
  _this setPos [1768.2799, 4140.96];
};
_vehicle_462 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [1765.6605, 4140.9443, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_462 = _this;
  _this setPos [1765.6605, 4140.9443, 7.6293945e-006];
};
_vehicle_465 = objNull;
if (true) then
{
  _this = createVehicle ["Land_covering_hut_EP1", [1724.369, 4136.9204, 3.8146973e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_465 = _this;
  _this setDir 88.205536;
  _this setPos [1724.369, 4136.9204, 3.8146973e-005];
};
_vehicle_472 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierChecked", [1766.761, 4133.8008], [], 0, "CAN_COLLIDE"];
  _vehicle_472 = _this;
  _this setPos [1766.761, 4133.8008];
};
_vehicle_474 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierChecked", [1767.0544, 4116.6021, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_474 = _this;
  _this setPos [1767.0544, 4116.6021, -1.1444092e-005];
};
_vehicle_476 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Noentry_EP1", [1724.9796, 4121.3779, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_476 = _this;
  _this setDir -91.972839;
  _this setPos [1724.9796, 4121.3779, 3.8146973e-006];
};
_vehicle_478 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Noentry_EP1", [1725.5295, 4133.7915], [], 0, "CAN_COLLIDE"];
  _vehicle_478 = _this;
  _this setDir -91.998009;
  _this setPos [1725.5295, 4133.7915];
};
_vehicle_482 = objNull;
if (true) then
{
  _this = createVehicle ["Land_SignB_Pub_CZ3", [1748.7087, 4141.1421, 3.5652723], [], 0, "CAN_COLLIDE"];
  _vehicle_482 = _this;
  _this setDir 0.14918116;
  _this setPos [1748.7087, 4141.1421, 3.5652723];
};
_vehicle_483 = objNull;
if (true) then
{
  _this = createVehicle ["Land_SignB_Pub_RU2", [1741.3301, 4141.0781, 3.4627702], [], 0, "CAN_COLLIDE"];
  _vehicle_483 = _this;
  _this setPos [1741.3301, 4141.0781, 3.4627702];
};
_vehicle_485 = objNull;
if (true) then
{
  _this = createVehicle ["Land_SignB_Pub_CZ1", [1734.0756, 4141.1563, 3.582387], [], 0, "CAN_COLLIDE"];
  _vehicle_485 = _this;
  _this setPos [1734.0756, 4141.1563, 3.582387];
};
_vehicle_487 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tires_EP1", [1738.0853, 4143.479, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_487 = _this;
  _this setDir 196.25143;
  _this setPos [1738.0853, 4143.479, 3.8146973e-006];
};
_vehicle_488 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Bucket_EP1", [1738.2743, 4142.5542], [], 0, "CAN_COLLIDE"];
  _vehicle_488 = _this;
  _this setDir 0.48201698;
  _this setPos [1738.2743, 4142.5542];
};
_vehicle_489 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [1725.1685, 4136.8999, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_489 = _this;
  _this setDir -91.010567;
  _this setPos [1725.1685, 4136.8999, 7.6293945e-006];
};
_unit_99 = objNull;
if (true) then
{
  _this = createAgent ["Rocker4", [1724.6815, 4136.9688, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_99 = _this;
  _this setDir 90.808693;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_491 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [1723.614, 4136.0293], [], 0, "CAN_COLLIDE"];
  _vehicle_491 = _this;
  _this setDir -122.29593;
  _this setPos [1723.614, 4136.0293];
};
_vehicle_492 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_water", [1745.8879, 4142.6265, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_492 = _this;
  _this setDir 172.86455;
  _this setPos [1745.8879, 4142.6265, 3.8146973e-006];
};
_vehicle_493 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHEmpty", [1748.2552, 4137.853, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_493 = _this;
  _this setPos [1748.2552, 4137.853, 7.6293945e-006];
};
_vehicle_494 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [1744.1908, 4150.4619, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_494 = _this;
  _this setDir -51.489697;
  _this setPos [1744.1908, 4150.4619, 1.5258789e-005];
};
_vehicle_496 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [1743.4209, 4150.5376, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_496 = _this;
  _this setDir 257.38394;
  _this setPos [1743.4209, 4150.5376, 7.6293945e-006];
};
_vehicle_499 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [1743.3628, 4151.3809, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_499 = _this;
  _this setDir 257.38394;
  _this setPos [1743.3628, 4151.3809, 1.9073486e-005];
};
_vehicle_501 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_container", [1745.1577, 4148.2568, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_501 = _this;
  _this setDir -92.637192;
  _this setPos [1745.1577, 4148.2568, 3.8146973e-006];
};
_unit_102 = objNull;
if (true) then
{
  _this = createAgent ["ibr_lingorman7s", [2953.7117, 6744.0474, 3.0134287], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_102 = _this;
  _this setDir 181.03314;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_1200 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Backpackheap", [2962.9724, 6753.125, 0.097021326], [], 0, "CAN_COLLIDE"];
  _vehicle_1200 = _this;
  _this setDir 133.90172;
  _this setPos [2962.9724, 6753.125, 0.097021326];
};
_vehicle_1203 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [2948.0618, 6742.811, -0.24075998], [], 0, "CAN_COLLIDE"];
  _vehicle_1203 = _this;
  _this setDir 90.880554;
  _this setPos [2948.0618, 6742.811, -0.24075998];
};
_vehicle_1206 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [2947.9561, 6738.8105, -0.24991004], [], 0, "CAN_COLLIDE"];
  _vehicle_1206 = _this;
  _this setDir 90.880554;
  _this setPos [2947.9561, 6738.8105, -0.24991004];
};
_vehicle_1218 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [2953.6997, 6743.2817, 0.011341909], [], 0, "CAN_COLLIDE"];
  _vehicle_1218 = _this;
  _this setDir 0.44062436;
  _this setPos [2953.6997, 6743.2817, 0.011341909];
};
_vehicle_1219 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [2952.9358, 6744.0747, -3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1219 = _this;
  _this setDir -65.460815;
  _this setPos [2952.9358, 6744.0747, -3.4332275e-005];
};
_unit_106 = objNull;
if (true) then
{
  _this = createAgent ["Damsel3", [2963.9988, 6752.8452, 0.025634211], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_106 = _this;
  _this setDir 179.7719;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_unit_109 = objNull;
if (true) then
{
  _this = createAgent ["ibr_lingorman5s", [3925.5791, 5225.2319, 1.7729917], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_109 = _this;
  _this setDir 89.601418;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_unit_111 = objNull;
if (true) then
{
  _this = createAgent ["ibr_lingorman2", [3879.7634, 2236.843, 1.1846944], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_111 = _this;
  _this setDir 43.212208;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_unit_113 = objNull;
if (true) then
{
  _this = createAgent ["ibr_lingorman4", [5511.9951, 4394.8013, 4.1448889], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_113 = _this;
  _this setDir 25.054167;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_1220 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4229.8789, 4829.3271, -0.54357761], [], 0, "CAN_COLLIDE"];
  _vehicle_1220 = _this;
  _this setDir -5.4010339;
  _this setPos [4229.8789, 4829.3271, -0.54357761];
};
_vehicle_1222 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4233.7554, 4829.9385, -0.54356235], [], 0, "CAN_COLLIDE"];
  _vehicle_1222 = _this;
  _this setDir -5.4010339;
  _this setPos [4233.7554, 4829.9385, -0.54356235];
};
_vehicle_1224 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4237.7109, 4830.4077, -0.54355854], [], 0, "CAN_COLLIDE"];
  _vehicle_1224 = _this;
  _this setDir -5.4010339;
  _this setPos [4237.7109, 4830.4077, -0.54355854];
};
_vehicle_1226 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4241.5688, 4830.769, -0.54353946], [], 0, "CAN_COLLIDE"];
  _vehicle_1226 = _this;
  _this setDir -5.4010339;
  _this setPos [4241.5688, 4830.769, -0.54353946];
};
_vehicle_1232 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4223.6563, 4844.4219, -0.24126761], [], 0, "CAN_COLLIDE"];
  _vehicle_1232 = _this;
  _this setDir 82.428879;
  _this setPos [4223.6563, 4844.4219, -0.24126761];
};
_vehicle_1233 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4224.2837, 4840.6104, -0.095285259], [], 0, "CAN_COLLIDE"];
  _vehicle_1233 = _this;
  _this setDir 77.20562;
  _this setPos [4224.2837, 4840.6104, -0.095285259];
};
_vehicle_1234 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4224.9741, 4836.7158, -0.29024652], [], 0, "CAN_COLLIDE"];
  _vehicle_1234 = _this;
  _this setDir 82.428879;
  _this setPos [4224.9741, 4836.7158, -0.29024652];
};
_vehicle_1235 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4225.4805, 4832.8784, -0.18821298], [], 0, "CAN_COLLIDE"];
  _vehicle_1235 = _this;
  _this setDir 82.428879;
  _this setPos [4225.4805, 4832.8784, -0.18821298];
};
_vehicle_1240 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4237.0669, 4847.6821, -0.26649076], [], 0, "CAN_COLLIDE"];
  _vehicle_1240 = _this;
  _this setDir 174.35881;
  _this setPos [4237.0669, 4847.6821, -0.26649076];
};
_vehicle_1241 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4233.084, 4847.2417, -0.28165296], [], 0, "CAN_COLLIDE"];
  _vehicle_1241 = _this;
  _this setDir 174.35881;
  _this setPos [4233.084, 4847.2417, -0.28165296];
};
_vehicle_1242 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4229.1919, 4846.7192, -0.3164061], [], 0, "CAN_COLLIDE"];
  _vehicle_1242 = _this;
  _this setDir 169.60085;
  _this setPos [4229.1919, 4846.7192, -0.3164061];
};
_vehicle_1243 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4225.2397, 4846.2183, -0.26708832], [], 0, "CAN_COLLIDE"];
  _vehicle_1243 = _this;
  _this setDir 174.35881;
  _this setPos [4225.2397, 4846.2183, -0.26708832];
};
_vehicle_1248 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4244.2446, 4834.0781, -0.41050881], [], 0, "CAN_COLLIDE"];
  _vehicle_1248 = _this;
  _this setDir -97.093491;
  _this setPos [4244.2446, 4834.0781, -0.41050881];
};
_vehicle_1249 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4243.7217, 4838.0415, -0.26842239], [], 0, "CAN_COLLIDE"];
  _vehicle_1249 = _this;
  _this setDir -97.093491;
  _this setPos [4243.7217, 4838.0415, -0.26842239];
};
_vehicle_1250 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4243.1377, 4841.9839, -0.3272759], [], 0, "CAN_COLLIDE"];
  _vehicle_1250 = _this;
  _this setDir -97.093491;
  _this setPos [4243.1377, 4841.9839, -0.3272759];
};
_vehicle_1251 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4242.6587, 4845.8257, -0.51001912], [], 0, "CAN_COLLIDE"];
  _vehicle_1251 = _this;
  _this setDir -97.093491;
  _this setPos [4242.6587, 4845.8257, -0.51001912];
};
_unit_117 = objNull;
if (true) then
{
  _this = createAgent ["TK_CIV_Woman02_EP1", [4236.6968, 4842.8164, 0.36117083], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_117 = _this;
  _this setDir 194.36969;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_1257 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [4226.8652, 4830.7383, -0.33793208], [], 0, "CAN_COLLIDE"];
  _vehicle_1257 = _this;
  _this setDir 53.001484;
  _this setPos [4226.8652, 4830.7383, -0.33793208];
};
_unit_120 = objNull;
if (true) then
{
  _this = createAgent ["TK_CIV_Woman03_EP1", [6676.3252, 6361.1772, 0.72185659], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_120 = _this;
  _this setDir 132.67206;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_unit_121 = objNull;
if (true) then
{
  _this = createAgent ["ibr_lingorman7", [7600.3486, 2941.5181, 0.29989666], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_121 = _this;
  _this setDir 336.34799;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_unit_127 = objNull;
if (true) then
{
  _this = createAgent ["ibr_lingorman6", [2959.9277, 6743.5742, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_127 = _this;
  _this setDir 183.17097;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_1570 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tires_EP1", [2961.5371, 6743.6372, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1570 = _this;
  _this setDir 186.87115;
  _this setPos [2961.5371, 6743.6372, 7.6293945e-006];
};
_vehicle_1571 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeap", [2963.8423, 6743.7681, -0.36312491], [], 0, "CAN_COLLIDE"];
  _vehicle_1571 = _this;
  _this setDir 168.65187;
  _this setPos [2963.8423, 6743.7681, -0.36312491];
};
_unit_128 = objNull;
if (true) then
{
  _this = createAgent ["ibr_lingorman6s", [1737.4084, 4142.3691, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_128 = _this;
  _this setDir 184.57875;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
_this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_1573 = objNull;
if (true) then
{
  _this = createVehicle ["Info_Board_EP1", [4239.7866, 4838.1948], [], 0, "CAN_COLLIDE"];
  _vehicle_1573 = _this;
  _this setDir 263.12741;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [4239.7866, 4838.1948];
};
_vehicle_1574 = objNull;
if (true) then
{
  _this = createVehicle ["Land_A_Hospital", [4194.916, 5026.9009, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1574 = _this;
  _this setDir 0.42999688;
  _this setPos [4194.916, 5026.9009, 3.8146973e-006];
};
_vehicle_1576 = objNull;
if (true) then
{
  _this = createVehicle ["Info_Board_EP1", [7030.1812, 7101.311, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1576 = _this;
  _this setDir 177.98137;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [7030.1812, 7101.311, -3.0517578e-005];
};
_vehicle_1581 = objNull;
if (true) then
{
  _this = createVehicle ["Info_Board_EP1", [4142.8438, 1483.4622, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1581 = _this;
  _this setDir 273.75558;
  _this setVehicleInit "this allowDammage false;";
  _this setPos [4142.8438, 1483.4622, 3.8146973e-006];
};
_vehicle_1587 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [2948.4497, 6736.98, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1587 = _this;
  _this setDir 251.04749;
  _this setPos [2948.4497, 6736.98, -3.0517578e-005];
};
_vehicle_1589 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [1724.5612, 4134.7891, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1589 = _this;
  _this setDir 278.99225;
  _this setPos [1724.5612, 4134.7891, -3.8146973e-006];
};
_vehicle_1593 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [4241.6924, 4836.3877, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1593 = _this;
  _this setDir 251.04749;
  _this setPos [4241.6924, 4836.3877, 0];
};
_vehicle_1595 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [7038.0854, 7102.2104], [], 0, "CAN_COLLIDE"];
  _vehicle_1595 = _this;
  _this setDir 437.86368;
  _this setPos [7038.0854, 7102.2104];
};
_vehicle_1597 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [4146.563, 1479.7007], [], 0, "CAN_COLLIDE"];
  _vehicle_1597 = _this;
  _this setDir 356.84875;
  _this setPos [4146.563, 1479.7007];
};
_vehicle_1599 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [7607.5815, 2951.908, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1599 = _this;
  _this setDir 251.04749;
  _this setPos [7607.5815, 2951.908, 1.4305115e-006];
};
_vehicle_1601 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [7596.3271, 2944.1003, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1601 = _this;
  _this setDir 251.04749;
  _this setPos [7596.3271, 2944.1003, 1.4305115e-006];
};
_vehicle_1846 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [2514.342, 3919.6724, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1846 = _this;
  _this setPos [2514.342, 3919.6724, 0];
};
_vehicle_1891 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierWhite_EP1", [1416.7466, 1846.569, -0.12846071], [], 0, "CAN_COLLIDE"];
  _vehicle_1891 = _this;
  _this setDir 13.515052;
  _this setPos [1416.7466, 1846.569, -0.12846071];
};
_vehicle_1892 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierUSA", [7041.3745, 7092.3813, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1892 = _this;
  _this setPos [7041.3745, 7092.3813, 3.0517578e-005];
};
_vehicle_1896 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierWhite_EP1", [4140.8857, 1485.5474, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1896 = _this;
  _this setDir 93.686035;
  _this setPos [4140.8857, 1485.5474, -1.9073486e-006];
};
_vehicle_1901 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHEmpty", [6017.5332, 6616.5186, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1901 = _this;
  _this setPos [6017.5332, 6616.5186, 0];
};
_vehicle_1903 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierWhite_EP1", [6009.9697, 6630.625, 1.0490417e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1903 = _this;
  _this setDir -7.1864672;
  _this setPos [6009.9697, 6630.625, 1.0490417e-005];
};
_unit_154 = objNull;
if (true) then
{
  _this = createAgent ["RU_Doctor", [7604.0586, 2951.6003, 0.87540382], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_154 = _this;
  _this setDir 167.15392;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_unit_159 = objNull;
if (true) then
{
  _this = createAgent ["TK_CIV_Takistani04_EP1", [4099.8921, 9243.2627, 6.3896179e-005], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_159 = _this;
  _this setDir 170.86682;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;  ";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_1948 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHEmpty", [4078.1492, 9223.8379, -3.7553658], [], 0, "CAN_COLLIDE"];
  _vehicle_1948 = _this;
  _this setPos [4078.1492, 9223.8379, -3.7553658];
};
_vehicle_1952 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [4210.439, 1480.9308, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1952 = _this;
  _this setPos [4210.439, 1480.9308, 0];
};
_unit_169 = objNull;
if (true) then
{
  _this = createAgent ["Functionary1", [4144.0195, 1478.6262], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_169 = _this;
  _this setDir 467.24658;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;  ";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_1954 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [4148.2959, 1479.7568, 0.017693177], [], 0, "CAN_COLLIDE"];
  _vehicle_1954 = _this;
  _this setDir 92.813698;
  _this setPos [4148.2959, 1479.7568, 0.017693177];
};
_vehicle_1961 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [1428.8348, 1858.869], [], 0, "CAN_COLLIDE"];
  _vehicle_1961 = _this;
  _this setDir 210.05495;
  _this setPos [1428.8348, 1858.869];
};
_vehicle_1965 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_net2", [1412.1217, 1867.2389, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1965 = _this;
  _this setDir -63.723;
  _this setPos [1412.1217, 1867.2389, -3.8146973e-006];
};
_vehicle_1971 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [1438.4153, 1878.649, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1971 = _this;
  _this setDir -240.85016;
  _this setPos [1438.4153, 1878.649, -3.8146973e-006];
};
_vehicle_1974 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [1418.1334, 1873.7542], [], 0, "CAN_COLLIDE"];
  _vehicle_1974 = _this;
  _this setDir 251.04749;
  _this setPos [1418.1334, 1873.7542];
};
_vehicle_1977 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [1410.9484, 1880.8302, 0.58417994], [], 0, "CAN_COLLIDE"];
  _vehicle_1977 = _this;
  _this setDir -60.991718;
  _this setPos [1410.9484, 1880.8302, 0.58417994];
};
_vehicle_1980 = objNull;
if (true) then
{
  _this = createVehicle ["Satelit", [1416.2402, 1872.6012, 6.8424931], [], 0, "CAN_COLLIDE"];
  _vehicle_1980 = _this;
  _this setDir -28.130873;
  _this setPos [1416.2402, 1872.6012, 6.8424931];
};
_vehicle_1983 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [1486.0927, 1830.5972], [], 0, "CAN_COLLIDE"];
  _vehicle_1983 = _this;
  _this setDir 92.813698;
  _this setPos [1486.0927, 1830.5972];
};
_vehicle_1987 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [1417.5448, 1874.1577, 0.00075616781], [], 0, "CAN_COLLIDE"];
  _vehicle_1987 = _this;
  _this setPos [1417.5448, 1874.1577, 0.00075616781];
};
_vehicle_1990 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [1412.3208, 1891.7101, 0.085129507], [], 0, "CAN_COLLIDE"];
  _vehicle_1990 = _this;
  _this setDir 122.09502;
  _this setPos [1412.3208, 1891.7101, 0.085129507];
};
_vehicle_1993 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall", [1441.666, 1876.8899], [], 0, "CAN_COLLIDE"];
  _vehicle_1993 = _this;
  _this setDir 213.2571;
  _this setPos [1441.666, 1876.8899];
};
_vehicle_1996 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta1", [1409.9666, 1865.9211], [], 0, "CAN_COLLIDE"];
  _vehicle_1996 = _this;
  _this setPos [1409.9666, 1865.9211];
};
_vehicle_1999 = objNull;
if (true) then
{
  _this = createVehicle ["Land_covering_hut_big_EP1", [7598.4824, 2942.1104, 3.3561139], [], 0, "CAN_COLLIDE"];
  _vehicle_1999 = _this;
  _this setDir 272.4617;
  _this setPos [7598.4824, 2942.1104, 3.3561139];
};
_vehicle_2004 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [1420.9023, 1879.3486, 0.012325804], [], 0, "CAN_COLLIDE"];
  _vehicle_2004 = _this;
  _this setDir 114.80762;
  _this setPos [1420.9023, 1879.3486, 0.012325804];
};
_vehicle_2007 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [1415.666, 1873.3403], [], 0, "CAN_COLLIDE"];
  _vehicle_2007 = _this;
  _this setDir 293.15976;
  _this setPos [1415.666, 1873.3403];
};
_vehicle_2010 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled", [1416.0948, 1870.7085], [], 0, "CAN_COLLIDE"];
  _vehicle_2010 = _this;
  _this setDir 25.945751;
  _this setPos [1416.0948, 1870.7085];
};
_vehicle_2013 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [1416.921, 1872.9155, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2013 = _this;
  _this setDir 114.80762;
  _this setPos [1416.921, 1872.9155, 1.9073486e-006];
};
_vehicle_2016 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [1419.7009, 1880.1019, 2.0980835e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2016 = _this;
  _this setDir 295.32645;
  _this setPos [1419.7009, 1880.1019, 2.0980835e-005];
};
_vehicle_2019 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [1418.2147, 1848.3146, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2019 = _this;
  _this setDir -127.19206;
  _this setPos [1418.2147, 1848.3146, 5.7220459e-006];
};
_vehicle_2022 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Backpackheap_EP1", [1413.166, 1883.176, 0.67039478], [], 0, "CAN_COLLIDE"];
  _vehicle_2022 = _this;
  _this setDir 164.68286;
  _this setPos [1413.166, 1883.176, 0.67039478];
};
_vehicle_2028 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrate_NoInteractive_", [1416.5767, 1879.0958, 3.7000101], [], 0, "CAN_COLLIDE"];
  _vehicle_2028 = _this;
  _this setDir 90.282372;
  _this setPos [1416.5767, 1879.0958, 3.7000101];
};
_vehicle_2029 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [1417.9838, 1877.5621, 3.7823796], [], 0, "CAN_COLLIDE"];
  _vehicle_2029 = _this;
  _this setDir 190.80182;
  _this setPos [1417.9838, 1877.5621, 3.7823796];
};
_vehicle_2030 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [1418.4291, 1879.5751, 3.7313116], [], 0, "CAN_COLLIDE"];
  _vehicle_2030 = _this;
  _this setDir 293.96133;
  _this setPos [1418.4291, 1879.5751, 3.7313116];
};
_vehicle_2031 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Small", [1416.254, 1881.2377, 3.6661851], [], 0, "CAN_COLLIDE"];
  _vehicle_2031 = _this;
  _this setDir 39.312996;
  _this setPos [1416.254, 1881.2377, 3.6661851];
};
_vehicle_2037 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled", [1415.4202, 1869.3568, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2037 = _this;
  _this setDir 25.945751;
  _this setPos [1415.4202, 1869.3568, 1.1444092e-005];
};
_vehicle_2041 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [1420.46, 1878.0873, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2041 = _this;
  _this setDir 251.04749;
  _this setPos [1420.46, 1878.0873, 3.8146973e-006];
};
_vehicle_2044 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [1418.834, 1879.7183, 6.8488441], [], 0, "CAN_COLLIDE"];
  _vehicle_2044 = _this;
  _this setDir 251.04749;
  _this setPos [1418.834, 1879.7183, 6.8488441];
};
_vehicle_2047 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tires_EP1", [1417.2819, 1870.1638, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2047 = _this;
  _this setDir -65.61937;
  _this setPos [1417.2819, 1870.1638, 1.9073486e-006];
};
_vehicle_2050 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [1423.4666, 1892.0682, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2050 = _this;
  _this setDir 34.241291;
  _this setPos [1423.4666, 1892.0682, 1.9073486e-005];
};
_vehicle_2053 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [1436.4303, 1883.2219, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2053 = _this;
  _this setDir 34.241291;
  _this setPos [1436.4303, 1883.2219, 3.8146973e-006];
};
_vehicle_2055 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [1449.3832, 1874.3643, 1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2055 = _this;
  _this setDir 34.241291;
  _this setPos [1449.3832, 1874.3643, 1.335144e-005];
};
_vehicle_2058 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [1462.3556, 1865.5049, 3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2058 = _this;
  _this setDir 34.241291;
  _this setPos [1462.3556, 1865.5049, 3.4332275e-005];
};
_vehicle_2060 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [1463.3496, 1854.5209, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2060 = _this;
  _this setDir -54.289173;
  _this setPos [1463.3496, 1854.5209, 7.6293945e-006];
};
_vehicle_2063 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [1454.0946, 1841.7319], [], 0, "CAN_COLLIDE"];
  _vehicle_2063 = _this;
  _this setDir -54.289173;
  _this setPos [1454.0946, 1841.7319];
};
_vehicle_2065 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [1404.4329, 1878.8219], [], 0, "CAN_COLLIDE"];
  _vehicle_2065 = _this;
  _this setDir -54.289173;
  _this setPos [1404.4329, 1878.8219];
};
_vehicle_2067 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [1399.8234, 1862.6858, 0.2877914], [], 0, "CAN_COLLIDE"];
  _vehicle_2067 = _this;
  _this setDir -102.81754;
  _this setPos [1399.8234, 1862.6858, 0.2877914];
};
_vehicle_2069 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [1408.8252, 1851.267, 2.4795532e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2069 = _this;
  _this setDir -155.02939;
  _this setPos [1408.8252, 1851.267, 2.4795532e-005];
};
_vehicle_2072 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [1441.4874, 1836.3716, 0.48268893], [], 0, "CAN_COLLIDE"];
  _vehicle_2072 = _this;
  _this setDir -170.64497;
  _this setPos [1441.4874, 1836.3716, 0.48268893];
};
_vehicle_2075 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [1432.345, 1837.9102], [], 0, "CAN_COLLIDE"];
  _vehicle_2075 = _this;
  _this setDir 203.81764;
  _this setPos [1432.345, 1837.9102];
};
_vehicle_2078 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Small", [1414.8906, 1881.8475, 3.6725056], [], 0, "CAN_COLLIDE"];
  _vehicle_2078 = _this;
  _this setDir 39.37991;
  _this setPos [1414.8906, 1881.8475, 3.6725056];
};
_vehicle_2083 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [1418.7622, 1879.6869, 3.7228701], [], 0, "CAN_COLLIDE"];
  _vehicle_2083 = _this;
  _this setDir 293.96133;
  _this setPos [1418.7622, 1879.6869, 3.7228701];
};
_vehicle_2087 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [1411.5374, 1874.7285, 3.6557221], [], 0, "CAN_COLLIDE"];
  _vehicle_2087 = _this;
  _this setDir 516.95844;
  _this setPos [1411.5374, 1874.7285, 3.6557221];
};
_vehicle_2090 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [1410.589, 1879.0768, 3.78824], [], 0, "CAN_COLLIDE"];
  _vehicle_2090 = _this;
  _this setDir 516.95844;
  _this setPos [1410.589, 1879.0768, 3.78824];
};
_vehicle_2093 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [1432.2969, 1837.9261, 0.73425108], [], 0, "CAN_COLLIDE"];
  _vehicle_2093 = _this;
  _this setDir 203.81764;
  _this setPos [1432.2969, 1837.9261, 0.73425108];
};
_vehicle_2097 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [1417.1051, 1847.0768, -0.011810635], [], 0, "CAN_COLLIDE"];
  _vehicle_2097 = _this;
  _this setDir 214.60371;
  _this setPos [1417.1051, 1847.0768, -0.011810635];
};
_vehicle_2098 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [1417.062, 1847.1002, 0.72230309], [], 0, "CAN_COLLIDE"];
  _vehicle_2098 = _this;
  _this setDir 214.60371;
  _this setPos [1417.062, 1847.1002, 0.72230309];
};
_vehicle_2102 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [1436.5024, 1875.1786, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2102 = _this;
  _this setDir -240.85016;
  _this setPos [1436.5024, 1875.1786, -1.9073486e-006];
};
_vehicle_2106 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [1444.3829, 1874.5616, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2106 = _this;
  _this setDir -56.514927;
  _this setPos [1444.3829, 1874.5616, 5.7220459e-006];
};
_vehicle_2107 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [1442.2166, 1871.2419, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2107 = _this;
  _this setDir -56.514927;
  _this setPos [1442.2166, 1871.2419, 3.8146973e-006];
};
_vehicle_2110 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_FuelStation_Feed", [1440.8308, 1875.5067], [], 0, "CAN_COLLIDE"];
  _vehicle_2110 = _this;
  _this setDir 32.693932;
  _this setPos [1440.8308, 1875.5067];
};
_vehicle_2112 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [1400.9781, 1872.1569], [], 0, "CAN_COLLIDE"];
  _vehicle_2112 = _this;
  _this setDir 251.04749;
  _this setPos [1400.9781, 1872.1569];
};
_vehicle_2114 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [1399.5502, 1869.777, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2114 = _this;
  _this setDir 251.04749;
  _this setPos [1399.5502, 1869.777, 1.1444092e-005];
};
_vehicle_2116 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [1418.8381, 1846.1143, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2116 = _this;
  _this setDir 251.04749;
  _this setPos [1418.8381, 1846.1143, -3.8146973e-006];
};
_vehicle_2118 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel", [1430.5078, 1838.8298, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2118 = _this;
  _this setDir 251.04749;
  _this setPos [1430.5078, 1838.8298, 3.8146973e-006];
};
_vehicle_2120 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_WellPump", [1417.8898, 1891.2881, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2120 = _this;
  _this setPos [1417.8898, 1891.2881, 1.1444092e-005];
};
_vehicle_2128 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [1458.3495, 1859.6941], [], 0, "CAN_COLLIDE"];
  _vehicle_2128 = _this;
  _this setPos [1458.3495, 1859.6941];
};
_vehicle_2129 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [1449.6677, 1868.5093, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2129 = _this;
  _this setDir -153.44644;
  _this setPos [1449.6677, 1868.5093, -3.8146973e-006];
};
_vehicle_2131 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [1433.2618, 1841.3625, -0.10776319], [], 0, "CAN_COLLIDE"];
  _vehicle_2131 = _this;
  _this setDir 19.553682;
  _this setPos [1433.2618, 1841.3625, -0.10776319];
};
_vehicle_2133 = objNull;
if (true) then
{
  _this = createVehicle ["BMP2Wreck", [1450.7728, 1846.9741, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2133 = _this;
  _this setDir 227.26933;
  _this setPos [1450.7728, 1846.9741, 7.6293945e-006];
};
_vehicle_2134 = objNull;
if (true) then
{
  _this = createVehicle ["BRDMWreck", [1443.0563, 1840.0968, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2134 = _this;
  _this setPos [1443.0563, 1840.0968, 1.9073486e-006];
};
_vehicle_2135 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [1446.8503, 1854.719, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2135 = _this;
  _this setDir 17.485962;
  _this setPos [1446.8503, 1854.719, -3.8146973e-006];
};
_vehicle_2137 = objNull;
if (true) then
{
  _this = createVehicle ["datsun02Wreck", [1402.2424, 1860.8081, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2137 = _this;
  _this setPos [1402.2424, 1860.8081, 7.6293945e-006];
};
_vehicle_2138 = objNull;
if (true) then
{
  _this = createVehicle ["Mi8Wreck", [1412.2063, 1855.2515, 0.042089157], [], 0, "CAN_COLLIDE"];
  _vehicle_2138 = _this;
  _this setDir -40.040787;
  _this setPos [1412.2063, 1855.2515, 0.042089157];
};
_vehicle_2139 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_campfire", [1416.6029, 1854.8009, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2139 = _this;
  _this setPos [1416.6029, 1854.8009, 3.8146973e-006];
};
_vehicle_2142 = objNull;
if (true) then
{
  _this = createVehicle ["SearchLight_US_EP1", [1417.5065, 1875.8804, 6.7763047], [], 0, "CAN_COLLIDE"];
  _vehicle_2142 = _this;
  _this setDir 129.03719;
  _this setPos [1417.5065, 1875.8804, 6.7763047];
};
_vehicle_2144 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSOld", [1431.0088, 1873.0778, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2144 = _this;
  _this setDir 186.88618;
  _this setPos [1431.0088, 1873.0778, -1.9073486e-006];
};
_vehicle_2146 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSOld", [1413.6178, 1869.7645, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2146 = _this;
  _this setDir 154.73013;
  _this setPos [1413.6178, 1869.7645, 7.6293945e-006];
};
_vehicle_2148 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSOld", [1443.1853, 1874.0367], [], 0, "CAN_COLLIDE"];
  _vehicle_2148 = _this;
  _this setDir 249.04579;
  _this setPos [1443.1853, 1874.0367];
};
_vehicle_2151 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSOld", [1417.2949, 1894.8398], [], 0, "CAN_COLLIDE"];
  _vehicle_2151 = _this;
  _this setDir 186.88618;
  _this setPos [1417.2949, 1894.8398];
};
_vehicle_2154 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSOld", [1419.0652, 1847.1969, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2154 = _this;
  _this setDir 95.505997;
  _this setPos [1419.0652, 1847.1969, 1.1444092e-005];
};
_vehicle_2157 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSOld", [1432.3477, 1838.4167, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2157 = _this;
  _this setDir 280.01447;
  _this setPos [1432.3477, 1838.4167, -5.7220459e-006];
};
_vehicle_2162 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_net3", [1447.4054, 1446.7288, 5.2452087e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2162 = _this;
  _this setDir -272.28799;
  _this setPos [1447.4054, 1446.7288, 5.2452087e-006];
};
_vehicle_2165 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [1447.9836, 1445.0305, -1.2874603e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2165 = _this;
  _this setPos [1447.9836, 1445.0305, -1.2874603e-005];
};
_vehicle_2169 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [1465.0101, 1446.3809, 1.8596649e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2169 = _this;
  _this setPos [1465.0101, 1446.3809, 1.8596649e-005];
};
_vehicle_2172 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [1461.3594, 1449.7534, 2.5796192], [], 0, "CAN_COLLIDE"];
  _vehicle_2172 = _this;
  _this setDir 278.92828;
  _this setPos [1461.3594, 1449.7534, 2.5796192];
};
_vehicle_2174 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_Wall_Lamp_New", [1463.2502, 1446.7902, -1.1214502], [], 0, "CAN_COLLIDE"];
  _vehicle_2174 = _this;
  _this setDir -82.855034;
  _this setPos [1463.2502, 1446.7902, -1.1214502];
};
_vehicle_2175 = objNull;
if (true) then
{
  _this = createVehicle ["Land_aif_billboard_chuckiemike", [1462.5596, 1447.3756, -0.40578467], [], 0, "CAN_COLLIDE"];
  _vehicle_2175 = _this;
  _this setDir 2.4191644;
  _this setPos [1462.5596, 1447.3756, -0.40578467];
};
_vehicle_2181 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndFnc_9", [1442.7644, 1454.6555, -5.2452087e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2181 = _this;
  _this setDir -3.972805;
  _this setPos [1442.7644, 1454.6555, -5.2452087e-006];
};
_vehicle_2183 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndFnc_9", [1438.059, 1450.0029, 2.3841858e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2183 = _this;
  _this setDir -93.543549;
  _this setPos [1438.059, 1450.0029, 2.3841858e-006];
};
_vehicle_2186 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [7613.3857, 2941.9275, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_2186 = _this;
  _this setPos [7613.3857, 2941.9275, 4.7683716e-007];
};
_vehicle_2189 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [7599.48, 2950.155, 0.30083156], [], 0, "CAN_COLLIDE"];
  _vehicle_2189 = _this;
  _this setDir 96.872032;
  _this setPos [7599.48, 2950.155, 0.30083156];
};
_vehicle_2192 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Small", [7601.0874, 2943.3394, 0.30796689], [], 0, "CAN_COLLIDE"];
  _vehicle_2192 = _this;
  _this setDir 94.747795;
  _this setPos [7601.0874, 2943.3394, 0.30796689];
};
_vehicle_2195 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_EP1", [7605.6162, 2948.0747, 3.2505059], [], 0, "CAN_COLLIDE"];
  _vehicle_2195 = _this;
  _this setDir -80.907913;
  _this setPos [7605.6162, 2948.0747, 3.2505059];
};
_vehicle_2198 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [7605.3042, 2929.4746, 0.13080733], [], 0, "CAN_COLLIDE"];
  _vehicle_2198 = _this;
  _this setDir 33.999241;
  _this setPos [7605.3042, 2929.4746, 0.13080733];
};
_vehicle_2201 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [7613.6416, 2927.0417, 0.11506207], [], 0, "CAN_COLLIDE"];
  _vehicle_2201 = _this;
  _this setDir 1.3308356;
  _this setPos [7613.6416, 2927.0417, 0.11506207];
};
_vehicle_2204 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [7622.5483, 2927.2639, 0.099191822], [], 0, "CAN_COLLIDE"];
  _vehicle_2204 = _this;
  _this setDir 1.3308356;
  _this setPos [7622.5483, 2927.2639, 0.099191822];
};
_vehicle_2207 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [7628.7715, 2932.0127, 1.9550323e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2207 = _this;
  _this setDir 114.24029;
  _this setPos [7628.7715, 2932.0127, 1.9550323e-005];
};
_vehicle_2209 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [7630.2891, 2940.582, 0.11670166], [], 0, "CAN_COLLIDE"];
  _vehicle_2209 = _this;
  _this setDir -85.371979;
  _this setPos [7630.2891, 2940.582, 0.11670166];
};
_vehicle_2212 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [7629.0615, 2949.1694, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2212 = _this;
  _this setDir -105.8373;
  _this setPos [7629.0615, 2949.1694, 1.4305115e-006];
};
_vehicle_2215 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [7605.7651, 2957.207, 0.13456851], [], 0, "CAN_COLLIDE"];
  _vehicle_2215 = _this;
  _this setDir -87.389374;
  _this setPos [7605.7651, 2957.207, 0.13456851];
};
_vehicle_2221 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeap", [7597.7681, 2939.6038, -0.11922796], [], 0, "CAN_COLLIDE"];
  _vehicle_2221 = _this;
  _this setPos [7597.7681, 2939.6038, -0.11922796];
};
_vehicle_2222 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tires_EP1", [7597.5396, 2941.7366, 2.9720187], [], 0, "CAN_COLLIDE"];
  _vehicle_2222 = _this;
  _this setPos [7597.5396, 2941.7366, 2.9720187];
};
_vehicle_2223 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [7599.4185, 2942.947, 2.9881811], [], 0, "CAN_COLLIDE"];
  _vehicle_2223 = _this;
  _this setDir 180.13707;
  _this setPos [7599.4185, 2942.947, 2.9881811];
};
_vehicle_2224 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [7604.3062, 2942.3726, 0.20218509], [], 0, "CAN_COLLIDE"];
  _vehicle_2224 = _this;
  _this setDir -113.58842;
  _this setPos [7604.3062, 2942.3726, 0.20218509];
};
_vehicle_2230 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeap", [7597.6924, 2938.0044, 1.3828278e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2230 = _this;
  _this setPos [7597.6924, 2938.0044, 1.3828278e-005];
};
_vehicle_2232 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeap", [7597.6724, 2936.5315, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2232 = _this;
  _this setPos [7597.6724, 2936.5315, -3.8146973e-006];
};
_vehicle_2235 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSOld", [7602.4814, 2945.3696, -0.63893664], [], 0, "CAN_COLLIDE"];
  _vehicle_2235 = _this;
  _this setDir 110.92061;
  _this setPos [7602.4814, 2945.3696, -0.63893664];
};
_vehicle_2238 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSOld", [7596.1094, 2946.572, 1.4781952e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2238 = _this;
  _this setDir 265.51782;
  _this setPos [7596.1094, 2946.572, 1.4781952e-005];
};
_vehicle_2240 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSOld", [7601.0229, 2952.009, 1.4305115e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2240 = _this;
  _this setDir -9.0633955;
  _this setPos [7601.0229, 2952.009, 1.4305115e-005];
};
_vehicle_2242 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSOld", [7627.2651, 2953.7676, -1.1920929e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2242 = _this;
  _this setDir -18.740017;
  _this setPos [7627.2651, 2953.7676, -1.1920929e-005];
};
_vehicle_2244 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSOld", [7605.6255, 2962.1257, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_2244 = _this;
  _this setDir 27.297689;
  _this setPos [7605.6255, 2962.1257, -4.7683716e-007];
};
_vehicle_2250 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_campfire", [7596.6455, 2938.9739, 5.9604645e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2250 = _this;
  _this setPos [7596.6455, 2938.9739, 5.9604645e-005];
};
_vehicle_2252 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_campfire", [7596.4175, 2937.3157, -1.1920929e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2252 = _this;
  _this setPos [7596.4175, 2937.3157, -1.1920929e-005];
};
_vehicle_2254 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_bouda_plech", [7596.4185, 2930.0681, 0.041164353], [], 0, "CAN_COLLIDE"];
  _vehicle_2254 = _this;
  _this setDir 52.025433;
  _this setPos [7596.4185, 2930.0681, 0.041164353];
};
_vehicle_2256 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_PowGen_Big", [7603.0313, 2957.6462, 1.001358e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2256 = _this;
  _this setDir 178.06877;
  _this setPos [7603.0313, 2957.6462, 1.001358e-005];
};
_vehicle_2257 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_vez", [7605.0649, 2959.8057, 0.82556987], [], 0, "CAN_COLLIDE"];
  _vehicle_2257 = _this;
  _this setPos [7605.0649, 2959.8057, 0.82556987];
};
_vehicle_2285 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [7008.8115, 7074.9766, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_2285 = _this;
  _this setPos [7008.8115, 7074.9766, 0];
};
_vehicle_2287 = objNull;
if (true) then
{
  _this = createVehicle ["UH1Wreck", [7035.2314, 7116.1597, -0.2464506], [], 0, "CAN_COLLIDE"];
  _vehicle_2287 = _this;
  _this setDir 288.13364;
  _this setPos [7035.2314, 7116.1597, -0.2464506];
};
_vehicle_2288 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [7007.6216, 7115.4375, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2288 = _this;
  _this setDir 44.2841;
  _this setPos [7007.6216, 7115.4375, -1.9073486e-006];
};
_vehicle_2289 = objNull;
if (true) then
{
  _this = createVehicle ["Mi8Wreck", [7012.605, 7137.9414, -6.0081482e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2289 = _this;
  _this setDir -65.368294;
  _this setPos [7012.605, 7137.9414, -6.0081482e-005];
};
_unit_174 = objNull;
if (true) then
{
  _this = createAgent ["Pilot", [2963.8154, 6763.5591, 0.012349211], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_174 = _this;
  _this setDir -3.4812794;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_2290 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_dum_mesto_in", [2963.5518, 6744.5342, -0.040442824], [], 0, "CAN_COLLIDE"];
  _vehicle_2290 = _this;
  _this setDir -2.2636251;
  _this setPos [2963.5518, 6744.5342, -0.040442824];
};
_vehicle_2293 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [2948.0801, 6746.8765, -0.11771166], [], 0, "CAN_COLLIDE"];
  _vehicle_2293 = _this;
  _this setDir 90.880554;
  _this setPos [2948.0801, 6746.8765, -0.11771166];
};
_vehicle_2294 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [2948.2058, 6750.8696, -0.10856161], [], 0, "CAN_COLLIDE"];
  _vehicle_2294 = _this;
  _this setDir 90.880554;
  _this setPos [2948.2058, 6750.8696, -0.10856161];
};
_vehicle_2299 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [2948.281, 6754.9722, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2299 = _this;
  _this setDir 90.880554;
  _this setPos [2948.281, 6754.9722, -1.4305115e-006];
};
_vehicle_2300 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [2948.3879, 6758.9722, 0.0091485977], [], 0, "CAN_COLLIDE"];
  _vehicle_2300 = _this;
  _this setDir 90.880554;
  _this setPos [2948.3879, 6758.9722, 0.0091485977];
};
_vehicle_2309 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [2968.6262, 6750.9351], [], 0, "CAN_COLLIDE"];
  _vehicle_2309 = _this;
  _this setDir -88.31266;
  _this setPos [2968.6262, 6750.9351];
};
_vehicle_2310 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [2968.7888, 6754.9321, 0.013959885], [], 0, "CAN_COLLIDE"];
  _vehicle_2310 = _this;
  _this setDir -88.31266;
  _this setPos [2968.7888, 6754.9321, 0.013959885];
};
_vehicle_2311 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [2968.5493, 6746.8716, 0.11905193], [], 0, "CAN_COLLIDE"];
  _vehicle_2311 = _this;
  _this setDir -88.31266;
  _this setPos [2968.5493, 6746.8716, 0.11905193];
};
_vehicle_2312 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [2968.3655, 6742.8784, 0.10076237], [], 0, "CAN_COLLIDE"];
  _vehicle_2312 = _this;
  _this setDir -88.31266;
  _this setPos [2968.3655, 6742.8784, 0.10076237];
};
_vehicle_2313 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [2968.2336, 6738.7803, 0.19293785], [], 0, "CAN_COLLIDE"];
  _vehicle_2313 = _this;
  _this setDir -88.31266;
  _this setPos [2968.2336, 6738.7803, 0.19293785];
};
_vehicle_2314 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [2968.0706, 6734.7827, 0.17877769], [], 0, "CAN_COLLIDE"];
  _vehicle_2314 = _this;
  _this setDir -88.31266;
  _this setPos [2968.0706, 6734.7827, 0.17877769];
};
_vehicle_2325 = objNull;
if (true) then
{
  _this = createVehicle ["Land_covering_hut_EP1", [2960.0747, 6742.853, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_2325 = _this;
  _this setDir 180.68559;
  _this setPos [2960.0747, 6742.853, 4.7683716e-007];
};
_vehicle_2333 = objNull;
if (true) then
{
  _this = createVehicle ["LADAWreck", [2950.9377, 6744.6899, -0.092675291], [], 0, "CAN_COLLIDE"];
  _vehicle_2333 = _this;
  _this setDir 1.1348513;
  _this setPos [2950.9377, 6744.6899, -0.092675291];
};
_vehicle_2334 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [2936.1172, 6756.7886, 8.1062317e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2334 = _this;
  _this setDir 88.458092;
  _this setPos [2936.1172, 6756.7886, 8.1062317e-006];
};
_vehicle_2335 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big", [2945.2522, 6750.6045, -1.0967255e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2335 = _this;
  _this setDir -1.9815443;
  _this setPos [2945.2522, 6750.6045, -1.0967255e-005];
};
_vehicle_2336 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_FuelStation_Feed", [2944.8535, 6743.3535, -0.050487839], [], 0, "CAN_COLLIDE"];
  _vehicle_2336 = _this;
  _this setDir 89.656464;
  _this setPos [2944.8535, 6743.3535, -0.050487839];
};
_vehicle_2337 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall", [2946.4607, 6743.4009, -0.050487839], [], 0, "CAN_COLLIDE"];
  _vehicle_2337 = _this;
  _this setDir 270.21948;
  _this setPos [2946.4607, 6743.4009, -0.050487839];
};
_vehicle_2338 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [2951.731, 6728.5029, -0.9202714], [], 0, "CAN_COLLIDE"];
  _vehicle_2338 = _this;
  _this setDir 210.05495;
  _this setPos [2951.731, 6728.5029, -0.9202714];
};
_vehicle_2358 = objNull;
if (true) then
{
  _this = createVehicle ["Mi8Wreck", [2974.3311, 6794.9995, 0.11704963], [], 0, "CAN_COLLIDE"];
  _vehicle_2358 = _this;
  _this setDir -41.83931;
  _this setPos [2974.3311, 6794.9995, 0.11704963];
};
_vehicle_2359 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSOld", [2947.9736, 6742.5649, 0.14067698], [], 0, "CAN_COLLIDE"];
  _vehicle_2359 = _this;
  _this setDir 285.56906;
  _this setPos [2947.9736, 6742.5649, 0.14067698];
};
_vehicle_2360 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [2972.3301, 6733.5474, -0.0036533363], [], 0, "CAN_COLLIDE"];
  _vehicle_2360 = _this;
  _this setDir 17.485962;
  _this setPos [2972.3301, 6733.5474, -0.0036533363];
};
_vehicle_2362 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta1", [2962.8557, 6741.1299, 0.14067888], [], 0, "CAN_COLLIDE"];
  _vehicle_2362 = _this;
  _this setPos [2962.8557, 6741.1299, 0.14067888];
};
_vehicle_2363 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_net2", [2951.0703, 6756.6533, 0.14067507], [], 0, "CAN_COLLIDE"];
  _vehicle_2363 = _this;
  _this setDir 107.18552;
  _this setPos [2951.0703, 6756.6533, 0.14067507];
};
_vehicle_2364 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [2965.355, 6742.207, 0.0094354348], [], 0, "CAN_COLLIDE"];
  _vehicle_2364 = _this;
  _this setDir -60.991718;
  _this setPos [2965.355, 6742.207, 0.0094354348];
};
_vehicle_2365 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [2962.4214, 6734.687, 0.23681842], [], 0, "CAN_COLLIDE"];
  _vehicle_2365 = _this;
  _this setDir 516.95844;
  _this setPos [2962.4214, 6734.687, 0.23681842];
};
_vehicle_2366 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [2960.5693, 6734.9697, 0.096901186], [], 0, "CAN_COLLIDE"];
  _vehicle_2366 = _this;
  _this setDir 190.80182;
  _this setPos [2960.5693, 6734.9697, 0.096901186];
};
_vehicle_2367 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrate_NoInteractive_", [2961.2141, 6734.436, 0.014532001], [], 0, "CAN_COLLIDE"];
  _vehicle_2367 = _this;
  _this setDir 90.282372;
  _this setPos [2961.2141, 6734.436, 0.014532001];
};
_vehicle_2368 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [2963.3276, 6736.0288, 0.04583358], [], 0, "CAN_COLLIDE"];
  _vehicle_2368 = _this;
  _this setDir 293.96133;
  _this setPos [2963.3276, 6736.0288, 0.04583358];
};
_vehicle_2369 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Backpackheap_EP1", [2964.4993, 6740.3569, 0.12659457], [], 0, "CAN_COLLIDE"];
  _vehicle_2369 = _this;
  _this setDir 164.68286;
  _this setPos [2964.4993, 6740.3569, 0.12659457];
};
_vehicle_2370 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Small", [2961.5317, 6736.4746, -0.012971991], [], 0, "CAN_COLLIDE"];
  _vehicle_2370 = _this;
  _this setDir 39.37991;
  _this setPos [2961.5317, 6736.4746, -0.012971991];
};
_vehicle_2385 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [2936.5359, 6741.0078, -2.6226044e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2385 = _this;
  _this setDir 88.458092;
  _this setPos [2936.5359, 6741.0078, -2.6226044e-005];
};
_vehicle_2388 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [2956.8533, 6780.2388], [], 0, "CAN_COLLIDE"];
  _vehicle_2388 = _this;
  _this setDir 210.05495;
  _this setPos [2956.8533, 6780.2388];
};
_vehicle_2391 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [2959.9143, 6742.7769, 3.4809113e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2391 = _this;
  _this setDir 0.44062436;
  _this setPos [2959.9143, 6742.7769, 3.4809113e-005];
};
_vehicle_2394 = objNull;
if (true) then
{
  _this = createVehicle ["Mi8Wreck", [2933.0134, 6775.8223, 0.45664611], [], 0, "CAN_COLLIDE"];
  _vehicle_2394 = _this;
  _this setDir -1.9122363;
  _this setPos [2933.0134, 6775.8223, 0.45664611];
};
_vehicle_2397 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [2935.9419, 6772.5942, 3.1471252e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2397 = _this;
  _this setDir 88.458092;
  _this setPos [2935.9419, 6772.5942, 3.1471252e-005];
};
_vehicle_2401 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [2942.668, 6797.4507, 5.0544739e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2401 = _this;
  _this setDir 177.84012;
  _this setPos [2942.668, 6797.4507, 5.0544739e-005];
};
_vehicle_2404 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [2959.0925, 6798.7617, 1.001358e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2404 = _this;
  _this setDir 177.84012;
  _this setPos [2959.0925, 6798.7617, 1.001358e-005];
};
_vehicle_2407 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [2935.698, 6788.4595, -3.1471252e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2407 = _this;
  _this setDir 89.027153;
  _this setPos [2935.698, 6788.4595, -3.1471252e-005];
};
_vehicle_2410 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [2936.9648, 6725.2979, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2410 = _this;
  _this setDir 88.458092;
  _this setPos [2936.9648, 6725.2979, -1.4305115e-006];
};
_vehicle_2416 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [2976.2988, 6764.4551, 0.40282363], [], 0, "CAN_COLLIDE"];
  _vehicle_2416 = _this;
  _this setDir 89.808365;
  _this setPos [2976.2988, 6764.4551, 0.40282363];
};
_vehicle_2417 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [2976.0535, 6780.3774, 0.038321018], [], 0, "CAN_COLLIDE"];
  _vehicle_2417 = _this;
  _this setDir 89.906609;
  _this setPos [2976.0535, 6780.3774, 0.038321018];
};
_vehicle_2418 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [2976.4114, 6748.8301, 0.34401065], [], 0, "CAN_COLLIDE"];
  _vehicle_2418 = _this;
  _this setDir 89.906609;
  _this setPos [2976.4114, 6748.8301, 0.34401065];
};
_vehicle_2425 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [2976.3118, 6733.0288, 0.45879346], [], 0, "CAN_COLLIDE"];
  _vehicle_2425 = _this;
  _this setDir 89.906609;
  _this setPos [2976.3118, 6733.0288, 0.45879346];
};
_vehicle_2443 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Cargo2C", [2950.5757, 6750.2363, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_2443 = _this;
  _this setDir -1.3958843;
  _this setPos [2950.5757, 6750.2363, 4.7683716e-007];
};
_vehicle_2444 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_repair_center", [2964.3774, 6763.124, 0.17797455], [], 0, "CAN_COLLIDE"];
  _vehicle_2444 = _this;
  _this setDir -180.66577;
  _this setPos [2964.3774, 6763.124, 0.17797455];
};
_vehicle_2446 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [2963.7747, 6764.7603, 1.2874603e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2446 = _this;
  _this setDir 0.23219;
  _this setPos [2963.7747, 6764.7603, 1.2874603e-005];
};
_vehicle_2449 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [2941.1499, 6755.5981, 4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2449 = _this;
  _this setDir 275.04425;
  _this setPos [2941.1499, 6755.5981, 4.2915344e-006];
};
_vehicle_2451 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_0_2000", [2950.3145, 6723.7129], [], 0, "CAN_COLLIDE"];
  _vehicle_2451 = _this;
  _this setDir 194.62064;
  _this setPos [2950.3145, 6723.7129];
};
_unit_178 = objNull;
if (true) then
{
  _this = createAgent ["RU_Doctor", [2959.9692, 6745.2012, 0.037284374], [], 0, "CAN_COLLIDE"];
   {_this removeMagazine _x;} count  magazines _this;
  removeAllWeapons _this;
  _this switchMove "";
  _unit_178 = _this;
  _this setDir 359.11807;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
 _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
};
_vehicle_2457 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [3402.2266, 8249.209, -0.091668628], [], 0, "CAN_COLLIDE"];
  _vehicle_2457 = _this;
  _this setDir -93.303604;
  _this setPos [3402.2266, 8249.209, -0.091668628];
};
_vehicle_2461 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [3402.3179, 8246.2393, -0.18551195], [], 0, "CAN_COLLIDE"];
  _vehicle_2461 = _this;
  _this setDir -92.841499;
  _this setPos [3402.3179, 8246.2393, -0.18551195];
};
_vehicle_2462 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [3402.3628, 8243.2598, -0.12365626], [], 0, "CAN_COLLIDE"];
  _vehicle_2462 = _this;
  _this setDir -91.478241;
  _this setPos [3402.3628, 8243.2598, -0.12365626];
};
_vehicle_2466 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled", [3411.1147, 8241.1025, -4.196167e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2466 = _this;
  _this setDir 7.7950034;
  _this setPos [3411.1147, 8241.1025, -4.196167e-005];
};
_vehicle_2468 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled", [3411.0027, 8239.1904, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2468 = _this;
  _this setDir 7.7950034;
  _this setPos [3411.0027, 8239.1904, -7.6293945e-006];
};
_vehicle_2470 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled", [3414.9338, 8242.5527, -3.2424927e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2470 = _this;
  _this setDir 7.7950034;
  _this setPos [3414.9338, 8242.5527, -3.2424927e-005];
};
_vehicle_2472 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled", [3414.6863, 8240.71, -1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2472 = _this;
  _this setDir 7.7950034;
  _this setPos [3414.6863, 8240.71, -1.9073486e-005];
};
_vehicle_2474 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled", [3414.363, 8238.627, -1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2474 = _this;
  _this setDir 7.7950034;
  _this setPos [3414.363, 8238.627, -1.335144e-005];
};
_vehicle_2476 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHVOld", [3409.175, 8250.0986, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2476 = _this;
  _this setDir -94.482376;
  _this setPos [3409.175, 8250.0986, 1.5258789e-005];
};
_vehicle_2478 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [1426.9622, 1830.2062, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2478 = _this;
  _this setDir -151.13525;
  _this setPos [1426.9622, 1830.2062, 7.6293945e-006];
};
_vehicle_2481 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [1413.3593, 1837.9073, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2481 = _this;
  _this setDir -151.30486;
  _this setPos [1413.3593, 1837.9073, 5.7220459e-006];
};
_vehicle_2485 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_FuelStation_Feed", [7598.9443, 2955.6838, -0.040597759], [], 0, "CAN_COLLIDE"];
  _vehicle_2485 = _this;
  _this setDir 179.66948;
  _this setPos [7598.9443, 2955.6838, -0.040597759];
};
_vehicle_2486 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall", [7598.998, 2954.0715, -0.040597759], [], 0, "CAN_COLLIDE"];
  _vehicle_2486 = _this;
  _this setDir 360.23254;
  _this setPos [7598.998, 2954.0715, -0.040597759];
};
_vehicle_2491 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_FuelStation_Feed", [7000.5869, 7110.5615, 0.014089707], [], 0, "CAN_COLLIDE"];
  _vehicle_2491 = _this;
  _this setDir 44.999008;
  _this setPos [7000.5869, 7110.5615, 0.014089707];
};
_vehicle_2492 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall", [7001.6973, 7111.7314, -0.00073515915], [], 0, "CAN_COLLIDE"];
  _vehicle_2492 = _this;
  _this setDir 225.56198;
  _this setPos [7001.6973, 7111.7314, -0.00073515915];
};
_vehicle_2495 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_A_FuelStation_Feed", [4170.5552, 1450.9749], [], 0, "CAN_COLLIDE"];
  _vehicle_2495 = _this;
  _this setDir 267.64453;
  _this setPos [4170.5552, 1450.9749];
};
_vehicle_2496 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall", [4168.9346, 1450.8744], [], 0, "CAN_COLLIDE"];
  _vehicle_2496 = _this;
  _this setDir 448.20755;
  _this setPos [4168.9346, 1450.8744];
};
_vehicle_2500 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big", [4164.2632, 1455.1919], [], 0, "CAN_COLLIDE"];
  _vehicle_2500 = _this;
  _this setDir -90.815559;
  _this setPos [4164.2632, 1455.1919];
};
_vehicle_2502 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big", [6995.4585, 7116.0996], [], 0, "CAN_COLLIDE"];
  _vehicle_2502 = _this;
  _this setDir -58.995243;
  _this setPos [6995.4585, 7116.0996];
};
_vehicle_2507 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSOld", [2965.2349, 6743.9258, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_2507 = _this;
  _this setDir 238.41496;
  _this setPos [2965.2349, 6743.9258, 4.7683716e-007];
};
_vehicle_2510 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSOld", [2965.9736, 6766.6675, -1.9371296], [], 0, "CAN_COLLIDE"];
  _vehicle_2510 = _this;
  _this setDir 269.1496;
  _this setPos [2965.9736, 6766.6675, -1.9371296];
};
processInitCommands;