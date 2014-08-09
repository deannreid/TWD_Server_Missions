/*
	VEHICLE CLEANUP ZONE
	Script by HALV
*/
_obj = _this select 0;

if (!isServer) exitWith {diag_log "Server_DeleteObjInsafezone.sqf - ERROR: NOT SERVER?"};

//\\\\\\\\\\\\\\\\\\\\ Setup Area ////////////////////\\

//vehicle types to Check for
_delVeh = ["Air","Landvehicle","Ship","Tank"];

//Action to take when vehicle is detected in a [VEHICLE CLEANUP ZONE]
//0 Delete vehicles ingame but keep in database. NOTE: This will stack vehicles in database if not cleaned propper
//1 Tp vehicles outside [VEHICLE CLEANUP ZONE] ("radius" + 50 meter to 4x "radius" from VEHICLE CLEANUP ZONE pos eg: if radius is 100 vehicles are moved 150-400 meter away)
//2 Tp vehicles to a position within 125m of _safespot (remember to set a position below)
//3 will delete vehicles completly from database
_Action = 3;

//if _Action = 2 then enter the position you desire here (default is by grozovoy pass around 022010)
_safespot = [2283.19,14255,0];
//how large radius to spread them in this area in meters (default 125m)
_radius = 125;

//damaged above this amoun, vehicle is deleted (set to 1 to only delete completely destroyed vehicles)
_dam = 0.98;

//if true will delete vehicles matching array below by default
_delbikmot = true;
//if above is true will delete these by default
_defdelar = ["Bicycle","Motorcycle","CSJ_GyroC","CSJ_GyroCover","CSJ_GyroP"];//,"ATV_Base_EP1"

//set to true, to unlock vehicles by default when TP'ed
_unlock = true;

//log text, this is what you want to look for in the logs, if you need to know something about a moved vehicle
_txt = "[VEHICLE CLEANUP ZONE]";

//Update vehicles to the hive, and make sure they are not moved each restart?
_updateHIVE = true;

//VEHICLE CLEANUP ZONE's/areas switch choosing the map name for cleanup location purposes
if(isNil "HALV_VEHICLE_CLEANUPZONES")then{
	diag_log format["%1: selecting world to cleanup ...",_txt];
	_WorldName = toLower format ["%1", worldName];
	switch (_WorldName)do {
//NAPF
		case "napf":{
//			diag_log format["%2: Cleanup zones for napf selected! (check: %1)",_WorldName,_txt]; //logging if right worldname was selected, if uncommented
			HALV_VEHICLE_CLEANUPZONES = [
			//position					//radius	//cityname/text
			[[8246.3184,15485.867,0],	125,		"Trader City Lenzburg"],
			[[15506.952,13229.368,0],	125,		"Trader city Emmen"],
			[[12399.751,5074.5273,0],	125,		"Trader City Schratten"],
			[[10398.626,8279.4619,0],	125,		"Bandit Vendor"],
			[[5149.9814,4864.1191,0],	125,		"Hero Vendor"],
			[[2122.7954,7807.9878,0],	100,		"West Wholesaler"],
			[[5379.0342,16103.187,0],	100,		"North Wholesaler"],
			[[6772.8877,16983.27,0],	100,		"Nordic Boats"],
			[[16839.973,5264.0566,0],	100,		"Pauls Boats"],
			[[15128.379,16421.879,0],	100,		"AWOLs Airfield"]
			];
		};
//chernarus
		case "chernarus":{
//			diag_log format["%2: Cleanup zones for chernarus selected! (check: %1)",_WorldName,_txt]; //logging if right worldname was selected, if uncommented
			HALV_VEHICLE_CLEANUPZONES = [
			//position					radius		cityname/text
			[[6325.6772,7807.7412,0],	125,		"Trader City Stary"],
			[[4063.4226,11664.19,0],	125,		"Trader City Bash"],
			[[11447.472,11364.504,0],	125,		"Trader City Klen"],
			[[1606.6443,7803.5156,0],	125,		"Bandit Camp"],
			[[12944.227,12766.889,0],	125,		"Hero Camp"],
			[[13441.16,5429.3013,0],	100,		"Wholesaler East"],
			[[4510.7773,10774.518,0],	100,		"Aircraft Dealer"],
			[[7989.3354,2900.9946,0],	100,		"Boat Dealer South"],
			[[13532.614,6355.9497,0],	100,		"Boat Dealer East"],
			[[4361.4937,2259.9526,0],	100,		"Wholesaler South"]
			];
		};
//tavi
		case "tavi":{
//			diag_log format["%2: Cleanup zones for tavi selected! (check: %1)",_WorldName,_txt]; //logging if right worldname was selected, if uncommented
			HALV_VEHICLE_CLEANUPZONES = [
			//position					//radius	//cityname/text
			[[11698.81,15210.121,0],	75,			"Trader City Lyepestok"],
			[[15309.663,9278.4912,0],	75,			"Trader City Sabina"],
			[[5538.7354,8762.2695,0],	75,			"Trader City Bilgrad"],
			[[7376.6084,4296.5879,0],	75,			"Trader City Branibor"],
			[[10948.426,654.90265,0],	75,			"Bandit Vendor"],
			[[15587.822,16394.049,0],	75,			"Hero Vendor"],
			[[16555.732,10159.68,0],	75,			"Aircraft Dealer"],
			[[6815.0776,8534.1504,0],	75,			"Aircraft Dealer 2"],
			[[4066.3528,7265.0024,0],	75,			"Misc. Vendor"],
			[[17497.631,7159.0879,0],	75,			"Misc. Vendor 2"],
			[[17332.115,12930.239,0],	75,			"Boat Dealer"],
			[[10570.494,16772.477,0],	75,			"Boat Dealer 2"],
			[[10698.463,5983.665,0],	75,			"Boat Dealer 3"],
			[[5419.2437,9503.5479,0],	75,			"Boat Dealer 4"],
			[[13342.758,8611.9932,0],	75,			"Wholesaler"],
			[[9859.4209,7471.5684,0],	75,			"Wholesaler"] // <-- no comma for last entry
			];
		};
/*
//myworldname
		case "myworldnameinlowercase":{
//			diag_log format["%2: Cleanup zones for myworldnameinlowercase selected! (check: %1)",_WorldName,_txt]; //logging if right worldname was selected, if uncommented
			HALV_VEHICLE_CLEANUPZONES = [
			//position					//radius	//cityname/text
			[[7839.60,8414.73,381.33],	150,		"my custom zone marker"],
			[[7839.60,8414.73,381.33],	75,			"my custom location"] // <-- no comma for last entry
			];
		};
*/
//default
		default{
			diag_log format["%2: Cleanup zones for %1 not availible ...",_WorldName,_txt]; //logging if right worldname was selected, if uncommented
			HALV_VEHICLE_CLEANUPZONES = [
			//position	//radius	//cityname/text
			[[0,0,0],	1,			"DEBUG"]
			];
		};
	};
};
//\\\\\\\\\\\\\\\\\\\\  End Setup Area ////////////////////\\

/////////////// dont touch anything below this line unless you know what you are doing \\\\\\\\\\\\\\\

_possiblematch = false;
{if(_obj isKindOf _x)then{_possiblematch=true;};}forEach _delVeh;
if(_possiblematch)then{
	{
	_Spos = _x select 0;
	_Rad = _x select 1;
	_name = _x select 2;
	_radats = _Rad+50;
	_radx4 = _Rad+_Rad+_Rad+_Rad;
		if(_obj distance _Spos < _Rad)then{
			_defdel		= false;
			_typeOf		= typeOf _obj;
			_pos		= getpos _obj;
			_mags		= getmagazinecargo _obj;
			_weaps		= getweaponcargo _obj;
			_packs		= getbackpackcargo _obj;
			_objID		= _obj getVariable["ObjectID","0"];
			_objUID		= _obj getVariable["ObjectUID","0"];
			_objname	= (gettext (configFile >> 'CfgVehicles' >> _typeOf >> 'displayName'));
			diag_log format["%1: %2 (%3) by %4 @%5 %6 [ID:%7,UID:%8] Cargo: [%9,%10,%11]",_txt,_typeOf,_objname,_name,mapgridposition _pos,_pos,_objID,_objUID,_weaps,_mags,_packs];
			if(_delbikmot)then{{if(_obj isKindOf _x)then{_defdel = true};}forEach _defdelar;};
			if(_defdel)then{_Action=3;diag_log format["%2: %1 is Model to delete by default!",_typeOf,_txt];};
			if(getDammage _obj > _dam)then{_Action=3;diag_log format["%2: %1 too damaged",_typeOf,_txt];};
			if(_unlock and !_defdel and (locked _obj))then{_obj setVehicleLock "UNLOCKED";_obj setVariable ["R3F_LOG_disabled",false,true];diag_log format["%2: %1 Un-Locked",_typeOf,_txt];};
			switch(_Action)do{
				case 0:{deleteVehicle _obj;diag_log format["%2: %1 Deleted, but remains in DB (Dont forget to clean this up)",_typeOf,_txt];};
				case 1:{
					_newPos = [_Spos, _radats, _radx4, 10, 0, 2000, 0] call BIS_fnc_findSafePos;
					_obj setpos _newPos;
					//update to HIVE?
					if(_updateHIVE)then{
					private["_position","_worldspace","_fuel","_key"];
						_position = getPosATL _obj;
						_worldspace = [
							round(direction _obj),
							_position
						]; 
						_fuel = fuel _obj;
						_key = format["CHILD:305:%1:%2:%3:",_objID,_worldspace,_fuel];
						diag_log ("HIVE: WRITE: "+ str(_key));
					};
					diag_log format["%6: %5 TP from %1 %2 to %3 %4",_pos,mapgridposition _pos,_newPos,mapgridposition _newPos,_typeOf,_txt];
				};
				case 2:{
					_newPos = [_safespot, 0, _radius, 10, 0, 2000, 0] call BIS_fnc_findSafePos;
					_obj setpos _newPos;
					//update to HIVE?
					if(_updateHIVE)then{
					private["_position","_worldspace","_fuel","_key"];
						_position = getPosATL _obj;
						_worldspace = [
							round(direction _obj),
							_position
						];
						_fuel = fuel _obj;
						_key = format["CHILD:305:%1:%2:%3:",_objID,_worldspace,_fuel];
						diag_log ("HIVE: WRITE: "+ str(_key));
						
					};
					diag_log format["%6: %5 TP from %1 %2 to %3 %4",_pos,mapgridposition _pos,_newPos,mapgridposition _newPos,_typeOf,_txt];
				};
				default{_msg = format["%2: %1",_typeOf,_txt];deleteVehicle _obj;[_objID,_objUID,_msg] call server_deleteObj;};
			};
		};
	}forEach HALV_VEHICLE_CLEANUPZONES;
};