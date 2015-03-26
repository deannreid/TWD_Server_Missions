/*
	Zupa's Hud & Builder

	╔════╗─────────╔═══╗────────╔╗─────────────╔╗
	╚══╗═║─────────╚╗╔╗║────────║║────────────╔╝╚╗
	──╔╝╔╬╗╔╦══╦══╗─║║║╠══╦╗╔╦══╣║╔══╦╗╔╦══╦═╗╚╗╔╬══╗
	─╔╝╔╝║║║║╔╗║╔╗║─║║║║║═╣╚╝║║═╣║║╔╗║╚╝║║═╣╔╗╗║║║══╣
	╔╝═╚═╣╚╝║╚╝║╔╗║╔╝╚╝║║═╬╗╔╣║═╣╚╣╚╝║║║║║═╣║║║║╚╬══║
	╚════╩══╣╔═╩╝╚╝╚═══╩══╝╚╝╚══╩═╩══╩╩╩╩══╩╝╚╝╚═╩══╝
	────────║║
	────────╚╝
*/

Z_HUD_imageFolder = "custom\ZHB\gui\"; 
Z_HUD_RestartMinuts = 360; // minuts for a restart.
Z_TextHud = false; // is the texthud active
Z_HudActive = true; // is the graphical hud active.

// 0 = Nothing/ Blank
// 1 fps
// 2 players
// 3 damage
// 4 crypto
// 5 hunger
// 6 thirst
// 7 grid
// 8 fatique
// 9 Restart
// 10 Toxicity
// 11 Stamina
// 12 Energy

// Can choose :
Z_HUD_FPS = true; // 1
Z_HUD_Players = true; // 2
Z_HUD_Damage = true; // 3
Z_HUD_Crypto = true; // 4
Z_HUD_Hunger = true; // 5
Z_HUD_Thirst = true; // 6
Z_HUD_Grid = true; // 7
Z_HUD_Fatique = true; // 8
Z_HUD_Restart = true; // 9
Z_HUD_Toxicity = true; // 10
Z_HUD_Stamina = true; // 11
Z_HUD_Energy = true; // 12

// Starting positions
Z_HUD_pos = [
0,0,0,0,0,0,0,0, // Bottom SIde
0,0,3,4,5,6,0,0, // Right Side
0,0,0,0,0,0,0,0, // Top side
0,0,0,0,0,0,0,0  // Left side
];

// DO not change this.
Z_Hud_Hiden =  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
Z_Hud_Backup = [];
