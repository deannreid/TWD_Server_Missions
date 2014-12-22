_snowrun = true;
snow = nil;
 
while {_snowrun} do {
        _snowchance = random 100;
        if (_snowchance > 75) then {
                if (isNil "snow") then {
                        snow = [] execvm "custom\Crimbo\snowSpawn.sqf";
                };
        }
        else {
                if (!isNil "snow") then {
                        terminate snow;
                        snow = nil;
                        sleep 20;
                        setviewdistance 1500;
                        0 setovercast 0.6;
                };
        };
sleep 900;
};