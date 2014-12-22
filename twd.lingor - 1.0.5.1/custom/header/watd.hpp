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