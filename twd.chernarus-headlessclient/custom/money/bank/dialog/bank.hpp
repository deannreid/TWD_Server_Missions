///////////////////////////////////////////////////////////////////////////
/// Styles
///////////////////////////////////////////////////////////////////////////
class BOX
{
   type = CT_STATIC;
    idc = -1;
    style = ST_CENTER;
    shadow = 2;
    colorText[] = {1,1,1,1};
    font = "Bitstream";
    sizeEx = 0.02;
    colorBackground[] = { 0.2,0.2,0.2, 0.8 };
    text = "";
 
};
 
class RscCombo
{
        access = 0;
        type = 4;
        style = 0;
        colorSelect[] = {0.023529,0,0.0313725,1};
        colorText[] = {0.023529,0,0.0313725,1};
        colorBackground[] = {0.95,0.95,0.95,1};
        colorScrollbar[] = {0.023529,0,0.0313725,1};
        soundSelect[] = {"",0.1,1};
        soundExpand[] = {"",0.1,1};
        soundCollapse[] = {"",0.1,1};
        maxHistoryDelay = 1;
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
        x = 0;
        y = 0;
        w = 0.12;
        h = 0.035;
        shadow = 0;
        colorSelectBackground[] = {0.8784,0.8471,0.651,1};
        arrowEmpty = "\ca\ui\data\ui_arrow_combo_ca.paa";
        arrowFull = "\ca\ui\data\ui_arrow_combo_active_ca.paa";
        wholeHeight = 0.45;
        color[] = {0,0,0,0.6};
        colorActive[] = {0,0,0,1};
        colorDisabled[] = {0,0,0,0.3};
        font = "Zeppelin32";
        sizeEx = 0.03921;
};



class RscFrame
{
	type = 0;
	idc = -1;
	style = 64;
	shadow = 2;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	font = "Zeppelin32";
	sizeEx = 0.02;
	text = "";
};
class RscEdit
{
	access = 0;
	type = 2;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	colorBackground[] = {0,0,0,1};
	colorText[] = {0.95,0.95,0.95,1};
	colorSelection[] = {0.8784,0.8471,0.651,1};
	autocomplete = "";
	text = "";
	size = 0.2;
	style = "0x00 + 0x40";
	font = "Zeppelin32";
	shadow = 2;
	sizeEx = 0.03921;
};
class RscButton
{
	access = 0;
	type = 1;
	text = "";
	colorText[] = {0.8784,0.8471,0.651,1};
	colorDisabled[] = {0.4,0.4,0.4,1};
	colorBackground[] = {1,0.537,0,0.5};
	colorBackgroundDisabled[] = {0.95,0.95,0.95,1};
	colorBackgroundActive[] = {1,0.537,0,1};
	colorFocused[] = {1,0.537,0,1};
	colorShadow[] = {0.023529,0,0.0313725,1};
	colorBorder[] = {0.023529,0,0.0313725,1};
	soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
	soundPush[] = {"\ca\ui\data\sound\new1",0,0};
	soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
	soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
	style = 2;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	shadow = 2;
	font = "Zeppelin32";
	sizeEx = 0.03921;
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	borderSize = 0;
};
class RscTextU
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

class RscListBoxB
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
class RscShortcutButtonB
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

class RscTextBankSystem
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
class RscListBoxBankSystem
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
class RscShortcutButtonBankSystem
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

class BankSystem
{
	idd = -1;
	movingenable = 0;

	class Controls {
		class RscTextBankSystem_1000: RscTextBankSystem
		{
			idc = -1;
			x = 0.283646 * safezoneW + safezoneX;
			y = 0.22492 * safezoneH + safezoneY;
			w = 0.432709 * safezoneW;
			h = 0.55016 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscTextBankSystem_1001: RscTextBankSystem
		{
			idc = -1;
			text = "Bank";
			x = 0.283646 * safezoneW + safezoneX;
			y = 0.22492 * safezoneH + safezoneY;
			w = 0.432709 * safezoneW;
			h = 0.055016 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscListboxBankSystem_1500: RscListboxBankSystem
		{
			idc = 13000;
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.334952 * safezoneH + safezoneY;
			w = 0.121699 * safezoneW;
			h = 0.178802 * safezoneH;
			onMouseButtonClick = "[(lbCurSel 13000)] spawn lbAddBank;";
		};
		class RscTextBankSystem_1002: RscTextBankSystem
		{
			idc = -1;
			text = "Menu";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.29369 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.027508 * safezoneH;
		};
		class RscListboxBankSystem_1501: RscListboxBankSystem
		{
			idc = 13001;
			x = 0.425628 * safezoneW + safezoneX;
			y = 0.334952 * safezoneH + safezoneY;
			w = 0.283965 * safezoneW;
			h = 0.385112 * safezoneH;
			onMouseButtonClick = "";
		};
		class RscShortcutButtonBankSystem_1700: RscShortcutButtonBankSystem
		{
			idc = 13004;
			text = "Ok";
			x = 0.635221 * safezoneW + safezoneX;
			y = 0.720064 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.055016 * safezoneH;
			onButtonClick = "[(lbCurSel 13001),(lbCurSel 13000)] call switchDialog; ((ctrlParent (_this select 0)) closeDisplay 9000);diag_log format['%1 %2',(lbCurSel 13001),(lbCurSel 13000)];";
		};
		class RscShortcutButtonBankSystem_1701: RscShortcutButtonBankSystem
		{
			idc = 13005;
			text = "Cancel";
			x = 0.540566 * safezoneW + safezoneX;
			y = 0.720064 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.055016 * safezoneH;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 9000);diag_log format['%1 %2',(lbCurSel 13001),(lbCurSel 13000)];";
		};
		class RscTextBankSystem_1003: RscTextBankSystem
		{
			idc = -1;
			text = "Character";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.555016 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.027508 * safezoneH;
		};
		class RscTextBankSystem_1004: RscTextBankSystem
		{
			idc = -1;
			text = "";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.623786 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.027508 * safezoneH;
		};
		class RscTextBankSystem_1005: RscTextBankSystem
		{
			idc = 13002;
			text = "";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.582524 * safezoneH + safezoneY;
			w = 0.114938 * safezoneW;
			h = 0.027508 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class RscTextBankSystem_1006: RscTextBankSystem
		{
			idc = 13003;
			text = "";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.651294 * safezoneH + safezoneY;
			w = 0.114938 * safezoneW;
			h = 0.027508 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class RscShortcutButtonBankSystem_1702: RscShortcutButtonBankSystem
		{
			idc = -1;
			text = $STR_EPOCH_PLAYER_283;
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.720064 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.055016 * safezoneH;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RscText_1007: RscTextBankSystem
		{
			idc = -1;
			text = "Actions";
			x = 0.432389 * safezoneW + safezoneX;
			y = 0.29369 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.027508 * safezoneH;
		};
		class RscTextBankSystemFrameNewSystem: RscTextBankSystem
		{
			idc = -1;
			x = 0.78 * safezoneW + safezoneX;
			y = 0.0111111 * safezoneH + safezoneY;
			w = 0.21 * safezoneW;
			h = 0.507778 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class TWD_Frame_big: RscFrame
{
	idc = -1;
	text = "";
	x = 0.78 * safezoneW + safezoneX;
	y = 0.0111111 * safezoneH + safezoneY;
	w = 0.21 * safezoneW;
	h = 0.507778 * safezoneH;
};
class TWD_header: RscTextU
{
	idc = -1;
	text = "The iBank";
	x = 0.824375 * safezoneW + safezoneX;
	y = 0.0366664 * safezoneH + safezoneY;
	w = 0.118125 * safezoneW;
	h = 0.0288889 * safezoneH;
};
class RscFrame_1801: RscFrame
{
	idc = -1;
	x = 0.800625 * safezoneW + safezoneX;
	y = 0.0677777 * safezoneH + safezoneY;
	w = 0.16375 * safezoneW;
	h = 0.007 * safezoneH;
};
class TWD_Text_Account: RscTextU
{
	idc = -1;
	text = "Player Account";
	x = 0.788125 * safezoneW + safezoneX;
	y = 0.0844444 * safezoneH + safezoneY;
	w = 0.0949999 * safezoneW;
	h = 0.0233333 * safezoneH;
};
class TWD_PlayerMoney: RscTextU
{
	idc = -1;
	text = "Wallet:";
	x = 0.793125 * safezoneW + safezoneX;
	y = 0.133333 * safezoneH + safezoneY;
	w = 0.058125 * safezoneW;
	h = 0.0255556 * safezoneH;
};
class TWD_BankMoneyText: RscTextU
{
	idc = -1;
	text = "Bank:";
	x = 0.794375 * safezoneW + safezoneX;
	y = 0.181111 * safezoneH + safezoneY;
	w = 0.079375 * safezoneW;
	h = 0.0244445 * safezoneH;
};
class TWD_PlayerMoneyValue: RscTextU
{
	idc = 16001;
	x = 0.928125 * safezoneW + safezoneX;
	y = 0.135556 * safezoneH + safezoneY;
	w = 0.058125 * safezoneW;
	h = 0.0255556 * safezoneH;
};
class TWD_BankMoneyValue: RscTextU
{
	idc = 16002;
	x = 0.928125 * safezoneW + safezoneX;
	y = 0.176667 * safezoneH + safezoneY;
	w = 0.058125 * safezoneW;
	h = 0.0255556 * safezoneH;
};
class RscFrame_1802: RscFrame
{
	idc = -1;
	x = 0.801875 * safezoneW + safezoneX;
	y = 0.276667 * safezoneH + safezoneY;
	w = 0.16375 * safezoneW;
	h = 0.007 * safezoneH;
};
class TWD_EditBoxAmmount: RscEdit
{
	idc = 16000;
	x = 0.835 * safezoneW + safezoneX;
	y = 0.333333 * safezoneH + safezoneY;
	w = 0.101875 * safezoneW;
	h = 0.0344444 * safezoneH;
};
class TWD_ButtonDeposit: RscShortcutButtonB
{
	idc = 1700;
	text = "Deposit Money";
	x = 0.908125 * safezoneW + safezoneX;
	y = 0.453334 * safezoneH + safezoneY;
	w = 0.0793749 * safezoneW;
	h = 0.0733334 * safezoneH;
	onButtonClick = "[(ctrlText 16000)] spawn BankDialogDepositAmount; ((ctrlParent (_this select 0)) closeDisplay 9000);";
};
class TWD_ButtonWithdraw: RscShortcutButtonB
{
	idc = 1701;
	text = "Withdraw Money";
	x = 0.7825 * safezoneW + safezoneX;
	y = 0.454445 * safezoneH + safezoneY;
	w = 0.0887499 * safezoneW;
	h = 0.0733334 * safezoneH;
	onButtonClick = "[(ctrlText 16000)] spawn BankDialogWithdrawAmount; ((ctrlParent (_this select 0)) closeDisplay 9000);";
};
class TWD_AmountText: RscTextU
{
	idc = -1;
	text = "Amount";
	x = 0.86 * safezoneW + safezoneX;
	y = 0.296667 * safezoneH + safezoneY;
	w = 0.0512499 * safezoneW;
	h = 0.0244444 * safezoneH;
};


};
};