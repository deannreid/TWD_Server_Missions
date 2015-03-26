while {isNil 'ZupaKeyBindsWorking'} do
	{
		if(!isNil 'ZupaKeyUpWorking') then {
			(findDisplay 46) displayRemoveEventHandler ['KeyUp',ZupaKeyUpWorking];
			ZupaKeyUpWorking = nil;
		};
		ZupaKeyUpWorking = (findDisplay 46) displayAddEventHandler ['KeyUp', '_this call ZHB_fnc_handleKey'];
		uiSleep 0.5;
	};