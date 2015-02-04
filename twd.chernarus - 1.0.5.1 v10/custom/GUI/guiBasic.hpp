	class playerStatusGUI 
	{
        idd = 6900;
        movingEnable = 0;
        duration = 100000;
        name = "statusBorder";
        onLoad = "uiNamespace setVariable ['DAYZ_GUI_display', _this select 0];";
        class ControlsBackground 
		{
			//Food Image/BG
            class RscPicture_1901: RscPictureGUI
            {
                idc = 1901;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.5 * safezoneW + safezoneX;
                y = 0.933333333333333 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
            };
            class RscPicture_1201: RscPictureGUI
            {
                idc = 1201;
                text = "\z\addons\dayz_code\gui\status\status_food_border_ca.paa";
                x = 0.5 * safezoneW + safezoneX;
                y = 0.933333333333333 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
            };
			
			//Blood Image/BG
            class RscPicture_1900: RscPictureGUI
            {
                idc = 1900;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.383333333333333 * safezoneW + safezoneX;
                y = 0.933333333333333 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
            };
            class RscPicture_1200: RscPictureGUI
            {
                idc = 1200;
                x = 0.383333333333333 * safezoneW + safezoneX;
                y = 0.933333333333333 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
            };

			//Thirst Image/BG
            class RscPicture_1902: RscPictureGUI
            {
                idc = 1902;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.441666666666667 * safezoneW + safezoneX;
                y = 0.933333333333333 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
            };
            class RscPicture_1202: RscPictureGUI
            {
                idc = 1202;
                text = "\z\addons\dayz_code\gui\status\status_thirst_border_ca.paa";
                x = 0.441666666666667 * safezoneW + safezoneX;
                y = 0.933333333333333 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
            };
			
			//Temp Image/BG
            class RscPicture_1908: RscPictureGUI
            {
                idc = 1908;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.558333333333333 * safezoneW + safezoneX;
                y = 0.933333333333333 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
            };
            class RscPicture_1208: RscPictureGUI
            {
                idc = 1208;
                text = "\z\addons\dayz_code\gui\status\status_temp_outside_ca.paa";
                x = 0.558333333333333 * safezoneW + safezoneX;
                y = 0.933333333333333 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
            };
			//Broken Leg Image
            class RscPicture_1203: RscPictureGUI
            {
                idc = 1203;
                text = "\z\addons\dayz_code\gui\status\status_effect_brokenleg.paa";
                x = 0.816666666666667 * safezoneW + safezoneX;
                y = 0.740740740740741 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
                colorText[] = {1,1,1,1};
            };
			
			//Connection Image
            class RscPicture_1204: RscPictureGUI
            {
                idc = 1204;
                text = "\z\addons\dayz_code\gui\status\status_connection_ca.paa";
                x = 0.883333333333333 * safezoneW + safezoneX;
                y = 0.844444444444444 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
                colorText[] = {1,1,1,1};
            };	
		};
		
        class Controls 
		{
			//Blood Control
            class RscPicture_1300: RscPictureGUI
            {
                idc = 1300;
                x = 0.383333333333333 * safezoneW + safezoneX;
                y = 0.933333333333333 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
            };
			//Bleeding Control
            class RscPicture_1303: RscPictureGUI
            {
                idc = 1303;
                text = "\z\addons\dayz_code\gui\status\status_bleeding_ca.paa";
                x = 0.383333333333333 * safezoneW + safezoneX;
                y = 0.933333333333333 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
                colorText[] = {1,1,1,0.5};
            };
			
			//Food Control
            class RscPicture_1301: RscPictureGUI
            {
                idc = 1301;
                x = 0.5 * safezoneW + safezoneX;
                y = 0.933333333333333 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
            };
			
			//Thirst Control
            class RscPicture_1302: RscPictureGUI
            {
                idc = 1302;
                x = 0.441666666666667 * safezoneW + safezoneX;
                y = 0.933333333333333 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
            };
			//Temperature Control
            class RscPicture_1306: RscPictureGUI
            {
                idc = 1306;
                x = 0.558333333333333 * safezoneW + safezoneX;
                y = 0.933333333333333 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
            };			
			//RestartText
            class RscPicture_1405: RscPictureGUI
			{
                idc = 1405;
                text = "custom\GUI\restart.paa";
                x = 0 * safezoneW + safezoneX;
                y = 0.096296296296296 * safezoneH + safezoneY;
                w = 0.0333333333333333 * safezoneW;
                h = 0.0592592592592593 * safezoneH;
                colorText[] = {1,1,1,1};
            };	
	
			//Restart Count
            class RscText_1404: RscTextGUIK
            {
                idc = 1404;
                text = "(180-(round(serverTime/60)))";
                x = 0 * safezoneW + safezoneX;
                y = 0.1777777777777779 * safezoneH + safezoneY;
                w = 0.0333333333333333 * safezoneW;
                h = 0.0296296296296296 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
//wmark
            class RscPicture_1410: RscPictureGUI
            {
                idc = 1410;
                text = "custom\GUI\watermark.paa";
                x = 0.758333333333333 * safezoneW + safezoneX;
                y = 0.933333333333333 * safezoneH + safezoneY;
                w = 0.241666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
                colorText[] = {1,1,1,1};
            };	
	
//tsip
            class RscText_1411: RscTextT
            {
                idc = 1411;
                text = "teamspeak: voice.vlhosting.co.uk";
                x = 0 * safezoneW + safezoneX;
                y = 0.948148148148148 * safezoneH + safezoneY;
                w = 0.183333333333333 * safezoneW;
                h = 0.0592592592592593 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };		
        };
    };