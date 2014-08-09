/*------------------------------------*/
/* VASP v1.3                          */
/* Vehicle and Skin Preview           */
/* OtterNas3                          */
/* 06/17/2014                         */
/* Last update: 06/22/2014            */
/*------------------------------------*/

	/***************************************************/
	/*                  Configuration                  */
	/***************************************************/
	/*              Vehicle Preview on/off             */
	/*             true = ON / false = OFF             */
	VASP_VehiclePreview = true;
	/***************************************************/
	/*                Skin Preview on/off              */
	/*             true = ON / false = OFF             */
	VASP_SkinPreview = true;
	/***************************************************/
	/*              Preview / Abort Hotkey             */
	/*            Change to dik_Code you like          */
	/*            A list can be found here:            */
	/* http://community.bistudio.com/wiki/DIK_KeyCodes */
	VASP_HotKey = 0x3F;
	/***************************************************/
	/*               Define the Skin-List              */
	/* If you have other then the Standard Epoch Skins */
	/* buyable on your Server, you need to add them to */
	/* this list!                                      */
	/*            The LAST entry in the list           */
	/*         MUST NOT HAVE A COMMA ON THE END!       */
	AllAllowedSkins = [
		"Skin_Survivor2_DZ","Skin_SurvivorWcombat_DZ","Skin_SurvivorWdesert_DZ",
		"Skin_SurvivorWurban_DZ","Skin_SurvivorWsequishaD_DZ","Skin_SurvivorWsequisha_DZ",
		"Skin_SurvivorWpink_DZ","Skin_SurvivorW3_DZ","Skin_SurvivorW2_DZ",
		"Skin_Bandit1_DZ","Skin_Bandit2_DZ","Skin_BanditW1_DZ",
		"Skin_BanditW2_DZ","Skin_Soldier_Crew_PMC","Skin_Sniper1_DZ",
		"Skin_Camo1_DZ","Skin_Soldier1_DZ","Skin_Rocket_DZ",
		"Skin_Rocker1_DZ","Skin_Rocker2_DZ","Skin_Rocker3_DZ",
		"Skin_Rocker4_DZ","Skin_Priest_DZ","Skin_Functionary1_EP1_DZ",
		"Skin_GUE_Commander_DZ","Skin_Ins_Soldier_GL_DZ","Skin_Haris_Press_EP1_DZ",
		"Skin_Pilot_EP1_DZ","Skin_RU_Policeman_DZ","Skin_Soldier_TL_PMC_DZ",
		"Skin_Soldier_Sniper_PMC_DZ","Skin_Soldier_Bodyguard_AA12_PMC_DZ","Skin_Drake_Light_DZ",
		"Skin_CZ_Special_Forces_GL_DES_EP1_DZ","Skin_TK_INS_Soldier_EP1_DZ","Skin_TK_INS_Warlord_EP1_DZ",
		"Skin_FR_OHara_DZ","Skin_FR_Rodriguez_DZ","Skin_CZ_Soldier_Sniper_EP1_DZ",
		"Skin_GUE_Soldier_MG_DZ","Skin_GUE_Soldier_Sniper_DZ","Skin_GUE_Soldier_Crew_DZ",
		"Skin_GUE_Soldier_CO_DZ","Skin_GUE_Soldier_2_DZ","Skin_TK_Special_Forces_MG_EP1_DZ",
		"Skin_TK_Soldier_Sniper_EP1_DZ","Skin_TK_Commander_EP1_DZ","Skin_RU_Soldier_Crew_DZ",
		"Skin_INS_Lopotev_DZ","Skin_INS_Soldier_AR_DZ","Skin_INS_Soldier_CO_DZ",
		"Skin_INS_Bardak_DZ","Skin_INS_Worker2_DZ"
	];
	/***************************************************/
	/***************************************************/
	/*             !!! DONT EDIT BELOW !!!             */
	/***************************************************/
	/***************************************************/


	/* Wait until player is loaded ingame */
	waitUntil {!isNil "dayz_animalCheck"};

	
	/* This adds all missing Skins from the AllPlayers Skinlist that is set in the variables.sqf from Epoch */
	/* Just if someone used that array to define more Skins also */
	{
		if (!(_x in AllAllowedSkins)) then {
			AllAllowedSkins = AllAllowedSkins + [format["Skin_%1",_x]];
		};
	} forEach AllPlayers;

	/* Even if i dont like it i try to "Spring über meinen Schatten" and check for Infistar to make it compatible */
	ServerRunsInfistar = (!isNil 'fnc_infiSTAR_Publish');
	
	/* Build the Preview-Platform for the Vehicles if VASP_VehiclePreview is enabled */
	/* We dont delete it anymore */
	if (VASP_VehiclePreview) then {

		/* Define all Preview-Platform Positions */
		previewPlatformPositions = [
			[979.096,982.321,2500],[984.346,982.321,2500],[984.346,977.071,2500],[984.345,971.821,2500],[979.095,971.822,2500],[973.845,971.822,2500],
			[973.846,977.072,2500],[979.096,977.072,2500],[973.846,982.322,2500],[968.596,982.322,2500],[968.596,977.072,2500],[968.595,971.822,2500],
			[963.345,971.823,2500],[963.346,977.073,2500],[968.596,987.572,2500],[963.346,982.323,2500],[963.346,987.573,2500],[973.846,987.572,2500],
			[979.096,987.572,2500],[984.346,987.571,2500],[984.347,992.821,2500],[979.097,992.822,2500],[973.847,992.822,2500],[968.597,992.822,2500],
			[963.347,992.823,2500],[984.347,998.071,2500],[979.097,998.072,2500],[973.847,998.072,2500],[968.597,998.072,2500],[963.347,998.073,2500],
			[958.097,998.073,2500],[958.097,992.823,2500],[958.096,987.573,2500],[958.096,982.323,2500],[958.096,977.073,2500],[958.095,971.823,2500]
		];

		/* Creating the Preview Platform */
		for "_i" from 0 to 35 do {
			call compile format ["
				previewPlatform%1 = 'MetalFloor_DZ' createVehicleLocal (previewPlatformPositions select %2);
				previewPlatform%1 setPosASL (previewPlatformPositions select %2);
				previewPlatform%1 setDir 270;
				",(_i + 1),(_i)
			];
		};
	};
	

	/* Functions */
	/* Preview Vehicles */
	ON_fnc_VehiclePreview = {
		private ["_getVersion","_isBadBeta","_item","_date","_tempDate","_msgCnt","_vehicleSpawnPos","_vehicleType","_vehicleName","_vehicleSpeed","_vehicleSeats","_vehicleWeapons","_vehicleMagazines","_vehicleBackpacks","_vehicleArmor","_vehicleFuel","_VehicleInfoText","_TraderMenuCategory","_TraderMenuItem"];
		
		/* Getting Data from the Tradermenu */
		_item = _this select 0;
		_TraderMenuCategory = _this select 1;
		_TraderMenuItem = _this select 2;
		
		/* Inform the Player that preview is build and fade out the view */
		cutText["~~ Preparing the Preview ~~\n~~ Please wait a moment ~~","PLAIN DOWN",0];
		0 cutText ["~~ Preparing the Preview ~~\n~~ Please wait a moment ~~","BLACK OUT",1];
		closeDialog 0;
		uiSleep 1.5;
		
		/* Check for beta version 112555 where deleteVehicle is not working */
		_getVersion = productVersion;
		_isBadBeta = (_getVersion select 3) == 112555;
		
		/* Maybe it's Night so we set the Date temporary to High-Noon, otherwirse it would be too Dark to see anything */
		_date = date;
		_tempDate = [(_date select 0),(_date select 1),(_date select 2),12,0];
		setDate _tempDate;
		player setVariable["Preview",true,true];
		
		/* Define the previewVehicle variable the first time if not done already */
		if (isNil "previewVehicle") then {
			previewVehicle = objNull;
		};
		
		/* Failsafe check for old preview Vehicle */
		if (_isBadBeta) then {
			if (!isNull previewVehicle) then {
				if (damage previewVehicle < 1) then {
					previewVehicle setDamage 1.000000;
					previewVehicle setPos [-2000,-2000,0];
					previewVehicle = objNull;
				};
			};
		} else {
			if (!isNull previewVehicle) then {
				deleteVehicle previewVehicle;
				previewVehicle = objNull;
			};
		};
		
		/* Set Preview-Vehicle spawn position to the very left/bottom of the map */
		_vehicleSpawnPos = [971.266,984.902,2500.1];
		
		/* Create the Vehicle to preview */
		previewVehicle = (_item select 0) createVehicleLocal _vehicleSpawnPos;
		previewVehicle setPosASL _vehicleSpawnPos;
		previewVehicle setDir 0;
		uiSleep 0.5;
		previewVehicle setVelocity [0,0,0];
		
		/* Create the Cam */
		VehiclePreview_Camera = "camera" camCreate [(_vehicleSpawnPos select 0), (_vehicleSpawnPos select 1) - 30,2505];
		VehiclePreview_Camera cameraEffect ["internal","back"];
		VehiclePreview_Camera camSetTarget previewVehicle;
		VehiclePreview_Camera camSetRelPos [0,30,5];
		VehiclePreview_Camera camCommit 0;
		
		/* Wait un til Cam ready */
		waitUntil {camCommitted VehiclePreview_Camera};
		
		/* Wait until Vehicle is not moving anymore on the platform */
		waitUntil{uiSleep 0.01;((((velocity previewVehicle) select 0) < 1) && (((velocity previewVehicle) select 1) < 1) && (((velocity previewVehicle) select 2) < 1))};
		
		/* Set start cam distance variables */
		CamDistanceY = 30;
		CamDistanceZ = 5;
		
		/* reset preview loop check variable */
		PreviewLoop = true;
		
		/* Assign the Preview-Abort Hotkey */
		PreviewAbortHotkey = (findDisplay 46) displayAddEventHandler ["KeyDown", "
			_handled = false;
			if ((_this select 1) == VASP_HotKey) then {
				PreviewLoop = false;
				(findDisplay 46) displayRemoveEventHandler ['KeyDown', PreviewAbortHotkey];
				(findDisplay 46) displayRemoveEventHandler ['KeyDown', PreviewRotateHotkey];
				(findDisplay 46) displayRemoveEventHandler ['KeyDown', PreviewZoomHotkey];
				_handled = true;
			};
			_handled
		"];
		
		/* Assign the Rotation Hotkeys */
		PreviewRotateHotkey = (findDisplay 46) displayAddEventHandler ["KeyDown", "
			_handled = false;
			if ((_this select 1) == 0xCB) then {
				_dir = getDir previewVehicle;
				if (_dir == 0) then {
					previewVehicle setDir 359.5;
				};
				previewVehicle setDir (_dir - 0.5);
				_handled = true;
			};
			if ((_this select 1) == 0xCD) then {
				_dir = getDir previewVehicle;
				if (_dir == 359.5) then {
					previewVehicle setDir 0;
				};
				previewVehicle setDir (_dir + 0.5);
				_handled = true;
			};
			_handled
		"];
		
		/* Assign the Zoom Hotkeys */
		PreviewZoomHotkey = (findDisplay 46) displayAddEventHandler ["KeyDown", "
			_handled = false;
			if ((_this select 1) == 0xC8) then {
				if (CamDistanceY > 5) then {
					CamDistanceY = CamDistanceY - 0.1;
					VehiclePreview_Camera camSetRelPos [0,CamDistanceY,5];
					VehiclePreview_Camera camCommit 0;
				};
				_handled = true;
			};
			if ((_this select 1) == 0xD0) then {
				if (CamDistanceY < 35) then {
					CamDistanceY = CamDistanceY + 0.1;
					VehiclePreview_Camera camSetRelPos [0,CamDistanceY,5];
					VehiclePreview_Camera camCommit 0;
				};
				_handled = true;
			};
			_handled
		"];
		
		/* Fade in the View again */
		0 cutText ["","BLACK IN",1];
		uiSleep 1.1;

		/* Message count variable reset */
		_msgCnt = 0;

		/* Getting vehicle Information from config */
		_vehicleType = (_item select 0);
		_vehicleName = getText (configFile >> "CfgVehicles" >> _vehicleType >> "displayName");
		_vehicleSpeed = getNumber (configFile >> "CfgVehicles" >> _vehicleType >> "maxSpeed");
		_vehicleSeats = getNumber (configFile >> "CfgVehicles" >> _vehicleType >> "transportSoldier");
		_vehicleWeapons = getNumber (configFile >> "CfgVehicles" >> _vehicleType >> "transportMaxWeapons");
		_vehicleMagazines = getNumber (configFile >> "CfgVehicles" >> _vehicleType >> "transportMaxMagazines");
		_vehicleBackpacks = getNumber (configFile >> "CfgVehicles" >> _vehicleType >> "transportMaxBackpacks");
		_vehicleArmor = getNumber (configFile >> "CfgVehicles" >> _vehicleType >> "armor");
		_vehicleFuel = getNumber (configFile >> "CfgVehicles" >> _vehicleType >> "fuelCapacity");

		/* Generating the Text */
		_VehicleInfoText = format ["
			<t size='0.7'		align='center' 	color='#5882FA'>%1</t>				<br/>
			<t></t><br/>
			<t size='0.5'		align='left' 	color='#FFBF00'>Max Speed:</t>		<t size='0.5'color='#FFFFFF'align='right'>%2 Km/H</t><br/>
			<t size='0.5'		align='left' 	color='#FFBF00'>Max Seats:</t>		<t size='0.5'color='#FFFFFF'align='right'>%3</t><br/>
			<t size='0.5'		align='left' 	color='#FFBF00'>Max Weapons:</t>	<t size='0.5'color='#FFFFFF'align='right'>%4</t><br/>
			<t size='0.5'		align='left' 	color='#FFBF00'>Max Magazines:</t>	<t size='0.5'color='#FFFFFF'align='right'>%5</t><br/>
			<t size='0.5'		align='left' 	color='#FFBF00'>Max Backpacks:</t>	<t size='0.5'color='#FFFFFF'align='right'>%6</t><br/>
			<t size='0.5'		align='left' 	color='#FFBF00'>Max Fuel:</t>		<t size='0.5'color='#FFFFFF'align='right'>%7 l</t><br/>
			<t size='0.5'		align='left' 	color='#FFBF00'>Max Armor:</t>		<t size='0.5'color='#FFFFFF'align='right'>%8</t>",
			_vehicleName,_vehicleSpeed,(_vehicleSeats + 1),_vehicleWeapons,_vehicleMagazines,_vehicleBackpacks,_vehicleFuel,_vehicleArmor
		];

		/* Hotkey Message and action check */
		cutText["~~ To quit the Preview press F5 ~~","PLAIN DOWN"];
		while {PreviewLoop} do {
			if (_msgCnt == 5) then {
				cutText["~~ To rotate the Vehicle press LEFFT or RIGHT ~~\n~~ To zoom in/out press  UP/DOWN ~~","PLAIN DOWN"];
				[_VehicleInfoText, [safezoneX + safezoneW - 0.8,0.50], [safezoneY + safezoneH - 0.8,0.7], 6, 0] spawn BIS_fnc_dynamicText;
			};
			if (_msgCnt == 10) then {
				cutText["~~ To quit the Preview press F5 ~~","PLAIN DOWN"];
				[_VehicleInfoText, [safezoneX + safezoneW - 0.8,0.50], [safezoneY + safezoneH - 0.8,0.7], 6, 0] spawn BIS_fnc_dynamicText;
				_msgCnt = 0;
			};
			_msgCnt = _msgCnt + 1;
			uiSleep 1;
		};
		
		/* Preview closed fade out the view */
		0 cutText ["","BLACK OUT",1];
		
		uiSleep 1.5;
		
		/* Set Date back to previous value */
		setDate _date;
		player setVariable["Preview",false,true];
		
		/* Delete all spawned Objects */
		if (_isBadBeta) then {
			previewVehicle setDamage 1.000000;
			previewVehicle setPos [-2000,-2000,0];
			previewVehicle = objNull;
		} else {
			deleteVehicle previewVehicle;
			previewVehicle = objNull;
		};
		
		/* Destroy the Cam */
		VehiclePreview_Camera cameraEffect ["terminate","back"];
		camDestroy VehiclePreview_Camera;

		/* Fade in the view */
		0 cutText ["","BLACK IN",1];
		
		uiSleep 1.1;
		
		/* Reopen the Tradermenu on the same position we left */
		TraderCategoryLoadFinished = false;
		[nil,nil,nil,LastTraderMenu] execVM "\z\addons\dayz_code\actions\show_dialog.sqf";
		waitUntil {dialog};
		lbSetCurSel [12000, _TraderMenuCategory];
		[_TraderMenuCategory] spawn TraderDialogLoadItemList;
		waitUntil{TraderCategoryLoadFinished};
		uiSleep 0.5;
		lbSetCurSel [12001, _TraderMenuItem];
		[_TraderMenuItem] spawn TraderDialogShowPrices;
	};

	/* Preview Skins */
	ON_fnc_SkinPreview = {
		private ["_getVersion","_isBadBeta","_item","_date","_tempDate","_msgCnt","_SkinInfoText","_TraderMenuCategory","_TraderMenuItem","_unitSpawnPos","_model","_skinType","_skinName","_skinDesc","_pvp1","_initUnit"];
		
		/* Getting Data from the Tradermenu */
		_item = _this select 0;
		_TraderMenuCategory = _this select 1;
		_TraderMenuItem = _this select 2;

		/* Inform the Player that preview is build and fade out the view */
		cutText["~~ Preparing the Preview ~~\n~~ Please wait a moment ~~","PLAIN DOWN",0];
		0 cutText ["~~ Preparing the Preview ~~\n~~ Please wait a moment ~~","BLACK OUT",1];
		closeDialog 0;
		uiSleep 1.5;
		
		/* Check for beta version 112555 where deleteVehicle is not working */
		_getVersion = productVersion;
		_isBadBeta = (_getVersion select 3) == 112555;

		/* Maybe it's Night so we set the Date temporary to High-Noon, otherwirse it would be too Dark to see anything */
		_date = date;
		_tempDate = [(_date select 0),(_date select 1),(_date select 2),12,0];
		setDate _tempDate;
		player setVariable["Preview",true,true];

		/* Define the previeUnit variable the first time if not done already */
		if (isNil "previewUnit") then {
			previewUnit = objNull;
		};

		/* Failsafe check for old preview Skin */
		if (_isBadBeta) then {
			if (!isNull previewUnit) then {
				if (damage previewUnit < 1) then {
					previewUnit setDamage 1.000000;
					previewUnit setPos [-2000,-2000,0];
					previewUnit = objNull;
				};
			};
		} else {
			if (!isNull previewUnit) then {
				deleteVehicle previewUnit;
				previewUnit = objNull;
			};
		};

		/* Check Infistar is running - If it is running we need to use a publicVariable to define how many Players previewing a Skin at the moment */
		if (ServerRunsInfistar) then {
			
			/* PVDZE_SkinPreviewCounter not yet set so we create the variable */
			if (isNil "PVDZE_SkinPreviewCounter") then {
			
				/* Cause this Player is the first we set it to 1 */
				PVDZE_SkinPreviewCounter = 1;
			
			/* PVDZE_SkinPreviewCounter is already set, so we just add 1 to it */
			} else {
				
				/* New value = Old value + 1 */
				PVDZE_SkinPreviewCounter = PVDZE_SkinPreviewCounter + 1;
			};
			/* Shout out the variable to the public so every Player knows it actual value */
			publicVariable "PVDZE_SkinPreviewCounter";
		
		/* Thank God a Server that is not running Infistar so we dont need to take care about if playableUnits is working or not... */
		} else {
		
			/* Just set the  variable to 1 so the rest of the script works */
			PVDZE_SkinPreviewCounter = 1;
		};
		
		/* Create the Preview-Platform - Position depends on amount of PVDZE_SkinPreviewCounter */
		_pvp1 = "MetalFloor_DZ" createVehicleLocal [(79.096 + (10 * PVDZE_SkinPreviewCounter)),82.321,2500];
		_pvp1 setPosASL [(79.096 + (10 * PVDZE_SkinPreviewCounter)),82.321,2500];
		
		/* Set the unit's Spawnposition - Position depends on amount of PVDZE_SkinPreviewCounter */
		_unitSpawnPos = [(79.096 + (10 * PVDZE_SkinPreviewCounter)),82.321,2500.5];
		
		/* Get the Model name for createAgent function */
		_model = getText (configFile >> "CfgSurvival" >> "Skins" >> (_item select 0) >> "playerModel");

		/* Create the Unit with Model to preview - Hide from other Players view */
		previewUnit = createAgent [format["%1",_model], _unitSpawnPos, [], 0, "CAN_COLLIDE"];
		previewUnit setDir 180;
		previewUnit setPosASL _unitSpawnPos;
		previewUnit allowDammage false; previewUnit disableAI 'FSM'; previewUnit disableAI 'AUTOTARGET'; previewUnit disableAI 'TARGET'; previewUnit forceSpeed 0;
		
		/* playableUnits just holds the player himself when Server runs Infistar, dunno if correct, or why this but... */
		/* We check if Infistar is running and if not we can use a way better function to hide the unit from other players */
		if (!(ServerRunsInfistar)) then {
			_initUnit = format["{if ((getPlayerUID _x) != %1) then {%2 hideObject true;};} forEach playableUnits;", (getPlayerUID player), previewUnit];
			uiSleep 0.1;
			previewUnit setVehicleInit _initUnit;
			uiSleep 0.1;
			processInitCommands;
			uiSleep 0.1;
			clearVehicleInit previewUnit
		};

		/* Create the Cam */
		SkinPreview_Camera = "camera" camCreate [(_unitSpawnPos select 0), (_unitSpawnPos select 1) - 10,2502];
		SkinPreview_Camera cameraEffect ["internal","back"];
		SkinPreview_Camera camSetTarget previewUnit;
		SkinPreview_Camera camSetRelPos [0,10,2];
		SkinPreview_Camera camCommit 0;
		
		/* Wait un til Cam ready */
		waitUntil {camCommitted SkinPreview_Camera};

		/* Set start cam distance variables */
		CamDistanceY = 10;
		
		/* reset preview loop check variable */
		PreviewLoop = true;

		/* Assign the Preview-Abort Hotkey */
		PreviewAbortHotkey = (findDisplay 46) displayAddEventHandler ["KeyDown", "
			_handled = false;
			if ((_this select 1) == VASP_HotKey) then {
				PreviewLoop = false;
				(findDisplay 46) displayRemoveEventHandler ['KeyDown', PreviewAbortHotkey];
				(findDisplay 46) displayRemoveEventHandler ['KeyDown', PreviewRotateHotkey];
				(findDisplay 46) displayRemoveEventHandler ['KeyDown', PreviewZoomHotkey];
				_handled = true;
			};
			_handled
		"];

		/* Assign the Rotation Hotkeys */
		PreviewRotateHotkey = (findDisplay 46) displayAddEventHandler ["KeyDown", "
			_handled = false;
			if ((_this select 1) == 0xCB) then {
				_dir = getDir previewUnit;
				if (_dir == 0) then {
					previewUnit setDir 359;
				};
				previewUnit setDir (_dir - 1);
				_handled = true;
			};
			if ((_this select 1) == 0xCD) then {
				_dir = getDir previewUnit;
				if (_dir == 359) then {
					previewUnit setDir 0;
				};
				previewUnit setDir (_dir + 1);
				_handled = true;
			};
			_handled
		"];

		/* Assign the Zoom Hotkeys */
		PreviewZoomHotkey = (findDisplay 46) displayAddEventHandler ["KeyDown", "
			_handled = false;
			if ((_this select 1) == 0xC8) then {
				if (CamDistanceY > 1) then {
					CamDistanceY = CamDistanceY - 0.1;
					SkinPreview_Camera camSetRelPos [0,CamDistanceY,2];
					SkinPreview_Camera camCommit 0;
				};
				_handled = true;
			};
			if ((_this select 1) == 0xD0) then {
				if (CamDistanceY < 20) then {
					CamDistanceY = CamDistanceY + 0.1;
					SkinPreview_Camera camSetRelPos [0,CamDistanceY,2];
					SkinPreview_Camera camCommit 0;
				};
				_handled = true;
			};
			_handled
		"];
		
		/* Fade in the View again */
		0 cutText ["","BLACK IN",1];
		uiSleep 1.1;

		/* Message count variable reset */
		_msgCnt = 0;

		/* Getting Model Information from config */
		_skinType = (_item select 0);
		_skinName = getText (configFile >> "CfgMagazines" >> _skinType >> "displayName");
		_skinDesc = getText (configFile >> "CfgMagazines" >> _skinType >> "descriptionShort");

		/* Generating the Text */
		if (_skinName == _skinDesc) then {
			_SkinInfoText = format ["
				<t size='0.7'		align='center' 	color='#5882FA'>%1</t>				<br/>",
				_skinName
			];
		} else {
			_SkinInfoText = format ["
				<t size='0.7'		align='center' 	color='#5882FA'>%1</t>				<br/>
				<t></t><br/>
				<t size='0.5'		align='center' 	color='#5882FA'>%2</t>				<br/>",
				_skinName,_skinDesc
			];
		};

		/* Hotkey Message and action check */
		cutText["~~ To quit the Preview press F5 ~~","PLAIN DOWN"];
		while {PreviewLoop} do {
			if (_msgCnt == 5) then {
				cutText["~~ To rotate the Unit press LEFFT or RIGHT ~~\n~~ To zoom in/out press  UP/DOWN ~~","PLAIN DOWN"];
				[_SkinInfoText, [safezoneX + safezoneW - 0.8,0.50], [safezoneY + safezoneH - 0.8,0.7], 6, 0] spawn BIS_fnc_dynamicText;
			};
			if (_msgCnt == 10) then {
				cutText["~~ To quit the Preview press F5 ~~","PLAIN DOWN"];
				[_SkinInfoText, [safezoneX + safezoneW - 0.8,0.50], [safezoneY + safezoneH - 0.8,0.7], 6, 0] spawn BIS_fnc_dynamicText;
				_msgCnt = 0;
			};
			_msgCnt = _msgCnt + 1;
			uiSleep 1;
		};
		
		/* Preview closed fade out the view */
		0 cutText ["","BLACK OUT",1];
		
		uiSleep 1.5;
		
		/* Set Date back to previous value */
		setDate _date;
		player setVariable["Preview",false,true];

		/* Delete all spawned Objects */
		if (_isBadBeta) then {
			previewUnit setDamage 1.000000;
			previewUnit setPos [-2000,-2000,0];
			_pvp1 setDamage 1.000000;
			_pvp1 setPos [-2000,-2000,0];
			previewUnit = objNull;
			_pvp1 = objNull;
		} else {
			deleteVehicle previewUnit;
			deleteVehicle _pvp1;
			previewUnit = objNull;
			_pvp1 = objNull;
		};
		
		/* Destroy the Cam */
		SkinPreview_Camera cameraEffect ["terminate","back"];
		camDestroy SkinPreview_Camera;
		
		/* Fade in the view */
		0 cutText ["","BLACK IN",1];
		
		uiSleep 1.1;
		
		/* Reopen the Tradermenu on the same position we left */
		TraderCategoryLoadFinished = false;
		[nil,nil,nil,LastTraderMenu] execVM "\z\addons\dayz_code\actions\show_dialog.sqf";
		waitUntil {dialog};
		lbSetCurSel [12000, _TraderMenuCategory];
		[_TraderMenuCategory] spawn TraderDialogLoadItemList;
		waitUntil{TraderCategoryLoadFinished};
		uiSleep 0.5;
		lbSetCurSel [12001, _TraderMenuItem];
		[_TraderMenuItem] spawn TraderDialogShowPrices;
		
		PVDZE_SkinPreviewCounter = PVDZE_SkinPreviewCounter - 1;
		publicVariable "PVDZE_SkinPreviewCounter";
	};
