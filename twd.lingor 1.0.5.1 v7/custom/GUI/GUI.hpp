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
class RscPicture 
{
	type = CT_STATIC;
	idc = -1;
	style = ST_PICTURE;
	colorBackground[] = {0, 0, 0, 0};
	colorText[] = {1, 1, 1, 1};
	font = "Bitstream"; //Typeface
	sizeEx = 0;
};

class RscTextGUIK {
    type = 0;
    idc = -1;
    style = 0x02;
    colorBackground[] = {0,0,0,0};
    colorText[] = {1, 1, 1, 0.5};
    font = "TahomaB";
    size = 0.03;
    sizeEx = 0.03;
    x = 0;
    y = 0;
    w = 0.1;
    h = 0.2;
};

class playerStatusGUI {
        idd = 6900;
        movingEnable = 0;
        duration = 100000;
        name = "statusBorder";
        onLoad = "uiNamespace setVariable ['DAYZ_GUI_display', _this select 0];";
        class ControlsBackground {
//Food Image/BG
            class RscPicture_1901: RscPictureGUI
            {
                idc = 1901;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.5 * safezoneW + safezoneX;
                y = 0.918518518518519 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
            };
            class RscPicture_1201: RscPictureGUI
            {
                idc = 1201;
                text = "\z\addons\dayz_code\gui\status\status_food_border_ca.paa";
                x = 0.5 * safezoneW + safezoneX;
                y = 0.918518518518519 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
            };
			
//Blood Image/BG
            class RscPicture_1900: RscPictureGUI
            {
                idc = 1900;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.366666666666667 * safezoneW + safezoneX;
                y = 0.918518518518519 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
            };
            class RscPicture_1200: RscPictureGUI
            {
                idc = 1200;
                x = 0.366666666666667 * safezoneW + safezoneX;
                y = 0.918518518518519 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
            };

//Thirst Image/BG
            class RscPicture_1902: RscPictureGUI
            {
                idc = 1902;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.433333333333333 * safezoneW + safezoneX;
                y = 0.918518518518519 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
            };
            class RscPicture_1202: RscPictureGUI
            {
                idc = 1202;
                text = "\z\addons\dayz_code\gui\status\status_thirst_border_ca.paa";
                x = 0.433333333333333 * safezoneW + safezoneX;
                y = 0.918518518518519 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
            };
			
//Temp Image/BG
            class RscPicture_1908: RscPictureGUI
            {
                idc = 1908;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.566666666666667 * safezoneW + safezoneX;
                y = 0.918518518518519 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
            };
            class RscPicture_1208: RscPictureGUI
            {
                idc = 1208;
                text = "\z\addons\dayz_code\gui\status\status_temp_outside_ca.paa";
                x = 0.566666666666667 * safezoneW + safezoneX;
                y = 0.918518518518519 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
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
                x = 0.816666666666667 * safezoneW + safezoneX;
                y = 0.740740740740741 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
                colorText[] = {1,1,1,1};
            };

//Noise BG
            class RscPicture_1205: RscPictureGUI
            {
                idc = 1205;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0 * safezoneW + safezoneX;
                y = 0.266666666666667 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
            };

//Vision BG
            class RscPicture_1206: RscPictureGUI
            {
                idc = 1206;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0 * safezoneW + safezoneX;
                y = 0.1333333333333337 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
            };
        
//is(Player) Survivor?		
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

//is(Player) Hero?				
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
			
//is(Player) Bandit?
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
			
//is(Player) Zombie?
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
		
//Blood Control
            class RscPicture_1300: RscPictureGUI
            {
                idc = 1300;
                x = 0.366666666666667 * safezoneW + safezoneX;
                y = 0.918518518518519 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
            };
//Bleeding Control
            class RscPicture_1303: RscPictureGUI
            {
                idc = 1303;
                text = "\z\addons\dayz_code\gui\status\status_bleeding_ca.paa";
                x = 0.366666666666667 * safezoneW + safezoneX;
                y = 0.918518518518519 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
                colorText[] = {1,1,1,0.5};
            };
			
//Food Control
            class RscPicture_1301: RscPictureGUI
            {
                idc = 1301;
                x = 0.5 * safezoneW + safezoneX;
                y = 0.918518518518519 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
            };
			
//Thirst Control
            class RscPicture_1302: RscPictureGUI
            {
                idc = 1302;
                x = 0.433333333333333 * safezoneW + safezoneX;
                y = 0.918518518518519 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
            };
			
//Noise Control
            class RscPicture_1304: RscPictureGUI
            {
                idc = 1304;
                text = "\z\addons\dayz_code\gui\status\status_noise.paa";
                x = 0 * safezoneW + safezoneX;
                y = 0.266666666666667 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
            };
			
//Visibility Control
            class RscPicture_1305: RscPictureGUI
            {
                idc = 1305;
                text = "\z\addons\dayz_code\gui\status\status_visible.paa";
                x = 0 * safezoneW + safezoneX;
                y = 0.1333333333333337 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
            };
			
//Temperature Control
            class RscPicture_1306: RscPictureGUI
            {
                idc = 1306;
                x = 0.566666666666667 * safezoneW + safezoneX;
                y = 0.918518518518519 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
            };

//Survivor Kills BG
     /*     class RscPicture_1313: RscPictureGUI
            {
                idc = 1313;
                x = 0.959313 * safezoneW + safezoneX;
                y = 0.23 * safezoneH + safezoneY;
                w = 0.068;
                h = 0.083;
                colorText[] = {0.96,0.8, 0.2,0.3};
            };*/
           
		   
/*		   
//Survivor Kills Image
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
//Survivor Kills Count
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
			
//Hero Kills Count
            class RscText_1401: RscTextGUIK
            {
                idc = 1401;
                text = "1000";
                x = 0.925 * safezoneW + safezoneX;
                y = 0.50 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
			
//Bandit Kills Count
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

//Zombie Kills Count
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
			
//FpsVar
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

//FPSImg
            class RscText_1322: RscPictureGUI
            {
                idc = 1322;
                text = "custom\GUI\fps.paa";
                x = 0.965313 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,0.0};
            };*/

//RestartText
            class RscPicture_1405: RscPictureGUI
            {
                idc = 1405;
                text = "custom\GUI\restart.paa";
                x = 0 * safezoneW + safezoneX;
                y = 0 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
                colorText[] = {1,1,1,1};
            };	
	
//Restart Count
            class RscText_1404: RscTextGUIK
            {
                idc = 1404;
                text = "(180-(round(serverTime/60)))";
                x = 0 * safezoneW + safezoneX;
                y = 0.0592592592592593 * safezoneH + safezoneY;
                w = 0.0333333333333333 * safezoneW;
                h = 0.0296296296296296 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };		

//MoneyText
            class RscPicture_1406: RscPictureGUI
            {
                idc = 1310;
                text = "custom\GUI\wallet.paa";
                x = 0.5 * safezoneW + safezoneX;
                y = 0 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
                colorText[] = {1,1,1,1};
            };	
	
//Money Cnt
            class RscText_1407: RscTextGUIK
            {
                idc = 1407;
                text = "1000";
                x = 0.483333333333333 * safezoneW + safezoneX;
                y = 0.0592592592592593 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };	

//Bank Txt
            class RscPicture_1408: RscPictureGUI
            {
                idc = 1310;
                text = "custom\GUI\bank.paa";
                x = 0.433333333333333 * safezoneW + safezoneX;
                y = 0 * safezoneH + safezoneY;
                w = 0.0316666666666667 * safezoneW;
                h = 0.0640740740740741 * safezoneH;
                colorText[] = {1,1,1,1};
            };	
	
//Bank Cnt
            class RscText_1409: RscTextGUIK
            {
                idc = 1409;
                text = "1000";
                x = 0.416666666666667 * safezoneW + safezoneX;
                y = 0.0592592592592593 * safezoneH + safezoneY;
                w = 0.0416666666666667 * safezoneW;
                h = 0.0740740740740741 * safezoneH;
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
                y = 0.918518518518519 * safezoneH + safezoneY;
                w = 0.233333333333333 * safezoneW;
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