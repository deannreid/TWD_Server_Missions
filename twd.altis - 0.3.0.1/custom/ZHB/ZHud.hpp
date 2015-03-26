#define ST_RIGHT 0x01
#define ST_LEFT  0x00

class ZHud
	{
		idd = -3;
		duration = 999999;
		onLoad = "uiNamespace setVariable ['ZHud', _this select 0];";
		class controls
		{
			class ZHUD_ICON: ZHUD_PIC
			{
				style = "48 + 0x800";
			};
			class textHudBarBottom {
				idc = 3400;
				x = safezoneX + safezoneW - 1.80;
				y = safezoneY + safezoneH - 0.04;
				w = 1;
				h = 0.04;
				shadow = 1;
				colorBackground[] = { 0, 0, 0, 0.0 }; 
				font = "PuristaSemibold";
				size = 0.03;
				type = 13;
				style = 2;
				text="";
				class Attributes {
					align="center";
					color = "#ffffff";
				};
			};
			class ZHUD_ICON1200: ZHUD_ICON
			{
				idc = 3200;
				text = "";
				x = 0.257656 * safezoneW + safezoneX;
				y = 0.94 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1201: ZHUD_ICON
			{
				idc = 3201;
				text = "";
				x = 0.319531 * safezoneW + safezoneX;
				y = 0.94 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1202: ZHUD_ICON
			{
				idc = 3202;
				text = "";
				x = 0.381406 * safezoneW + safezoneX;
				y = 0.94 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1203: ZHUD_ICON
			{
				idc = 3203;
				text = "";
				x = 0.443281 * safezoneW + safezoneX;
				y = 0.94 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1204: ZHUD_ICON
			{
				idc = 3204;
				text = "";
				x = 0.505156 * safezoneW + safezoneX;
				y = 0.94 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1205: ZHUD_ICON
			{
				idc = 3205;
				text = "";
				x = 0.567031 * safezoneW + safezoneX; //0.061875
				y = 0.94 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1206: ZHUD_ICON
			{
				idc = 3206;
				text = "";
				x = 0.628906 * safezoneW + safezoneX;
				y = 0.94 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1207: ZHUD_ICON
			{
				idc = 3207;
				text = "";
				x = 0.690781 * safezoneW + safezoneX;
				y = 0.94 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1208: ZHUD_ICON
			{
				idc = 3208;
				text = "";
				x = 0.948594 * safezoneW + safezoneX;
				y = 0.731 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1209: ZHUD_ICON
			{
				idc = 3209;
				text = "";
				x = 0.948594 * safezoneW + safezoneX;
				y = 0.654 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1210: ZHUD_ICON
			{
				idc = 3210;
				text = "";
				x = 0.948594 * safezoneW + safezoneX;
				y = 0.577 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1211: ZHUD_ICON
			{
				idc = 3211;
				text = "";
				x = 0.948594 * safezoneW + safezoneX;
				y = 0.5 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1212: ZHUD_ICON
			{
				idc = 3212;
				text = "";
				x = 0.948594 * safezoneW + safezoneX;
				y = 0.423 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1213: ZHUD_ICON
			{
				idc = 3213;
				text = "";
				x = 0.948594 * safezoneW + safezoneX;
				y = 0.346 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1214: ZHUD_ICON
			{
				idc = 3214;
				text = "";
				x = 0.948594 * safezoneW + safezoneX;
				y = 0.269 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1215: ZHUD_ICON
			{
				idc = 3215;
				text = "";
				x = 0.948594 * safezoneW + safezoneX;
				y = 0.192 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1216: ZHUD_ICON
			{
				idc = 3216;
				text = "";
				x = 0.680469 * safezoneW + safezoneX;
				y = 0.00500001 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1217: ZHUD_ICON
			{
				idc = 3217;
				text = "";
				x = 0.62375 * safezoneW + safezoneX;
				y = 0.00500001 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1218: ZHUD_ICON
			{
				idc = 3218;
				text = "";
				x = 0.567031 * safezoneW + safezoneX;
				y = 0.00500001 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1219: ZHUD_ICON
			{
				idc = 3219;
				text = "";
				x = 0.510312 * safezoneW + safezoneX;
				y = 0.00500001 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1220: ZHUD_ICON
			{
				idc = 3220;
				text = "";
				x = 0.453594 * safezoneW + safezoneX;
				y = 0.00500001 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1221: ZHUD_ICON
			{
				idc = 3221;
				text = "";
				x = 0.396875 * safezoneW + safezoneX;
				y = 0.00500001 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1222: ZHUD_ICON
			{
				idc = 3222;
				text = "";
				x = 0.340156 * safezoneW + safezoneX;
				y = 0.00500001 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1223: ZHUD_ICON
			{
				idc = 3223;
				text = "";
				x = 0.283437 * safezoneW + safezoneX;
				y = 0.00500001 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1224: ZHUD_ICON
			{
				idc = 3224;
				text = "";
				x = 0.005 * safezoneW + safezoneX;
				y = 0.17 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1225: ZHUD_ICON
			{
				idc = 3225;
				text = "";
				x = 0.005 * safezoneW + safezoneX;
				y = 0.247 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1226: ZHUD_ICON
			{
				idc = 3226;
				text = "";
				x = 0.005 * safezoneW + safezoneX;
				y = 0.324 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1227: ZHUD_ICON
			{
				idc = 3227;
				text = "";
				x = 0.005 * safezoneW + safezoneX;
				y = 0.401 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1228: ZHUD_ICON
			{
				idc = 3228;
				text = "";
				x = 0.005 * safezoneW + safezoneX;
				y = 0.478 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1229: ZHUD_ICON
			{
				idc = 3229;
				text = "";
				x = 0.005 * safezoneW + safezoneX;
				y = 0.555 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1230: ZHUD_ICON
			{
				idc = 3230;
				text = "";
				x = 0.005 * safezoneW + safezoneX;
				y = 0.632 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZHUD_ICON1231: ZHUD_ICON
			{
				idc = 3231;
				text = "";
				x = 0.005 * safezoneW + safezoneX;
				y = 0.709 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class ZZHUD_ICONTEXT1000: ZHUD_STRTEXT
			{
				idc = 3300;
				x = 0.2525 * safezoneW + safezoneX;
				y = 0.9 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				
			 class Attributes {
			    align = "center";
			    valign = "bottom";
			  };				
			};
			class ZHUD_ICONTEXT1001: ZHUD_STRTEXT
			{
				idc = 3301;
				x = 0.314375 * safezoneW + safezoneX;
				y = 0.9 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "center";
			    valign = "bottom";
			  };
			};
			class ZHUD_ICONTEXT1002: ZHUD_STRTEXT
			{
				idc = 3302;
				x = 0.37625 * safezoneW + safezoneX;
				y = 0.9 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "center";
			    valign = "bottom";
			  };
			};
			class ZHUD_ICONTEXT1003: ZHUD_STRTEXT
			{
				idc = 3303;
				x = 0.438125 * safezoneW + safezoneX;
				y = 0.9 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "center";
			    valign = "bottom";
			  };
			};
			class ZHUD_ICONTEXT1004: ZHUD_STRTEXT
			{
				idc = 3304;
				x = 0.5 * safezoneW + safezoneX;
				y = 0.9 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "center";
			    valign = "bottom";
			  };
			};
			class ZHUD_ICONTEXT1005: ZHUD_STRTEXT
			{
				idc = 3305;
				x = 0.561875 * safezoneW + safezoneX;
				y = 0.9 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "center";
			    valign = "bottom";
			  };
			};
			class ZHUD_ICONTEXT1006: ZHUD_STRTEXT
			{
				idc = 3306;
				x = 0.62375 * safezoneW + safezoneX;
				y = 0.9 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "center";
			    valign = "bottom";
			  };
			};
			class ZHUD_ICONTEXT1007: ZHUD_STRTEXT
			{
				idc = 3307;
				x = 0.685625 * safezoneW + safezoneX;
				y = 0.9 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "center";
			    valign = "bottom";
			  };
			};
			class ZHUD_ICONTEXT1008: ZHUD_STRTEXT
			{
				idc = 3308;
				x = 0.891875 * safezoneW + safezoneX;
				y = 0.751 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "right";
			    valign = "middle";
			  };
			};
			class ZHUD_ICONTEXT1009: ZHUD_STRTEXT
			{
				idc = 3309;
				x = 0.891875 * safezoneW + safezoneX;
				y = 0.674 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
					 class Attributes {
			    align = "right";
			    valign = "middle";
			  };
			};
			class ZHUD_ICONTEXT1010: ZHUD_STRTEXT
			{
				idc = 3310;
				x = 0.891875 * safezoneW + safezoneX;
				y = 0.597 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
					 class Attributes {
			    align = "right";
			    valign = "middle";
			  };
			};
			class ZHUD_ICONTEXT1011: ZHUD_STRTEXT
			{
				idc = 3311;
				x = 0.891875 * safezoneW + safezoneX;
				y = 0.52 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
					 class Attributes {
			    align = "right";
			    valign = "middle";
			  };
			};
			class ZHUD_ICONTEXT1012: ZHUD_STRTEXT
			{
				idc = 3312;
				x = 0.891875 * safezoneW + safezoneX;
				y = 0.443 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
					 class Attributes {
			    align = "right";
			    valign = "middle";
			  };
			};
			class ZHUD_ICONTEXT1013: ZHUD_STRTEXT
			{
				idc = 3313;
				x = 0.891875 * safezoneW + safezoneX;
				y = 0.366 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
					 class Attributes {
			    align = "right";
			    valign = "middle";
			  };
			};
			class ZHUD_ICONTEXT1014: ZHUD_STRTEXT
			{
				idc = 3314;
				x = 0.891875 * safezoneW + safezoneX;
				y = 0.289 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
					 class Attributes {
			    align = "right";
			    valign = "middle";
			  };
			};
			class ZHUD_ICONTEXT1015: ZHUD_STRTEXT
			{
				idc = 3315;
				x = 0.891875 * safezoneW + safezoneX;
				y = 0.212 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
					 class Attributes {
			    align = "right";
			    valign = "middle";
			  };
			};
			class ZHUD_ICONTEXT1016: ZHUD_STRTEXT
			{
				idc = 3316;
				x = 0.675312 * safezoneW + safezoneX;
				y = 0.071 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
					 class Attributes {
			    align = "center";
			    valign = "top";
			  };
			};
			class ZHUD_ICONTEXT1017: ZHUD_STRTEXT
			{
				idc = 3317;
				x = 0.618594 * safezoneW + safezoneX;
				y = 0.071 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "center";
			    valign = "top";
			  };
			};
			class ZHUD_ICONTEXT1018: ZHUD_STRTEXT
			{
				idc = 3318;
				x = 0.561875 * safezoneW + safezoneX;
				y = 0.071 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "center";
			    valign = "top";
			  };
			};
			class ZHUD_ICONTEXT1019: ZHUD_STRTEXT
			{
				idc = 3319;
				x = 0.505156 * safezoneW + safezoneX;
				y = 0.071 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "center";
			    valign = "top";
			  };
			};
			class ZHUD_ICONTEXT1020: ZHUD_STRTEXT
			{
				idc = 3320;
				x = 0.448438 * safezoneW + safezoneX;
				y = 0.071 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "center";
			    valign = "top";
			  };
			};
			class ZHUD_ICONTEXT1021: ZHUD_STRTEXT
			{
				idc = 3321;
				x = 0.391719 * safezoneW + safezoneX;
				y = 0.071 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "center";
			    valign = "top";
			  };
			};
			class ZHUD_ICONTEXT1022: ZHUD_STRTEXT
			{
				idc = 3322;
				x = 0.335 * safezoneW + safezoneX;
				y = 0.071 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "center";
			    valign = "top";
			  };
			};
			class ZHUD_ICONTEXT1023: ZHUD_STRTEXT
			{
				idc = 3323;
				x = 0.278281 * safezoneW + safezoneX;
				y = 0.071 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "center";
			    valign = "top";
			  };
			};
			class ZHUD_ICONTEXT1024: ZHUD_STRTEXT
			{
				idc = 3324;
				x = 0.0514062 * safezoneW + safezoneX;
				y = 0.19 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
			 class Attributes {
			    align = "left";
			    valign = "middle";
			  };
			};
			class ZHUD_ICONTEXT1025: ZHUD_STRTEXT
			{
				idc = 3325;
				x = 0.0514062 * safezoneW + safezoneX;
				y = 0.267 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			     align = "left";
			    valign = "middle";
			  };
			};
			class ZHUD_ICONTEXT1026: ZHUD_STRTEXT
			{
				idc = 3326;
				x = 0.0514062 * safezoneW + safezoneX;
				y = 0.344 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			     align = "left";
			    valign = "middle";
			  };
			};
			class ZHUD_ICONTEXT1027: ZHUD_STRTEXT
			{
				idc = 3327;
				x = 0.0514062 * safezoneW + safezoneX;
				y = 0.421 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "left";
			    valign = "middle";
			  };
			};
			class ZHUD_ICONTEXT1028: ZHUD_STRTEXT
			{
				idc = 3328;
				x = 0.0514062 * safezoneW + safezoneX;
				y = 0.498 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "left";
			    valign = "middle";
			  };
			};
			class ZHUD_ICONTEXT1029: ZHUD_STRTEXT
			{
				idc = 3329;
				x = 0.0514062 * safezoneW + safezoneX;
				y = 0.575 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			     align = "left";
			    valign = "middle";
			  };
			};
			class ZHUD_ICONTEXT1030: ZHUD_STRTEXT
			{
				idc = 3330;
				x = 0.0514062 * safezoneW + safezoneX;
				y = 0.652 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "left";
			    valign = "middle";
			  };
			};
			class ZHUD_ICONTEXT1031: ZHUD_STRTEXT
			{
				idc = 3331;
				x = 0.0514062 * safezoneW + safezoneX;
				y = 0.729 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.055 * safezoneH;
				 class Attributes {
			    align = "left";
			    valign = "middle";
			  };
			};			
		};
	};