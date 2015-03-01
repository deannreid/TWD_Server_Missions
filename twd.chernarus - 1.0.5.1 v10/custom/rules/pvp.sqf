// PvP

private["_separator1","_txt"];
titleText ["Click and Hold to drag!", "PLAIN DOWN"];
sleep 1;
"Rules & Info" hintC [
                                                            "-Player Vs Player-",
															"As long as no violations",
															"Of safezone rules occur",
															"You are free to KOS",
															"-Base Raiding-",
															"You may destroy",
															"As well as steal",
															"Each and every",
															"Thing you possess",
															"The power to",
															"-You may NOT-",
															"Place ANY buildables",
															"Unless players openly",
															"Forfeit the base",
															"Or remain inactive",
															"For two weeks"
];

waitUntil  { speed player > 0 };                  // Wait & Remove hint when player moves 
	if (speed player > 0) then {
		(findDisplay 72) closeDisplay 0;
	};	
};