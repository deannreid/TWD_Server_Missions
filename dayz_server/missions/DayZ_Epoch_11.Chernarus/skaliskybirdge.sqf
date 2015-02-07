 fnc_bridgeA2 = {
    private ["_start","_obj"];
    _start = createVehicle [
        _this select 2,
        _this select 0,
        [],
        0,
        "CAN_COLLIDE"
    ];
    _start setVectorUp [0,0,1];
    _start setDir (_this select 1);
    _start setPosATL (_this select 0);
    for "_i" from 1 to (_this select 3) do {
        _obj = createVehicle [
            _this select 2,
            _this select 0,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _obj attachTo [_start, [
            _i*(_this select 4),
            _i*(_this select 5),
            _i*(_this select 6)
        ]];
    };
};

[
    [13640.5,3862.64,-1],
    105,
    "Land_nav_pier_m_2",
    11,
    40,
    0,
    0
] call fnc_bridgeA2;