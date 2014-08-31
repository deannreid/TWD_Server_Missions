class Advanced_Crafting {
	idd = 10667;
	movingenable = true;
	onload = "uiNamespace setVariable ['Advanced_CraftingV', _this select 0]";
	onUnload = "GlobalCraftingVariable=0;uiNamespace setVariable ['Advanced_CraftingV', nil]";
	class Controls
	{

class AAC_Background: RscBackground
{
	idc = 1800;
	x = 0;
	y = 0.02;
	w = 1;
	h = 0.9;
};
class RequiredToolsFrame: RscFrame
{
	idc = 1801;
	x = 0.7125;
	y = 0.08;
	w = 0.275;
	h = 0.18;
};
class RequiredMaterialsFrame: RscFrame
{
	idc = 1802;
	x = 0.7125;
	y = 0.32;
	w = 0.275;
	h = 0.5;
};
class AAC_Label: RscText
{
	idc = 1000;
	text = "Advanced Alchemical Crafting:"; 
	x = 0.0375;
	y = 0.06;
	w = 0.37;
	h = 0.04;
};
class Gem_Used_Label: RscText
{
	idc = 1001;
	x = 0.4875;
	y = 0.06;
	w = 0.1625;
	h = 0.04;
	text = "";
	};
class Choose_Catagory_Label: RscText
{
	idc = 1002;
	text = "<< Choose a category!"; 
	x = 0.425;
	y = 0.12;
	w = 0.2625;
	h = 0.04;
};
class Required_Materials_Label: RscText
{
	idc = 1003;
	text = "Required Materials"; 
	x = 0.75;
	y = 0.28;
	w = 0.215;
	h = 0.04;
};
class Required_Tools_Label: RscText
{
	idc = 1004;
	text = "Required Tools"; 
	x = 0.75;
	y = 0.04;
	w = 0.215;
	h = 0.04;
};
class RscText_1105: RscText
{
	idc = 1105;
	text = "CAMERA CONTROLS";
	x = 0.4;
	y = 0.94;
	w = 0.2375;
	h = 0.04;
};
class Catagory_Combo: RscCombo
{
	idc = 3900;
	text = "Catagory"; 
	x = 0.0375;
	y = 0.12;
	w = 0.375;
	h = 0.04;
	onLBSelChanged = "GlobalComboboxVariable = _this select 1;";	
};

class Items_Listbox: RscListBox
{
	idc = 3901;
	text = "Items"; 
	x = 0.0375;
	y = 0.18;
	w = 0.5875;
	h = 0.58;
	onLBSelChanged = "call fnc_Load_Mats_and_Tools";
};
class Exit_Button: RscButton
{
	idc = 4900;
	text = "Exit"; 
	x = 0.625;
	y = 0.84;
	w = 0.125;
	h = 0.04;
	action = "GlobalCraftingVariable=0";
};
class Craft_Button: RscButton
{
	idc = 4901;
	text = "Craft"; 
	x = 0.25;
	y = 0.84;
	w = 0.125;
	h = 0.04;
	action = "execVM ""custom\Buildables\custom_builds.sqf""";
};
class Preview_Button: RscButton
{
	idc = 4902;
	text = "Preview"; 
	x = 0.4375;
	y = 0.84;
	w = 0.1375;
	h = 0.04;
	action = "execVM ""custom\Buildables\preview_item.sqf""";	
};
class Zoom_Minus_Button: RscButton
{
	idc = 4903;
	text = "Zoom -"; 
	x = 0.075;
	y = 0.84;
	w = 0.1375;
	h = 0.04;
	onload = "ctrlShow [_this,false]";
	action = "Crafting_Object_Radius = Crafting_Object_Radius + 1";	
	};
class Zoom_Plus_Button: RscButton
{
	idc = 4904;
	text = "Zoom +"; 
	x = 0.7875;
	y = 0.84;
	w = 0.1375;
	h = 0.04;
	onload = "ctrlShow [_this,false]";
	action = "Crafting_Object_Radius = Crafting_Object_Radius - 1";	
	};
class MoveUp_Button: RscButton
{
	idc = 4905;
	text = "Camera Up"; 
	x = 0.325;
	y = 0.78;
	w = 0.1625;
	h = 0.04;
	onload = "ctrlShow [_this,false]";
	action = "Crafting_Object_Height = Crafting_Object_Height + 1";	
	};
class MoveDown_Button: RscButton
{
	idc = 4906;
	text = "Camera Down"; 
	x = 0.525;
	y = 0.78;
	w = 0.1625;
	h = 0.04;
	onload = "ctrlShow [_this,false]";
	action = "Crafting_Object_Height = Crafting_Object_Height - 1";	
	};	
class SpinCameraLeft_Button: RscButton
{
	idc = 4907;
	text = "<<SPIN"; 
	x = 0.25;
	y = 0.9;
	w = 0.1375;
	h = 0.04;
	onload = "ctrlShow [_this,false]";
	action = "Crafting_Object_Direction = Crafting_Object_Direction + 0.5";	
	};	
class SpinCameraRight_Button: RscButton
{
	idc = 4908;
	text = "SPIN>>"; 
	x = 0.625;
	y = 0.9;
	w = 0.1375;
	h = 0.04;
	onload = "ctrlShow [_this,false]";
	action = "Crafting_Object_Direction = Crafting_Object_Direction - 0.5";	
	};	
class Return_Button: RscButton
{
	idc = 4909;
	text = "Return"; 
	x = 0.4375;
	y = 0.9;
	w = 0.1375;
	h = 0.04;
	onload = "ctrlShow [_this,false]";
	action = "GlobalPreviewVariable = 1";	
	};		
class Required_Tools_01: RscText
{
	idc = 5900;
	 colorText[] = {1,1,1,1};
	text = ""; 
	x = 0.7125;
	y = 0.08;
	w = 0.275;
	h = 0.04;
};

class Required_Tools_02: RscText
{
	idc = 5901;
	 colorText[] = {1,1,1,1};
	text = ""; 
	x = 0.7125;
	y = 0.12;
	w = 0.275;
	h = 0.04;
};
class Required_Tools_03: RscText
{
	idc = 5902;
	 colorText[] = {1,1,1,1};
	text = ""; 
	x = 0.7125;
	y = 0.16;
	w = 0.275;
	h = 0.04;
};
class Required_Tools_04: RscText
{
	idc = 5903;
	 colorText[] = {1,1,1,1};
	text = ""; 
	x = 0.7125;
	y = 0.2;
	w = 0.275;
	h = 0.04;
};
class Required_Materials_01: RscText
{
	idc = 6900;
	 colorText[] = {1,1,1,1};
	text = "";
	x = 0.7125;
	y = 0.32;
	w = 0.275;
	h = 0.04;
};
class Required_Materials_02: RscText
{
	idc = 6901;
	 colorText[] = {1,1,1,1};
	text = "";
	x = 0.7125;
	y = 0.36;
	w = 0.275;
	h = 0.04;
};
class Required_Materials_03: RscText
{
	idc = 6902;
	 colorText[] = {1,1,1,1};
	text = "";
	x = 0.7125;
	y = 0.4;
	w = 0.275;
	h = 0.04;
};
class Required_Materials_04: RscText
{
	idc = 6903;
	 colorText[] = {1,1,1,1};
	text = "";
	x = 0.7125;
	y = 0.44;
	w = 0.275;
	h = 0.04;
};
class Required_Materials_05: RscText
{
	idc = 6904;
	text = "";
	 colorText[] = {1,1,1,1};
	x = 0.7125;
	y = 0.48;
	w = 0.275;
	h = 0.04;
};
class Required_Materials_06: RscText
{
	idc = 6905; 
	colorText[] = {1,1,1,1};
	text = "";
	x = 0.7125;
	y = 0.52;
	w = 0.275;
	h = 0.04;
};
class Required_Materials_07: RscText
{
	idc = 6906;
	 colorText[] = {1,1,1,1};
	text = "";
	x = 0.7125;
	y = 0.56;
	w = 0.275;
	h = 0.04;
};
class Required_Materials_08: RscText
{
	idc = 6907;
	 colorText[] = {1,1,1,1};
	text = "";
	x = 0.7125;
	y = 0.6;
	w = 0.275;
	h = 0.04;
};
class Required_Materials_09: RscText
{
	idc = 6908;
	 colorText[] = {1,1,1,1};
	text = "";
	x = 0.7125;
	y = 0.64;
	w = 0.275;
	h = 0.04;
};
class Required_Materials_10: RscText
{
	idc = 6909;
	 colorText[] = {1,1,1,1};
	text = "";
	x = 0.7125;
	y = 0.68;
	w = 0.275;
	h = 0.04;
};
class Required_Materials_11: RscText
{
	idc = 6910;
	 colorText[] = {1,1,1,1};
	text = "";
	x = 0.7125;
	y = 0.72;
	w = 0.275;
	h = 0.04;
};
class Required_Materials_12: RscText
{
	idc = 6911;
	 colorText[] = {1,1,1,1};
	text = "";
	x = 0.7125;
	y = 0.76;
	w = 0.275;
	h = 0.04;
};
};

};

