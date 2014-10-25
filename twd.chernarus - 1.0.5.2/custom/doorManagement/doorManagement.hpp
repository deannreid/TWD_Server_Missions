class DoorManagement
{
	idd = 711195;
	onLoad = "uiNamespace setVariable ['DoorManagement', _this select 0]";
	class Controls {
		class RscText_7100: RscTextT
		{
			idc = 7100;
			x = 0.30 * safezoneW + safezoneX;
			y = 0.30 * safezoneH + safezoneY;
			w = 0.30 * safezoneW;
			h = 0.5 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};	
		class RscListbox_7101: RscListbox
		{
			idc = 7101;
			x = 0.31* safezoneW + safezoneX;
			y = 0.41 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.30 * safezoneH;
			soundSelect[] = {"",0.1,1};
			colorBackground[] = {0.1,0.1,0.1,0.8};
		};
		class RscListbox_7102: RscListbox
		{
			idc = 7102;
			x = 0.45 * safezoneW + safezoneX;
			y = 0.41* safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.30 * safezoneH;
			soundSelect[] = {"",0.1,1};
			colorBackground[] = {0.1,0.1,0.1,0.8};
		};
		class RscShortcutButton_7104: RscShortcutButton
		{
			idc = 7104;
			text = "Add";
			x = 0.33 * safezoneW + safezoneX;
			y = 0.70 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.06 * safezoneH;
			onButtonClick = "[(lbCurSel 7101)] call DoorAddFriend;";
		};
		class RscShortcutButton_7105: RscShortcutButton
		{
			idc = 7105;
			text = "Delete";
			x = 0.47 * safezoneW + safezoneX;
			y = 0.70 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.06 * safezoneH;
			onButtonClick = "[(lbCurSel 7102)] call DoorRemoveFriend;";
		};	
		class RscShortcutButton_7106: RscShortcutButton
		{
			idc = 7106;
			text = "Close";
			x = 0.40 * safezoneW + safezoneX;
			y = 0.74 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.06 * safezoneH;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 9000);";
		};		
		class RscText_7107: RscTextT
		{
			idc = 7107;
			text = "Door Management";
			x = 0.30 * safezoneW + safezoneX;
			y = 0.30 * safezoneH + safezoneY;
			w = 0.30 * safezoneW;
			h = 0.05 * safezoneH;		
			colorBackground[] = {0,0,0,0.8};	
			colorText[] = {1,1,1,1};			
		};
		class RscText_7108: RscTextT
		{
			idc = 7108;
			text = "Online People";
			x = 0.31 * safezoneW + safezoneX;
			y = 0.38 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.03 * safezoneH;
			colorText[] = {1,1,1,1};
		};		
		class RscText_7103: RscTextT
		{
			idc = 71103;
			text = "DoorFriends";
			x = 0.45 * safezoneW + safezoneX;
			y = 0.38 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.03 * safezoneH;
			colorText[] = {1,1,1,1};
		};
	};
};
