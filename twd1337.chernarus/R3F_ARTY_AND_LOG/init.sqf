[] spawn
{
	#include "config.sqf"
	#include "R3F_LOG_disable_enable.sqf"
	
	// Chargement du fichier de langage
	call compile preprocessFile format ["R3F_ARTY_AND_LOG\%1_strings_lang.sqf", R3F_ARTY_AND_LOG_CFG_langage];
	
	if (isServer) then
	{
		// Service offert par le serveur : orienter un objet (car setDir est à argument local)
		R3F_ARTY_AND_LOG_FNCT_PUBVAR_setDir =
		{
			private ["_objet", "_direction"];
			_objet = _this select 1 select 0;
			_direction = _this select 1 select 1;
			
			// Orienter l'objet et broadcaster l'effet
			_objet setDir _direction;
			_objet setPos (getPos _objet);
		};
		"R3F_ARTY_AND_LOG_PUBVAR_setDir" addPublicVariableEventHandler R3F_ARTY_AND_LOG_FNCT_PUBVAR_setDir;
	};
	

	#ifdef R3F_LOG_enable
		#include "R3F_LOG\init.sqf"
		R3F_LOG_active = true;
	#else
		// Pour les actions du PC d'arti
		R3F_LOG_joueur_deplace_objet = objNull;
	#endif
	
	// Auto-détection permanente des objets sur le jeu
	if !(isServer && isDedicated) then
	{
		execVM "R3F_ARTY_AND_LOG\surveiller_nouveaux_objets.sqf";
	}
	// Version allégée pour le serveur dédié
	else
	{
		execVM "R3F_ARTY_AND_LOG\surveiller_nouveaux_objets_dedie.sqf";
	};
};