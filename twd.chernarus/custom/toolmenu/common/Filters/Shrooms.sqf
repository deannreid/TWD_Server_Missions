if (isNil "toggle") then {toggle = 0}; if (toggle==0) then {toggle = 1;

wetdist1 = ppEffectCreate ["wetDistortion", 2006];
wetdist1 ppEffectAdjust [0, 8, 0.8,8,8, 0.2, 1, 0, 0, 0.08, 0.08, 0, 0, 0, 0.77];
wetdist1 ppEffectEnable true;
wetdist1 ppEffectCommit 0;
ppe = ppEffectCreate ["colorCorrections", 1555]; 
ppe ppEffectAdjust [1, 1, 0, [1.5,6,2.5,0.5], [5,3.5,5,-0.5], [-3,5,-5,-0.5]]; 
ppe ppEffectCommit 1;
ppe ppEffectEnable true; 
ppe2 = ppEffectCreate ["chromAberration", 1555]; 
ppe2 ppEffectAdjust [0.01,0.01,true];
ppe2 ppEffectCommit 1;
ppe2 ppEffectEnable true;
ppe3 = ppEffectCreate ["radialBlur", 1555]; 
ppe3 ppEffectEnable true;
ppe3 ppEffectAdjust [0.02,0.02,0.15,0.15]; 
ppe3 ppEffectCommit 1;



} else {
  toggle = 0;
   ppEffectDestroy wetdist1;
      ppEffectDestroy ppe;
   ppEffectDestroy ppe2;
   ppEffectDestroy ppe3;

setaperture 0;
   "dynamicBlur" ppEffectAdjust [0];
   "dynamicBlur" ppEffectCommit 16;
}