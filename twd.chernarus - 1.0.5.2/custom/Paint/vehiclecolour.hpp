class VehicleColourDialog
{
	idd = 571113;
	movingenable = 0;
	onLoad = "uiNamespace setVariable ['VehicleColourDialog', _this select 0]";
	
	class Controls {
	
	class RscText_100:RscTxtT
	{
		idc=-1;
		colorBackground[]= {0,0,0,0.7};
		x = safezoneX + 0.3133333333333333 * safezoneW;
		y = safezoneY + 0.298148148148148 * safezoneH;
		w = 0.366666666666667 * safezoneW;
		h = 0.414814814814815 * safezoneH;
	};
	
	class RscText_101:RscTxtT
	{
		idc=-1;
		text= "Vehicle Colour";
		colorBackground[]= {0,0,0,0.7};
		x = safezoneX + 0.3133333333333333 * safezoneW;//+0.22
		y = safezoneY + 0.298148148148148 * safezoneH;//+0.15
		w = 0.366666666666667 * safezoneW;
		h = 0.0296296296296296 * safezoneH;
	};
	
	class RscStructuredText_110:RscStrText
	{
		idc = 5703;
		text = "";
		x = 0.386666666666667 * safezoneW + safezoneX;
		y = 0.624074074074074 * safezoneH + safezoneY;
		w = 0.2 * safezoneW;
		h = 0.0592592592592593 * safezoneH;
		colorBackground[]= {0,0,0,0};
	};

	class RscShortcutButton_171:RscScButton
	{
		idc=-1;
		text= "Paint";
		x = 0.32 * safezoneW + safezoneX;
		y = 0.653703703703704 * safezoneH + safezoneY;
		w = 0.075 * safezoneW;
		h = 0.065 * safezoneH;
		onButtonClick = "call VehicleColourPaint; ((ctrlParent (_this select 0)) closeDisplay 9000);";
	};

	class RscShortcutButton_170:RscScButton
	{
		idc = -1;
		text = "Close";
		x = 0.603333333333333 * safezoneW + safezoneX;
		y = 0.653703703703704 * safezoneH + safezoneY;
		w = 0.075 * safezoneW;
		h = 0.065 * safezoneH;
		onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 9000);";
	};

	class RscText_122:RscTxtT
	{
		idc=-1;
		text= "Blue";
		x=0.32 * safezoneW + safezoneX;
		y=0.564814814814815 * safezoneH + safezoneY;
		w=0.05 * safezoneW;
		h=0.0296296296296296 * safezoneH;
	};

	class RscText_121:RscTxtT
	{
		idc=-1;
		text= "Green";
		x=0.32 * safezoneW + safezoneX;
		y=0.535185185185185 * safezoneH + safezoneY;
		w=0.05 * safezoneW;
		h=0.0296296296296296 * safezoneH;
	};

	class RscText_120:RscTxtT
	{
		idc=-1;
		text= "Red";
		x=0.32 * safezoneW + safezoneX;
		y=0.505555555555556 * safezoneH + safezoneY;
		w=0.05 * safezoneW;
		h=0.0296296296296296 * safezoneH;
	};

	class RscSlider_292
	{
		idc=6702;
		x=0.386666666666667 * safezoneW + safezoneX;
		y=0.564814814814815 * safezoneH + safezoneY;
		w=0.2 * safezoneW;
		h=0.0296296296296296 * safezoneH;
		type = CT_SLIDER;
		style = SL_HORZ;
		color[] = { 1, 1, 1, 0.5 }; 
		coloractive[] = { 1, 1, 1, 1 };
		onSliderPosChanged = "call VehicleColourUpdate2;";
	};

	class RscSlider_291
	{
		idc=6701;
		x=0.386666666666667 * safezoneW + safezoneX;
		y=0.535185185185185 * safezoneH + safezoneY;
		w=0.2 * safezoneW;
		h=0.0296296296296296 * safezoneH;
		type = CT_SLIDER;
		style = SL_HORZ;
		color[] = { 1, 1, 1, 0.5 }; 
		coloractive[] = { 1, 1, 1, 1 };
		onSliderPosChanged = "call VehicleColourUpdate2;";
	};

	class RscSlider_290
	{
		idc=6700;
		x=0.386666666666667 * safezoneW + safezoneX;
		y=0.505555555555556 * safezoneH + safezoneY;
		w=0.2 * safezoneW;
		h=0.0296296296296296 * safezoneH;
		type = CT_SLIDER;
		style = SL_HORZ;
		color[] = { 1, 1, 1, 0.5 }; 
		coloractive[] = { 1, 1, 1, 1 };
		onSliderPosChanged = "call VehicleColourUpdate2;";
	};

	class RscText_117:RscTxtT
	{
		idc=-1;
		text= "Colour 2";
		x=0.603333333333333 * safezoneW + safezoneX;
		y=0.475925925925926 * safezoneH + safezoneY;
		w=0.05 * safezoneW;
		h=0.0296296296296296 * safezoneH;
	};

	class RscText_115:RscTxtT
	{
		idc=-1;
		text= "Colour 1";
		x=0.603333333333333 * safezoneW + safezoneX;
		y=0.327777777777778 * safezoneH + safezoneY;
		w=0.05 * safezoneW;
		h=0.0296296296296296 * safezoneH;
	};

	class RscText_110:RscTxtT
	{
		idc=5704;
		colorBackground[]={0,0,0,1};
		x=0.603333333333333 * safezoneW + safezoneX;
		y=0.355555555555556 * safezoneH + safezoneY;
		w=0.05 * safezoneW;
		h=0.0888888888888889 * safezoneH;
	};

	class RscText_106:RscTxtT
	{
		idc= 6704;
		colorBackground[]= {0,0,0,1};
		x=0.603333333333333 * safezoneW + safezoneX;
		y=0.505555555555556 * safezoneH + safezoneY;
		w=0.05 * safezoneW;
		h=0.0888888888888889 * safezoneH;
	};

	class RscSlider_192
	{
		idc=5702;
		x=0.386666666666667 * safezoneW + safezoneX;
		y=0.416666666666667 * safezoneH + safezoneY;
		w=0.2 * safezoneW;
		h=0.0296296296296296 * safezoneH;
		type = CT_SLIDER;
		style = SL_HORZ;
		color[] = { 1, 1, 1, 0.5 }; 
		coloractive[] = { 1, 1, 1, 1 };
		onSliderPosChanged = "call VehicleColourUpdate;";
	};

	class RscSlider_191
	{
		idc=5701;
		x=0.386666666666667 * safezoneW + safezoneX;
		y=0.387037037037037 * safezoneH + safezoneY;
		w=0.2 * safezoneW;
		h=0.0296296296296296 * safezoneH;
		type = CT_SLIDER;
		style = SL_HORZ;
		color[] = { 1, 1, 1, 0.5 }; 
		coloractive[] = { 1, 1, 1, 1 };
		onSliderPosChanged = "call VehicleColourUpdate;";
	};

	class RscSlider_190
	{
		idc=5700;
		x=0.386666666666667 * safezoneW + safezoneX;
		y=0.357407407407407 * safezoneH + safezoneY;
		w=0.2 * safezoneW;
		h=0.0296296296296296 * safezoneH;
		type = CT_SLIDER;
		style = SL_HORZ;
		color[] = { 1, 1, 1, 0.5 }; 
		coloractive[] = { 1, 1, 1, 1 };
		onSliderPosChanged = "call VehicleColourUpdate;";
	};

	class RscText_104:RscTxtT
	{
		idc=-1;
		text= "Blue";
		x=0.32 * safezoneW + safezoneX;
		y=0.416666666666667 * safezoneH + safezoneY;
		w=0.05 * safezoneW;
		h=0.0296296296296296 * safezoneH;
	};

	class RscText_109:RscTxtT
	{
		idc=-1;
		text= "Green";
		x=0.32 * safezoneW + safezoneX;
		y=0.387037037037037 * safezoneH + safezoneY;
		w=0.05 * safezoneW;
		h=0.0296296296296296 * safezoneH;
	};
	
	class RscText_102:RscTxtT
	{
		idc=-1;
		text= "Red";
		x=0.32 * safezoneW + safezoneX;
		y=0.357407407407407 * safezoneH + safezoneY;
		w=0.05 * safezoneW;
		h=0.0296296296296296 * safezoneH;
	};
	};
};
