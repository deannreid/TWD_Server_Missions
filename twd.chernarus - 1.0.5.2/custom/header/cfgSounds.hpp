class CfgSounds
{
	sounds[] ={z_wzombie1,z_wzombie2,carLock,nitro,siren};
	class z_wzombie1 {
		name = "";
		sound[] = {"custom\walkamongstthedead\dayz_sfx\femalezombie_attack_04.ogg",0.3,1,40};
		titles[] = {0, ""};
	};
	class z_wzombie2 : z_wzombie1 {
		sound[] = {"custom\walkamongstthedead\dayz_sfx\femalezombie_spotted_01.ogg",0.3,1,40};
	};
	class carLock {
		name = "carLock";
		sound[] = {"custom\sounds\carlock.ogg",0.3,1,40};
		titles[] = {0, ""};
	};
	class nitro  {
        name="nitro";
        sound[]={custom\nos\nitro.ogg,0.9,1};
        titles[] = {};
    };
    class siren
    {
		name = "siren";
		sound[] = {custom\sounds\siren.ogg,0.5,1};
		titles[] = {};
    }; 
};
