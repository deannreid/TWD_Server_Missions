class ExtraRc {
	class ItemZombieParts {
		class Test1 {
			text = "Smear Guts on you";
			script = "[] execVM ""custom\walkamongstthedead\smear_guts.sqf"";";
		};
	};
	class ItemWaterbottle {
		class Test1 {
			text = "Wash zombie guts";
			script = "[] execVM ""custom\walkamongstthedead\usebottle.sqf"";";
		};
	};
    class ItemKiloHemp {
        class SmokeWeed {
            text = "Smoke Dis Weed";
            script = "execVM ""custom\weed\effect.sqf"";";
        };
    };		
	class ItemToolbox {
		class BuildBike {
			text = "Deploy Bike";
			script = "['MMT_Civ'] execVM 'custom\toolmenu\player\vdeploy.sqf'";
		};
		class BuildMozzie {
			text = "Deploy Mozzie";
			script = "['CSJ_GyroC'] execVM 'custom\toolmenu\player\vdeploy.sqf'";
		};
	};

////////////////////////////////
////OmigaaaD Weapons System////
//////////////////////////////

////RU Weapons
class OWS {

//AK-74
    class AK_74 {
        class akgl {
            text = "Attatch Grenade Launcher";
            script = "execVM ""custom\wmod\scripts\upgrades\ak\ak74gl.sqf"";";
        };
        class aks {
            text = "Attatch Folding Stock";
            script = "execVM ""custom\wmod\scripts\upgrades\ak\aks74.sqf"";";
        };
    };
	
	class AK_74_GL {
		class akglkobra {
			text = "Attatch Kobra Sight";
			script = "execVM ""custom\wmod\scripts\upgrades\ak\ak74glkobra.sqf"";";
		};
		class ak_remgl {
			text = "Detatch Grenade Launcher";
			script = "execVM ""custom\wmod\scripts\downgrades\ak\ak74gl.sqf"";";
		};
	};
	
	class AK_74_GL_kobra {
		class akgl_remkobra {
			text = "Detatch Kobra Sight";
			script = "execVM ""custom\wmod\scripts\downgrades\ak\ak74glkobra.sqf"";";
		};
	};
	
	class AKS_74 {
		class aks74kobra {
			text = "Attatch Kobra Sight";
			script = "execVM ""custom\wmod\scripts\upgrades\ak\aks74kobra.sqf"";";
		};
		class aks74pso {
			text = "Attatch PSO Scope";
			script = "execVM ""custom\wmod\scripts\upgrades\ak\aks74pso.sqf"";";
		};
		class aks74nspu {
			text = "Attatch NSPU Scope";
			script = "execVM ""custom\wmod\scripts\upgrades\ak\aks74nspu.sqf"";";
		};
		class aks74goshawk {
			text = "Attatch Goshawk Scope";
			script = "execVM ""custom\wmod\scripts\upgrades\ak\aks74gos.sqf"";";
		};
		class aks_remstock {
			text = "Detatch Folding Stock";
			script = "execVM ""custom\wmod\scripts\downgrades\ak\aks74.sqf"";";
		};
	};
	
	class AKS_74_kobra {
		class aks_remkobra {
			text = "Detatch Kobra Sight";
			script = "execVM ""custom\wmod\scripts\downgrades\ak\aks74kobra.sqf"";";
		};
	};
	
	class AKS_74_pso {
		class aks_rempso {
			text = "Detatch PSO Scope";
			script = "execVM ""custom\wmod\scripts\downgrades\ak\aks74pso.sqf"";";
		};
	};
	
	class AKS_74_NSPU {
		class aks_remnspu {
			text = "Detatch NSPU Scope";
			script = "execVM ""custom\wmod\scripts\downgrades\ak\aks74nspu.sqf"";";
		};
	};
	
	class AKS_74_GOSHAWK {
		class aks_remgos {
			text = "Detatch Goshawk Scope";
			script = "execVM ""custom\wmod\scripts\downgrades\ak\aks74gos.sqf"";";
		};
	};

//AK-107
	class AK_107_kobra {
		class ak107gl {
			text = "Attatch Grenade Launcher";
			script = "execVM ""custom\wmod\scripts\upgrades\ak\ak107gl.sqf"";";
		};
		class ak107pso {
			text = "Attatch PSO Scrope";
			script = "execVM ""custom\wmod\scripts\upgrades\ak\ak107pso.sqf"";";
		};
	};
	
	class AK_107_pso {
		class ak107pso {
			text = "Attatch Grenade Launcher";
			script = "execVM ""custom\wmod\scripts\upgrades\ak\ak107psogl.sqf"";";
		};
		class ak107rempso {
			text = "Detatch PSO Scope";
			script = "execVM ""custom\wmod\scripts\downgrades\ak\ak107pso.sqf"";";
		};
	};
	
	class AK_107_GL_kobra {
		class ak107remgl {
			text = "Detatch Grenade Launcher";
			script = "execVM ""custom\wmod\scripts\downgrades\ak\ak107gl.sqf"";";
		};
	};
	
	class AK_107_GL_pso {
		class ak107psoremgl {
			text = "Detatch Grenade Launcher";
			script = "execVM ""custom\wmod\scripts\downgrades\ak\ak107psogl.sqf"";";
		};
	};
	
//Bizon
	class Bizon {
		class bizonsd {
			text = "Attatch Suppressor";
			script = "execVM ""custom\wmod\scripts\upgrades\misc\bizon.sqf"";";
		};
	};
	
	class bizon_silenced {
		class bizonremsd {
			text = "Detatch Suppressor";
			script = "execVM ""custom\wmod\scripts\downgrades\misc\bizon.sqf"";";
		};
	};
	
//AKM
	class AK_47_M {
		class akms {
			text = "Attatch Folding Stock";
			script = "execVM ""custom\wmod\scripts\upgrades\ak\akm.sqf"";";
		};
	};
	
	class AK_47_S {
		class akm {
			text = "Detatch Folding Stock";
			script = "execVM ""custom\wmod\scripts\downgrades\ak\akm.sqf"";";
		};
	};
	
//AKS74U
	class AKS_74_U {
		class aksd {
			text = "Attatch Suppressor + Kobra";
			script = "execVM ""custom\wmod\scripts\upgrades\ak\aks74u.sqf"";";
		};
	};
	
	class AKS_74_UN_kobra {
		class aksu {
			text = "Detatch Suppressor + Kobra";
			script = "execVM ""custom\wmod\scripts\downgrades\ak\aks74u.sqf"";";
		};
	};

//SVD	
	class SVD {
		class svdcamo {
			text = "Add Forest Camo";
			script = "execVM ""custom\wmod\scripts\upgrades\snipers\svdcamo.sqf"";";
		};
		class svdcamodes {
			text = "Add Desert Camo";
			script = "execVM ""custom\wmod\scripts\upgrades\snipers\svdcamodes.sqf"";";
		};
		class svdnspu {
			text = "Attatch NSPU Scope";
			script = "execVM ""custom\wmod\scripts\upgrades\snipers\svdnspu.sqf"";";
		};
	};
	
	class SVD_des_EP1 {
		class svd_remcam {
			text = "Remove Camo";
			script = "execVM ""custom\wmod\scripts\upgrades\snipers\svdcamodes.sqf"";";
		};
	};
	
	class SVD_CAMO {
		class svd_remcamdes {
			text = "Remove Camo";
			script = "execVM ""custom\wmod\scripts\upgrades\snipers\svdcamo.sqf"";";
		};
	};
	
	class SVD_NSPU_EP1 {
		class svd_remnspu {
			text = "Detatch NSPU Scope";
			script = "execVM ""custom\wmod\scripts\upgrades\snipers\svdnspu.sqf"";";
		};
	};

////US Weapons
//M4's
	class M4A1 {
		class m4a1cco {
			text = "Attatch CCO Sight";
			script = "execVM ""custom\wmod\scripts\upgrades\m4\m4cco.sqf"";";
		};
		class m4a1holo {
			text = "Attatch Holo + M203";
			script = "execVM ""custom\wmod\scripts\upgrades\m4\m4holo.sqf"";";
		};
		class m4a1rco {
			text = "Attatch RCO + M203";
			script = "execVM ""custom\wmod\scripts\upgrades\m4\m4rco.sqf"";";
		};
	};
	
	class M4A1_Aim {
		class m4a1camo {
			text = "Add Camo";
			script = "execVM ""custom\wmod\scripts\upgrades\m4\m4ccoc.sqf"";";
		};
		class m4a1 {
			text = "Detatch CCO Sight";
			script = "execVM ""custom\wmod\scripts\downgrades\m4\m4cco.sqf"";";
		};
	};
	
	class M4A1_HWS_GL {
		class m4a1_2 {
			text = "Detatch Holo + M203";
			script = "execVM ""custom\wmod\scripts\downgrades\m4\m4holo.sqf"";";
		};
	};
	
	class M4A1_RCO_GL {
		class m4a1_3 {
			text = "Detatch RCO + M203";
			script = "execVM ""custom\wmod\scripts\downgrades\m4\m4rco.sqf"";";
		};
	};
	
	class M4A1_Aim_camo {
		class m4a1ccosd {
			text = "Attatch Suppressor";
			script = "execVM ""custom\wmod\scripts\upgrades\m4\m4ccosd.sqf"";";
		};
		class m4a1camoholo {
			text = "Attatch Holo + M203";
			script = "execVM ""custom\wmod\scripts\upgrades\m4\m4holocamo.sqf"";";
		};
		class m4a1_4 {
			text = "Remove Camo";
			script = "execVM ""custom\wmod\scripts\downgrades\m4\m4ccoc.sqf"";";
		};
	};
	
	class M4A1_AIM_SD_camo {
		class m4a1camo {
			text = "Detatch Suppressor";
			script = "execVM ""custom\wmod\scripts\downgrades\m4\m4ccosd.sqf"";";
		};
	};
	
	class M4A1_HWS_GL_camo {
		class m4a1holosd {
			text = "Attatch Suppressor";
			script = "execVM ""custom\wmod\scripts\upgrades\m4\m4holocamosd.sqf"";";
		};
		class m4a1camo2 {
			text = "Detatch Holo + M203";
			script = "execVM ""custom\wmod\scripts\downgrades\m4\m4holocamo.sqf"";";
		};
	};

	class M4A1_HWS_GL_SD_Camo {
		class m4a1holocamo {
			text = "Detatch Suppressor";
			script = "execVM ""custom\wmod\scripts\downgrades\m4\m4holocamosd.sqf"";";
		};
	};
	
//MP5
	class MP5A5 {
		class mp5_sd {
			text = "Attatch Suppressor";
			script = "execVM ""custom\wmod\scripts\upgrades\misc\mp5.sqf"";";
		};
	};
	
	class MP5SD {
		class mp5remsd {
			text = "Detatch Suppressor";
			script = "execVM ""custom\wmod\scripts\downgrades\misc\mp5.sqf"";";
		};
	};
	
//M16
	class M16A2 {
		class m16cco {
			text = "Attatch CCO Sight";
			script = "execVM ""custom\wmod\scripts\upgrades\m16\m16cco.sqf"";";
		};
		class m16acg {
			text = "Attatch Acog Scope";
			script = "execVM ""custom\wmod\scripts\upgrades\m16\m16acg.sqf"";";
		};
		class m16gl {
			text = "Attatch Grenade Launcher";
			script = "execVM ""custom\wmod\scripts\upgrades\m16\m16gl.sqf"";";
		};
	};
	
	class M16A4 {
		class m16remcco {
			text = "Detatch CCO Sight";
			script = "execVM ""custom\wmod\scripts\downgrades\m16\m16cco.sqf"";";
		};
	};
	
	class M16A4_ACG {
		class m16acggl {
			text = "Attatch Grenade Launcher";
			script = "execVM ""custom\wmod\scripts\upgrades\m16\m16acggl.sqf"";";
		};
		class m16remacg {
			text = "Detatch Acog";
			script = "execVM ""custom\wmod\scripts\downgrades\m16\m16acg.sqf"";";
		};
	};
	
	class M16A4_ACG_GL {
		class m16remgl2 {
			text = "Detatch Grenade Launcher";
			script = "execVM ""custom\wmod\scripts\downgrades\m16\m16acggl.sqf"";";
		};
	};
	
////Misc Weapons
//FAL
	class FN_FAL {
		class falnv {
			text = "Attatch ANPVS4";
			script = "execVM ""custom\wmod\scripts\upgrades\misc\fal"";";
		};
	};

	class FN_FAL_ANPVS4 {
		class fal {
			text = "Detatch ANPVS4";
			script = "execVM ""custom\wmod\scripts\downgrades\misc\fal"";";
		};
	};

//G36
	class G36C_camo {
		class g36ccsd {
			text = "Attatch Holo + Suppressor";
			script = "execVM ""custom\wmod\scripts\upgrades\misc\g36ccsd.sqf"";";
		};
	};
	
	class G36C {
		class g36csd {
			text = "Attatch Holo + Suppressor";
			script = "execVM ""custom\wmod\scripts\upgrades\misc\g36csd.sqf"";";
		};
	};
	
	class G36_C_SD_eotech {
		class g36c {
			text = "Detatch Holo + Suppressor";
			script = "execVM ""custom\wmod\scripts\downgrades\misc\g36csd.sqf"";";
		};
	};
	
	class G36_C_SD_camo {
		class g36cc {
			text = "Detatch Holo + Suppressor";
			script = "execVM ""custom\wmod\scripts\downgrades\misc\g36ccsd.sqf"";";
		};
	};

//M110
	class M110_NVG_EP1 {
		class m110tws {
			text = "Attatch TWS Scope";
			script = "execVM ""custom\wmod\scripts\upgrades\snipers\m110tws.sqf"";";
		};
	};
	
	class M110_TWS_EP1 {
		class m110nv {
			text = "Detatch TWS Scope";
			script = "execVM ""custom\wmod\scripts\downgrades\snipers\m110tws.sqf"";";
		};
	};
	
//MK17's
	class SCAR_H_LNG_Sniper {
		class mk17snipersd {
			text = "Attatch Suppressor";
			script = "execVM ""custom\wmod\scripts\upgrades\snipers\mk17snipersd.sqf"";";
		};
	};
	
	class SCAR_H_LNG_Sniper_SD {
		class mk17sniper {
			text = "Detatch Suppressor";
			script = "execVM ""custom\wmod\scripts\downgrades\snipers\mk17snipersd.sqf"";";
		};
	};
	
	class SCAR_H_CQC_CCO {
		class mk17sd {
			text = "Attatch Suppressor";
			script = "execVM ""custom\wmod\scripts\upgrades\misc\mk17sd.sqf"";";
		};
	};
	
	class SCAR_H_CQC_CCO_SD {
		class mk17sdtws {
			text = "Attatch TWS Scope";
			script = "execVM ""custom\wmod\scripts\upgrades\misc\mk17sdtws.sqf"";";
		};
		class mk17cco {
			text = "Detatch Silencer";
			script = "execVM ""custom\wmod\scripts\downgrades\misc\mk17cco.sqf"";";
		};
	};
	
	class SCAR_H_STD_TWS_SD {
		class mk17sd2 {
			text = "Detatch TWS Scope";
			script = "execVM ""custom\wmod\scripts\downgrades\misc\mk17sdtws.sqf"";";
		};
	};
};
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	};