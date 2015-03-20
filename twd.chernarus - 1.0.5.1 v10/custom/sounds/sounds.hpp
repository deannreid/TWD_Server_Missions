class CfgSounds
{
	sounds[] =
	{
		z_wzombie1,
		z_wzombie2,
		carLock,
		siren
	};
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
    class siren
    {
		name = "siren";
		sound[] = {"custom\sounds\siren.ogg",0.5,1};
		titles[] = {};
    };
    class bl_begin
	{
		name = "NS blowout_begin";
		sound[] = {"custom\sounds\namalsk\blowout_begin.ogg",3.162278,1.0};
		titles[] = {};
	};
	class bl_hit1
	{
		name = "NS blowout_begin";
		sound[] = {"custom\sounds\namalsk\blowout_hit_1.ogg",1.584893,1.0};
		titles[] = {};
	};
	class bl_hit2
	{
		name = "NS blowout_begin";
		sound[] = {"custom\sounds\namalsk\blowout_hit_2.ogg",1.584893,1.0};
		titles[] = {};
	};
	class bl_hit3
	{
		name = "NS blowout_begin";
		sound[] = {"custom\sounds\namalsk\blowout_hit_3.ogg",1.584893,1.0};
		titles[] = {};
	};
	class bl_wave1
	{
		name = "NS blowout_begin";
		sound[] = {"custom\sounds\namalsk\blowout_wave_1.ogg",1.584893,1.0};
		titles[] = {};
	};
	class bl_wave2
	{
		name = "NS blowout_begin";
		sound[] = {"custom\sounds\namalsk\blowout_wave_2.ogg",1.584893,1.0};
		titles[] = {};
	};
	class bl_wave3
	{
		name = "NS blowout_begin";
		sound[] = {"custom\sounds\namalsk\blowout_wave_3.ogg",1.584893,1.0};
		titles[] = {};
	};
	class bl_psi
	{
		name = "NS blowout_psi";
		sound[] = {"custom\sounds\namalsk\blowout_psy_voices.ogg",1.778279,1.0};
		titles[] = {};
	};
	class bl_full
	{
		name = "NS blowout_full";
		sound[] = {"custom\sounds\namalsk\blowout_full_wave.ogg",1.778279,1.0};
		titles[] = {};
	};
	class bl_detect
	{
		name = "NS blowout_detect";
		sound[] = {"custom\sounds\namalsk\blowout_detect.ogg",1.778279,1.0};
		titles[] = {};
	};
	class apsi_on
	{
		name = "NS apsi_on";
		sound[] = {"custom\sounds\namalsk\apsi_start.ogg",1.778279,1.0};
		titles[] = {};
	};
	class apsi_off
	{
		name = "NS apsi_off";
		sound[] = {"custom\sounds\namalsk\apsi_off.ogg",1.778279,1.0};
		titles[] = {};
	};
	class ns_fx_misc4
	{
		name = "Misc strange wind";
		sound[] = {"custom\sounds\namalsk\fx_misc4.ogg",1.0,1.0};
		titles[] = {};
	};
	class ns_fx_drone1
	{
		name = "Drone 1";
		sound[] = {"custom\sounds\namalsk\fx_drone1.ogg",1.0,1.0};
		titles[] = {};
	};
	class ns_fx_drone2
	{
		name = "Drone 2";
		sound[] = {"custom\sounds\namalsk\fx_drone2.ogg",1.0,1.0};
		titles[] = {};
	};
};