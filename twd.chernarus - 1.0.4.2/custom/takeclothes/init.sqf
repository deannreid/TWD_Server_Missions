if (isDedicated) exitWith {};
call compile preprocessFileLineNumbers "custom\takeclothes\config.sqf";
{
    DZ_TAKECLOTHES_MAP = DZ_TAKECLOTHES_MAP + [[_x,"Skin_" + _x]];
} forEach DZ_TAKECLOTHES_MATCH;
DZ_TAKECLOTHES_LIST = [];
{
    DZ_TAKECLOTHES_LIST = DZ_TAKECLOTHES_LIST + [_x select 0];
} forEach DZ_TAKECLOTHES_MAP;
[] spawn {
    private ["_gj5zUBez8FIQ","_MemruCCq8JaYfiG","_GHt69X2THiPY5","_FT6jdy4HBbq1qZ","_oBk6IO4qtHvkWXYN"];
    waitUntil{!isNil "PVDZE_plr_LoginRecord"};
    while {true} do {
        if(!isNull player) then {
            _gj5zUBez8FIQ = cursorTarget == player;
            _MemruCCq8JaYfiG = typeOf cursorTarget;
            _GHt69X2THiPY5 = alive cursorTarget;
            _FT6jdy4HBbq1qZ = _MemruCCq8JaYfiG in DZ_TAKECLOTHES_LIST;
            _oBk6IO4qtHvkWXYN = cursorTarget getVariable["clothesTaken",false];
            if ((player distance cursorTarget) <= 5 && {!_gj5zUBez8FIQ} && {!_GHt69X2THiPY5} && {_FT6jdy4HBbq1qZ} && {!_oBk6IO4qtHvkWXYN}) then {
                if (s_player_clothes < 0) then {
                    s_player_clothes = player addAction ["<t color='#ffbb33'>" + "Take Clothes" + "</t>", "custom\takeclothes\player_takeClothes.sqf",cursorTarget,-10,false,true,"",""];
                };
            } else {
                player removeAction s_player_clothes;
                s_player_clothes = -1;
            };
        };
        sleep 2;
    };
};