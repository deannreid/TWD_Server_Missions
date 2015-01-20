class AdminDialog
{
	idd = -1;
	movingenable = 0;

	class Controls {
		class RscText_1000: RscTextT
		{
			idc = 1000;
			x = 0.283646 * safezoneW + safezoneX;
			y = 0.22492 * safezoneH + safezoneY;
			w = 0.432709 * safezoneW;
			h = 0.55016 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscText_1001: RscTextT
		{
			idc = 1001;
			text = "Pick a vehicle or select a category";
			x = 0.295498 * safezoneW + safezoneX;
			y = 0.235917 * safezoneH + safezoneY;
			w = 0.170212 * safezoneW;
			h = 0.0166935 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 13000;
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.268674 * safezoneH + safezoneY;
			w = 0.419186 * safezoneW;
			h = 0.447636 * safezoneH;
		};
		class RscShortcutButton_1701: RscShortcutButton
		{
			idc = -1;
			text = "Perm";
			x = 0.37154 * safezoneW + safezoneX;
			y = 0.720556 * safezoneH + safezoneY;
			w = 0.0651391 * safezoneW;
			h = 0.0590864 * safezoneH;
			onButtonClick = "PermDialogSelected = (lbCurSel 13000); ((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RscShortcutButton_1702: RscShortcutButton
		{
			idc = 12004;
			text = "Air";
			x = 0.485168 * safezoneW + safezoneX;
			y = 0.218000 * safezoneH + safezoneY;
			w = 0.0651391 * safezoneW;
			h = 0.0590864 * safezoneH;
			onButtonClick="[""Air""] call LoadSpecificList;";
		};
		class RscShortcutButton_1704: RscShortcutButton
		{
			idc = 12005;
			text = "Land";
			x = 0.55954 * safezoneW + safezoneX;
			y = 0.218000 * safezoneH + safezoneY;
			w = 0.0651391 * safezoneW;
			h = 0.0590864 * safezoneH;
			onButtonClick="[""LandVehicle""] call LoadSpecificList;";
		};
		class RscShortcutButton_1705: RscShortcutButton
		{
			idc = 12006;
			text = "Sea";
			x = 0.633912 * safezoneW + safezoneX;
			y = 0.218000 * safezoneH + safezoneY;
			w = 0.0651391 * safezoneW;
			h = 0.0590864 * safezoneH;
			onButtonClick="[""Ship""] call LoadSpecificList;";
		};
		class RscShortcutButton_1710: RscShortcutButton
		{
			idc = -1;
			text = "Close";
			x = 0.633912 * safezoneW + safezoneX;
			y = 0.720556 * safezoneH + safezoneY;
			w = 0.0651391 * safezoneW;
			h = 0.0590864 * safezoneH;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
	};
};