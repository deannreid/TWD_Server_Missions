class RscTextT
{
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] = {0,0,0,0};
	colorText[] = {0.8784,0.8471,0.651,1};
	text = "";
	fixedWidth = 0;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 2;
	font = "Zeppelin32";
	SizeEx = 0.03921;
};

class RscListBox
{
	access = 0;
	type = 5;
	w = 0.4;
	h = 0.4;
	rowHeight = 0;
	colorText[] = {0.8784,0.8471,0.651,1};
	colorScrollbar[] = {0.95,0.95,0.95,1};
	colorSelect[] = {0.95,0.95,0.95,1};
	colorSelect2[] = {0.95,0.95,0.95,1};
	colorSelectBackground[] = {0,0,0,1};
	colorSelectBackground2[] = {0.8784,0.8471,0.651,1};
	colorBackground[] = {0,0,0,1};
	soundSelect[] = {"",0.1,1};
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	class ScrollBar
	{
		color[] = {1,1,1,0.6};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		shadow = 0;
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
	};
	style = 16;
	font = "Zeppelin32";
	shadow = 2;
	sizeEx = 0.03921;
	color[] = {1,1,1,1};
	period = 1.2;
	maxHistoryDelay = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
};
class RscShortcutButton
{
	type = 16;
	x = 0.1;
	y = 0.1;
	class HitZone
	{
		left = 0.004;
		top = 0.029;
		right = 0.004;
		bottom = 0.029;
	};
	class ShortcutPos
	{
		left = 0.0145;
		top = 0.026;
		w = 0.0392157;
		h = 0.0522876;
	};
	class TextPos
	{
		left = 0.05;
		top = 0.034;
		right = 0.005;
		bottom = 0.005;
	};
	shortcuts[] = {};
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	color[] = {0.8784,0.8471,0.651,1};
	color2[] = {0.95,0.95,0.95,1};
	colorDisabled[] = {1,1,1,0.25};
	colorBackground[] = {1,1,1,1};
	colorBackground2[] = {1,1,1,0.4};
	class Attributes
	{
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
	idc = -1;
	style = 0;
	default = 0;
	shadow = 2;
	w = 0.183825;
	h = 0.104575;
	periodFocus = 1.2;
	periodOver = 0.8;
	animTextureNormal = "\ca\ui\data\ui_button_normal_ca.paa";
	animTextureDisabled = "\ca\ui\data\ui_button_disabled_ca.paa";
	animTextureOver = "\ca\ui\data\ui_button_over_ca.paa";
	animTextureFocused = "\ca\ui\data\ui_button_focus_ca.paa";
	animTexturePressed = "\ca\ui\data\ui_button_down_ca.paa";
	animTextureDefault = "\ca\ui\data\ui_button_default_ca.paa";
	period = 0.4;
	font = "Zeppelin32";
	size = 0.03921;
	sizeEx = 0.03921;
	text = "";
	soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
	soundPush[] = {"\ca\ui\data\sound\new1",0,0};
	soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
	soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
	action = "";
	class AttributesImage
	{
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "left";
	};
};
class SCTraderDialog
{
	idd = -1;
	movingenable = 0;

	class Controls {
		class RscTextT_31000: RscTextT
		{
			idc = -1;
			x = 0.283646 * safezoneW + safezoneX;
			y = 0.22492 * safezoneH + safezoneY;
			w = 0.432709 * safezoneW;
			h = 0.55016 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscTextT_31001: RscTextT
		{
			idc = -1;
			text = "Trader Menu";
			x = 0.283646 * safezoneW + safezoneX;
			y = 0.22492 * safezoneH + safezoneY;
			w = 0.432709 * safezoneW;
			h = 0.055016 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscListbox_31500: RscListbox
		{
			idc = 32000;
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.334952 * safezoneH + safezoneY;
			w = 0.121699 * safezoneW;
			h = 0.178802 * safezoneH;
			onMouseButtonClick = "[(lbCurSel 32000)] spawn SCTraderDialogLoadItemList;";
		};
		class RscTextT_31002: RscTextT
		{
			idc = -1;
			text = "Categories";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.29369 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.027508 * safezoneH;
		};
		class RscListbox_31501: RscListbox
		{
			idc = 32001;
			x = 0.425628 * safezoneW + safezoneX;
			y = 0.334952 * safezoneH + safezoneY;
			w = 0.283965 * safezoneW;
			h = 0.385112 * safezoneH;
			onMouseButtonClick = "[(lbCurSel 32001)] spawn SCTraderDialogShowPrices;";
		};
		class RscShortcutButton_31700: RscShortcutButton
		{
			idc = -1;
			text = "Buy";
			x = 0.635221 * safezoneW + safezoneX;
			y = 0.720064 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.055016 * safezoneH;
			onButtonClick = "[(lbCurSel 32001)] call SCTraderDialogBuy; ((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RscShortcutButton_31701: RscShortcutButton
		{
			idc = -1;
			text = "Sell";
			x = 0.540566 * safezoneW + safezoneX;
			y = 0.720064 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.055016 * safezoneH;
			onButtonClick = "[(lbCurSel 32001)] call SCTraderDialogSell; ((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RscTextT_31003: RscTextT
		{
			idc = -1;
			text = "Buy For";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.555016 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.027508 * safezoneH;
		};
		class RscTextT_31004: RscTextT
		{
			idc = -1;
			text = "Sell For";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.623786 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.027508 * safezoneH;
		};
		class RscTextT_31005: RscTextT
		{
			idc = 32002;
			text = "0 Pounds";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.582524 * safezoneH + safezoneY;
			w = 0.114938 * safezoneW;
			h = 0.027508 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class RscTextT_31006: RscTextT
		{
			idc = 32003;
			text = "0 Pounds";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.651294 * safezoneH + safezoneY;
			w = 0.114938 * safezoneW;
			h = 0.027508 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class RscShortcutButton_31702: RscShortcutButton
		{
			idc = -1;
			text = "Close";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.720064 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.055016 * safezoneH;
			onButtonClick = "SCTraderItemList = []; ((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RscText_31007: RscText
		{
			idc = -1;
			text = "Items";
			x = 0.432389 * safezoneW + safezoneX;
			y = 0.29369 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.027508 * safezoneH;
		};
	};
};
