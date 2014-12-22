//Turn siren off
if (isnil ("sirensOn")) then {sirensOn = 0;};
if (sirensOn == 1) then {
	sirensOn = 0;
    cutText ["Sirens OFF!","PLAIN DOWN"];
	} else {
	cutText ["Sirens OFF!","PLAIN DOWN"];
};
