// Chat

private["_separator1","_txt"];
titleText ["Click and Hold to drag!", "PLAIN DOWN"];
sleep 1;
"Rules & Info" hintC [
                                                            "-Chat Etiquette-",
															"You can tell someone",
															"To get screwed and",
															"Jump in a lake of fire",
															"I dont care!",
															"Say what you have",
                                                            "To say and be done",															
															"Just dont be racist!",
															"No spamming chat",
															"No voice in side",
															"No advertising",
															"English only in side"
];

waitUntil  { speed player > 0 };                  // Wait & Remove hint when player moves 
	if (speed player > 0) then {
		(findDisplay 72) closeDisplay 0;
	};	
};