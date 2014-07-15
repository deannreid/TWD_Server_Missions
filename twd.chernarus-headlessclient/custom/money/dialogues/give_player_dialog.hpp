class RscTextP
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

class RscListBoxP
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
class RscShortcutButtonP
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
class GivePlayerDialog
{
	idd = -1;
	movingenable = 0;

	class Controls {
		class RscTextP_1000: RscTextP
		{
			idc = -1;
			x = 0.283646 * safezoneW + safezoneX;
			y = 0.22492 * safezoneH + safezoneY;
			w = 0.432709 * safezoneW;
			h = 0.398866 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscTextP_1001: RscTextP
		{
			idc = -1;
			text = "Give Player";
			x = 0.283646 * safezoneW + safezoneX;
			y = 0.22492 * safezoneH + safezoneY;
			w = 0.432709 * safezoneW;
			h = 0.055016 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscTextP_1002: RscTextP
		{
			idc = -1;
			text = "Player";
			x = 0.351256 * safezoneW + safezoneX;
			y = 0.307444 * safezoneH + safezoneY;
			w = 0.108177 * safezoneW;
			h = 0.041262 * safezoneH;
		};
		class RscTextP_1006: RscTextP
		{
			idc = -1;
			text = "Amount";
			x = 0.37154 * safezoneW + safezoneX;
			y = 0.417476 * safezoneH + safezoneY;
			w = 0.0473275 * safezoneW;
			h = 0.041262 * safezoneH;
		};
		class RscTextP_1004: RscTextP
		{
			idc = 14001;
			text = "";
			x = 0.351256 * safezoneW + safezoneX;
			y = 0.348706 * safezoneH + safezoneY;
			w = 0.108177 * safezoneW;
			h = 0.041262 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class RscEdit_1400: RscEdit
		{
			idc = 14000;
			x = 0.425628 * safezoneW + safezoneX;
			y = 0.417476 * safezoneH + safezoneY;
			w = 0.141983 * safezoneW;
			h = 0.041262 * safezoneH;
		};
		class RscShortcutButton_1700: RscShortcutButtonP
		{
			idc = -1;
			text = "Give Amount";
			x = 0.351256 * safezoneW + safezoneX;
			y = 0.486246 * safezoneH + safezoneY;
			w = 0.0878939 * safezoneW;
			h = 0.055016 * safezoneH;
			onButtonClick = "[(ctrlText 14000)] spawn GivePlayerAmount; ((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RscShortcutButton_1702: RscShortcutButtonP
		{
			idc = -1;
			text = "Close";
			x = 0.466195 * safezoneW + safezoneX;
			y = 0.555016 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.055016 * safezoneH;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
	};
};