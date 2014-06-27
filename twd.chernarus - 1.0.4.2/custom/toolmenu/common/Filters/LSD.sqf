if (isNil "toggle") then {toggle = 0}; if (toggle==0) then {toggle = 1;

wetdist1 = ppEffectCreate ["wetDistortion", 2006];
wetdist1 ppEffectAdjust [0, 8, 0.8,8,8, 0.2, 1, 0, 0, 0.08, 0.08, 0, 0, 0, 0.77];
wetdist1 ppEffectEnable true;
wetdist1 ppEffectCommit 0;



} else {
  toggle = 0;
   ppEffectDestroy wetdist1;

setaperture 0;
   "dynamicBlur" ppEffectAdjust [0];
   "dynamicBlur" ppEffectCommit 16;
}