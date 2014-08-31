class PlotManagement
{
	idd = 711194;
	onLoad = "uiNamespace setVariable ['PlotManagement', _this select 0]";
	class Controls {
		class RscText_7000: RscTextT
		{
			idc = 7000;
			x = 0.30 * safezoneW + safezoneX;
			y = 0.30 * safezoneH + safezoneY;
			w = 0.30 * safezoneW;
			h = 0.5 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};	
		class RscListbox_7001: RscListbox
		{
			idc = 7001;
			x = 0.31* safezoneW + safezoneX;
			y = 0.41 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.30 * safezoneH;
			soundSelect[] = {"",0.1,1};
			colorBackground[] = {0.1,0.1,0.1,0.8};
		};
		class RscListbox_7002: RscListbox
		{
			idc = 7002;
			x = 0.45 * safezoneW + safezoneX;
			y = 0.41* safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.30 * safezoneH;
			soundSelect[] = {"",0.1,1};
			colorBackground[] = {0.1,0.1,0.1,0.8};
		};
		class RscShortcutButton_7004: RscShortcutButton
		{
			idc = 7004;
			text = "Add";
			x = 0.33 * safezoneW + safezoneX;
			y = 0.70 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.06 * safezoneH;
			onButtonClick = "[(lbCurSel 7001)] call PlotAddFriend;";
		};
		class RscShortcutButton_7005: RscShortcutButton
		{
			idc = 7005;
			text = "Delete";
			x = 0.47 * safezoneW + safezoneX;
			y = 0.70 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.06 * safezoneH;
			onButtonClick = "[(lbCurSel 7002)] call PlotRemoveFriend;";
		};	
		class RscShortcutButton_7006: RscShortcutButton
		{
			idc = 7006;
			text = "Close";
			x = 0.40 * safezoneW + safezoneX;
			y = 0.74 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.06 * safezoneH;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 9000);";
		};		
		class RscText_7007: RscTextT
		{
			idc = 7007;
			text = "Plot Management";
			x = 0.30 * safezoneW + safezoneX;
			y = 0.30 * safezoneH + safezoneY;
			w = 0.30 * safezoneW;
			h = 0.05 * safezoneH;		
			colorBackground[] = {0,0,0,0.8};	
			colorText[] = {1,1,1,1};			
		};
		class RscText_7008: RscTextT
		{
			idc = 7008;
			text = "Humans Nearby";
			x = 0.31 * safezoneW + safezoneX;
			y = 0.38 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.03 * safezoneH;
			colorText[] = {1,1,1,1};
		};		
		class RscText_7003: RscTextT
		{
			idc = 7003;
			text = "PlotFriends";
			x = 0.45 * safezoneW + safezoneX;
			y = 0.38 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.03 * safezoneH;
			colorText[] = {1,1,1,1};
		};
	};
};
