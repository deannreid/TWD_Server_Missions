diag_log "Locating Markers";
//execVM "custom\markers\base\init.sqf";
		_dean_airfield  = createMarker ["_dean_airfield", [6611.7944, 14153.81]];
		_dean_airfield  setMarkerText "Misty Peek Airforce Base";
		_dean_airfield  setMarkerType "Airport";
		_dean_airfield  setMarkerColor "ColorBlack";
		_dean_airfield  = _dean_airfield ;
		
		_NWAF  = createMarker ["_NWAF", [5056.7383,9740.4668]];
		_NWAF  setMarkerText "Aircraft Dealer";
		_NWAF  setMarkerType "Airport";
		_NWAF  setMarkerColor "ColorBlack";
		_NWAF  = _NWAF;
		
		_dk_Skalisty  = createMarker ["_dk_Skalisty", [13700, 2961]];
		_dk_Skalisty  setMarkerText "Skalisty Village";
		_dk_Skalisty  setMarkerType "City";
		_dk_Skalisty  setMarkerColor "ColorBlack";
		_dk_Skalisty  = _dk_Skalisty;
		
		_weed = createMarker ["_weed", [7325.9077, 9357.582]];
		_weed setMarkerText "Weed Farm *Coming Soon*";
		_weed setMarkerColor "ColorGreen";
		_weed setMarkerType "FOB";
		_weed = _weed;
		
		_drugd = createMarker ["_drugd", [8347.5869, 2443.801]];
		_drugd setMarkerText "Druglord *Coming Soon*";
		_drugd setMarkerColor "ColorRed";
		_drugd setMarkerType "FOB";
		_drugd = _drugd;
/*		
		_bunker = createMarker ["_bunker ", [8849.4346, 2839.7505]];
		_bunker setMarkerText "Secret Trader *Not that Secret*";
		_bunker  setMarkerType "mil_dot";
		_bunker  setMarkerColor "ColorPink";
		_bunker  = _bunker ;
*/
diag_log "Markers Added";


