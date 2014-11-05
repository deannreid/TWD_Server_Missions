class playerStatusGUI {
        idd = 6900;
        movingEnable = 0;
        duration = 100000;
        name = "statusBorder";
        onLoad = "uiNamespace setVariable ['DAYZ_GUI_display', _this select 0];";
        class ControlsBackground {
            class RscPicture_1901: RscPictureGUI
            {
                idc = 1901;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.905313 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;//2
                w = 0.075;
                h = 0.10;
            };
            class RscPicture_1201: RscPictureGUI
            {
                idc = 1201;
                text = "\z\addons\dayz_code\gui\status\status_food_border_ca.paa";
                x = 0.905313 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;//2
                w = 0.075;
                h = 0.10;
            };
            class RscPicture_1900: RscPictureGUI
            {
                idc = 1900;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.875313 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY; //3
                w = 0.075;
                h = 0.10;
            };
            class RscPicture_1200: RscPictureGUI
            {
                idc = 1200;
                //text = "\z\addons\dayz_code\gui\status\status_blood_border_ca.paa";
                x = 0.875313 * safezoneW + safezoneX;
                y = 0.93* safezoneH + safezoneY; //3
                w = 0.075;
                h = 0.10;
            };
            class RscPicture_1902: RscPictureGUI
            {
                idc = 1902;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.935313 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY; //1
                w = 0.075;
                h = 0.10;
            };
            class RscPicture_1202: RscPictureGUI
            {
                idc = 1202;
                text = "\z\addons\dayz_code\gui\status\status_thirst_border_ca.paa";
                x = 0.935313 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY; //1
                w = 0.075;
                h = 0.10;
            };
            class RscPicture_1908: RscPictureGUI
            {
                idc = 1908;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.845313 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY; //3
                w = 0.075;
                h = 0.10;
            };
            class RscPicture_1208: RscPictureGUI
            {
                idc = 1208;
                text = "\z\addons\dayz_code\gui\status\status_temp_outside_ca.paa";
                x = 0.845313 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY; //3
                w = 0.075;
                h = 0.10;
            };
            class RscPicture_1203: RscPictureGUI
            {
                idc = 1203;
                text = "\z\addons\dayz_code\gui\status\status_effect_brokenleg.paa";
                x = 0.955313 * safezoneW + safezoneX;
                y = 0.66 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
                colorText[] = {1,1,1,1};
            };
            class RscPicture_1204: RscPictureGUI
            {
                idc = 1204;
                text = "\z\addons\dayz_code\gui\status\status_connection_ca.paa";
                x = 0.955313 * safezoneW + safezoneX;
                y = 0.51 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
                colorText[] = {1,1,1,1};
            };
            class RscPicture_1205: RscPictureGUI
            {
                idc = 1205;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.955313 * safezoneW + safezoneX;
                y = 0.30 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
            class RscPicture_1206: RscPictureGUI
            {
                idc = 1206;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.955313 * safezoneW + safezoneX;
                y = 0.37 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
            class RscPicture_1307: RscPictureGUI
            {
                idc = 1307;
                text = "custom\GUI\st_humanity_survivor.paa";
                x = 0.955313 * safezoneW + safezoneX;
                y = 0.45 * safezoneH + safezoneY;
                w = 0.027 * safezoneW;
                h = 0.037 * safezoneH;
                colorText[] = {1,1,1,1};
            };
            class RscPicture_1308: RscPictureGUI
            {
                idc = 1308;
                text = "custom\GUI\st_humanity_hero.paa";
                x = 0.955313 * safezoneW + safezoneX;
                y = 0.50 * safezoneH + safezoneY;
                w = 0.027 * safezoneW;
                h = 0.037 * safezoneH;
                colorText[] = {1,1,1,1};
            };
            class RscPicture_1309: RscPictureGUI
            {
                idc = 1309;
                text = "custom\GUI\st_humanity_bandit.paa";
                x = 0.955313 * safezoneW + safezoneX;
                y = 0.55 * safezoneH + safezoneY;
                w = 0.027 * safezoneW;
                h = 0.037 * safezoneH;
                colorText[] = {1,1,1,1};
            };
            class RscPicture_1310: RscPictureGUI
            {
                idc = 1310;
                text = "custom\GUI\zombie.paa";
                x = 0.955313 * safezoneW + safezoneX;
                y = 0.60 * safezoneH + safezoneY;
                w = 0.027 * safezoneW;
                h = 0.037 * safezoneH;
                colorText[] = {1,1,1,1};
            };
        };
        class Controls {
            class RscPicture_1301: RscPictureGUI
            {
                idc = 1301;
                //text = "\z\addons\dayz_code\gui\status\status_food_inside_ca.paa";
                x = 0.905313 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
            class RscPicture_1300: RscPictureGUI
            {
                idc = 1300;
                //text = "\z\addons\dayz_code\gui\status\status_blood_inside_ca.paa";
                x = 0.875313 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
            class RscPicture_1302: RscPictureGUI
            {
                idc = 1302;
                //text = "\z\addons\dayz_code\gui\status\status_thirst_inside_ca.paa";
                x = 0.935313 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
            class RscPicture_1306: RscPictureGUI
            {
                idc = 1306;
                //text = "\z\addons\dayz_code\gui\status\status_temp_ca.paa";
                x = 0.845313 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
            class RscPicture_1303: RscPictureGUI
            {
                idc = 1303;
                text = "\z\addons\dayz_code\gui\status\status_bleeding_ca.paa";
                x = 0.875313 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
                colorText[] = {1,1,1,0.5};
            };
            class RscPicture_1304: RscPictureGUI
            {
                idc = 1304;
                text = "\z\addons\dayz_code\gui\status\status_noise.paa";
                x = 0.955313 * safezoneW + safezoneX;
                y = 0.30 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
            class RscPicture_1305: RscPictureGUI
            {
                idc = 1305;
                text = "\z\addons\dayz_code\gui\status\status_visible.paa";
                x = 0.955313 * safezoneW + safezoneX;
                y = 0.37 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
            /**/
            class RscPicture_1311 : RscPictureGUI 
            {
                idc = 1311;
                text = "custom\GUI\st_humanity_survivor.paa";
                x = 0.959313 * safezoneW + safezoneX;
                y = 0.23 * safezoneH + safezoneY;
                w = 0.068;
                h = 0.088;
                colorText[] = {0.96,0.8, 0.2,1};
            };
            class RscPicture_1313: RscPictureGUI
            {
                idc = 1313;
                //text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.959313 * safezoneW + safezoneX;
                y = 0.23 * safezoneH + safezoneY;
                w = 0.068;
                h = 0.083;
                colorText[] = {0.96,0.8, 0.2,0.3};
            };
            class RscText_1321: RscTextGUIK
            {
                idc = 1321;
                text = "fps";
                x = 0.965313 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                size = 0.07;
                sizeEx = 0.07;
                colorText[] = {1,1,1,0.0};
            };
            class RscText_1322: RscPictureGUI
            {
                idc = 1322;
                //text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.965313 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,0.0};
            };
            /*-----------------------------------------------*/
           
		   class RscText_1400: RscTextGUIK
            {
                idc = 1400;
                text = "1000";
                x = 0.925 * safezoneW + safezoneX;
                y = 0.45 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
            class RscText_1401: RscTextGUIK
            {
                idc = 1401;
                text = "1000"; //kills heroes
                x = 0.925 * safezoneW + safezoneX;
                y = 0.50 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
            class RscText_1402: RscTextGUIK
            {
                idc = 1402;
                text = "1000";
                x = 0.925 * safezoneW + safezoneX;
                y = 0.55 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };

            class RscText_1403: RscTextGUIK
            {
                idc = 1403;
                text = "1000";
                x = 0.925 * safezoneW + safezoneX;
                y = 0.60 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
			class RscText_1404: RscTextGUIK
            {
                idc = 1404;
                text = "(180-(round(serverTime/60)))";
                x = 0.5 * safezoneW + safezoneX;
                y = 0.90 * safezoneH + safezoneY;
                w = 0.10 * safezoneW;
                h = 0.1 * safezoneH;
                colorText[] = {1,0.8,0,1.0};
                size = 0.06;
                sizeEx = 0.04;
			};
			class RscText_1405: RscTextGUIK
            {
                idc = 1405;
                text = "Restart:";
                x = 0.37 * safezoneW + safezoneX;
                y = 0.90 * safezoneH + safezoneY;
                w = 0.10 * safezoneW;
                h = 0.1 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.06;
                sizeEx = 0.04;
            };
        };
    };