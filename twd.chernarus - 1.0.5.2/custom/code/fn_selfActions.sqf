//Nitro action
    _hasNOSinstalled = _vehicle getVariable["nitroinstalled",0];
    if (_inVehicle and _vehicle isKindOf "Car" and speed _vehicle >= 1) then {
        if (_inVehicle and _hasNOSinstalled == 1) then {
            if (isnil("NITRO_Cond")) then {NITRO_Cond = false;};
            if (s_player_nitrobooston <0) then {
                if (NITRO_Cond) then {
                    s_player_nitrobooston = _vehicle addAction [("<t color=""#39C1F3"">" + ("Nitro Off") + "</t>"),"custom\nos\nitro.sqf", [_vehicle], 999, false,true,"","driver _target == _this"];
                } else {
                    s_player_nitrobooston = _vehicle addAction [("<t color=""#39C1F3"">" + ("Nitro On") + "</t>"),"custom\nos\nitro.sqf", [_vehicle], 999, false,true,"","driver _target == _this"];
                };
            };
        } else {
            _vehicle removeAction s_player_nitrobooston;
            s_player_nitrobooston = -1;
        };
  } else {
        _vehicle removeAction s_player_nitrobooston;
        s_player_nitrobooston = -1;
        if (_hasNOSinstalled == 1) then {
            _vehicle setVariable ["nitroinstalled", 1, true];
        };
    };
 
 
//Sirens
_isCopcar = typeOf _vehicle in ["SUV_TK_CIV_EP1","SUV_TK_CIV_EP1_DZE1","SUV_TK_CIV_EP1_DZE2","SUV_TK_CIV_EP1_DZE3","SUV_TK_CIV_EP1_DZE4","policecar"];

if (_inVehicle and _isCopcar and (driver _vehicle == player)) then {
        dayz_addsirens = _vehicle;
    if (s_player_sirens_on < 0) then {
        s_player_sirens_on = dayz_addsirens addAction ["Sirens on","custom\sirens\sirens_on.sqf",dayz_addsirens,2,false,true,"",""];
        s_player_sirens_off = dayz_addsirens addAction ["Sirens off","custom\sirens\sirens_off.sqf",dayz_addsirens,2,false,true,"",""];
        };
    } else {
        dayz_addsirens removeAction s_player_sirens_on;
        dayz_addsirens removeAction s_player_sirens_off;
        s_player_sirens_on = -1;
        s_player_sirens_off = -1;
    };
	
if (_inVehicle && (_vehicle isKindOf "MV22")) then {
   if (isEngineOn _vehicle) then {[_vehicle,0] call mv22_pack;};
   if (mv22_fold < 0) then {
     themv22 = _vehicle;
     if !(isEngineOn themv22) then {
       mv22_fold = themv22 addAction ["Fold","custom\anim\mv22\mv22_fold.sqf","",5,false,true];
       mv22_unfold = themv22 addAction ["UnFold","custom\anim\mv22\mv22_unfold.sqf","",5,false,true];
       mv22_open = themv22 addAction ["Open Ramp","custom\anim\mv22\mv22_open.sqf","",5,false,true];
       mv22_close = themv22 addAction ["Close Ramp","custom\anim\mv22\mv22_close.sqf","",5,false,true];
     };
   };
   if (isEngineOn themv22) then {
     themv22 removeAction mv22_fold;
     mv22_fold = -1;
     themv22 removeAction mv22_unfold;
     mv22_unfold = -1;
     themv22 removeAction mv22_open;
     mv22_open = -1;
     themv22 removeAction mv22_close;
     mv22_close = -1;
   };
} else {
    if (!isNil "themv22") then {
       themv22 removeAction mv22_fold;
       mv22_fold = -1;
       themv22 removeAction mv22_unfold;
       mv22_unfold = -1;
       themv22 removeAction mv22_open;
       mv22_open = -1;
       themv22 removeAction mv22_close;
       mv22_close = -1;
   };
};

if (_inVehicle && (_vehicle isKindOf "AH1Z")) then {
   if (isEngineOn _vehicle) then {[_vehicle,0] call ah1z_fold;};
   if (ah1z_fold < 0) then {
     theah1z = _vehicle;
     if !(isEngineOn theah1z) then {
       ah1z_fold = theah1z addAction ["Fold","custom\anim\ah1z\ah1z_fold.sqf","",5,false,true];
       ah1z_unfold = theah1z addAction ["UnFold","custom\anim\ah1z\ah1z_unfold.sqf","",5,false,true];
     };
   };
   if (isEngineOn theah1z) then {
     theah1z removeAction ah1z_fold;
     ah1z_fold = -1;
     theah1z removeAction ah1z_unfold;
     ah1z_unfold = -1;
   };
} else {
    if (!isNil "theah1z") then {
       theah1z removeAction ah1z_fold;
       ah1z_fold = -1;
       theah1z removeAction ah1z_unfold;
       ah1z_unfold = -1;
   };
};

if (_inVehicle && (_vehicle isKindOf "ArmoredSUV_Base_PMC")) then {
   if ((_vehicle animationPhase "HideGun_01") == 1) then {
     _unit = _vehicle turretUnit [0];
     if (!(isNull _unit)) then {
       _unit action ["moveToCargo",_vehicle,2];
       titleText ["\n\nYou must open the hatch first.","PLAIN DOWN"];titleFadeOut 4;
     };
   };
   if (suv_close < 0) then {
     thesuv = _vehicle;
     suv_close = thesuv addAction ["Close Hatch","custom\anim\suv\suv_close.sqf","",5,false,true];
     suv_open = thesuv addAction ["Open Hatch","custom\anim\suv\suv_open.sqf","",5,false,true];
   };
} else {
    if (!isNil "thesuv") then {
        thesuv removeAction suv_close;
        suv_close = -1;
        thesuv removeAction suv_open;
        suv_open = -1;
    };
};

//Zombie Shield
	if (_cursorTarget isKindof TypeOfZShield) then {
		if (EnableZShield == 1) then {
			if (s_player_ZombieShield_on < 0) then {
				s_player_ZombieShield_on = player addAction [format[("<t color=""#FFF700"">" + ("Zombie Shield On") +"</t>"),_adminText], "custom\zombie\shield\ZombieShield.sqf", [_lever, true], 6, true, true, "", ""];
			};
			if (s_player_ZombieShield_off < 0) then {
				s_player_ZombieShield_off = player addAction [format[("<t color=""#FFF700"">" + ("Zombie Shield Off") +"</t>"),_adminText], "custom\zombie\shield\ZombieShield.sqf", [_lever, false], 6, false, true, "", ""];
			};
		} else {
			if (s_player_ZombieShield_on < 0) then {
				s_player_ZombieShield_on = player addAction [format[("<t color=""#FFF700"">" + ("Zombie Shields are disabled on this server") +"</t>"),_adminText], "", [], 6, false, true, "", ""];
			};
			player removeAction s_player_ZombieShield_off;
			s_player_ZombieShield_off = -1;
		};
	} else {
		player removeAction s_player_ZombieShield_on;
		s_player_ZombieShield_on = -1;
		player removeAction s_player_ZombieShield_off;
		s_player_ZombieShield_off = -1;
	};
//End Shield

// Bank Robbery 
_bankrobbery = cursorTarget isKindOf "Notebook";
if ((speed player <= 1) && _bankrobbery && (player distance cursorTarget < 5)) then {
if (s_player_bankrob < 0) then {
s_player_bankrob = player addAction ["Rob the bank","custom\bank\rob\robbank.sqf",cursorTarget, 0, false, true, "",""];
};
} else {
player removeAction s_player_bankrob;
s_player_bankrob = -1;
};
// Bank Robbery
	
//Nitro
   _isaCar = _cursorTarget isKindOf "Car";
    if (("ItemJerrycan" in _magazinesPlayer) && ("ItemSodaRbull" in _magazinesPlayer)) then {
       _hasNOSitems = true;
    } else {
       _hasNOSitems = false;
    };
    _isNOSinstalled = _cursorTarget getVariable ["nitroinstalled", 0];
    if (_isaCar and !locked _cursorTarget and _hasNOSitems and _isNOSinstalled == 0) then {
        if (s_player_nitroInstall < 0) then {
            s_player_nitroInstall = player addAction [("<t color=""#39C1F3"">" + ("Install NOS boost") +"</t>"), "custom\nos\nitroinstall.sqf",_cursorTarget, 999, true, false, "",""];
        };
    } else {
        player removeAction s_player_nitroInstall;
        s_player_nitroInstall = -1;
    };
 