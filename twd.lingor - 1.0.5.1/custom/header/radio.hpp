#define MANDCT_STATIC                0
#define MANDCT_BUTTON                1
#define MANDCT_EDIT                  2
#define MANDCT_SLIDER                3
#define MANDCT_COMBO                 4
#define MANDCT_LISTBOX               5
#define MANDCT_MAP                   101
#define MANDST_LEFT                  0
#define MANDST_CENTER                2
#define MANDST_MULTI                 16
#define MANDST_PICTURE               48
#define MANDST_FRAME                 64
#define MANDST_BACKGROUND            80
#define MANDST_HUD_BACKGROUND        128
#define MANDST_WITH_RECT             160
#define MANDST_SHADOW                256
#define FontMandM               "Bitstream"
#define FontMandHTML            "Bitstream"


class RscMandText
{
        type = MANDCT_STATIC;
        idc = -1;
        style = MANDST_LEFT;
        h = 0.04;
        colorBackground[] = {0, 0, 0, 0};
        colorText[] = {1, 1, 1, 1};
        font = FontMandM;
        sizeEx = 0.02;
};


class RscMandPicture
{
        type = MANDCT_STATIC;
        idc = -1;
        style = MANDST_PICTURE;
        colorBackground[] = {0, 0, 0, 0};
        colorText[] = {1, 1, 1, 1};
        font = FontMandM;
        sizeEx = 0.04;
};


class RscMandButton
{
        type = MANDCT_BUTTON;
        idc = -1;
        style = MANDST_CENTER;
		access = ReadAndWrite;
        colorText[] = {0, 0, 0, 1};
        font = FontMandHTML;
        sizeEx = 0.025;
        soundPush[] = {, 0.2, 1};
        soundClick[] = {"ui\ui_ok", 0.2, 1};
        soundEscape[] = {"ui\ui_cc", 0.2, 1};
        default = false;
        colorDisabled[] = {0.3, 0.3, 0.3, 1};
        colorBackground[] = {0.6, 0.6, 0.6, 0.5};
        colorBackgroundActive[] = {0.8,0.8,0.8,0.5};
        colorBackgroundDisabled[] = {0.6, 0.6, 0.6, 1};
        colorFocused[] = {0,0,0,1};
        colorShadow[] = {0,0,0,0.1};
        colorBorder[] = {0,0,0,1};
        offsetX = 0.004;
        offsetY = 0.004;
        offsetPressedX = 0.002;
        offsetPressedY = 0.002;
		soundEnter[] = {"ui\ui_ok", 0.2, 1};
        borderSize = 0.0;
};

class RscMandBackground
{
        type = MANDCT_STATIC;
        idc = -1;
        style = MANDST_HUD_BACKGROUND;
        colorBackground[] = {0, 0, 0, 0.2};
        colorText[] = {1, 1, 1, 1};
        font = FontMandHTML;
        sizeEx = 0.04;
};


class RscMandFrame
{
        type = MANDCT_STATIC;
        idc = -1;
        style = MANDST_FRAME;
        colorBackground[] = {0, 0, 0, 0};
        colorText[] = {1, 1, 1, 1};
        font = FontMandM;
        sizeEx = 0.04;
};

class RscMandEdit
{
       type = MANDCT_EDIT;
       idc = -1;
       style = MANDST_LEFT;
       font = FontMandHTML;
       sizeEx = 0.02;
       colorText[] = {0, 0, 0, 1};
       colorSelection[] = {0.5, 0.5, 0.5, 1};
       autocomplete = false;
       text = ;
};


class RscMandListBox
{
        type = MANDCT_LISTBOX;
        style = MANDST_LEFT;
        idc = -1;
        colorSelect[] = {1.0, 1.0, 1.0, 1};
        colorSelectBackground[] = {0.2, 0.2, 0.2, 0.1};
        colorText[] = {0.0, 0.0, 1.0, 1};
        colorBackground[] = {0.0, 0.0, 0.0, 1};
        font = FontMandHTML;
        sizeEx = 0.025;
        rowHeight = 0.03;
        soundSelect[] = {"", 0.1, 1};
    
        maxHistoryDelay = 1;
        autoScrollSpeed = -1;
        autoScrollDelay = 5;
        autoScrollRewind = 0;

        class ScrollBar
        {
           color[] = {1,1,1,0.6};
           colorActive[] = {1,1,1,1};
           colorDisabled[] = {1,1,1,0.3};
           thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
           arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
           arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
           border = "\ca\ui\data\ui_border_scroll_ca.paa";
       };
};

class RscMandCombo
{
	access = ReadAndWrite;
	type = MANDCT_COMBO;
	style = 0;
	h = 0.05;
	wholeHeight = 0.25;
        colorSelect[] = {0.0, 0.0, 0.0, 1};
        colorText[] = {1.0, 1.0, 1.0, 1};
        colorBackground[] = {0.0, 0.0, 0.0, 1};
        colorScrollbar[] = {0.2, 0.2, 0.2, 0.1};
        font = FontMandHTML;
	sizeEx = 0.025;
        soundSelect[] = {"", 0.1, 1};
        soundExpand[] = {"", 0.1, 1};
        soundCollapse[] = {"", 0.1, 1};
};


class RscMandSlider
{
	type = MANDCT_SLIDER;
	style = 1024;
	color[] = {0, 0, 0, 1};
	angle = 0;
	idc = -1;
	sizeEx = 0.025;
	selection="display";
	w = 0.2;
	h = 0.025;
};

class DlgMandoMusic
{
  idd = 100;
  movingEnable = true;
  controlsBackground[] = {MUSIC_BACKGROUND,MUSIC_FRAME};
  class MUSIC_BACKGROUND : RscMandBackground
  {
     colorBackground[] = {0, 0.1, 0.3, 0.6};
     text = ;
     style = MANDST_HUD_BACKGROUND;
     sizeEx = 0.015;
     x = 0.0+0.05;
     y = 0.0+0.05-0.01;
     w = 0.32-0.05+0.1;
     h = 0.585 + 0.02 + 0.011+0.02;
  };
  class MUSIC_FRAME : RscMandText
  {
     idc = 101;
     style = MANDST_FRAME;
     colorText[] = {0, 0.6, 1, 1};
     text = "Mando Music List";
     font = "Bitstream";
     sizeEx = 0.03;
     x = 0.01+0.05;
     y = 0.011+0.05-0.01;
     w = 0.30-0.05+0.1;
     h = 0.585+0.02;
  };

  objects[] = { };
  controls[] = {MUSICLIST,MUSIC};


   class MUSICLIST : RscMandListBox
   {
      idc = 102;
      style = MANDST_LEFT;
      x = 0.021+0.05;
      y = 0.033+0.05;
      w = 0.28-0.05+0.1;
      h = 0.585 - 0.033 - 0.038;
      colorText[] = {0.0, 0.8, 1, 1};
      font = "Bitstream";
      sizeEx = 0.03;
      onLBSelChanged = "_this execVM""custom\CarRadio\playtrack.sqf""";
   };
   
   class MUSIC : RscMandEdit
   {
	idc = 103;
	style = MANDST_LEFT + MANDST_WITH_RECT + MANDST_SHADOW;
  	x = 0.021+0.05;
  	y = 0.585 - 0.033+0.05;
  	w = 0.28-0.05+0.1;
  	h = 0.037;
        colorText[] = {0, 0.8, 1, 1};
        font = "Bitstream";
        sizeEx = 0.03;
	text = "";
   };
};