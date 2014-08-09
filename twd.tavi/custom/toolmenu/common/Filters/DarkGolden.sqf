if (isNil "toggle") then {toggle = 0}; if (toggle==0) then {toggle = 1;

   nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
   nonapsi_ef ppEffectEnable true;
   nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.1, [1.0, 0.2, 0.2, 0.0], [1.0, 0.4, 0.0, 0.1],[1.0,0.3,0.3, 0.5]];
   nonapsi_ef ppEffectCommit 2;

} else {

   ppEffectDestroy nonapsi_ef;

   "dynamicBlur" ppEffectAdjust [0];
   "dynamicBlur" ppEffectCommit 16;
};
