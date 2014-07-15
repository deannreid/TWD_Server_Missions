/**
 * mf-tow/init.sqf
 * The main script for initalising towing functionality. 
 *
 * Created by Matt Fairbrass (matt_d_rat)
 * Version: 1.1.2
 * MIT Licence
 **/

private ["_cursorTarget", "_towableVehicles", "_towableVehiclesTotal"];

// Public variables
MF_Tow_Base_Path		= "custom\mf-tow"; 		// The base path to the MF-Tow Folder.
MF_Tow_Distance			= 10;					// Minimum distance (in meters) away from vehicle the tow truck must be to tow.
MF_Tow_Multi_Towing	 	= false;				// Allow a vehicle which is towing another vehicle already to be towed by another tow. Disabled by default.

// Functions

/**
 * Returns an array of towable objects which can be pulled by the tow truck.
 * Configure this as required to set which vehicles can pull which types of other vehicles.
 **/
MF_Tow_Towable_Array =
{
    private ["_array","_towTruck"];
    _towTruck = _this select 0;
	_array = [];
	
	switch (typeOf _towTruck) do
	{
		case "ATV_CZ_EP1": 						{_array = ["Motorcycle"];};
		case "ATV_US_EP1": 						{_array = ["Motorcycle"];};
		case "hilux1_civil_3_open": 			{_array = ["Motorcycle","Car"];};
		case "hilux1_civil_3_open_EP1": 		{_array = ["Motorcycle","Car"];};
		case "ArmoredSUV_PMC":					{_array = ["Motorcycle","Car"];};
		case "ArmoredSUV_PMC_DZ": 				{_array = ["Motorcycle","Car"];};
		case "ArmoredSUV_PMC_DZE": 				{_array = ["Motorcycle","Car"];};
		case "UAZ_Unarmed_TK_CIV_EP1":			{_array = ["Motorcycle","Car"];};
case     "2S6M_Tunguska": 						{_array = ["Motorcycle","Car","Truck"];};

case     "AAV": 						{_array = ["Motorcycle","Car","Truck"];};
case     "An2_1_TK_CIV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
case     "An2_2_TK_CIV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
case     "AN2_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "An2_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "ArmoredSUV_PMC": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "ArmoredSUV_PMC_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "ArmoredSUV_PMC_DZE": 						{_array = ["Motorcycle","Car","Truck"];};
case     "C130J": 						{_array = ["Motorcycle","Car","Truck"];};
case     "C130J_US_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
case    "car_hatchback": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "car_sedan": 						{_array = ["Motorcycle","Car","Truck"];};
case     "datsun1_civil_1_open": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "datsun1_civil_2_covered": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "datsun1_civil_3_open": 						{_array = ["Motorcycle","Car","Truck"];};
case     "GAZ_Vodnik": 						{_array = ["Motorcycle","Car","Truck"];};
case     "GAZ_Vodnik_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
case     "GAZ_Vodnik_DZE": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "GAZ_Vodnik_DZ_LM": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "GAZ_Vodnik_DZ_VLM": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "GAZ_Vodnik_HMG": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "GAZ_Vodnik_MedEvac": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "GLT_M300_LT": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "GLT_M300_ST": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "hilux1_civil_1_open": 						{_array = ["Motorcycle","Car","Truck"];};
case     "hilux1_civil_2_covered": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "hilux1_civil_3_open": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "hilux1_civil_3_open_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Ikarus": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Ikarus_TK_CIV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
	case "HMMWV_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "HMMWV_Ambulance": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_Ambulance_CZ_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "HMMWV_Ambulance_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_Armored": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_Avenger": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_Avenger_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "HMMWV_M1035_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_M1151_M2_CZ_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_M1151_M2_CZ_DES_EP1_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_M1151_M2_CZ_DES_EP1_DZE": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_M1151_M2_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_M2": 						{_array = ["Motorcycle","Car","Truck"];};
case     "HMMWV_M998_crows_M2_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_M998_crows_MK19_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_M998A2_SOV_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_M998A2_SOV_DES_EP1_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_M998A2_SOV_DES_EP1_DZE": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_MK19": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_MK19_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_Terminal_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "HMMWV_TOW": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "HMMWV_TOW_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
case     "HMMWV": 						{_array = ["Motorcycle","Car","Truck"];};
case     "Kamaz": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "KamazOpen": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "KamazReammo": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "KamazRefuel": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "KamazRefuel_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "KamazRepair": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "Lada1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Lada2": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Lada1_GDR": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Lada2_GDR": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Lada4_GDR": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Lada5_GDR": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Lada_base": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "LadaLM": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Lada1_TK_CIV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Lada2_TK_CIV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "LandRover_CZ_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
case     "LandRover_MG_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "LandRover_MG_TK_EP1_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "LandRover_MG_TK_EP1_DZE": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "LandRover_MG_TK_INS_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "LandRover_Special_CZ_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "LandRover_Special_CZ_EP1_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "LandRover_Special_CZ_EP1_DZE": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "LandRover_SPG9_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "LandRover_SPG9_TK_INS_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "LandRover_TK_CIV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "LAV25": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "LAV25_HQ": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "M1030": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "M1030_US_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "M1126_ICV_M2_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "M1126_ICV_mk19_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "M1128_MGS_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
case     "M1129_MC_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "M113Ambul_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "M113Ambul_TK_EP1_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "M113Ambul_UN_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "M113Ambul_UN_EP1_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "M113_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "M113_UN_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "M1130_CV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "M1133_MEV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "M1135_ATGMV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "M1A1": 						{_array = ["Motorcycle","Car","Truck"];};
case     "MTVR": 						{_array = ["Motorcycle","Car","Truck"];};
case     "MTVR_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "MtvrReammo": 						{_array = ["Motorcycle","Car","Truck"];};
case     "MtvrReammo_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
case     "MtvrRefuel": 						{_array = ["Motorcycle","Car","Truck"];};
case     "MtvrRefuel_DES_EP1_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
case     "MtvrRefuel_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
case     "MtvrRepair": 						{_array = ["Motorcycle","Car","Truck"];};
case     "MtvrRepair_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
case     "MtvrSalvage_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "MtvrSupply_DES_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Offroad_DSHKM_Gue": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Offroad_DSHKM_Gue_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
case     "Offroad_DSHKM_Gue_DZE": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Offroad_DSHKM_Gue_DZE1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Offroad_DSHKM_Gue_DZE2": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Offroad_DSHKM_Gue_DZE3": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Offroad_DSHKM_Gue_DZE4": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Offroad_DSHKM_INS": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Offroad_DSHKM_TK_GUE_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Offroad_SPG9_Gue": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Offroad_SPG9_TK_GUE_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Pickup_PK_GUE": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Pickup_PK_GUE_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Pickup_PK_GUE_DZE": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Pickup_PK_INS": 						{_array = ["Motorcycle","Car","Truck"];};
case     "Pickup_PK_INS_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
case     "Pickup_PK_INS_DZE": 						{_array = ["Motorcycle","Car","Truck"];};
case     "Pickup_PK_TK_GUE_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Pickup_PK_TK_GUE_EP1_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Pickup_PK_TK_GUE_EP1_DZE": 						{_array = ["Motorcycle","Car","Truck"];};
case     "SUV_Blue": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "SUV_Camo": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "SUV_Charcoal": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "SUV_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "SUV_Green": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "SUV_Orange": 						{_array = ["Motorcycle","Car","Truck"];};
case     "SUV_Pink": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "SUV_PMC": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "SUV_PMC_BAF": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "SUV_Red": 						{_array = ["Motorcycle","Car","Truck"];};
case     "SUV_Silver": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "SUV_TK_CIV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "SUV_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "SUV_UN_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "SUV_White": 						{_array = ["Motorcycle","Car","Truck"];};
case     "SUV_Yellow": 						{_array = ["Motorcycle","Car","Truck"];};
case     "UAZ_AGS30_CDF": 						{_array = ["Motorcycle","Car","Truck"];};
case     "UAZ_AGS30_INS": 						{_array = ["Motorcycle","Car","Truck"];};
case     "UAZ_AGS30_RU": 						{_array = ["Motorcycle","Car","Truck"];};
case     "UAZ_AGS30_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
case     "UAZ_CDF": 						{_array = ["Motorcycle","Car","Truck"];};
case     "UAZ_INS": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UAZ_MG_CDF": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UAZ_MG_INS": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UAZ_MG_INS_DZ_LM": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UAZ_MG_INS_DZ_VLM": 						{_array = ["Motorcycle","Car","Truck"];};
case     "UAZ_MG_CDF": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UAZ_MG_CDF_DZ_LM": 						{_array = ["Motorcycle","Car","Truck"];};
case     "UAZ_MG_CDF_DZ_VLM": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UAZ_MG_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UAZ_MG_TK_EP1_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UAZ_MG_TK_EP1_DZE": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UAZ_RU": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UAZ_SPG9_INS": 						{_array = ["Motorcycle","Car","Truck"];};
case     "UAZ_Unarmed_TK_CIV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "UAZ_Unarmed_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UAZ_Unarmed_UN_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UralCivil": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UralCivil2": 						{_array = ["Motorcycle","Car","Truck"];};
case     "Ural_CDF": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Ural_INS": 						{_array = ["Motorcycle","Car","Truck"];};
case     "UralOpen_CDF": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UralOpen_INS": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UralReammo_CDF": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UralReammo_INS": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UralReammo_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UralRefuel_CDF": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UralRefuel_INS": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "UralRefuel_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UralRefuel_TK_EP1_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UralRepair_CDF": 						{_array = ["Motorcycle","Car","Truck"];};
case     "UralRepair_INS": 						{_array = ["Motorcycle","Car","Truck"];};
case    "UralRepair_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UralSalvage_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "UralSupply_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Ural_TK_CIV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "Ural_UN_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Ural_ZU23_CDF": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Ural_ZU23_INS": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "Ural_ZU23_Gue": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "Ural_ZU23_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "Ural_ZU23_TK_GUE_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
   case  "V3S_Civ": 						{_array = ["Motorcycle","Car","Truck"];};
   case  "V3S_Gue": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "V3S_Open_TK_CIV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "V3S_Open_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "V3S_Reammo_TK_GUE_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "V3S_Refuel_TK_GUE_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "V3S_Refuel_TK_GUE_EP1_DZ": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "V3S_Repair_TK_GUE_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "V3S_Salvage_TK_GUE_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "V3S_Supply_TK_GUE_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "V3S_TK_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "V3S_TK_GUE_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Volha_1_TK_CIV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
 case    "Volha_2_TK_CIV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "VolhaLimo_TK_CIV_EP1": 						{_array = ["Motorcycle","Car","Truck"];};
  case   "VWGolf": 						{_array = ["Motorcycle","Car","Truck"];};
		case "HMMWV_M1151_M2_CZ_DES_EP1_DZE": 	{_array = ["Motorcycle","Car","Truck"];};
		case "HMMWV_M1151_M2_CZ_DES_EP1": 		{_array = ["Motorcycle","Car","Truck"];};
		case "tractor": 						{_array = ["Motorcycle","Car","Truck"];};
		case "TowingTractor": 					{_array = ["Motorcycle","Car","Truck","Wheeled_APC","Tracked_APC","Air"];};
	};
	
	_array
};

/**
 * Animate the player in a towing action, whilst attaching them to the tow vehicle to ensure safety.
 **/
MF_Tow_Animate_Player_Tow_Action =
{
	private ["_towTruck","_offsetZ"];
	_towTruck = _this select 0;
	_offsetZ = 0.1;
	
	// Bounding box on UAZ is screwed, offset z-axis correctly
	if(_towTruck isKindOf "UAZ_Base") then {
		_offsetZ = 1.8;
	};
	
	[player,20,true,(getPosATL player)] spawn player_alertZombies; // Alert nearby zombies
	[1,1] call dayz_HungerThirst; // Use some hunger and thirst to perform the action
	
	// Attach the player to the tow truck temporarily for safety so that they aren't accidentally hit by the vehicle when it gets attached
	player attachTo [_towTruck, 
		[
			(boundingBox _towTruck select 1 select 0),
			(boundingBox _towTruck select 0 select 1) + 1,
			(boundingBox _towTruck select 0 select 2) - (boundingBox player select 0 select 2) + _offsetZ
		]
	];

	player setDir 270;
	player setPos (getPos player);
	player playActionNow "Medic"; // Force the animation
};

MF_Tow_Get_Vehicle_Name =
{
	private ["_vehicle", "_configVeh", "_vehicleName"];
	_vehicle = _this select 0;
	
	_configVeh = configFile >> "cfgVehicles" >> TypeOf(_vehicle);
	_vehicleName = getText(_configVeh >> "displayName");
	
	_vehicleName
};

// Initialise script
_cursorTarget = cursorTarget;
_towableVehicles = [_cursorTarget] call MF_Tow_Towable_Array;
_towableVehiclesTotal = count (_towableVehicles);

// Add the action to the players scroll wheel menu if the cursor target is a vehicle which can tow.
if(_towableVehiclesTotal > 0) then {
	if (s_player_towing < 0) then {
		if(!(_cursorTarget getVariable ["MFTowIsTowing", false])) then {
			s_player_towing = player addAction ["Tow Vehicle", format["%1\tow_AttachTow.sqf", MF_Tow_Base_Path], _cursorTarget, 0, false, true, "",""];				
		} else {
			s_player_towing = player addAction ["Detach Vehicle", format["%1\tow_DetachTow.sqf", MF_Tow_Base_Path], _cursorTarget, 0, false, true, "",""];			
		};
	};
} 
else {
	player removeAction s_player_towing;
	s_player_towing = -1;
};