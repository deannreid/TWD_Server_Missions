class RscPictureGUI
{
	access=0;
	type=0;
	idc=-1;
	colorBackground[]={0,0,0,0};
	colorText[]={0.38,0.63,0.25999999,0.75};
	font="TahomaB";
	sizeEx=0;
	lineSpacing=0;
	text="";
	style="0x30 + 0x100";
	x=0;
	y=0;
	w=0.2;
	h=0.15000001;
};
class RscTitles
{ 
	class zCamoStatusGUI 
	{
		idd = -1;
		fadeout=0;
		fadein=0;
			onLoad = "uiNamespace setVariable ['zCamo_GUI_display', _this select 0]";
			duration = 10e10;
			name= "zCamoGui";
			controlsBackground[] = {};
			objects[] = {};
		class controls 
		{
			class zCamoIcon:RscPictureGUI 
			{
				idc = 1;
				text="custom\walkamongstthedead\zombie.paa";
				x="0.958313 * safezoneW + safezoneX";
				y="0.43 * safezoneH + safezoneY";
				w=0.059999999;
				h=0.079999998;
				colorText[]={1,1,1,1};
			};
		};
	};
	class wm_disp 
	{
        idd = -1;
        onLoad = "uiNamespace setVariable ['wm_disp', _this select 0]";
        fadein = 0;
        fadeout = 0;
        duration = 10e10;
        controlsBackground[] = {};
        objects[] = {};
        class controls 
		{
	        class wm_text2 
			{
	          idc = 1;
	          x = safeZoneX+0.027;//safeZoneW*0.01;
	          y = safeZoneY+safeZoneH-0.16;
	          w = 0.151*safeZoneH;
	          h = 0.057*safeZoneH;
	          shadow = 2;
	          class Attributes
	          {
	                  font = "EtelkaNarrowMediumPro";
	                  color = "#24FFFFFF";
	                  align = "left"; // put "center" here if you want some background
	                  valign = "middle";
	                  shadow = 2;
	          };
	          colorBackground[] = { 1, 0.3, 0, 0 };  // uncomment and increase 4th number to have a background
	          font = "EtelkaNarrowMediumPro";
	          size = 0.06*safeZoneH;
	          type = 13;
	          style = 0;
	          text="";
	        };
        };
	};	
};