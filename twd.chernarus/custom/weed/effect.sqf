    [] spawn {
            hint "You took drugs YOLOLOLO";
			player removeMagazine 'ItemKiloHemp';
            Remove_Drug_effects =
            {
                    {
                            ppEffectDestroy _x;
                    } forEach (_this select 0);
                    ppEffectDestroy nonapsi_ef;
                    ppEffectDestroy wetdist1;
                    ppEffectDestroy ppe;
                    ppEffectDestroy ppe2;
                    ppEffectDestroy ppe3;
                    setaperture 0;
                    "dynamicBlur" ppEffectAdjust [0];
                    "dynamicBlur" ppEffectCommit 16;
                    "colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 0.0]];
                    "colorCorrections" ppEffectCommit 0;
            };
            _time = time;
            _effects = [];
            while {true} do
            {
                    nonapsi_ef = ppEffectCreate ["colorCorrections", 1555];
                    _effects = _effects + [nonapsi_ef];
                    nonapsi_ef ppEffectEnable true;
                    nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.03, [0.0, 0.0, 0.0, 0.0], [3.0, 5.0, 9.0, 5.0],[0.4,0.0,0.0, 0.7]];
                    nonapsi_ef ppEffectCommit 1;
                    sleep random(1);
                    wetdist1 = ppEffectCreate ["wetDistortion", 2006];
                    _effects = _effects + [wetdist1];
                    wetdist1 ppEffectAdjust [0, 8, 0.8,8,8, 0.2, 1, 0, 0, 0.08, 0.08, 0, 0, 0, 0.77];
                    wetdist1 ppEffectEnable true;
                    wetdist1 ppEffectCommit 0;
                    ppe = ppEffectCreate ["colorCorrections", 1555];
                    _effects = _effects + [ppe];
                    ppe ppEffectAdjust [1, 1, 0, [1.5,6,2.5,0.5], [5,3.5,5,-0.5], [-3,5,-5,-0.5]];
                    ppe ppEffectCommit 1;
                    ppe ppEffectEnable true;
                    ppe2 = ppEffectCreate ["chromAberration", 1555];
                    _effects = _effects + [ppe2];
                    ppe2 ppEffectAdjust [0.01,0.01,true];
                    ppe2 ppEffectCommit 1;
                    ppe2 ppEffectEnable true;
                    ppe3 = ppEffectCreate ["radialBlur", 1555];
                    _effects = _effects + [ppe3];
                    ppe3 ppEffectEnable true;
                    ppe3 ppEffectAdjust [0.02,0.02,0.15,0.15];
                    ppe3 ppEffectCommit 1;
                    sleep random(1);
                    wetdist1 = ppEffectCreate ["wetDistortion", 2006];
                    _effects = _effects + [wetdist1];
                    wetdist1 ppEffectAdjust [1, 1.16, 0.32, 2.56, 0.8, 0.64, 2.64, 0, 0, 1.08, 0.08, 0, 0, 0, 1.77];
                    wetdist1 ppEffectEnable true;
                    wetdist1 ppEffectCommit 0;
                    sleep random(1);
                    nonapsi_ef = ppEffectCreate ["colorCorrections", 1555];
                    _effects = _effects + [nonapsi_ef];
                    nonapsi_ef ppEffectEnable true;
                    nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.02, [9.5, 1.5, 2.5, 0.2], [2.0, 7.0, 6.0, 2.0],[0.4,0.0,0.0, 0.7]];
                    nonapsi_ef ppEffectCommit 1;
                    sleep random(1);
                    if (_time + 60 < time) exitWith {[_effects] call Remove_Drug_effects;};
            };
    };