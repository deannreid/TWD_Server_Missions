// Cheating

private["_separator1","_txt"];
titleText ["Click and Hold to drag!", "PLAIN DOWN"];
sleep 1;
"Rules & Info" hintC [
                                                            "-Simple-",
															"0 Tolerance",
															"No excuses",
															"Anyone caught using",
															"A cheat",
															"A glitch",
															"A hack",
															"Or an exploit",
															"OF ANY KIND",
															"Will be permanently",
															"Banned",
															"If you are not caught already",
															""
];

waitUntil  { speed player > 0 };                  // Wait & Remove hint when player moves 
	if (speed player > 0) then {
		(findDisplay 72) closeDisplay 0;
	};	
};