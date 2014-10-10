[]spawn
{
wardrobe = -1;
private["_veh"];

while {(alive player)} do
{
	if (wardrobe == -1) then
	{
		wardrobe = (vehicle player) addaction [("<t color=""#00FFFF"">" + ("Player Menu") +"</t>"),"custom\toolmenu\player\Eexcute.sqf","",5,false,true,"",""];
		_veh = vehicle player;
	};
	if (_veh != vehicle player) then
	{
		_veh removeAction wardrobe;
		wardrobe = -1;      
	};
	Sleep 2;
};
};