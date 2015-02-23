class HaloDialog
{
	idd = -1;
	movingenable = 0;
	class controlsBackground 
	{
		class HaloBackground: RscText
		{
			text = "";
			x = .370287 * safezoneW + safezoneX;
			y = .338822 * safezoneH + safezoneY;
			w = .260299 * safezoneW;
			h = .3 * safezoneH;
			colorBackground[] = {.3,.3,.3,1};
			fixedWidth = 0;
		};
	};
	class Controls
	{
		class HaloSelect: RscText
		{
			text = "Spawn Type Selection";
			x = .370288 * safezoneW + safezoneX;
			y = .289 * safezoneH + safezoneY;
			w = .260299 * safezoneW;
			h = .05 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {.384,.702,.886,.8};
			fixedWidth = 0;
			shadow = 1;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * .6)";
		};
		class HaloAir: RscPicture
		{
			fixedWidth = 0;
			text = "\ca\ui\data\iconplane_ca.paa";
			x = .403107 * safezoneW + safezoneX;
			y = .386064 * safezoneH + safezoneY;
			w = .0738056 * safezoneW;
			h = .0873141 * safezoneH;
		};
		class HaloGround: RscPicture
		{
			fixedWidth = 0;
			text = "\ca\ui\data\icontruck_ca.paa";
			x = .524484 * safezoneW + safezoneX;
			y = .386064 * safezoneH + safezoneY;
			w = .0732848 * safezoneW;
			h = .0868511 * safezoneH;
		};
		class HaloButtonAir
		{
			idc = -1;
			text = "Air";
			x = .402585 * safezoneW + safezoneX;
			y = .523 * safezoneH + safezoneY;
			w = .0743267 * safezoneW;
			h = .0877774 * safezoneH;
			action = "uiNamespace setVariable ['haloChoice',1];";
			borderSize = 0;
			colorBackground[] = {.4,.4,.4,1};
			colorBackgroundActive[] = {.5,.5,.5,1};
			colorBackgroundDisabled[] = {.2,.2,.2,1};
			colorBorder[] = {.88,.88,.88,1};		
			colorDisabled[] = {.2,.2,.2,1};
			colorFocused[] = {.4,.4,.4,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			offsetPressedX = .002;
			offsetPressedY = .002;
			offsetX = .003;
			offsetY = .003;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * .6)";
			soundClick[] = {"\ca\ui\data\sound\onclick",.07,1};
			soundEnter[] = {"\ca\ui\data\sound\onover",.09,1};
			soundEscape[] = {"\ca\ui\data\sound\onescape",.09,1};
			soundPush[] = {"\ca\ui\data\sound\new1",0,0};			
			style = 2;
			type = 1;
		};
		class HaloButtonGround
		{
			idc = -1;
			text = "Ground";
			x = .524484 * safezoneW + safezoneX;
			y = .523 * safezoneH + safezoneY;
			w = .0743267 * safezoneW;
			h = .0877774 * safezoneH;
			action = "uiNamespace setVariable ['haloChoice',0];";
			borderSize = 0;
			colorBackground[] = {.4,.4,.4,1};
			colorBackgroundActive[] = {.5,.5,.5,1};
			colorBackgroundDisabled[] = {.2,.2,.2,1};
			colorBorder[] = {.88,.88,.88,1};		
			colorDisabled[] = {.2,.2,.2,1};
			colorFocused[] = {.4,.4,.4,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			offsetPressedX = .002;
			offsetPressedY = .002;
			offsetX = .003;
			offsetY = .003;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * .6)";
			soundClick[] = {"\ca\ui\data\sound\onclick",.07,1};
			soundEnter[] = {"\ca\ui\data\sound\onover",.09,1};
			soundEscape[] = {"\ca\ui\data\sound\onescape",.09,1};
			soundPush[] = {"\ca\ui\data\sound\new1",0,0};			
			style = 2;
			type = 1;
		};
	};
};
