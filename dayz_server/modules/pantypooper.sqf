private["_model","_startpos","_endpos","_rand_player"];

_model            = ["MV22","F35B","Su25_CDF","A10","Mi24_D","AV8B","Su25_TK_EP1","L39_TK_EP1","C130J_US_EP1","MQ9PredatorB_US_EP1"] call BIS_fnc_selectRandom;
_startpos        = [[1000.0,2.0],[3500.0,2.0],[5000.0,2.0],[7500.0,2.0],[9712.0,663.067],[12304.0,1175.07],[14736.0,2500.0],[16240.0,5000.0],[16240.0,7500.0],[16240.0,10000.0]] call BIS_fnc_selectRandom;
_rand_player    = playableUnits call BIS_fnc_selectRandom;

if((isPlayer _rand_player) && (alive _rand_player)) then {

    _rand_num        = ceil(random 5);
    _playerpos        = [_rand_player] call FNC_GetPos;
    _number            = 0;

    for "_i" from 1 to _rand_num do {
    
        _number = (_number + 1);

        [_number,_model,_startpos,_playerpos] spawn {

            private["_aircraft","_aigroup","_pilot","_wp1","_wp2","_cor_y","_cor_x"];
            
            _number     = _this select 0;
            _model         = _this select 1;
            _startpos     = _this select 2;
            _playerpos     = _this select 3;            
            _endpos        = [0,16000,200];

            call {
                if(_number == 1) exitWith {
                    _cor_y = 0;
                    _cor_x = 0;
                };

                if(_number == 2) exitWith {
                    _cor_y = -60;
                    _cor_x = -60;
                };

                if(_number == 3) exitWith {
                    _cor_y = -60;
                    _cor_x = 60;
                };

                if(_number == 4) exitWith {
                    _cor_y = -120;
                    _cor_x = -120;
                };

                if(_number == 5) exitWith {
                    _cor_y = -120;
                    _cor_x = 120;
                };
            };

            _aircraft     = createVehicle [_model,[((_startpos select 0) + _cor_y),((_startpos select 1) + _cor_x),200],[],0,"FLY"];
            _aircraft     engineOn true;
            _aircraft     flyInHeight 200;

            _aigroup     = creategroup civilian;

            _pilot         = _aigroup createUnit ["SurvivorW2_DZ",[_aircraft] call FNC_GetPos,[],0,"FORM"];
            _pilot         setCombatMode "BLUE";
            _pilot         moveindriver _aircraft;
            _pilot         assignAsDriver _aircraft;

            _wp1         = _aigroup addWaypoint [[((_playerpos select 0) + _cor_y),((_playerpos select 1) + _cor_x),200],0];
            _wp1         setWaypointType "MOVE";
            _wp1        setWaypointBehaviour "CARELESS";

            _wp2         = _aigroup addWaypoint [[(_endpos select 0),(_endpos select 1),200],0];
            _wp2         setWaypointType "MOVE";
            _wp2         setWaypointBehaviour "CARELESS";

            waitUntil { (_aircraft distance _endpos < 500) };

            deleteVehicle _aircraft;
            deleteGroup _aigroup;
            deleteVehicle _pilot;

        };
    };
};