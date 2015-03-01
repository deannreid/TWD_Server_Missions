// Building

private["_separator1","_txt"];
titleText ["Click and Hold to drag!", "PLAIN DOWN"];
sleep 1;
"Rules & Info" hintC [
                                                            "Base Decay is off",
															"If unused for 14 days",
															"Lockables reset codes to",
															"1337  137  or Red37",
															"-Do not build within-",
															"1000 meters of a safezone",
															"400 meters of high traffic",
															"Towns and roads",
															"Any base that breaks these",
															"rules will be deleted", 
															"without any payment",
															"You have been warned.",
];

waitUntil  { speed player > 0 };                  // Wait & Remove hint when player moves 
	if (speed player > 0) then {
		(findDisplay 72) closeDisplay 0;
	};	
};