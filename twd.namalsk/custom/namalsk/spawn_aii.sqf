/*
 **  AII MODULE - Nightstalkers: Shadow of Namalsk
 *   ..created by Sumrak, ©2012
 *   http://www.nightstalkers.cz
 *   sumrak<at>nightstalkers.cz
*/


if (worldName == "namalsk") then {
  /*
   * AII module light system
   * control variable ns_aii_l_status(0 = off, 1 = on)  
   * intensity variable ns_aii_l_intensity (RECOMMENDED VALUE = 0.05, 0 = off (dark), 1 = fully on (not recommended))
   * 
   * AII module SFX system
   * parallel procedure to the light system
   * checking predefined position, enabling / disabling environment sounds
   * while IN playing some ambient sound so it is not that silent
  */
	if (!isDedicated) then {
		diag_log "[NAC AII CLIENT] :: AII client INIT.";
	/* AII module SFX system */
		[] spawn {
			while {true} do {
				if ((player distance [4977.15,6624.89,0.74293]) < 41) then {
					enableEnvironment false;
					//hintSilent format ["IN %1", player distance [4977.15,6624.89,0.74293]];
					playSound "ns_fx_aii_underground";
					sleep 4;
				} else {
					enableEnvironment true;
					//hintSilent format ["OUT %1", player distance [4977.15,6624.89,0.74293]];
				};
			};
		};

		/* AII module light system */
		if (isNil("ns_aii_l_status")) then { ns_aii_l_status = 0; };
		if (isNil("ns_aii_l_intensity")) then { ns_aii_l_intensity = 0.05; };
		[] spawn {
			while {true} do {
				if (ns_aii_l_status == 1) then {
					// create lights
					// PC room  
					_light = "#LightPoint" createVehicleLocal [4978.8086,6630.834,0];
					_light setLightBrightness ns_aii_l_intensity;
					_light setLightAmbient [0.5, 0.5, 0.5];
					_light setLightColor [1.0, 1.0, 1.0];
					_light setPos [4978.8086,6630.834,27.8]; 
					
					// Between
					_light2 = "#LightPoint" createVehicleLocal [4983.9385,6614.6343,0]; 
					_light2 setLightBrightness ns_aii_l_intensity;
					_light2 setLightAmbient [0.5, 0.5, 0.5];
					_light2 setLightColor [1.0, 1.0, 1.0];
					_light2 setPos [4983.9385,6614.6343,27.5]; 
					
					// Room II
					_light3 = "#LightPoint" createVehicleLocal [4975.1152,6606.9126,0]; 
					_light3 setLightBrightness ns_aii_l_intensity;
					_light3 setLightAmbient [0.5, 0.5, 0.5];
					_light3 setLightColor [1.0, 1.0, 1.0];
					_light3 setPos [4975.1152,6606.9126,29.5];
	
					// keep the light intensity
					while {ns_aii_l_status == 1} do {
						_light3 setLightBrightness ns_aii_l_intensity;
						_light2 setLightBrightness ns_aii_l_intensity;
						_light setLightBrightness ns_aii_l_intensity;
						sleep 0.5;
					}; 
	
					// delete lights
					deleteVehicle _light;
					deleteVehicle _light2;
					deleteVehicle _light3;
				};
			};
		};
	};

	// ↑ client part
	// -------------
	// ↓ server part

	if (isServer) then {
		diag_log "[NAC AII SERVER] :: AII Server INIT.";
		// first floor
	
		_object = "ns_zarivka" createVehicle [4983.9385,6614.6343,0]; 
		_object setPos [4983.9385,6614.6343,27.40]; 
		_object setVectorUp [0,0,1];
		
		_object = "ns_zarivka" createVehicle [4986.8208,6619.5962,0]; 
		_object setPos [4986.8208,6619.5962,27.4]; 
		_object setVectorUp [0,0,1];
		
		_object = "ns_zarivka" createVehicle [4990.2695,6616.0361,0]; 
		_object setPos [4990.2695,6616.0361,27.4]; 
		_object setVectorUp [0,0,1];
		
		_object = "ns_zarivka" createVehicle [4978.6118,6626.6675,0]; 
		_object setPos [4978.6118,6626.6675,27.4]; 
		_object setVectorUp [0,0,1];
		
		_object = "ns_zarivka" createVehicle [4978.8086,6630.834,0]; 
		_object setPos [4978.8086,6630.834,27.4]; 
		_object setVectorUp [0,0,1];
		
		_object = "ns_zarivka" createVehicle [4979.1362,6635.5249,0]; 
		_object setPos [4979.1362,6635.5249,27.4]; 
		_object setVectorUp [0,0,1];
		
		_object = "FoldChair" createVehicle [4974.1978,6607.0635,0]; 
		_object setPos [4974.1978,6607.0635,25];
		_object setVectorUp [0,0,1];
		_object setDir 93;
		
		_object = "ns_zarivka" createVehicle [4975.1152,6606.9126,0]; 
		_object setPos [4975.1152,6606.9126,27.40]; 
		_object setVectorUp [0,0,1];
		
		_object = "Desk" createVehicle [4973.9487,6610.4839,0]; 
		_object setPos [4973.9487,6610.4839,23.4];
		_object setVectorUp [0,0,1];
		_object setDir 180;
		
		_object = "Desk" createVehicle [4973.9219,6603.0215,0]; 
		_object setPos [4973.9219,6603.0215,23.6];
		_object setVectorUp [0,0,1];
		
		_object = "WoodChair" createVehicle [4973.8438,6603.9565,0]; 
		_object setPos [4973.8438,6603.9565,23.6];
		_object setVectorUp [0,0,1];
		
		_object = "SatPhone" createVehicle [4973.9072,6603.0386,0]; 
		_object setPos [4973.9072,6603.0386,26.1];
		_object setVectorUp [0,0,1];
		_object setDir 180;
		
		_object = "Notebook" createVehicle [4973.9404,6610.4087,0]; 
		_object setPos [4973.9404,6610.4087,24.6];
		_object setVectorUp [0,0,1];
		_object setDir 192;
		
		_object = "EvMoscow" createVehicle [4974.6909,6610.3784,0]; 
		_object setPos [4974.6909,6610.3784,24.35];
		_object setVectorUp [0,0,1];
		
		_object = "FoldChair" createVehicle [4973.9233,6609.4385,0]; 
		_object setPos [4973.9233,6609.4385,23.6];
		_object setVectorUp [0,0,1];
		_object setDir 172;
		
		_object = "Misc_cargo_cont_tiny" createVehicle [4986.6396,6603.7856,0]; 
		_object setPos [4986.6396,6603.7856,23.5];
		_object setVectorUp [0,0,1];
		_object setDir 175;
		
		_object = "Misc_cargo_cont_tiny" createVehicle [4986.5288,6606.1143,0]; 
		_object setPos [4986.5288,6606.1143,23.5];
		_object setVectorUp [0,0,1];
		_object setDir 88;
		
		_object = "FoldTable" createVehicle [4984.2925,6606.5459,0]; 
		_object setPosASL [4984.21,6605.85,28.2215];
		_object setVectorUp [0,0,1];
		_object setDir 85;
		
		_object = "FoldChair" createVehicle [4984.2954,6604.1353,0]; 
		_object setPos [4984.2954,6604.1353,23.6];
		_object setVectorUp [0,0,1];
		_object setDir 181;
		
		_object = "Misc_cargo_cont_net1" createVehicle [4981.3809,6616.6499,0]; 
		_object setPos [4981.3809,6616.6499,23.45];
		_object setVectorUp [0,0,1];
		_object setDir 88;
		
		_object = "Misc_cargo_cont_net1" createVehicle [4981.187,6612.5479,0]; 
		_object setPos [4981.187,6612.5479,23.45];
		_object setVectorUp [0,0,1];
		
		_object = "PowerGenerator" createVehicle [4978.7734,6617.6978,0]; 
		_object setPosASL [4977.99,6617.47,28.2215];
		_object setVectorUp [0,0,1];
		_object setDir 92;
		
		_object = "FoldTable" createVehicle [4973.6689,6614.916,0]; 
		_object setPos [4973.6689,6614.916,24];
		_object setVectorUp [0,0,1];
		_object setDir 269;
		
		_object = "Barrels" createVehicle [4972.4341,6616.8174,0]; 
		_object setPos [4973.4341,6616.8174,26];
		_object setVectorUp [0,0,1];
		_object setDir 92;
		
		_object = "Barrels" createVehicle [4977.7178,6612.7295,0]; 
		_object setPos [4977.7178,6612.7295,25.5];
		_object setVectorUp [0,0,1];
		_object setDir 92;
		
		_object = "Fuel_can" createVehicle [4973.0981,6613.0313,0]; 
		_object setPos [4973.0981,6613.0313,26];
		_object setVectorUp [0,0,1];
		_object setDir 92;
		
		_object = "Fuel_can" createVehicle [4974.1353,6613.1196,0]; 
		_object setPos [4974.1353,6613.1196,26];
		_object setVectorUp [0,0,1];
		_object setDir 69;
		
		_object = "Fuel_can" createVehicle [4973.6313,6612.6899,0]; 
		_object setPos [4973.6313,6612.6899,26];
		_object setVectorUp [0,0,1];
		_object setDir 69;
		
		_object = "Paleta1" createVehicle [4970.9722,6612.9463,0]; 
		_object setPos [4970.9722,6612.9463,23.5];
		_object setVectorUp [0,0,1];
		_object setDir 92;
		
		_object = "Paleta1" createVehicle [4971.0601,6614.7827,0]; 
		_object setPos [4971.0601,6614.7827,23.5];
		_object setVectorUp [0,0,1];
		_object setDir 92;
		
		_object = "Fuel_can" createVehicle [4971.5698,6614.4155,0]; 
		_object setPos [4971.5698,6614.4155,23.7];
		_object setVectorUp [0,0,1];
		_object setDir 165;
		
		_object = "Fuel_can" createVehicle [4971.9536,6613.4478,0]; 
		_object setPos [4971.9536,6613.4478,23.7];
		_object setVectorUp [0,0,1];
		
		_object = "Fuel_can" createVehicle [4971.3984,6613.8062,0]; 
		_object setPos [4971.3984,6613.8062,23.7];
		_object setVectorUp [0,0,1]; 
		
		_object = "Paleta2" createVehicle [4971.5947,6617.6802,0]; 
		_object setPosASL [4971.95,6617.15,28.2215];
		_object setVectorUp [0,0,1];
		_object setDir 181;
	
		_object = "Paleta2" createVehicle [4964.46,6616.27,0]; 
		_object setPosASL [4964.46,6616.27,28.2215];
		_object setVectorUp [0,0,1];
		_object setDir 181;
		
		_object = "Land_Barrel_water" createVehicle [4970.8335,6612.5913,0]; 
		_object setPos [4970.8035,6612.0013,23.5];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_water" createVehicle [4971.627,6612.521,0]; 
		_object setPos [4971.627,6612.0021,23.5];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_sand" createVehicle [4972.519,6611.8691,0]; 
		_object setPos [4972.519,6611.8691,23.6];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_sand" createVehicle [4970.8052,6613.9219,0]; 
		_object setPos [4970.8052,6613.9219,23.6];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_sand" createVehicle [4971.2021,6615.522,0]; 
		_object setPos [4971.2021,6615.522,23.6];
		_object setVectorUp [0,0,1];
		
		_object = "Barrel4" createVehicle [4971.5132,6614.8403,0]; 
		_object setPos [4971.5132,6614.8403,23.7];
		_object setVectorUp [0,0,1];
		
		_object = "Paleta2" createVehicle [4969.7085,6623.7866,0]; 
		_object setPosASL [4969.77,6623.07,28.2215];
		_object setVectorUp [0,0,1];
		_object setDir 0;
		/*
		_object = "Land_Barrel_sand" createVehicle [4971.2246,6622.2114,0]; 
		_object setPos [4971.2246,6622.2114,20.2];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_sand" createVehicle [4971.4033,6623.0244,0]; 
		_object setPos [4971.4033,6623.0244,20.2];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_sand" createVehicle [4971.0723,6624.811,0]; 
		_object setPos [4971.0723,6624.811,20.2];
		_object setVectorUp [0,0,1];*/
		
		_object = "Misc_cargo_cont_net1" createVehicle [4969.7671,6620.5503,0]; 
		_object setPos [4969.7671,6620.5503,23.45];
		_object setVectorUp [0,0,1];
		_object setDir 265;
		
		_object = "Misc_cargo_cont_net1" createVehicle [4994.9761,6621.8188,0]; 
		_object setPos [4994.9761,6621.8188,23.45];
		_object setVectorUp [0,0,1];
		_object setDir 88;
		
		_object = "Misc_cargo_cont_net1" createVehicle [4992.0557,6618.3994,0]; 
		_object setPos [4992.0557,6618.3994,23.45];
		_object setVectorUp [0,0,1];
		_object setDir 88;
		
		_object = "Misc_cargo_cont_net1" createVehicle [4992.0996,6621.8604,0]; 
		_object setPos [4992.0996,6621.8604,23.45];
		_object setVectorUp [0,0,1];
		_object setDir 88;
		
		/*_object = "SpecialWeaponsBox" createVehicle [4988.7617,6622.0557,0]; 
		_object setPos [4988.7617,6622.0557,23.45];
		_object setVectorUp [0,0,1];
		_object setDir 173;*/
		
		_object = "ns_kompiky" createVehicle [4973.3091,6632.8042,0]; 
		_object setPos [4973.3091,6632.8042,23.6];
		_object setVectorUp [0,0,1];
		_object setDir -88;
		
		_object = "ns_kompiky" createVehicle [4976.229,6632.6499,0]; 
		_object setPos [4976.229,6632.6499,23.6];
		_object setVectorUp [0,0,1];
		_object setDir -267;
		
		_object = "ns_kompiky" createVehicle [4977.6191,6632.4976,0]; 
		_object setPos [4977.6191,6632.4976,23.6];
		_object setVectorUp [0,0,1];
		_object setDir -446;
		
		_object = "ns_servery" createVehicle [4972.8516,6623.1182,0]; 
		_object setPosASL [4974.46,6622.96,28.2215];
		_object setVectorUp [0,0,1];
		_object setDir -447;
		
		_object = "ns_servery" createVehicle [4974.585,6622.9653,0]; 
		_object setPosASL [4975.82,6622.8,28.2215];
		_object setVectorUp [0,0,1];
		_object setDir -447;
		
		_object = "ns_servery" createVehicle [4972.875,6627.0859,0]; 
		_object setPosASL [4972.88,6626.27,28.2215];
		_object setVectorUp [0,0,1];
		
		_object = "Fuel_can" createVehicle [4972.9258,6627.8628,0]; 
		_object setPos [4972.9258,6627.8628,23.6];
		_object setVectorUp [0,0,1];
		/*
		_object = "Paleta2" createVehicle [4973.6147,6624.332,0]; 
		_object setPos [4973.6147,6624.332,25.1];
		_object setVectorUp [0,0,1];
		_object setDir -17; */
		
		_object = "Misc_cargo_cont_tiny" createVehicle [4981.8286,6637.7822,0]; 
		_object setPos [4981.8286,6637.7822,23.45];
		_object setVectorUp [0,0,1];
		_object setDir 175;
		
		_object = "Misc_cargo_cont_tiny" createVehicle [4981.5898,6629.4341,0]; 
		_object setPos [4981.5898,6629.4341,23.50];
		_object setVectorUp [0,0,1];
		_object setDir 175;
		
		_object = "Notebook" createVehicle [4981.0991,6629.2246,0]; 
		_object setPos [4981.0991,6629.2246,25.0];
		_object setVectorUp [0,0,1];
		_object setDir -103;
		
		_object = "WoodChair" createVehicle [4973.5703,6628.9707,0]; 
		_object setPos [4973.5703,6628.9707,23.6];
		_object setVectorUp [0,0,1];
		_object setDir 102;
		
		_object = "WoodChair" createVehicle [4973.6123,6629.8154,0]; 
		_object setPos [4973.6123,6629.8154,23.6];
		_object setVectorUp [0,0,1];
		_object setDir 82;
		
		/*_object = "Misc_cargo_cont_net3" createVehicle [4968.1011,6614.4678,0]; 
		_object setPos [4968.9011,6614.7678,23.5];
		_object setVectorUp [0,0,1];
		_object setDir -265;*/
		
		_object = "Land_Barrel_sand" createVehicle [4965.5273,6617.0273,0]; 
		_object setPos [4965.5273,6617.0273,23.7];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_sand" createVehicle [4965.7422,6616.0068,0]; 
		_object setPos [4965.7422,6616.0068,23.7];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_water" createVehicle [4963.6167,6618.1294,0]; 
		_object setPos [4963.6167,6618.1294,23.7];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_water" createVehicle [4963.3208,6617.189,0]; 
		_object setPos [4963.3208,6617.189,23.7];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_water" createVehicle [4963.3745,6615.9521,0]; 
		_object setPos [4963.3745,6615.9521,23.7];
		_object setVectorUp [0,0,1];
		
		_object = "Paleta2" createVehicle [4968.6021,6611.666,0]; 
		_object setPos [4968.4021,6611.2666,23.6];
		_object setVectorUp [0,0,1];
		_object setDir 90;
		
		_object = "Land_Barrel_sand" createVehicle [4966.5674,6612.2695,0]; 
		_object setPos [4966.5674,6612.2695,23.7];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_sand" createVehicle [4967.2222,6612.2969,0]; 
		_object setPos [4967.2222,6612.2969,23.7];
		_object setVectorUp [0,0,1];
		
		
		// Second floor
		
		_object = "Misc_cargo_cont_tiny" createVehicle [4977.7358,6624.0195,0]; 
		_object setPosASL [4977.7358,6624.0195,22];
		_object setVectorUp [0,0,1];
		_object setDir -214;
		
		_object = "Misc_cargo_cont_tiny" createVehicle [4976.4238,6625.7964,0]; 
		_object setPosASL [4976.4238,6625.7964,22];
		_object setVectorUp [0,0,1];
		_object setDir -224;
		
		_object = "Misc_cargo_cont_net1" createVehicle [4973.0718,6624.5732,0]; 
		_object setPosASL [4973.0718,6624.5732,21.13];
		_object setVectorUp [0,0,1];
		_object setDir -219;
		
		_object = "Misc_cargo_cont_net1" createVehicle [4974.8711,6622.3086,0]; 
		_object setPosASL [4974.8711,6622.3086,21.13];
		_object setVectorUp [0,0,1];
		_object setDir -219;
		
		_object = "Land_Barrel_water" createVehicle [4975.7256,6620.6211,0]; 
		_object setPos [4975.7256,6620.6211,17.8];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_sand" createVehicle [4975.98,6621.3604,0]; 
		_object setPos [4975.98,6621.3604,17.8];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_sand" createVehicle [4976.5303,6620.7676,0]; 
		_object setPos [4976.5303,6620.7676,17.8];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_sand" createVehicle [4981.1943,6644.4468,0]; 
		_object setPos [4981.1943,6644.4468,16.9];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_sand" createVehicle [4980.1802,6644.6431,0]; 
		_object setPos [4980.1802,6644.6431,16.9];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_sand" createVehicle [4979.2642,6645.1338,0]; 
		_object setPos [4979.2642,6645.1338,16.9];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_empty" createVehicle [4981.0571,6645.0645,0]; 
		_object setPos [4981.0571,6645.0645,16.9];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_sand" createVehicle [4980.1592,6645.5347,0]; 
		_object setPos [4980.1592,6645.5347,17];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_sand" createVehicle [4982.0249,6644.4292,0]; 
		_object setPos [4982.0249,6644.4292,16.9];
		_object setVectorUp [0,0,1];
		
		_object = "Land_Barrel_sand" createVehicle [4978.6226,6648.9121,0]; 
		_object setPos [4978.6226,6648.9121,17.1];
		_object setVectorUp [0,0,1];
		_object setDir 15;
		
		_object = "Land_Barrel_empty" createVehicle [4978.06,6649.4,0]; 
		_object setPos [4978.06,6649.4,17.1];
		_object setVectorUp [0,0,1];
		_object setDir 150;
		
		_object = "Land_Barrel_sand" createVehicle [4979.49,6648.97,0]; 
		_object setPos [4979.49,6648.97,17.1];
		_object setVectorUp [0,0,1];
		_object setDir 210;
		
		_object = "Barrels" createVehicle [4983.1167,6646.6553,0]; 
		_object setPos [4983.1167,6646.6553,16.9];
		_object setVectorUp [0,0,1];
		_object setDir 6;
		
		_object = "Barrel4" createVehicle [4983.7129,6646.6138,0]; 
		_object setPos [4983.7129,6646.6138,16.9];
		_object setVectorUp [0,0,1];
		
		_object = "Barrel5" createVehicle [4984.8701,6646.5146,0]; 
		_object setPos [4984.8701,6646.5146,16.9];
		_object setVectorUp [0,0,1];
		
		_object = "Barrel5" createVehicle [4984.1704,6645.8159,0]; 
		_object setPos [4984.1704,6645.8159,16.9];
		_object setVectorUp [0,0,1];
		
		_object = "Misc_cargo_cont_net1" createVehicle [4985.3965,6608.3174,0]; 
		_object setPosASL [4985.3965,6608.3174,21.13];
		_object setVectorUp [0,0,1];
		_object setDir -217;
		
		_object = "Misc_cargo_cont_net1" createVehicle [4984.2354,6609.8521,0]; 
		_object setPosASL [4984.2354,6609.8521,21.13];
		_object setVectorUp [0,0,1];
		_object setDir -217;
		
		_object = "Misc_cargo_cont_net1" createVehicle [4981.4805,6613.9399,0]; 
		_object setPosASL [4981.4805,6613.9399,21.13];
		_object setVectorUp [0,0,1];
		_object setDir -307;
		
		_object = "Misc_cargo_cont_net1" createVehicle [4980.3193,6615.4746,0]; 
		_object setPosASL [4980.3193,6615.4746,21.13];
		_object setVectorUp [0,0,1];
		_object setDir -217;
		
		diag_log "[NAC AII SERVER] :: AII objects has been spawned.";
	};
};