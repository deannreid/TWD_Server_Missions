diag_log "Chernarus Locating Markers";

		_dean_airfield  = createMarker ["_dean_airfield", [6611.7944, 14153.81]];
		_dean_airfield  setMarkerText "Misty Peek Airforce Base";
		_dean_airfield  setMarkerType "Airport";
		_dean_airfield  setMarkerColor "ColorBlack";
		_dean_airfield  = _dean_airfield ;

		_mine1 = createMarker ["_mine1", [3893.9448, 11426.449]];
		_mine1 setMarkerText "Mining Node";
		_mine1 setMarkerColor "ColorRed";
		_mine1 setMarkerType "Destroy";
		_mine1 = _mine1;
	
		_mine2 = createMarker ["_mine2", [13273.093, 6099.0747]];
		_mine2 setMarkerText "Mining Node";
		_mine2 setMarkerColor "ColorRed";
		_mine2 setMarkerType "Destroy";
		_mine2 = _mine2;
	
		
_this = createMarker ["atm1", [3649.0173, 8532.2158, -10.050079]];
_this setMarkerText "Bank of Chernarus";
_this setMarkerType "hd_pickup";
_this setMarkerBrush "Solid";
_marker_1 = _this;

_this = createMarker ["atm2", [12212.91, 9730.4385, 0.12198448]];
_this setMarkerText "Bank of Chernarus";
_this setMarkerType "hd_pickup";
_this setMarkerBrush "Solid";
_marker_2 = _this;

_this = createMarker ["atm3", [1004.8201, 2217.8989, -10.221092]];
_this setMarkerText "Bank of Chernarus";
_this setMarkerType "hd_pickup";
_this setMarkerBrush "Solid";
_marker_3 = _this;

_this = createMarker ["atm4", [10005.508, 1862.9708, -5.8718519]];
_this setMarkerText "Bank of Chernarus";
_this setMarkerType "hd_pickup";
_this setMarkerBrush "Solid";
_marker_4 = _this;

_this = createMarker ["atm5", [13341.642, 5488.6128, -95.077232]];
_this setMarkerText "Bank of Chernarus";
_this setMarkerType "hd_pickup";
_this setMarkerBrush "Solid";
_marker_5 = _this;

_this = createMarker ["atm6", [8665.4766, 6515.3008, -341.35245]];
_this setMarkerText "Bank of Chernarus";
_this setMarkerType "hd_pickup";
_this setMarkerBrush "Solid";
_marker_6 = _this;

_this = createMarker ["atm7", [6776.5586, 2495.0146, 2.3841858e-006]];
_this setMarkerText "Bank of Chernarus";
_this setMarkerType "hd_pickup";
_this setMarkerBrush "Solid";
_marker_7 = _this;

// Kamenka
_sp5  = createMarker ["_sp5 ", [2033.0038, 2243.4602]];
_sp5  setMarkerType "n_maint";
_sp5  setMarkerText "Service Station";
_sp5  = _sp5 ;

// Cherno - West
_sp12  = createMarker ["_sp12 ", [5834.4834, 2187.8044]];
_sp12  setMarkerType "n_maint";
_sp12  setMarkerText "Service Station";
_sp12  = _sp12 ;

// Cherno - North
_sp4  = createMarker ["_sp4 ", [6680.3447, 2982.3054]];
_sp4  setMarkerType "n_maint";
_sp4  setMarkerText "Service Station";
_sp4  = _sp4 ;

// Elektro - West
_sp3  = createMarker ["_sp3 ", [9509.1768, 1992.4501]];
_sp3  setMarkerType "n_maint";
_sp3  setMarkerText "Service Station";
_sp3  = _sp3 ;

// Solnichniy
_sp2  = createMarker ["_sp2 ", [13383.212, 6625.6797]];
_sp2  setMarkerType "n_maint";
_sp2  setMarkerSize [2, 2];
_sp2  = _sp2 ;

// Staroye
_sp20  = createMarker ["_sp20 ", [10166.833, 5301.48]];
_sp20  setMarkerType "n_maint";
_sp20  setMarkerSize [2, 2];
_sp20  = _sp20 ;

// Berezino - North East
_sp1  = createMarker ["_sp1 ", [13002.69, 10099.583]];
_sp1  setMarkerType "n_maint";
_sp1  setMarkerText "Service Station";
_sp1  = _sp1 ;

// Gorka - East
_sp15  = createMarker ["_sp15 ", [10452.294, 8841.7793]];
_sp15  setMarkerType "n_maint";
_sp15  setMarkerSize [2, 2];
_sp15  = _sp15 ;

// Grishino
_sp14  = createMarker ["_sp14 ", [5845.6499, 10099.621]];
_sp14  setMarkerType "n_maint";
_sp14  setMarkerSize [2, 2];
_sp14  = _sp14 ;

// Vybor
_sp10  = createMarker ["_sp10 ", [3647.1245, 8992.4834]];
_sp10  setMarkerType "n_maint";
_sp10  setMarkerText "Service Station";
_sp10  = _sp10 ;

// Pustoshka
_sp9  = createMarker ["_sp9 ", [2990.2378, 7451.3711]];
_sp9  setMarkerType "n_maint";
_sp9  setMarkerSize [2, 2];
_sp9  = _sp9 ;

// Novy Sobor
_sp16  = createMarker ["_sp16 ", [7244.3687, 7659.0625]];
_sp16  setMarkerType "n_maint";
_sp16  setMarkerSize [2, 2];
_sp16  = _sp16 ;
	
diag_log "Chernarus Markers Added";