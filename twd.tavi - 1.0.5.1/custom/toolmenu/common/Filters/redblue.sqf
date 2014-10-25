//Red/Blue//

if (isNil "toggle") then {toggle = 0}; if (toggle==0) then {toggle = 1;

   nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
   nonapsi_ef ppEffectEnable true;
   nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.03, [11.2, 0.1, 0.2, 0.2], [12.2, 8.7, 3.6, 7.2],[0.4,0.0,0.0, 0.7]];
   nonapsi_ef ppEffectCommit 1;
} else {
  toggle = 0;
   ppEffectDestroy nonapsi_ef;

   "dynamicBlur" ppEffectAdjust [0];
   "dynamicBlur" ppEffectCommit 16;
}