waitUntil {!isNil "dayz_animalCheck"};
sleep 1;

/*    *******************************************************************************************************************************************   */
/*    Turn debugging functionality on or off.                                                                                                       */
/*    *******************************************************************************************************************************************   */
tfv_DEBUGGING = true;

/*    *******************************************************************************************************************************************   */
/*    How many weapons will be sold per cycle.                                                                                                      */
/*    *******************************************************************************************************************************************   */
tfv_SALES_PER_ANIM = 10;

/*    *******************************************************************************************************************************************   */
/*    How many magazines will be sold per cycle.                                                                                                      */
/*    *******************************************************************************************************************************************   */
tfv_SALES_PER_ANIM_MAGS = 20;

/*    *******************************************************************************************************************************************   */
/*    A list of each trader, along with the weapons they accept.                                                                                    */
/*    *******************************************************************************************************************************************   */

tfv_TRADERS_ITEMS = [
        ["Soldier_MG_PKM_PMC",["G36A_camo","G36C","G36C_camo","G36K_camo","M16A2","M16A2GL","m16a4_acg","M4A1","M4A1_HWS_GL_camo","M4A3_CCO_EP1","M4A1_Aim","Sa58P_EP1","Sa58V_CCO_EP1","Sa58V_EP1","Sa58V_RCO_EP1","AKS_74_kobra","AKS_74_U","AK_47_M","AK_74","FN_FAL","M4A1_AIM_SD_camo","AK_107_kobra","AK_107_GL_kobra","AK_107_pso","AK_107_GL_pso","AKS_74_UN_kobra","SCAR_L_CQC","SCAR_L_CQC_Holo","SCAR_L_STD_Mk4CQT","SCAR_L_STD_EGLM_RCO","SCAR_L_CQC_EGLM_Holo","SCAR_L_STD_HOLO","SCAR_L_CQC_CCO_SD","SCAR_H_CQC_CCO","SCAR_H_CQC_CCO_SD","SCAR_H_STD_EGLM_Spect","BAF_L85A2_RIS_Holo","BAF_L85A2_UGL_Holo","BAF_L85A2_RIS_SUSAT","BAF_L85A2_UGL_SUSAT","BAF_L85A2_RIS_ACOG","BAF_L85A2_UGL_ACOG","AK_74_GL_kobra","m8_carbine_pmc","m8_compact_pmc","m8_holo_sd","M4A1_HWS_GL_SD_Camo","M16A4_GL","M16A4_ACG_GL","M4A1_RCO_GL","M4A1_HWS_GL","G36_C_SD_eotech","G36a","AK_47_S","AK_74_GL","AKS_74_pso","M4A3_RCO_GL_EP1"],["weapons"],0],
		["US_Delta_Force_AR_EP1",["G36A_camo","G36C","G36C_camo","G36K_camo","M16A2","M16A2GL","m16a4_acg","M4A1","M4A1_HWS_GL_camo","M4A3_CCO_EP1","M4A1_Aim","Sa58P_EP1","Sa58V_CCO_EP1","Sa58V_EP1","Sa58V_RCO_EP1","AKS_74_kobra","AKS_74_U","AK_47_M","AK_74","FN_FAL","M4A1_AIM_SD_camo","AK_107_kobra","AK_107_GL_kobra","AK_107_pso","AK_107_GL_pso","AKS_74_UN_kobra","SCAR_L_CQC","SCAR_L_CQC_Holo","SCAR_L_STD_Mk4CQT","SCAR_L_STD_EGLM_RCO","SCAR_L_CQC_EGLM_Holo","SCAR_L_STD_HOLO","SCAR_L_CQC_CCO_SD","SCAR_H_CQC_CCO","SCAR_H_CQC_CCO_SD","SCAR_H_STD_EGLM_Spect","BAF_L85A2_RIS_Holo","BAF_L85A2_UGL_Holo","BAF_L85A2_RIS_SUSAT","BAF_L85A2_UGL_SUSAT","BAF_L85A2_RIS_ACOG","BAF_L85A2_UGL_ACOG","AK_74_GL_kobra","m8_carbine_pmc","m8_compact_pmc","m8_holo_sd","M4A1_HWS_GL_SD_Camo","M16A4_GL","M16A4_ACG_GL","M4A1_RCO_GL","M4A1_HWS_GL","G36_C_SD_eotech","G36a","AK_47_S","AK_74_GL","AKS_74_pso","M4A3_RCO_GL_EP1"],["weapons"],-10000],
		["Ins_Soldier_AR",["G36A_camo","G36C","G36C_camo","G36K_camo","M16A2","M16A2GL","m16a4_acg","M4A1","M4A1_HWS_GL_camo","M4A3_CCO_EP1","M4A1_Aim","Sa58P_EP1","Sa58V_CCO_EP1","Sa58V_EP1","Sa58V_RCO_EP1","AKS_74_kobra","AKS_74_U","AK_47_M","AK_74","FN_FAL","M4A1_AIM_SD_camo","AK_107_kobra","AK_107_GL_kobra","AK_107_pso","AK_107_GL_pso","AKS_74_UN_kobra","SCAR_L_CQC","SCAR_L_CQC_Holo","SCAR_L_STD_Mk4CQT","SCAR_L_STD_EGLM_RCO","SCAR_L_CQC_EGLM_Holo","SCAR_L_STD_HOLO","SCAR_L_CQC_CCO_SD","SCAR_H_CQC_CCO","SCAR_H_CQC_CCO_SD","SCAR_H_STD_EGLM_Spect","BAF_L85A2_RIS_Holo","BAF_L85A2_UGL_Holo","BAF_L85A2_RIS_SUSAT","BAF_L85A2_UGL_SUSAT","BAF_L85A2_RIS_ACOG","BAF_L85A2_UGL_ACOG","AK_74_GL_kobra","m8_carbine_pmc","m8_compact_pmc","m8_holo_sd","M4A1_HWS_GL_SD_Camo","M16A4_GL","M16A4_ACG_GL","M4A1_RCO_GL","M4A1_HWS_GL","G36_C_SD_eotech","G36a","AK_47_S","AK_74_GL","AKS_74_pso","M4A3_RCO_GL_EP1"],["weapons"],2500],
        ["CIV_EuroWoman01_EP1",["ItemSodaPepsi","ItemSodaCoke","FoodCanPasta","M16A2"],["magazines","weapons"],15000]
]; if (tfv_DEBUGGING) then { diag_log "tfv - Traders and their weapons loaded in!"; };

/*    *******************************************************************************************************************************************   */
/*    List of ALL weapons, regardless of trader, along with the prices.                                                                             */
/*    *******************************************************************************************************************************************   */

tfv_TRADERS_PRICES = [
    ["G36A_camo",300],
	["G36C",300],
	["G36C_camo",300],
	["G36K_camo",300],
	["M16A2",100],
	["M16A2GL",200],
	["m16a4_acg",200],
	["M4A1",200],
	["M4A1_HWS_GL_camo",400],
	["M4A3_CCO_EP1",500],
	["M4A1_Aim",400],
	["Sa58P_EP1",100],
	["Sa58V_CCO_EP1",400],
	["Sa58V_EP1",100],
	["Sa58V_RCO_EP1",400],
	["AKS_74_kobra",200],
	["AKS_74_U",100],
	["AK_47_M",600],
	["AK_74",100],
	["FN_FAL",500],
	["M4A1_AIM_SD_camo",500],
	["AK_107_kobra",300],
	["AK_107_GL_kobra",500],
	["AK_107_pso",500],
	["AK_107_GL_pso",500],
	["AKS_74_UN_kobra",500],
	["SCAR_L_CQC",600],
	["SCAR_L_CQC_Holo",600],
	["SCAR_L_STD_Mk4CQT",600],
	["SCAR_L_STD_EGLM_RCO",800],
	["SCAR_L_CQC_EGLM_Holo",800],
	["SCAR_L_STD_HOLO",500],
	["SCAR_L_CQC_CCO_SD",500],
	["SCAR_H_CQC_CCO",700],
	["SCAR_H_CQC_CCO_SD",700],
	["SCAR_H_STD_EGLM_Spect",800],
	["BAF_L85A2_RIS_Holo",400],
	["BAF_L85A2_UGL_Holo",400],
	["BAF_L85A2_RIS_SUSAT",400],
	["BAF_L85A2_UGL_SUSAT",400],
	["BAF_L85A2_RIS_ACOG",400],
	["BAF_L85A2_UGL_ACOG",400],
	["AK_74_GL_kobra",400],
	["m8_carbine_pmc",400],
	["m8_compact_pmc",400],
	["m8_holo_sd",400],
	["M4A1_HWS_GL_SD_Camo",300],
	["M16A4_GL",300],
	["M16A4_ACG_GL",400],
	["M4A1_RCO_GL",300],
	["M4A1_HWS_GL",300],
	["G36_C_SD_eotech",300],
	["G36a",200],
	["AK_47_S",400],
	["AK_74_GL",400],
	["AKS_74_pso",500],
	["M4A3_RCO_GL_EP1",300],
	["ItemSodaPepsi",1],
	["ItemSodaCoke",3],
	["FoodCanPasta",5]
]; if (tfv_DEBUGGING) then { { diag_log format ["tfv - Price loaded - %1",_x]; } forEach tfv_TRADERS_PRICES; };

/*    *******************************************************************************************************************************************   */
/*    Anything below this line was not intended to be modified.                                                                                     */
/*    *******************************************************************************************************************************************   */

tfv_TRADERS = [];
{ tfv_TRADERS set [(count tfv_TRADERS),(_x select 0)]; } forEach tfv_TRADERS_ITEMS;
tfv_TRADERS_TYPES = [];
{ tfv_TRADERS_TYPES set [(count tfv_TRADERS_TYPES),(_x select 2)]; } forEach tfv_TRADERS_ITEMS;
if (tfv_DEBUGGING) then { { diag_log format ["tfv - Trader loaded - %1",_x]; } forEach tfv_TRADERS; };
tfv_SALE_SUCCESS_STRING = "Sold %1 weapons from your vehicle";
tfv_SALE_SUCCESS_STRING_MAGS = "Sold %1 items from your vehicle";
tfv_PREP_FOR_TRADE = "Starting trade in %1 seconds, move to cancel";
tfv_CANCELLED_TRADE = "Trade cancelled";
tfv_STARTING_TRADE = "Starting trade";
tfv_TRADE_STEPS = "Trading, stage %1 of %2";
tfv_TRADE_CANCELLED_END = "Trade cancelled\nMake sure your vehicle is empty and isn't moving";
tfv_SIDENOTE = "You were paid an %1";
tfv_VEHICLE_CONFIRM = "Trading from %1";
tfv_NO_WEAPONS = "There is no weapons inside your vehicle (%1)";
tfv_NO_MAGAZINES = "There is no items inside your vehicle (%1)";
tfv_ACTION_INDEX = -1;
tfv_ACTION = 0;
tfv_ACTION_INDEX_MAGS = -1;
tfv_ACTION_MAGS = 0;
tfv_IS_TRADING = false;
tfv_EXCHANGE = [
	["ItemBriefcase100oz",10000],
	["ItemBriefcase90oz",9000],
	["ItemBriefcase80oz",8000],
	["ItemBriefcase70oz",7000],
	["ItemBriefcase60oz",6000],
	["ItemBriefcase50oz",5000],
	["ItemBriefcase40oz",4000],
	["ItemBriefcase30oz",3000],
	["ItemBriefcase20oz",2000],
	["ItemGoldBar10oz",1000],
	["ItemGoldBar9oz",900],
	["ItemGoldBar8oz",800],
	["ItemGoldBar7oz",700],
	["ItemGoldBar6oz",600],
	["ItemGoldBar5oz",500],
	["ItemGoldBar4oz",400],
	["ItemGoldBar3oz",300],
	["ItemGoldBar2oz",200],
	["ItemGoldBar",100],
	["ItemBriefcaseS90oz",90],
	["ItemBriefcaseS80oz",80],
	["ItemBriefcaseS70oz",70],
	["ItemBriefcaseS60oz",60],
	["ItemBriefcaseS50oz",50],
	["ItemBriefcaseS40oz",40],
	["ItemBriefcaseS30oz",30],
	["ItemBriefcaseS20oz",20],
	["ItemSilverBar10oz",10],
	["ItemSilverBar9oz",9],
	["ItemSilverBar8oz",8],
	["ItemSilverBar7oz",7],
	["ItemSilverBar6oz",6],
	["ItemSilverBar5oz",5],
	["ItemSilverBar4oz",4],
	["ItemSilverBar3oz",3],
	["ItemSilverBar2oz",2],
    ["ItemSilverBar",1]
]; if (tfv_DEBUGGING) then { { diag_log format ["tfv - Exchange loaded - %1",_x]; } forEach tfv_EXCHANGE; };

/*    *******************************************************************************************************************************************   */
/*    Functions.                                                                                                                                    */
/*    *******************************************************************************************************************************************   */

tfv_fnc_aConcat =        compile preprocessFileLineNumbers "custom\TradeFromVehicle\functions\fnc_aConcat.sqf";
tfv_fnc_checkTrade =     compile preprocessFileLineNumbers "custom\TradeFromVehicle\functions\fnc_checkTrade.sqf";
tfv_fnc_Convert =        compile preprocessFileLineNumbers "custom\TradeFromVehicle\functions\fnc_Convert.sqf";
tfv_fnc_findPrices =     compile preprocessFileLineNumbers "custom\TradeFromVehicle\functions\fnc_findPrices.sqf";
tfv_fnc_findTrWeapons =  compile preprocessFileLineNumbers "custom\TradeFromVehicle\functions\fnc_findTrWeapons.sqf";
tfv_fnc_getSteps =       compile preprocessFileLineNumbers "custom\TradeFromVehicle\functions\fnc_getSteps.sqf";
tfv_fnc_payTrade =       compile preprocessFileLineNumbers "custom\TradeFromVehicle\functions\fnc_payTrade.sqf";
tfv_fnc_wCount =         compile preprocessFileLineNumbers "custom\TradeFromVehicle\functions\fnc_wCount.sqf";
tfv_fnc_mCount =         compile preprocessFileLineNumbers "custom\TradeFromVehicle\functions\fnc_mCount.sqf";
tfv_fnc_checkTradeMags = compile preprocessFileLineNumbers "custom\TradeFromVehicle\functions\fnc_checkTradeMags.sqf";
tfv_fnc_aConcatMags =    compile preprocessFileLineNumbers "custom\TradeFromVehicle\functions\fnc_aConcatMags.sqf";
tfv_fnc_getStepsMags =   compile preprocessFileLineNumbers "custom\TradeFromVehicle\functions\fnc_getStepsMags.sqf";
tfv_fnc_payTradem =      compile preprocessFileLineNumbers "custom\TradeFromVehicle\functions\fnc_payTradem.sqf";

/*    *******************************************************************************************************************************************   */
/*    Init file finished. Start monitor script.    */    [] ExecVM "custom\TradeFromVehicle\monitor.sqf";
/*    *******************************************************************************************************************************************   */
