// Safezones

private["_separator1","_txt"];
titleText ["Click and Hold to drag!", "PLAIN DOWN"];
sleep 1;
"Rules & Info" hintC [
						"-Within 400 Meters-",															
						"No Camping, No Killing",
						"Shooting players who leave",
						"Without giving time to react",
						"Will result in a 24 hour ban",
						"-Inside Safezones-",
						"No Camping, No Killing",															
						"No Griefing, No Stealing",
						"All Unlocked vehicles",
						"Are free to be taken",
						"Do not use for evasion",
						"Players who run into",
						"Safe zones to elude",
						"Or were engaged well",
						"Outside of these limits",
						"Are considered fair game",
						"If engaged from inside",
						"Defend yourself if possible"
];

waitUntil  { speed player > 0 };                  // Wait & Remove hint when player moves 
	if (speed player > 0) then {
		(findDisplay 72) closeDisplay 0;
	};	
};