#define CT_STATIC 0
#define ST_LEFT           0x00
#define ST_PICTURE        48


class BTC_Hud
{
	idd = 1000;
	movingEnable=0;
	duration=1e+011;
	name = "BTC_Hud_Name";
	onLoad = "uiNamespace setVariable [""HUD"", _this select 0];";
	controlsBackground[] = {};
	objects[] = {};
	class controls 
	{
		class Radar
		{
			type = CT_STATIC;
			idc = 1001;
			style = ST_PICTURE;
			x = (SafeZoneW+2*SafeZoneX) - 0.1;//safezonex + 0.1;//0.9
			y = (SafeZoneH+2*SafeZoneY) - 0.15;//safezoney + 0.1;//0.85
			w = 0.3;
			h = 0.4;
			font = "Zeppelin32";
			sizeEx = 0.03;
			colorBackground[] = {0, 0, 0, 0};
			colorText[] = {1, 1, 1, 1};
			text = "\ca\ui\data\igui_radar_air_ca.paa";
		};
		class Img_Obj
		{
			type = CT_STATIC;
			idc = 1002;
			style = ST_PICTURE;
			x = (SafeZoneW+2*SafeZoneX) + 0.045;
			y = (SafeZoneH+2*SafeZoneY) + 0.045;
			w = 0.01;
			h = 0.01;
			font = "Zeppelin32";
			sizeEx = 0.04;
			colorBackground[] = {0, 0, 0, 0};
			colorText[] = {1, 1, 1, 1};
			text = "custom\=BTC=_Logistic\data\obj.paa";
		};
		class Pic_Obj
		{
			type = CT_STATIC;
			idc = 1003;
			style = ST_PICTURE;
			x = (SafeZoneW+2*SafeZoneX) - 0.125;
			y = (SafeZoneH+2*SafeZoneY) - 0.23;
			w = 0.1;
			h = 0.1;
			font = "Zeppelin32";
			sizeEx = 0.03;
			colorBackground[] = {0, 0, 0, 0};
			colorText[] = {1, 1, 1, 1};
			text = "";
		};
		class Arrow
		{
			type = CT_STATIC;
			idc = 1004;
			style = ST_PICTURE;
			x = (SafeZoneW+2*SafeZoneX) + 0.15;
			y = (SafeZoneH+2*SafeZoneY) - 0.15;
			w = 0.05;
			h = 0.05;
			font = "Zeppelin32";
			sizeEx = 0.03;
			colorBackground[] = {0, 0, 0, 0};
			colorText[] = {1, 1, 1, 1};
			text = "";
		};
		class Type_Obj
		{
			type = CT_STATIC;
			idc = 1005;
			style = ST_LEFT;
			x = (SafeZoneW+2*SafeZoneX) - 0.03;
			y = (SafeZoneH+2*SafeZoneY) - 0.335;
			w = 0.3;
			h = 0.3;
			font = "Zeppelin32";
			sizeEx = 0.03;
			colorBackground[] = {0, 0, 0, 0};
			colorText[] = {1, 1, 1, 1};
			text = "";
		};
	};   
};