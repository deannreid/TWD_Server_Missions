if (isNil "toggle") then {toggle = 0}; if (toggle==0) then {toggle = 1;

nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
nonapsi_ef ppEffectAdjust [2, 30, 0, [0.0, 0.0, 0.0, 0.0], [0.8*2, 0.5*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];
nonapsi_ef ppEffectCommit 0;

nonapsi_ef ppEffectAdjust [1, 0.8, -0.001, [0.0, 0.0, 0.0, 0.0], [0.8*2, 0.5*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];
nonapsi_ef ppEffectCommit 3;
nonapsi_ef ppEffectEnable true;
nonapsi_ef2 = ppEffectCreate ["filmGrain", 1555]; 
nonapsi_ef2 ppEffectEnable true;
nonapsi_ef2 ppEffectAdjust [0.02, 1, 1, 0.1, 1, false];
nonapsi_ef2 ppEffectCommit 5;

[] spawn {
    waituntil {isplayer player};
    setwind [0.201112,0.204166,true];
    while {true} do {
        _ran = ceil random 5;
        playsound format ["wind_%1",_ran];
        _obj = vehicle player;
        _pos = position _obj;

        //--- Dust
            setwind [0.201112*2,0.204166*2,false];
        _velocity = [random 10,random 10,-1];
        _color = [1.0, 0.9, 0.8];
        _alpha = 0.02 + random 0.02;
        ps = "#particlesource" createVehicleLocal _pos;
        ps setParticleParams [["\Ca\Data\ParticleEffects\Universal\universal.p3d", 16, 12, 8], "", "Billboard", 1, 3, [0, 0, -6], _velocity, 1, 1.275, 1, 0, [9], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 0, "", "", _obj];
        ps setParticleRandom [3, [30, 30, 0], [0, 0, 0], 1, 0, [0, 0, 0, 0.01], 0, 0];
        ps setParticleCircle [0.1, [0, 0, 0]];
        ps setDropInterval 0.01;

        sleep (random 1);
        deletevehicle ps;
        _delay = 10 + random 20;
        sleep _delay;

    };
};

//--- Ash
[] spawn {
    waituntil {isplayer player};
    _pos = position player;
    _parray = [
    /* 00 */        ["\Ca\Data\ParticleEffects\Universal\Universal", 16, 12, 8, 1],//"\Ca\Data\cl_water",
    /* 01 */        "",
    /* 02 */        "Billboard",
    /* 03 */        1,
    /* 04 */        4,
    /* 05 */        [0,0,0],
    /* 06 */        [0,0,0],
    /* 07 */        1,
    /* 08 */        0.000001,
    /* 09 */        0,
    /* 10 */        1.4,
    /* 11 */        [0.05,0.05],
    /* 12 */        [[0.1,0.1,0.1,1]],
    /* 13 */        [0,1],
    /* 14 */        0.2,
    /* 15 */        1.2,
    /* 16 */        "",
    /* 17 */        "",
    /* 18 */        vehicle player
    ];
    snow = "#particlesource" createVehicleLocal _pos;
    snow setParticleParams _parray;
    snow setParticleRandom [0, [10, 10, 7], [0, 0, 0], 0, 0.01, [0, 0, 0, 0.1], 0, 0];
    snow setParticleCircle [0.0, [0, 0, 0]];
    snow setDropInterval 0.01;

    _oldPlayer = vehicle player;
    while {true} do {
        waituntil {vehicle player != _oldPlayer};
        _parray set [18,vehicle player];
        snow setParticleParams _parray;
        _oldPlayer = vehicle player;
    };
};} else {
  toggle = 0;
   ppEffectDestroy nonapsi_ef;
   ppEffectDestroy nonapsi_ef2;
   deletevehicle snow;
   deletevehicle ps;
   "dynamicBlur" ppEffectAdjust [0];
   "dynamicBlur" ppEffectCommit 16;
}