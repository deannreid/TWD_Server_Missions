waitUntil {uiSleep 0.25;(!isNil "PVDZE_plr_LoginRecord")};
if (count units group player > 1) then {[player] join grpNull;};
//#include "\ca\editor\Data\Scripts\dikCodes.h"
//keyboard_keys set [DIK_LWIN,{if (tagname) then {tagname = false;titleText ["\n\nName tags OFF","PLAIN DOWN"];titleFadeOut 4;} else {tagname = true;titleText ["\n\nName tags ON","PLAIN DOWN"];titleFadeOut 4;};_handled = true;}];
//keyboard_keys set [(actionKeys "TacticalView") select 0,{_handled = true;}];
//keyboard_keys set [DIK_RWIN,{if (dialog) then {closeDialog 0;groupManagementActive = false;} else {execVM "custom\groups\loadGroupManagement.sqf";};_handled = true;}];

acceptGroupInvite = compile preprocessFileLineNumbers "custom\groups\acceptGroupInvite.sqf";
declineGroupInvite = compile preprocessFileLineNumbers "custom\groups\declineGroupInvite.sqf";
disbandGroup = compile preprocessFileLineNumbers "custom\groups\disbandGroup.sqf";
inviteToGroup = compile preprocessFileLineNumbers "custom\groups\inviteToGroup.sqf";
kickFromGroup = compile preprocessFileLineNumbers "custom\groups\kickFromGroup.sqf";
leaveGroup = compile preprocessFileLineNumbers "custom\groups\leaveGroup.sqf";
playerSelectChange = compile preprocessFileLineNumbers "custom\groups\playerSelectChange.sqf";
updatePlayerList = compile preprocessFileLineNumbers "custom\groups\updatePlayerList.sqf";
tagName = true;
	
if (isNil "dzgmInit") then {call compile preprocessFileLineNumbers "custom\groups\icons.sqf";};
uiSleep 1;
[] spawn dzgmInit;
systemChat "Right click on radio to open group management";