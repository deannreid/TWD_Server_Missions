waitUntil {uiSleep 0.25;(!isNil "PVDZE_plr_LoginRecord")};
if (count units group player > 1) then {[player] join grpNull;};

acceptGroupInvite = compile preprocessFileLineNumbers "custom\groups\acceptGroupInvite.sqf";
declineGroupInvite = compile preprocessFileLineNumbers "custom\groups\declineGroupInvite.sqf";
disbandGroup = compile preprocessFileLineNumbers "custom\groups\disbandGroup.sqf";
inviteToGroup = compile preprocessFileLineNumbers "custom\groups\inviteToGroup.sqf";
kickFromGroup = compile preprocessFileLineNumbers "custom\groups\kickFromGroup.sqf";
leaveGroup = compile preprocessFileLineNumbers "custom\groups\leaveGroup.sqf";
mapLoop = compile preprocessFileLineNumbers "custom\groups\mapLoop.sqf";
playerSelectChange = compile preprocessFileLineNumbers "custom\groups\playerSelectChange.sqf";
Updateplayerlist = compile preprocessFileLineNumbers "custom\groups\Updateplayerlist.sqf";
tagname = true;
	
if (isNil "dzgm_init") then {call compile preprocessFileLineNumbers "custom\groups\icons.sqf";};
uiSleep 1;
[] spawn dzgm_init;
[] spawn mapLoop;
systemChat "Right click on radio to open group management";