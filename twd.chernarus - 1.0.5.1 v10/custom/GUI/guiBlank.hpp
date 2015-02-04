class playerStatusGUI 
	{
        idd = 6900;
        movingEnable = 0;
        duration = 100000;
        name = "statusBorder";
        onLoad = "uiNamespace setVariable ['DAYZ_GUI_display', _this select 0];";
        class ControlsBackground 
		{
			//Keep this to inform players of connection issues.
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
			//RestartText //Keep This to inform players on pending restarts.
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
			//watermark
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
			//teamspeakip
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