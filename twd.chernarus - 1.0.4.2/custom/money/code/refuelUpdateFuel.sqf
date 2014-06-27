if (local (_this select 0)) then {
	[(_this select 0),(_this select 1)] call local_setFuel;
} else {
	PVDZE_send = [(_this select 0),"SFuel",[(_this select 0),(_this select 1)]];
	publicVariableServer "PVDZE_send";
};