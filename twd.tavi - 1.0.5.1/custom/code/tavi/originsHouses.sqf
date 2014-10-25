player removeAction s_player_openhouse;
s_player_openhouse = -1;
player removeAction s_player_openhouse;
s_player_openhouseB1 = -1;

if (!isNil 'DoorToOpen') then
{
        if (!isNull DoorToOpen) then
        {
                _state = HouseState;
                if (_state == 0) then
                {
                        _state = 1;
						HouseState = 1;
						_nil = [objNull, player, rSAY, "DoorCreak"] call RE;
                }
                else
                {
                        _state = 0;
						HouseState = 0;
						_nil = [objNull, player, rSAY, "DoorCreak"] call RE;
                };
               
                {
                        DoorToOpen animate [_x,_state];
                } forEach ['vratka','dvereJednaA','vratkaDva','dvereJedna','dvere1'];
        };
};
OriginsSaveGear = DoorToOpen;
publicVariableServer "OriginsSaveGear";