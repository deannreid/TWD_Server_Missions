if (isNil "toggle") then {toggle = 0}; if (toggle==0) then {toggle = 1;

   nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
   nonapsi_ef ppEffectEnable true;
   nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.025, [2.0, 0.5, 0.0, 0.0], [0.5, 0.0, 0.5, 1.0],[0.2,0.0,0.0, 8.7]];
   nonapsi_ef ppEffectCommit 1;
;
} else {
  toggle = 0;
   ppEffectDestroy nonapsi_ef;
   ppEffectDestroy nonapsi_ef2;

   "dynamicBlur" ppEffectAdjust [0];
   "dynamicBlur" ppEffectCommit 16;
}