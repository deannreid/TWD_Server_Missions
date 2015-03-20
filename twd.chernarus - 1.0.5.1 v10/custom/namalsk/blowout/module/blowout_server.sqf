bl_flashes = 
{
  if (worldName == "namalsk") then {
     _pozice = [0, 0, 0];
     _blesky1 = "bl_bleez" createVehicle _pozice;
     _blesky1 setPos [3976.25, 8470.01, 0];   
     _blesky1 setVectorUp [0,0,1];
     _blesky2 = "bl_bleez" createVehicle _pozice;
     _blesky2 setPos [3976.25, 8470.01, 151];
     _blesky2 setVectorUp [0,0,1];     
     _blesky3 = "bl_bleez" createVehicle _pozice;
     _blesky3 setPos [3976.25, 8470.01, 320];  
     _blesky3 setVectorUp [0,0,1];
     _blesky4 = "bl_bleez" createVehicle _pozice;
     _blesky4 setPos [3976.25, 8470.01, 471];  
     _blesky4 setVectorUp [0,0,1];   
     _blesky5 = "bl_bleez" createVehicle _pozice;
     _blesky5 setPos [3976.25, 8470.01, 620];  
     _blesky5 setVectorUp [0,0,1];
     _blesky6 = "bl_bleez" createVehicle _pozice;
     _blesky6 setPos [3976.25, 8470.01, 770];  
     _blesky6 setVectorUp [0,0,1];
     _blesky7 = "bl_bleez" createVehicle _pozice;
     _blesky7 setPos [3976.25, 8470.01, 820];  
     _blesky7 setVectorUp [0,0,1];
     _blesky8 = "bl_bleez" createVehicle _pozice;
     _blesky8 setPos [3976.25, 8470.01, 970];  
     _blesky8 setVectorUp [0,0,1];
     _blesky9 = "bl_bleez" createVehicle _pozice;
     _blesky9 setPos [3976.25, 8470.01, 1120];  
     _blesky9 setVectorUp [0,0,1];
     sleep 0.25;
     deleteVehicle _blesky1;  
     deleteVehicle _blesky2; 
     deleteVehicle _blesky3; 
     deleteVehicle _blesky4; 
     deleteVehicle _blesky5; 
     deleteVehicle _blesky6; 
     deleteVehicle _blesky7; 
     deleteVehicle _blesky8; 
     deleteVehicle _blesky9;
  };
};
bl_damage = {
	private["_isinbuilding","_emp"];
	_emp = _this select 0;
	//_count_units = count playableUnits;
	_count_units = count AllUnits;
	_isinbuilding = false;
	diag_log format["[NAC BLOWOUT SERVER] :: bl_damage (_count_units = %1)", _count_units];
	for [{_c = 0}, {_c <= _count_units}, {_c = _c + 1}] do {
		//_jednotka = playableUnits select _c;
		_jednotka = AllUnits select _c;
		if (!isNull _jednotka) then {
			if([_jednotka] call fnc_isInsideBuilding) then {
				_isinbuilding = true;
				diag_log format["[NAC BLOWOUT SERVER] :: [S] %1 IN", _isinbuilding];
			} else {
				_isinbuilding = false;
				diag_log format["[NAC BLOWOUT SERVER] :: [S] %1 OUT", _isinbuilding];
			};
			
			if (!(_jednotka hasWeapon ns_blow_itemapsi)) then {
				diag_log format["[NAC BLOWOUT SERVER] :: [S] %1 does not have APSI", _jednotka];
				if (!_isinbuilding) then {
					diag_log format["[NAC BLOWOUT SERVER] :: [S] and %1 is not in a building, sorry.", _jednotka];
					_jednotka setDamage (damage _jednotka + 0.30);
					diag_log format["[NAC BLOWOUT SERVER] :: [S] %1 has been damaged by blowout by 0.30", _jednotka];
				} else {
					diag_log format["[NAC BLOWOUT SERVER] :: [S] but %1 is in some building, good for him.", _jednotka];
				};
			} else {
				diag_log format["[NAC BLOWOUT SERVER] :: [S] %1 does have APSI, I do not have problem with him.", _jednotka];
			};
if (worldName == "namalsk") then {
	      if (_emp == 1) then {
	       if (_jednotka hasWeapon "NVGoggles") then {
	         _jednotka removeWeapon "NVGoggles";
	         _jednotka addWeapon "BrokenNVGoggles"; 
	       };
	       if (_jednotka hasWeapon "ItemGPS") then {
	         _jednotka removeWeapon "ItemGPS";
	         _jednotka addWeapon "BrokenItemGPS"; 
	       };
	       if (_jednotka hasWeapon "ItemRadio") then {
	         _jednotka removeWeapon "ItemRadio";
	         _jednotka addWeapon "BrokenItemRadio"; 
	       };
	      };
};
	    };
	    //_count_units = count AllUnits;
    };
    if (_emp == 1) then {
      _count_vehicles = count vehicles;
      diag_log format["[NAC BLOWOUT SERVER] :: bl_damage (_count_vehicles = %1)", _count_vehicles];
      for [{_c = 0}, {_c <= _count_vehicles}, {_c = _c + 1}] do {
        _vehikl = vehicles select _c;
        if (_vehikl isKindOf "AllVehicles") then {
          if ((damage _vehikl) <= 0.99) then {
            //_vehikl setDamage 0.9;
            //_vehikl setFuel 0;
            diag_log format["[NAC BLOWOUT SERVER] :: [V] %1 has been damaged by blowout by 0.90", _vehikl];
          };  
        };
      };    
    };
};
private["_emp_tg_namalsk"];
fnc_isInsideBuilding = compile preprocessFileLineNumbers "custom\namalsk\blowout\external\fn_isInsideBuilding.sqf";

// init
while {true} do {
 _emp_tg_namalsk = 0;
 if (isNil("ns_blow_emp")) then { ns_blow_emp = false; }; 
 if (isNil("ns_blowout")) then { ns_blowout = true; }; 
 if (isNil("ns_blowout_dayz")) then { ns_blowout_dayz = false; };
 if (isNil("ns_blow_delaymod")) then { ns_blow_delaymod = 1; };
 if (isNil("ns_blow_prep")) then { ns_blow_prep = false; };
 
  private["_prodleva"];
  if(ns_blowout_dayz) then {
   _prodleva = random (6000 * ns_blow_delaymod);
   while {_prodleva < (3000 * ns_blow_delaymod)} do {
     _prodleva = random (6000 * ns_blow_delaymod);
   };
  } else {
   _prodleva = (random (1600 * ns_blow_delaymod));
   while {_prodleva < (800 * ns_blow_delaymod)} do {
     _prodleva = random (1600 * ns_blow_delaymod);
   };
  };
  
  diag_log format["[NAC BLOWOUT SERVER] :: Next blowout in _delay (_delay = %1), delay modifier is %2 (ns_blow_delaymod)", _prodleva, ns_blow_delaymod];
  sleep _prodleva;

  if(!ns_blowout) then {
    diag_log format["[NAC BLOWOUT SERVER] :: Blowout module is temporarily OFF ns_blowout (ns_blowout = %1)", ns_blowout];
  } else {
    diag_log format["[NAC BLOWOUT SERVER] :: Blowout module is ON ns_blowout (ns_blowout = %1)", ns_blowout];
  };
  
  if(ns_blowout_dayz) then {
    diag_log format["[NAC BLOWOUT SERVER] :: Blowout module is in DayZ mode ns_blowout_dayz (ns_blowout_dayz = %1)", ns_blowout_dayz];
  };
  
  // Stop variable check
  waitUntil{ns_blowout};

  if (ns_blow_emp) then {
     diag_log format["[NAC BLOWOUT SERVER] :: Boosting up efficiency, EMP target Namalsk and surroundings (ns_blow_emp = %1)", ns_blow_emp];
     _emp_tg_namalsk = 1;
  } else {
     diag_log format["[NAC BLOWOUT SERVER] :: Normal output, EMP target surroundings of Namalsk (ns_blow_emp = %1)", ns_blow_emp];
     _emp_tg_namalsk = 0;
  };
  
  // Preparations before blowout - APSI / players running to take a cover
  ns_blow_prep = true;
  publicVariable "ns_blow_prep";
  diag_log format["[NAC BLOWOUT SERVER] :: Preparations are under way (ns_blow_prep = %1)", ns_blow_prep];
  sleep 300;
  ns_blow_prep = false;
  publicVariable "ns_blow_prep";
  diag_log format["[NAC BLOWOUT SERVER] :: Preparations are finished (ns_blow_prep = %1)", ns_blow_prep];
  
  // main blowout variable - 1 == blowout in progress, 0 == no current blowout
  ns_blow_status = true;
  publicVariable "ns_blow_status";
  diag_log format["[NAC BLOWOUT SERVER] :: Blowout in progress (ns_blow_status = %1)", ns_blow_status];
  sleep 2;
  if (ns_blow_status) then {
    ns_blow_action = true;
    publicVariable "ns_blow_action";
    diag_log format["[NAC BLOWOUT SERVER] :: Blowout actions in progress (ns_blow_action = %1)", ns_blow_action];
    _bul = [] call bl_flashes;
    sleep 7.20;
    _bul = [] call bl_flashes;
    sleep 1; 
    _bul = [] call bl_flashes;
    sleep 4.3;
    _bul = [] call bl_flashes;
    sleep 3;
    _bul = [] call bl_flashes;
    sleep 1;
    _bul = [] call bl_flashes;
    sleep 4;
    _bul = [] call bl_flashes;
    sleep 4;
    _bul = [] call bl_flashes;
    if (!ns_blowout_dayz) then {_bul = [_emp_tg_namalsk] call bl_damage;};
    sleep 12.2;
    ns_blow_action = false;
    publicVariable "ns_blow_action";
    diag_log format["[NAC BLOWOUT SERVER] :: Blowout actions finished (ns_blow_action = %1)", ns_blow_action];
  };
  sleep 25;
  ns_blow_status = false; 
  publicVariable "ns_blow_status";
  diag_log format["[NAC BLOWOUT SERVER] :: Blowout finished (ns_blow_status = %1)", ns_blow_status];
};