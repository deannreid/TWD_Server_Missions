player removeAction s_player_opengarage;
s_player_opengarage = -1;
if (!isNil 'DoorToOpen') then
{
        if (!isNull DoorToOpen) then
        {
                _state = GarageState;
                if (_state == 0) then
                {
                        _state = 1;
						GarageState = 1;
						_nil = [objNull, player, rSAY, "metalGates"] call RE;
                }
                else
                {
                        _state = 0;
						GarageState = 0;
						_nil = [objNull, player, rSAY, "metalGates"] call RE;
                };
               
                {
                        DoorToOpen animate [_x,_state];
                } forEach ['dvereGarazLeve','vrataGaraz','dvereGarazPrave','dvereGarazLeveDva','dvereGarazPraveDva','vrataGarazLeve','vrataGarazPrave','vrataGaraz2','dvereJednaC'];
        };
};
		PVDZE_veh_Update = [DoorToOpen,"all"];
		publicVariableServer "PVDZE_veh_Update";