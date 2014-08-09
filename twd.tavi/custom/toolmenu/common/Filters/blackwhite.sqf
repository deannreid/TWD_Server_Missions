if (isNil "toggle") then {toggle = 0}; if (toggle==0) then {toggle = 1;

setaperture 24;
ppColor = ppEffectCreate ["ColorCorrections", 1999];
ppColor ppEffectEnable true;
ppColor ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0.0], [1, 1, 1, 1.0]];
ppColor ppEffectCommit 0;

ppBlur = ppEffectCreate ["dynamicBlur", 505];
ppBlur ppEffectEnable true; 
ppBlur ppEffectAdjust [.5];
ppBlur ppEffectCommit 0;

ppInversion = ppEffectCreate ['colorInversion', 2555];
ppInversion ppEffectEnable true;
ppInversion ppEffectAdjust [1,1,1];
ppInversion ppEffectCommit 0;

ppGrain = ppEffectCreate ["filmGrain", 2005];
ppGrain ppEffectEnable true;
ppGrain ppEffectAdjust [0.02, 1, 1, 0, 1];
ppGrain ppEffectCommit 0;

} else {
  toggle = 0;
   ppEffectDestroy ppColor;
   ppEffectDestroy ppBlur;
   ppEffectDestroy ppInversion;
   ppEffectDestroy ppGrain;
setaperture 0;
   "dynamicBlur" ppEffectAdjust [0];
   "dynamicBlur" ppEffectCommit 16;
}