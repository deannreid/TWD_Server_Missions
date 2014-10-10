if (dayZ_instance == 11) then
{
diag_log "Instance: 11, Loading Chernarus Traders";
call compile preprocessFileLineNumbers "custom\code\traders\11.sqf";
};

if (dayZ_instance == 1337) then
{
diag_log "Instance: 1337, Loading Overwatch Traders";
call compile preprocessFileLineNumbers "custom\code\traders\1337.sqf";
};