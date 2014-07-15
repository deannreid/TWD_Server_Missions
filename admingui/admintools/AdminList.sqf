// Epoch Admin Tools
//Replace 111111111 with your ID. 
AdminList = [
"139811590", // <Your In-Game Name here>
];
ModList = [
"999999999", // <Moderator In-Game Name>
"999999999" // <Moderator In-Game Name>
];

/*
	Base deletion variable. Default true.
	Determines default true or false for deleting all vehicles
	inside the base delete dome. Can be changed in game.
*/
BD_vehicles = true;


_useGUI = true; /*Set to true to use the GUI instead of the Scroll Tools*/



// DO NOT MODIFY ANYTHING BEYOND THIS POINT
tempList = []; 

/*
	Determines default on or off for admin tools menu
	Set this to false if you want the menu to be off by default.
	F11 turns the tool off, F10 turns it on.
	Leave this as True for now, it is under construction.
*/
if (isNil "toolsAreActive") then {toolsAreActive = true;};