private["_dialog","_index","_playerUID","_name"];
lbAddBank 		=			compile preprocessFileLineNumbers "custom\banksystem\scripts\lbAdd.sqf";
BankTransfers 	=			compile preprocessFileLineNumbers "custom\banksystem\scripts\BankTransfers.sqf";
TradeMetals 	=			compile preprocessFileLineNumbers "custom\banksystem\scripts\TradeMetals.sqf";
briefcase	 	=			compile preprocessFileLineNumbers "custom\banksystem\scripts\briefcase.sqf";
ozgold		 	=			compile preprocessFileLineNumbers "custom\banksystem\scripts\10ozgold.sqf";
gold 			=			compile preprocessFileLineNumbers "custom\banksystem\scripts\1gold.sqf";
buybriefcase	=			compile preprocessFileLineNumbers "custom\banksystem\scripts\buybriefcase.sqf";
buyozgold		=			compile preprocessFileLineNumbers "custom\banksystem\scripts\buy10ozgold.sqf";
buygold 		=			compile preprocessFileLineNumbers "custom\banksystem\scripts\buy1gold.sqf";
withdraw 		=			compile preprocessFileLineNumbers "custom\banksystem\scripts\withdrawBank.sqf";
deposit 		=			compile preprocessFileLineNumbers "custom\banksystem\scripts\depositBank.sqf";
switchDialog 	=			compile preprocessFileLineNumbers "custom\banksystem\scripts\switch.sqf";


_moneyBank = player getVariable["bankmoney", 0];
_money = player getVariable["money", 0];
_dialog = createdialog "Welcome to the iBank";
waitUntil {dialog};
lbClear 13000;
lbClear 13001;
lbClear 13002;
lbClear 13003;

_index = lbAdd [13000, "Trade Metals"];
ctrlSetText [13002, format["Wallet: %1$",_money]];
ctrlSetText [13003, format["Bank: %1$",_moneyBank]];

ctrlSetText [16001, format["Wallet: %1$",_money]];
ctrlSetText [16002, format["Bank: %1$",_moneyBank]];