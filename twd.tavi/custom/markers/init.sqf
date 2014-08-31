diag_log "Locating Markers";
//execVM "custom\markers\base\init.sqf";
		_dean_airfield  = createMarker ["_dean_airfield", [6611.7944, 14153.81]];
		_dean_airfield  setMarkerText "Misty Peek Airforce Base";
		_dean_airfield  setMarkerType "Airport";
		_dean_airfield  setMarkerColor "ColorBlack";
		_dean_airfield  = _dean_airfield ;
		/*
		_NWAF  = createMarker ["_NWAF", [5056.7383,9740.4668]];
		_NWAF  setMarkerText "Aircraft Dealer";
		_NWAF  setMarkerType "Airport";
		_NWAF  setMarkerColor "ColorBlack";
		_NWAF  = _NWAF;*/
		
		_dk_Skalisty  = createMarker ["_dk_Skalisty", [13700, 2961]];
		_dk_Skalisty  setMarkerText "Skalisty Village  !!!PVP/Event AREA!!!";
		_dk_Skalisty  setMarkerType "Warning";
		_dk_Skalisty  setMarkerColor "ColorBlack";
		_dk_Skalisty  = _dk_Skalisty;
	
		_pvp = createMarker ["_pvp", [13700, 2961]];
		_pvp setMarkerText "!!!PVP AREA!!!";
		_pvp setMarkerColor "ColorRed";
		_pvp setMarkerShape "ELLIPSE";
		_pvp setMarkerBrush "Grid";
		_pvp setMarkerSize [500,500];
		_pvp = _pvp;		
		
		_qdoba = createMarker ["_qdoba", [4071.9851, 8610.6514]];
		_qdoba setMarkerText "Qdoba City *WARNING*";
		_qdoba setMarkerColor "ColorRed";
		_qdoba setMarkerType "Strongpoint";
		_qdoba = _qdoba;

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
	
		_bank = createMarker ["_bank", [7018.75, 7655.4258]];
		_bank setMarkerText "Bank";
		_bank setMarkerColor "ColorOrange";
		_bank setMarkerType "Faction_US";
		_bank = _bank;		
/*
		_bank1 = createMarker ["_bank1", [6772.35,2494.58]];
		_bank1 setMarkerText "Bank";
		_bank1 setMarkerColor "ColorOrange";
		_bank1 setMarkerType "Faction_US";
		_bank1 = _bank1;		
		
		_bank2 = createMarker ["_bank2", [10005.678,1861.6836]];
		_bank2 setMarkerText "Bank";
		_bank2 setMarkerColor "ColorOrange";
		_bank2 setMarkerType "Faction_US";
		_bank2 = _bank2;		

		_bank3 = createMarker ["_bank3", [12214.157,9731.7646]];
		_bank3 setMarkerText "Bank";
		_bank3 setMarkerColor "ColorOrange";
		_bank3 setMarkerType "Faction_US";
		_bank3 = _bank3;		

		_bank4 = createMarker ["_bank4", [13343.663,5488.4917]];
		_bank4 setMarkerText "Bank";
		_bank4 setMarkerColor "ColorOrange";
		_bank4 setMarkerType "Faction_US";
		_bank4 = _bank4;		

		_bank5 = createMarker ["_bank5", [1008.7841,2218.9775]];
		_bank5 setMarkerText "Bank";
		_bank5 setMarkerColor "ColorOrange";
		_bank5 setMarkerType "Faction_US";
		_bank5 = _bank5;		

		_bank5 = createMarker ["_bank5", [8666.5801,6517.2212]];
		_bank5 setMarkerText "Bank";
		_bank5 setMarkerColor "ColorOrange";
		_bank5 setMarkerType "Faction_US";
		_bank5 = _bank5;	*/	
	
		_island = createMarker ["_island", [689.40442, 606.86194]];
		_island setMarkerText "Island of Napa";
		_island setMarkerType "Faction_GUE";
		_island = _island;
		
	
diag_log "Markers Added";


