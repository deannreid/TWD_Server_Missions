class WGT_INTERIOR1
{
	idd = -1;
	movingenable = true;
	onLoad = "_this ExecVM 'custom\intdesign\items.sqf'";
	
	class Controls
	{

		class dialogBox1: BOX
		{
			idc = -1;
			text = "";
			x = 0.401725 * safezoneW + safezoneX;
			y = 0.449425 * safezoneH + safezoneY;
			w = 0.186587 * safezoneW;
			h = 0.124143 * safezoneH;
		};
		class dialogFrame1: RscFrame
		{
			idc = -1;
			text = "Interior Designer";
			x = 0.401725 * safezoneW + safezoneX;
			y = 0.449425 * safezoneH + safezoneY;
			w = 0.186587 * safezoneW;
			h = 0.124143 * safezoneH;
		};
		class dialogChoose1: RscShortcutButton
		{
			idc = -1;
			text = "Spawn";
			x = 0.454806 * safezoneW + safezoneX;
			y = 0.512518 * safezoneH + safezoneY;
			w = 0.0594089 * safezoneW;
			h = 0.0500295 * safezoneH;
			action= "[] call fnc_Pos_fired1;_nil=[]ExecVM ""custom\intdesign\spawn.sqf"";closeDialog 0;";
		};
		class dialogCancel1: RscShortcutButton
		{
			idc = -1;
			text = "Cancel";
			x = 0.520496 * safezoneW + safezoneX;
			y = 0.512518 * safezoneH + safezoneY;
			w = 0.0594089 * safezoneW;
			h = 0.0500295 * safezoneH;
			action = "closeDialog 0;";
		};
		class dialogPic1: RscPicture
		{
			idc = -1;
			text = "custom\intdesign\emerald.paa";
			x = 0.412763 * safezoneW + safezoneX;
			y = 0.478468 * safezoneH + safezoneY;
			w = 0.0320813 * safezoneW;
			h = 0.0690587 * safezoneH;
		};
		class dialogCombo1: RscCombo
		{
			idc = 2667;
			text = "Choose your item";
			x = 0.45638 * safezoneW + safezoneX;
			y = 0.478467 * safezoneH + safezoneY;
			w = 0.120896 * safezoneW;
			h = 0.0229882 * safezoneH;
		};
	};
};

class WGT_INTERIOR2
{
	idd = -1;
	movingenable = true;
	onLoad = "_this ExecVM 'custom\intdesign\items.sqf'";
	
	class Controls
	{

		class dialogBox2: BOX
		{
			idc = -1;
			text = "";
			x = 0.401725 * safezoneW + safezoneX;
			y = 0.449425 * safezoneH + safezoneY;
			w = 0.186587 * safezoneW;
			h = 0.124143 * safezoneH;
		};
		class dialogFrame2: RscFrame
		{
			idc = -1;
			text = "Interior Designer";
			x = 0.401725 * safezoneW + safezoneX;
			y = 0.449425 * safezoneH + safezoneY;
			w = 0.186587 * safezoneW;
			h = 0.124143 * safezoneH;
		};
		class dialogChoose2: RscShortcutButton
		{
			idc = -1;
			text = "Spawn";
			x = 0.454806 * safezoneW + safezoneX;
			y = 0.512518 * safezoneH + safezoneY;
			w = 0.0594089 * safezoneW;
			h = 0.0500295 * safezoneH;
			action= "[] call fnc_Pos_fired2;_nil=[]ExecVM ""custom\intdesign\spawn.sqf"";closeDialog 0;";
		};
		class dialogCancel2: RscShortcutButton
		{
			idc = -1;
			text = "Cancel";
			x = 0.520496 * safezoneW + safezoneX;
			y = 0.512518 * safezoneH + safezoneY;
			w = 0.0594089 * safezoneW;
			h = 0.0500295 * safezoneH;
			action = "closeDialog 0;";
		};
		class dialogPic2: RscPicture
		{
			idc = -1;
			text = "custom\intdesign\emerald.paa";
			x = 0.412763 * safezoneW + safezoneX;
			y = 0.478468 * safezoneH + safezoneY;
			w = 0.0320813 * safezoneW;
			h = 0.0690587 * safezoneH;
		};
		class dialogCombo2: RscCombo
		{
			idc = 2668;
			text = "Choose your item";
			x = 0.45638 * safezoneW + safezoneX;
			y = 0.478467 * safezoneH + safezoneY;
			w = 0.120896 * safezoneW;
			h = 0.0229882 * safezoneH;
		};
	};
};

class WGT_INTERIOR3
{
	idd = -1;
	movingenable = true;
	onLoad = "_this ExecVM 'custom\intdesign\items.sqf'";
	
	class Controls
	{

		class dialogBox3: BOX
		{
			idc = -1;
			text = "";
			x = 0.401725 * safezoneW + safezoneX;
			y = 0.449425 * safezoneH + safezoneY;
			w = 0.186587 * safezoneW;
			h = 0.124143 * safezoneH;
		};
		class dialogFrame3: RscFrame
		{
			idc = -1;
			text = "Interior Designer";
			x = 0.401725 * safezoneW + safezoneX;
			y = 0.449425 * safezoneH + safezoneY;
			w = 0.186587 * safezoneW;
			h = 0.124143 * safezoneH;
		};
		class dialogChoose3: RscShortcutButton
		{
			idc = -1;
			text = "Spawn";
			x = 0.454806 * safezoneW + safezoneX;
			y = 0.512518 * safezoneH + safezoneY;
			w = 0.0594089 * safezoneW;
			h = 0.0500295 * safezoneH;
			action= "[] call fnc_Pos_fired3;_nil=[]ExecVM ""custom\intdesign\spawn.sqf"";closeDialog 0;";
		};
		class dialogCancel3: RscShortcutButton
		{
			idc = -1;
			text = "Cancel";
			x = 0.520496 * safezoneW + safezoneX;
			y = 0.512518 * safezoneH + safezoneY;
			w = 0.0594089 * safezoneW;
			h = 0.0500295 * safezoneH;
			action = "closeDialog 0;";
		};
		class dialogPic3: RscPicture
		{
			idc = -1;
			text = "custom\intdesign\emerald.paa";
			x = 0.412763 * safezoneW + safezoneX;
			y = 0.478468 * safezoneH + safezoneY;
			w = 0.0320813 * safezoneW;
			h = 0.0690587 * safezoneH;
		};
		class dialogCombo3: RscCombo
		{
			idc = 2669;
			text = "Choose your item";
			x = 0.45638 * safezoneW + safezoneX;
			y = 0.478467 * safezoneH + safezoneY;
			w = 0.120896 * safezoneW;
			h = 0.0229882 * safezoneH;
		};
	};
};

class WGT_INTERIOR4
{
	idd = -1;
	movingenable = true;
	onLoad = "_this ExecVM 'custom\intdesign\items.sqf'";
	
	class Controls
	{

		class dialogBox4: BOX
		{
			idc = -1;
			text = "";
			x = 0.401725 * safezoneW + safezoneX;
			y = 0.449425 * safezoneH + safezoneY;
			w = 0.186587 * safezoneW;
			h = 0.124143 * safezoneH;
		};
		class dialogFrame4: RscFrame
		{
			idc = -1;
			text = "Interior Designer";
			x = 0.401725 * safezoneW + safezoneX;
			y = 0.449425 * safezoneH + safezoneY;
			w = 0.186587 * safezoneW;
			h = 0.124143 * safezoneH;
		};
		class dialogChoose4: RscShortcutButton
		{
			idc = -1;
			text = "Spawn";
			x = 0.454806 * safezoneW + safezoneX;
			y = 0.512518 * safezoneH + safezoneY;
			w = 0.0594089 * safezoneW;
			h = 0.0500295 * safezoneH;
			action= "[] call fnc_Pos_fired4;_nil=[]ExecVM ""custom\intdesign\spawn.sqf"";closeDialog 0;";
		};
		class dialogCancel4: RscShortcutButton
		{
			idc = -1;
			text = "Cancel";
			x = 0.520496 * safezoneW + safezoneX;
			y = 0.512518 * safezoneH + safezoneY;
			w = 0.0594089 * safezoneW;
			h = 0.0500295 * safezoneH;
			action = "closeDialog 0;";
		};
		class dialogPic4: RscPicture
		{
			idc = -1;
			text = "custom\intdesign\emerald.paa";
			x = 0.412763 * safezoneW + safezoneX;
			y = 0.478468 * safezoneH + safezoneY;
			w = 0.0320813 * safezoneW;
			h = 0.0690587 * safezoneH;
		};
		class dialogCombo4: RscCombo
		{
			idc = 2670;
			text = "Choose your item";
			x = 0.45638 * safezoneW + safezoneX;
			y = 0.478467 * safezoneH + safezoneY;
			w = 0.120896 * safezoneW;
			h = 0.0229882 * safezoneH;
		};
	};
};

class WGT_INTERIOR5
{
	idd = -1;
	movingenable = true;
	onLoad = "_this ExecVM 'custom\intdesign\items.sqf'";
	
	class Controls
	{

		class dialogBox5: BOX
		{
			idc = -1;
			text = "";
			x = 0.401725 * safezoneW + safezoneX;
			y = 0.449425 * safezoneH + safezoneY;
			w = 0.186587 * safezoneW;
			h = 0.124143 * safezoneH;
		};
		class dialogFrame5: RscFrame
		{
			idc = -1;
			text = "Interior Designer";
			x = 0.401725 * safezoneW + safezoneX;
			y = 0.449425 * safezoneH + safezoneY;
			w = 0.186587 * safezoneW;
			h = 0.124143 * safezoneH;
		};
		class dialogChoose5: RscShortcutButton
		{
			idc = -1;
			text = "Spawn";
			x = 0.454806 * safezoneW + safezoneX;
			y = 0.512518 * safezoneH + safezoneY;
			w = 0.0594089 * safezoneW;
			h = 0.0500295 * safezoneH;
			action= "[] call fnc_Pos_fired5;_nil=[]ExecVM ""custom\intdesign\spawn.sqf"";closeDialog 0;";
		};
		class dialogCancel5: RscShortcutButton
		{
			idc = -1;
			text = "Cancel";
			x = 0.520496 * safezoneW + safezoneX;
			y = 0.512518 * safezoneH + safezoneY;
			w = 0.0594089 * safezoneW;
			h = 0.0500295 * safezoneH;
			action = "closeDialog 0;";
		};
		class dialogPic5: RscPicture
		{
			idc = -1;
			text = "custom\intdesign\emerald.paa";
			x = 0.412763 * safezoneW + safezoneX;
			y = 0.478468 * safezoneH + safezoneY;
			w = 0.0320813 * safezoneW;
			h = 0.0690587 * safezoneH;
		};
		class dialogCombo5: RscCombo
		{
			idc = 2671;
			text = "Choose your item";
			x = 0.45638 * safezoneW + safezoneX;
			y = 0.478467 * safezoneH + safezoneY;
			w = 0.120896 * safezoneW;
			h = 0.0229882 * safezoneH;
		};
	};
};

class WGT_INTERIOR6
{
	idd = -1;
	movingenable = true;
	onLoad = "_this ExecVM 'custom\intdesign\items.sqf'";
	
	class Controls
	{

		class dialogBox6: BOX
		{
			idc = -1;
			text = "";
			x = 0.401725 * safezoneW + safezoneX;
			y = 0.449425 * safezoneH + safezoneY;
			w = 0.186587 * safezoneW;
			h = 0.124143 * safezoneH;
		};
		class dialogFrame6: RscFrame
		{
			idc = -1;
			text = "Interior Designer";
			x = 0.401725 * safezoneW + safezoneX;
			y = 0.449425 * safezoneH + safezoneY;
			w = 0.186587 * safezoneW;
			h = 0.124143 * safezoneH;
		};
		class dialogChoose6: RscShortcutButton
		{
			idc = -1;
			text = "Spawn";
			x = 0.454806 * safezoneW + safezoneX;
			y = 0.512518 * safezoneH + safezoneY;
			w = 0.0594089 * safezoneW;
			h = 0.0500295 * safezoneH;
			action= "[] call fnc_Pos_fired6;_nil=[]ExecVM ""custom\intdesign\spawn.sqf"";closeDialog 0;";
		};
		class dialogCancel6: RscShortcutButton
		{
			idc = -1;
			text = "Cancel";
			x = 0.520496 * safezoneW + safezoneX;
			y = 0.512518 * safezoneH + safezoneY;
			w = 0.0594089 * safezoneW;
			h = 0.0500295 * safezoneH;
			action = "closeDialog 0;";
		};
		class dialogPic6: RscPicture
		{
			idc = -1;
			text = "custom\intdesign\emerald.paa";
			x = 0.412763 * safezoneW + safezoneX;
			y = 0.478468 * safezoneH + safezoneY;
			w = 0.0320813 * safezoneW;
			h = 0.0690587 * safezoneH;
		};
		class dialogCombo6: RscCombo
		{
			idc = 2672;
			text = "Choose your item";
			x = 0.45638 * safezoneW + safezoneX;
			y = 0.478467 * safezoneH + safezoneY;
			w = 0.120896 * safezoneW;
			h = 0.0229882 * safezoneH;
		};
	};
};

class WGT_INTERIOR7
{
	idd = -1;
	movingenable = true;
	onLoad = "_this ExecVM 'custom\intdesign\items.sqf'";
	
	class Controls
	{

		class dialogBox7: BOX
		{
			idc = -1;
			text = "";
			x = 0.401725 * safezoneW + safezoneX;
			y = 0.449425 * safezoneH + safezoneY;
			w = 0.186587 * safezoneW;
			h = 0.124143 * safezoneH;
		};
		class dialogFrame7: RscFrame
		{
			idc = -1;
			text = "Interior Designer";
			x = 0.401725 * safezoneW + safezoneX;
			y = 0.449425 * safezoneH + safezoneY;
			w = 0.186587 * safezoneW;
			h = 0.124143 * safezoneH;
		};
		class dialogChoose7: RscShortcutButton
		{
			idc = -1;
			text = "Spawn";
			x = 0.454806 * safezoneW + safezoneX;
			y = 0.512518 * safezoneH + safezoneY;
			w = 0.0594089 * safezoneW;
			h = 0.0500295 * safezoneH;
			action= "[] call fnc_Pos_fired7;_nil=[]ExecVM ""custom\intdesign\spawn.sqf"";closeDialog 0;";
		};
		class dialogCancel7: RscShortcutButton
		{
			idc = -1;
			text = "Cancel";
			x = 0.520496 * safezoneW + safezoneX;
			y = 0.512518 * safezoneH + safezoneY;
			w = 0.0594089 * safezoneW;
			h = 0.0500295 * safezoneH;
			action = "closeDialog 0;";
		};
		class dialogPic7: RscPicture
		{
			idc = -1;
			text = "custom\intdesign\emerald.paa";
			x = 0.412763 * safezoneW + safezoneX;
			y = 0.478468 * safezoneH + safezoneY;
			w = 0.0320813 * safezoneW;
			h = 0.0690587 * safezoneH;
		};
		class dialogCombo7: RscCombo
		{
			idc = 2673;
			text = "Choose your item";
			x = 0.45638 * safezoneW + safezoneX;
			y = 0.478467 * safezoneH + safezoneY;
			w = 0.120896 * safezoneW;
			h = 0.0229882 * safezoneH;
		};
	};
};











