if (isnil "infamrec" ) then {infamrec=0};

if (infamrec==0) then
{
	infamrec=1;
	hint "Infinite Ammo and No Recoil - ON";
	while {infamrec==1} do
	{
	vehicle player setVehicleAmmo 0.99;
	vehicle player setUnitRecoilCoefficient 0;
	sleep 0.01;
	}

}
else
{
hint "Infinite Ammo and No Recoil - OFF";
infamrec=0;
};




