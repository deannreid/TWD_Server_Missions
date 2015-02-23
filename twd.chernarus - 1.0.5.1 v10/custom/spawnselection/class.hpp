class ClassDialog
{
	idd = -1;
	movingenable = 0;
	class controlsBackground 
	{
		class ClassBackground: RscText
		{
			text = "";
			x = .31 * safezoneW + safezoneX;
			y = .3 * safezoneH + safezoneY;
			w = .138504 * safezoneW;
			h = .325 * safezoneH;
			colorBackground[] = {.3,.3,.3,1};
			fixedWidth = 0;
		};
	};
	class Controls
	{
		class ClassSelect: RscText
		{
			text = "Class Selection";
			x = .31 * safezoneW + safezoneX;
			y = .26 * safezoneH + safezoneY;
			w = .138504 * safezoneW;
			h = .04025 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {.384,.702,.886,.8};
			fixedWidth = 0;
			shadow = 1;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * .6)";
		};
		class ClassList
		{
			idc = 8888;
			x = .31 * safezoneW + safezoneX;
			y = .303 * safezoneH + safezoneY;
			w = .138504 * safezoneW;
			h = .25 * safezoneH;
			autoScrollDelay = 5;
			autoScrollRewind = 0;
			autoScrollSpeed = -1;
			colorSelect[] = {};
			colorSelectBackground[] = {.5,.5,.5,1};
			colorText[] = {.88,.88,.88,1};
			font = "Zeppelin32";
			maxHistoryDelay = 1;
			onLBSelChanged = "call classPreview;";
			rowHeight = 0;
			class ScrollBar
			{
				arrowEmpty = "\ca\ui\data\arrow_up_ca.paa";
				arrowFull = "\ca\ui\data\arrow_up_ca.paa";
				border = "\ca\ui\data\ui_border_scroll_ca.paa";
				color[] = {.5,.5,.5,.5};
				colorActive[] = {.5,.5,.5,.3};
				colorDisabled[] = {.5,.5,.5,.1};
				shadow = 0;
				thumb = "";
			};
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * .6)";
			soundSelect[] = {"",.1,1};
			style = 16;
			type = 5;
		};
		class ClassButton
		{
			idc = 8889;
			text = "Select Class";
			x = .324 * safezoneW + safezoneX;
			y = .567 * safezoneH + safezoneY;
			w = .109 * safezoneW;
			h = .044 * safezoneH;
			action = "call classPick;";
			borderSize = 0;
			colorBackground[] = {.4,.4,.4,1};
			colorBackgroundActive[] = {.5,.5,.5,1};
			colorBackgroundDisabled[] = {.2,.2,.2,1};
			colorBorder[] = {.88,.88,.88,1};		
			colorDisabled[] = {.2,.2,.2,1};
			colorFocused[] = {.4,.4,.4,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			offsetPressedX = .002;
			offsetPressedY = .002;
			offsetX = .003;
			offsetY = .003;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * .6)";
			soundClick[] = {"\ca\ui\data\sound\onclick",.07,1};
			soundEnter[] = {"\ca\ui\data\sound\onover",.09,1};
			soundEscape[] = {"\ca\ui\data\sound\onescape",.09,1};
			soundPush[] = {"\ca\ui\data\sound\new1",0,0};			
			style = 2;
			type = 1;
		};
	};
};
