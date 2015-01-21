class CurrencyPlayerDialog
{
	idd = -1;
	movingenable = 0;
	enableSimulation = true;
	
	class controlsBackground {
		class CurrencyTitleBackground:Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.35;
			y = 0.2;
			w = 0.3;
			h = (1 / 25);
		};
		
		class CurrencyMainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.35;
			y = 0.2 + (11 / 250);
			w = 0.3;
			h = 0.6 - (22 / 250);
		};
	};
	
	class Controls {

		class CurrencyCashTitle : RscTextT
		{
			idc = 15007;
			text = "";
			colorText[] = {1,1,1,1};
			x = 0.39;
			y = 0.23;
			w = 0.3;
			h = 0.15;
		};
		
		class CurrencyBankTitle : RscTextT
		{
			idc = 15004;
			text = "";
			colorText[] = {1,1,1,1};
			x = 0.39;
			y = 0.27;
			w = 0.6;
			h = 0.15;
		};
		
		class CurrencyAmountEdit : Life_RscEdit {
		
			idc = 15003;
			colorText[] = {0.8784,0.8471,0.651,1};
			text = "";
			sizeEx = 0.030;
			x = 0.4; y = 0.41;
			w = 0.2; h = 0.03;
		
		};
		
		class CurrencyTitleText : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "Currency Transfer";
			colorText[] = {1,1,1,1};
			x = 0.35;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		
		class CurrencyAddCashButton : life_RscButtonMenu 
		{
			idc = -1;
			text = "Add cash";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[(ctrlText 15003),currencyTarget,'add','cash'] spawn CurrencyTransferMoney; ((ctrlParent (_this select 0)) closeDisplay 9000);";
			colorText[] = {0.8784,0.8471,0.651,1};
			x = 0.4;
			y = 0.450; // 0.045 = full
			w = (6 / 30);
			h = (1 / 25); 
		};
		
		class CurrencyAddBankButton : life_RscButtonMenu 
		{
			idc = -1;
			text = "Add bank";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[(ctrlText 15003),currencyTarget,'add','bank'] spawn CurrencyTransferMoney; ((ctrlParent (_this select 0)) closeDisplay 9000);";
			colorText[] = {0.8784,0.8471,0.651,1};
			x = 0.4;
			y = 0.495;
			w = (6 / 30);
			h = (1 / 25);
		};
		
		class CurrencyRemoveCashButton : life_RscButtonMenu 
		{
			idc = -1;
			text = "Remove cash";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[(ctrlText 15003),currencyTarget,'remove','cash'] spawn CurrencyTransferMoney; ((ctrlParent (_this select 0)) closeDisplay 9000);";
			colorText[] = {0.8784,0.8471,0.651,1};
			x = 0.4;
			y = 0.540;
			w = (6 / 30);
			h = (1 / 25);
		};
		
		class CurrencyRemoveBankButton : life_RscButtonMenu 
		{
			idc = -1;
			text = "Remove bank";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[(ctrlText 15003),currencyTarget,'remove','bank'] spawn CurrencyTransferMoney; ((ctrlParent (_this select 0)) closeDisplay 9000);";
			colorText[] = {0.8784,0.8471,0.651,1};
			x = 0.4;
			y = 0.585;
			w = (6 / 30);
			h = (1 / 25);
		};
		
		class CurrencyTargetTitle : RscTextT
		{
			idc = 15006;
			text = "";
			sizeEx = 0.030;
			colorText[] = {0.8784,0.8471,0.651,1};
			x = 0.39;
			y = 0.58;
			w = 0.3;
			h = 0.2;
		};
		
		class CurrencyCloseButton : Life_RscButtonMenu {
			idc = -1;
			text = "Close";
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 9000);";
			x = 0.35;
			y = 0.8 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
	};
	
};