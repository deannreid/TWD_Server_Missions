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
	
		_qdoba = createMarker ["_qdoba", [4071.9851, 8610.6514]];
		_qdoba setMarkerText "Qdoba City *WARNING*";
		_qdoba setMarkerColor "ColorRed";
		_qdoba setMarkerType "Strongpoint";
		_qdoba = _qdoba;

		_mine1 = createMarker ["_mine1", [3893.9448, 11426.449]];
		_mine1 setMarkerText "Mining Node";
		_mine1 setMarkerColor "ColorRed";
		_mine1 setMarkerType "end";
		_mine1 = _mine1;
	
		_mine2 = createMarker ["_mine2", [13273.093, 0, 6099.0747]];
		_mine2 setMarkerText "Mining Node";
		_mine2 setMarkerColor "ColorRed";
		_mine2 setMarkerType "end";
		_mine2 = _mine2;
	
		
diag_log "Markers Added";


