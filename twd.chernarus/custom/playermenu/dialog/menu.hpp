class RscTextMenu
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
class RscListboxMenu
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
class RscShortcutButtonMenu
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

class Menu
{
	idd = -1;
	movingenable = 0;

	class Controls {
		class RscTextBankSystem_1000: RscTextBankSystem
		{
			idc = -1;
			x = 0.245703 * safezoneW + safezoneX;
			y = 0.1675 * safezoneH + safezoneY;
			w = 0.508594 * safezoneW;
			h = 0.665 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class Menu_Frmbig: RscFrame
{
	idc = -1;
	text = "The Wasteland Diaries";
	x = 0.245703 * safezoneW + safezoneX;
	y = 0.1675 * safezoneH + safezoneY;
	w = 0.508594 * safezoneW;
	h = 0.665 * safezoneH;
};
class Menu_Frmsmall: RscFrame
{
	idc = -1;
	x = 0.541016 * safezoneW + safezoneX;
	y = 0.2025 * safezoneH + safezoneY;
	w = 0.00525 * safezoneW;
	h = 0.595 * safezoneH;
};
class Menu_Headerleft: RscTextMenu
{
	idc = -1;
	text = "Character Stats";
	x = 0.270313 * safezoneW + safezoneX;
	y = 0.185 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.0525 * safezoneH;
};
class Menu_MoneyText: RscTextMenu
{
	idc = -1;
	text = "Money:";
	x = 0.270313 * safezoneW + safezoneX;
	y = 0.2725 * safezoneH + safezoneY;
	w = 0.04875 * safezoneW;
	h = 0.0311111 * safezoneH;
};
class Menu_MoneyWrite: RscTextMenu
{
	idc = 15001;
	x = 0.338938 * safezoneW + safezoneX;
	y = 0.255 * safezoneH + safezoneY;
	w = 0.188672 * safezoneW;
	h = 0.07 * safezoneH;
};
class Menu_ZombiekillTxt: RscTextMenu
{
	idc = -1;
	text = "Bank:";
	x = 0.270313 * safezoneW + safezoneX;
	y = 0.325 * safezoneH + safezoneY;
	w = 0.119375 * safezoneW;
	h = 0.0344444 * safezoneH;
};
class Menu_BanditKillsTxt: RscTextMenu
{
	idc = -1;
	text = "Bandits killed:";
	x = 0.270313 * safezoneW + safezoneX;
	y = 0.3775 * safezoneH + safezoneY;
	w = 0.119375 * safezoneW;
	h = 0.0344444 * safezoneH;
};
class Menu_WIP: RscTextMenu
{
	idc = -1;
	text = "This is a Work in Progress";
	x = 0.270313 * safezoneW + safezoneX;
	y = 0.5999 * safezoneH + safezoneY;
	w = 0.119375 * safezoneW;
	h = 0.0344444 * safezoneH;
};
class Menu_ZombieKillsWrite: RscTextMenu
{
	idc = 15002;
	x = 0.338938 * safezoneW + safezoneX;
	y = 0.324444 * safezoneH + safezoneY;
	w = 0.119375 * safezoneW;
	h = 0.0344444 * safezoneH;
};
class Menu_BanditKillsWrite: RscTextMenu
{
	idc = 15003;
	x = 0.338938 * safezoneW + safezoneX;
	y = 0.3775 * safezoneH + safezoneY;
	w = 0.119375 * safezoneW;
	h = 0.0344444 * safezoneH;
};
class Menu_HeaderRight: RscTextMenu
{
	idc = -1;
	text = "Actions";
	x = 0.590234 * safezoneW + safezoneX;
	y = 0.185 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.0525 * safezoneH;
};
class Menu_BikeTxt: RscTextMenu
{
	idc = -1;
	text = "Construct Bike";
	x = 0.549219 * safezoneW + safezoneX;
	y = 0.2725 * safezoneH + safezoneY;
	w = 0.093125 * safezoneW;
	h = 0.0288889 * safezoneH;
};
class Menu_BikeBTN: RscShortcutButtonMenu
{
	idc = 1700;
	text = "GO";
	x = 0.666641 * safezoneW + safezoneX;
	y = 0.249445 * safezoneH + safezoneY;
	w = 0.08125 * safezoneW;
	h = 0.0722223 * safezoneH;
                  onButtonClick = "call Deploy; ((ctrlParent (_this select 0)) closeDisplay 9000);";
};
class Menu_ViewdistanceTxt: RscTextMenu
{
	idc = -1;
	text = "Viewdistance";
	x = 0.550625 * safezoneW + safezoneX;
	y = 0.317778 * safezoneH + safezoneY;
	w = 0.093125 * safezoneW;
	h = 0.0288889 * safezoneH;
};
class RscListbox_1500: RscListboxMenu
{
	idc = 15004;
	x = 0.676875 * safezoneW + safezoneX;
	y = 0.321111 * safezoneH + safezoneY;
	w = 0.06375 * safezoneW;
	h = 0.106667 * safezoneH;
	onMouseButtonClick = "[(lbCurSel 15004)] spawn view;";
};
class Menu_EvacTxt: RscTextMenu
{
	idc = 1010;
	text = "Request Evac";
	x = 0.55625 * safezoneW + safezoneX;
	y = 0.441111 * safezoneH + safezoneY;
	w = 0.090625 * safezoneW;
	h = 0.0388889 * safezoneH;
};
class Menu_EvacBtn: RscShortcutButtonMenu
{
	idc = 1701;
	text = "GO";
	x = 0.67 * safezoneW + safezoneX;
	y = 0.425556 * safezoneH + safezoneY;
	w = 0.08125 * safezoneW;
	h = 0.0722223 * safezoneH;
                  onButtonClick = "call Evac; ((ctrlParent (_this select 0)) closeDisplay 9000);";
};
class Menu_FunTxt: RscTextMenu
{
	idc = 1011;
	text = "FUN stuff";
	x = 0.561875 * safezoneW + safezoneX;
	y = 0.687778 * safezoneH + safezoneY;
	w = 0.090625 * safezoneW;
	h = 0.0388889 * safezoneH;
};
class Menu_FunDance: RscShortcutButtonMenu
{
	idc = 1702;
	x = 0.557422 * safezoneW + safezoneX;
	y = 0.7275 * safezoneH + safezoneY;
	w = 0.028125 * safezoneW;
	h = 0.047778 * safezoneH;
                  onButtonClick = "call Dance; ((ctrlParent (_this select 0)) closeDisplay 9000);";
};
class Menu_FunDance2: RscShortcutButtonMenu
{
	idc = 1703;
	x = 0.598437 * safezoneW + safezoneX;
	y = 0.7275 * safezoneH + safezoneY;
	w = 0.03 * safezoneW;
	h = 0.0455556 * safezoneH;
};
class Menu_FunHandstand: RscShortcutButtonMenu
{
	idc = 1704;
	x = 0.639453 * safezoneW + safezoneX;
	y = 0.7275 * safezoneH + safezoneY;
	w = 0.0290625 * safezoneW;
	h = 0.0416668 * safezoneH;
};
class RscShortcutButtonMenu_1705: RscShortcutButtonMenu
{
	idc = 1705;
	x = 0.680469 * safezoneW + safezoneX;
	y = 0.7275 * safezoneH + safezoneY;
	w = 0.0290625 * safezoneW;
	h = 0.0416668 * safezoneH;
};
class RscTextMenu_1012: RscTextMenu
{
	idc = 1012;
	text = "Suicide";
	x = 0.55625 * safezoneW + safezoneX;
	y = 0.518888 * safezoneH + safezoneY;
	w = 0.08875 * safezoneW;
	h = 0.0411112 * safezoneH;
};
class Menu_SuicideBtn: RscShortcutButtonMenu
{
	idc = 1706;
	text = "GO";
	x = 0.67125 * safezoneW + safezoneX;
	y = 0.502222 * safezoneH + safezoneY;
	w = 0.08125 * safezoneW;
	h = 0.0722223 * safezoneH;
                 onButtonClick = "call Suicide; ((ctrlParent (_this select 0)) closeDisplay 9000);";
};

};
};