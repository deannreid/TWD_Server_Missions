#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)
#define GUI_FONT_NORMAL			PuristaMedium
#define GUI_FONT_BOLD			PuristaSemibold
#define GUI_FONT_MONO			EtelkaMonospaceProBold
#define GUI_FONT_SMALL			PuristaMedium
#define GUI_FONT_THIN			PuristaLight

class ZHUD_SLIDER
{
	access = 0;
	type = 3;
	style = 1024;
	w = 0.3;
	color[] = {1,1,1,0.8};
	colorActive[] = {1,1,1,1};
	shadow = 0;
	h = 0.025;
};
class ZHUD_BG
{
	type = 0;
	idc = 124;
	style = 128;
	text = "";
	colorText[] = {0,0,0,0};
	font = GUI_FONT_NORMAL;
	sizeEx = 0;
	shadow = 0;
	x = 0.1;
	y = 0.1;
	w = 0.1;
	h = 0.1;
	colorbackground[] = {0,0,0,1};
};
class ZHUD_TEXT
{
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "";
	fixedWidth = 0;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 1;
	colorShadow[] = {0,0,0,0.5};
	font = GUI_FONT_NORMAL;
	SizeEx = "(			(			(1 / 1.2) / 20) * 0.9)";
	linespacing = 1;
};
class ZHUD_STRTEXT {
  idc = -1; 
  type = 13;  // defined constant
  style = 0x00;            // defined constant
  colorBackground[] = { 1, 1, 1, 0}; 
  x = 0.1; 
  y = 0.1; 
  w = 0.3; 
  h = 0.1; 
  size = 0.018;
  text = "";
  
};
class ZHUD_BUTTON
{
	access = 0;
	type = 1;
	text = "";
	colorText[] = {1,1,1,1};
	colorDisabled[] = {0.4,0.4,0.4,1};
	colorBackground[] = {0,0,0,1};
	colorBackgroundDisabled[] = {0.95,0.95,0.95,1};
	colorBackgroundActive[] = {0,0,0,1};
	colorFocused[] = {0,0,0,1};
	colorShadow[] = {0.023529,0,0.0313725,1};
	colorBorder[] = {0.023529,0,0.0313725,1};
	soundEnter[] = {"\ca\ui_f\data\sound\onover",0.09,1};
	soundPush[] = {"\ca\ui_f\data\sound\new1",0,0};
	soundClick[] = {"\ca\ui_f\data\sound\onclick",0.07,1};
	soundEscape[] = {"\ca\ui_f\data\sound\onescape",0.09,1};
	style = 2;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	shadow = 2;
	font = GUI_FONT_NORMAL;
	sizeEx = "(			(			(1 / 1.2) / 20) * 0.9)";
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	borderSize = 0;
};
class ScrollBar
{
	color[] = {1,1,1,0.6};
	colorActive[] = {1,1,1,1};
	colorDisabled[] = {1,1,1,0.3};
	thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
	arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
	arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
	border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
	shadow = 0;
	scrollSpeed = 0.06;
	width = 0;
	height = 0;
	autoScrollEnabled = 0;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
};
 class ZHUD_COMBO
{
	type = 4;
	style = "0x10 + 0x200";
	font = "PuristaMedium";
	sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.12;
	h = 0.035;
	colorSelect[] = {0,0,0,1};
	colorText[] = {1,1,1,1.0};
	colorBackground[] = {0,0,0,1};
	colorSelectBackground[] = {1,1,1,0.7};
	colorScrollbar[] = {1,0,0,1};
	arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
	arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
	wholeHeight = 0.45;
	colorActive[] = {1,0,0,1};
	colorDisabled[] = {1,1,1,0.25};
	colorPicture[] = {1,1,1,1};
	colorPictureSelected[] = {1,1,1,1};
	colorPictureDisabled[] = {1,1,1,1};
	tooltipColorText[] = {1,1,1,1};
	tooltipColorBox[] = {1,1,1,1};
	tooltipColorShade[] = {0,0,0,0.65};
	soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1};
	soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1};
	soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1};
	maxHistoryDelay = 1; 
	class ComboScrollBar: ScrollBar
	{
		color[] = {1,1,1,1};
	};
};
class ZHUD_PIC
{
    access = 0;
	type = 0;
	idc = -1;
	style = 48;
	shadow = 0;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	text = "";
	font = "PuristaMedium";
	sizeEx = 0;
	lineSpacing = 0;
	fixedWidth = 0;
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
	tooltipColorText[] = {1,1,1,1};
	tooltipColorBox[] = {1,1,1,1};
	tooltipColorShade[] = {0,0,0,1};
};
class Z_HUD_Builder
	{
		idd = 5001;
		duration = 999999;
		onLoad = "uiNamespace setVariable ['Z_HUD_Builder', _this select 0];";
		class controls
		{
			class ZHUD_BG_2200: ZHUD_BG
			{
				idc = -1;
				x = 0.149375 * safezoneW + safezoneX;
				y = 0.159 * safezoneH + safezoneY;
				w = 0.665156 * safezoneW;
				h = 0.616 * safezoneH;
			};
			class ZHUD_BG_2201: ZHUD_BG
			{
				idc = -1;
				x = 0.149375 * safezoneW + safezoneX;
				y = 0.115 * safezoneH + safezoneY;
				w = 0.665156 * safezoneW;
				h = 0.033 * safezoneH;
				colorBackground[] = {256,0,0,0.8};
			};
			class ZHUD_TEXT_3000: ZHUD_TEXT
			{
				idc = -1;
				text = "HUD Builder by Zupa"; //--- ToDo: Localize;
				x = 0.154531 * safezoneW + safezoneX;
				y = 0.1084 * safezoneH + safezoneY;
				w = 0.20625 * safezoneW;
				h = 0.044 * safezoneH;
				colorText[] = {256,256,256,1};
				sizeEx = 1.5 * GUI_GRID_H ;
			};
			class ZHUD_COMBO_2100: ZHUD_COMBO
			{
				idc = 3115;
				x = 0.732031 * safezoneW + safezoneX;
				y = 0.291 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2101: ZHUD_COMBO // ?
			{
				idc = 3114;
				x = 0.732031 * safezoneW + safezoneX;
				y = 0.335 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2102: ZHUD_COMBO
			{
				idc = 3107;
				x = 0.732031 * safezoneW + safezoneX;
				y = 0.731 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2103: ZHUD_COMBO
			{
				idc = 3106;
				x = 0.649531 * safezoneW + safezoneX;
				y = 0.731 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2104: ZHUD_COMBO
			{
				idc = 3105;
				x = 0.567031 * safezoneW + safezoneX;
				y = 0.731 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2105: ZHUD_COMBO
			{
				idc = 3104;
				x = 0.484531 * safezoneW + safezoneX;
				y = 0.731 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2106: ZHUD_COMBO
			{
				idc = 3103;
				x = 0.402031 * safezoneW + safezoneX;
				y = 0.731 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2107: ZHUD_COMBO
			{
				idc = 3102;
				x = 0.319531 * safezoneW + safezoneX;
				y = 0.731 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2108: ZHUD_COMBO
			{
				idc = 3101;
				x = 0.237031 * safezoneW + safezoneX;
				y = 0.731 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2109: ZHUD_COMBO
			{
				idc = 3100;
				x = 0.154531 * safezoneW + safezoneX;
				y = 0.731 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2110: ZHUD_COMBO
			{
				idc = 3113;
				x = 0.732031 * safezoneW + safezoneX;
				y = 0.379 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2111: ZHUD_COMBO
			{
				idc = 3112;
				x = 0.732031 * safezoneW + safezoneX;
				y = 0.423 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2112: ZHUD_COMBO
			{
				idc = 3111;
				x = 0.732031 * safezoneW + safezoneX;
				y = 0.467 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2113: ZHUD_COMBO
			{
				idc = 3110;
				x = 0.732031 * safezoneW + safezoneX;
				y = 0.5154 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2114: ZHUD_COMBO
			{
				idc = 3109;
				x = 0.732033 * safezoneW + safezoneX;
				y = 0.5594 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2115: ZHUD_COMBO
			{
				idc = 3108;
				x = 0.732031 * safezoneW + safezoneX;
				y = 0.6056 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2116: ZHUD_COMBO
			{
				idc = 3116;
				x = 0.732031 * safezoneW + safezoneX;
				y = 0.181 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2117: ZHUD_COMBO
			{
				idc = 3117;
				x = 0.649531 * safezoneW + safezoneX;
				y = 0.181 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2118: ZHUD_COMBO
			{
				idc = 3118;
				x = 0.567031 * safezoneW + safezoneX;
				y = 0.181 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2119: ZHUD_COMBO
			{
				idc = 3119;
				x = 0.484531 * safezoneW + safezoneX;
				y = 0.181 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2120: ZHUD_COMBO
			{
				idc = 3120;
				x = 0.402031 * safezoneW + safezoneX;
				y = 0.181 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2121: ZHUD_COMBO
			{
				idc = 3121;
				x = 0.319531 * safezoneW + safezoneX;
				y = 0.181 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2122: ZHUD_COMBO
			{
				idc = 3122;
				x = 0.237031 * safezoneW + safezoneX;
				y = 0.181 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2123: ZHUD_COMBO
			{
				idc = 3123;
				x = 0.154531 * safezoneW + safezoneX;
				y = 0.181 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2124: ZHUD_COMBO
			{
				idc = 3124;
				x = 0.154531 * safezoneW + safezoneX;
				y = 0.291 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2125: ZHUD_COMBO
			{
				idc = 3125;
				x = 0.154531 * safezoneW + safezoneX;
				y = 0.335 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2126: ZHUD_COMBO
			{
				idc = 3126;
				x = 0.154531 * safezoneW + safezoneX;
				y = 0.379 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2127: ZHUD_COMBO
			{
				idc = 3127;
				x = 0.154531 * safezoneW + safezoneX;
				y = 0.423 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2128: ZHUD_COMBO
			{
				idc = 3128;
				x = 0.154531 * safezoneW + safezoneX;
				y = 0.467 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2129: ZHUD_COMBO
			{
				idc = 3129;
				x = 0.154531 * safezoneW + safezoneX;
				y = 0.511 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2130: ZHUD_COMBO
			{
				idc = 3130;
				x = 0.154531 * safezoneW + safezoneX;
				y = 0.555 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class ZHUD_COMBO_2131: ZHUD_COMBO
			{
				idc = 3131;
				x = 0.154531 * safezoneW + safezoneX;
				y = 0.599 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			/*
			class ZHUD_SLIDER_1900: ZHUD_SLIDER
			{
				idc = 3401;
				x = 0.298906 * safezoneW + safezoneX;
				y = 0.302 * safezoneH + safezoneY;
				w = 0.397031 * safezoneW;
				h = 0.044 * safezoneH;
			};
			
			class ZHUD_TEXT_3001: ZHUD_TEXT
			{
				idc = -1;
				text = "Picture Transparency"; //--- ToDo: Localize;
				x = 0.298906 * safezoneW + safezoneX;
				y = 0.247 * safezoneH + safezoneY;
				w = 0.417656 * safezoneW;
				h = 0.033 * safezoneH;
				sizeEx = 2 * GUI_GRID_H ;
			};
			*/
			class ZHUD_BUTTON_1600: ZHUD_BUTTON
			{
				idc = -1;
				text = "Toggle Bottom Text Hud"; //--- ToDo: Localize;
				x = 0.329844 * safezoneW + safezoneX;
				y = 0.312 * safezoneH + safezoneY;
				w = 0.314531 * safezoneW;
				h = 0.066 * safezoneH;
				colorBackground[] = {256,0,0,0.8};
				sizeEx = 1.5 * GUI_GRID_H ;
				action="call ZHB_fnc_toggleTextHud";
			};
			class ZHUD_BUTTON_1601: ZHUD_BUTTON
			{
				idc = -1;
				text = "Activate"; //--- ToDo: Localize;
				x = 0.329844 * safezoneW + safezoneX;
				y = 0.4154 * safezoneH + safezoneY;
				w = 0.314531 * safezoneW;
				h = 0.066 * safezoneH;
				colorBackground[] = {256,0,0,0.9};
				sizeEx = 1.5 * GUI_GRID_H;
				action="call ZHB_fnc_activateSettings;";
			};
			class ZHUD_BUTTON_1602: ZHUD_BUTTON
			{
				idc = -1;
				text = "Exit"; //--- ToDo: Localize;
				x = 0.329844 * safezoneW + safezoneX;
				y = 0.520995 * safezoneH + safezoneY;
				w = 0.314531 * safezoneW;
				h = 0.066 * safezoneH;
				colorBackground[] = {256,0,0,0.9};
				sizeEx = 1.5 * GUI_GRID_H ;
				action="closeDialog 0";
			};
		};
	};