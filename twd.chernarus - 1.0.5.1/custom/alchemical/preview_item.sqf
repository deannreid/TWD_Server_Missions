GlobalPreviewVariable=0;

_lbIndex=lbCurSel 3901;
_lbText=lbText [3901,_lbIndex];

if(_lbText!="") then {
	{ctrlShow [_x,false];} forEach [1800, 1801, 1802, 1000, 1001, 1002, 1003, 1004, 3900, 3901, 4900, 4901, 4902, 5900, 5901, 5902, 5903, 6900, 6901, 6902, 6903, 6904, 6905, 6906, 6907, 6908, 6909, 6910, 6911];
	{ctrlShow [_x,true];} forEach [1105,4903,4904,4905,4906,4907,4908,4909];
	

	_dir=0;
	_objPos=getPos player;
	_objPos set [2,6000];
	_object = createVehicle [_lbText, _objPos, [], 0, "CAN_COLLIDE"];
	_object setDir _dir;

	cutText ["","BLACK IN",0.2];
	
	_camera = "camera" camCreate [10,10,5000];
	_camera cameraEffect ["INTERNAL","BACK"];
	showCinemaBorder false;

	Crafting_Object_Direction = -0.5;
	Crafting_Object_Radius = 7;
	Crafting_Object_Height = 0;

	if(ComboBoxResult=="Forts") then {
	Crafting_Object_Radius = 20;
	};
	_ang = 360;

	_coords = [[_objPos select 0, _objPos select 1,(_objPos select 2) + Crafting_Object_Height], Crafting_Object_Radius, _ang] call BIS_fnc_relPos;
	_camera camPrepareTarget _object;
	_camera camPreparePos _coords;
	_camera camPrepareFOV 0.700;
	_camera camCommitPrepared 0;

			while {GlobalPreviewVariable==0} do {
				_ang = _ang + Crafting_Object_Direction;
				_coords = [[_objPos select 0, _objPos select 1,(_objPos select 2) + Crafting_Object_Height], Crafting_Object_Radius, _ang] call BIS_fnc_relPos;
				_camera camPreparePos _coords;
				_camera camCommitPrepared 0.3;
				waitUntil {camCommitted _camera};
			};



	cutText ["","BLACK OUT",0.1];
	_camera cameraEffect ["TERMINATE","BACK"];
	camDestroy _camera;
	deleteVehicle _object;
	_object=objNull;
	
	Crafting_Object_Direction = -0.5;

	{ctrlShow [_x,true];} forEach [1800, 1801, 1802, 1000, 1001, 1002, 1003, 1004, 3900, 3901, 4900, 4901, 4902, 5900, 5901, 5902, 5903, 6900, 6901, 6902, 6903, 6904, 6905, 6906, 6907, 6908, 6909, 6910, 6911];
	{ctrlShow [_x,false];} forEach [1105,4903,4904,4905,4906,4907,4908,4909];
	cutText ["","BLACK IN",0.6];
};