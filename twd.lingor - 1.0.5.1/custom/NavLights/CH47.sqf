_this = _this select 0;

while {alive _this} do
{
	
_lightOn = _this getVariable "lightOn";

if(_lightOn)then
{	
/***********************************************************************
* Barriga - Strobe Vermelho
***********************************************************************/	
_color = [255,0,0];
_brightness = 0.002;	
_size = 0.2;

_strobe = "#particlesource" createVehicleLocal position _this;
_strobe lightAttachObject [_this, [0,0,0]];
_strobe setParticleCircle [0, [0, 0, 0]];
_strobe setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [0, 1, -3.15], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -2], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe setdropinterval 0.1;

_light = "#lightpoint" createVehicleLocal position _this;
_light lightAttachObject [_this, [0, 1, -3.15]];
_light setlightcolor _color;
_light setlightambient [1,1,1];
_light setlightbrightness _brightness;

sleep 0.02;
deletevehicle _strobe;
deletevehicle _light;
sleep 0.02;

// Segunda luz
//_color = [255,255,255];
//_brightness = 0.005;	
_size = 0.4;

_strobe = "#particlesource" createVehicleLocal position _this;
_strobe lightAttachObject [_this, [0,0,0]];
_strobe setParticleCircle [0, [0, 0, 0]];
_strobe setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [0, 1, -3.15], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -2], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe setdropinterval 0.1;

_light = "#lightpoint" createVehicleLocal position _this;
_light lightAttachObject [_this, [0, 1, -3.15]];
_light setlightcolor _color;
_light setlightambient [1,1,1];
_light setlightbrightness _brightness;

sleep 0.02;
deletevehicle _strobe;
deletevehicle _light;
sleep 1;

/***********************************************************************
* Rotor traseiro - Strobe Branco
***********************************************************************/	
_color = [255,0,0];
_brightness = 0.001;	
_size = 0.2;

_strobe3 = "#particlesource" createVehicleLocal position _this;
_strobe3 lightAttachObject [_this, [0,0,0]];
_strobe3 setParticleCircle [0, [0, 0, 0]];
_strobe3 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe3 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [0, -7.5, 1.7], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe3 setdropinterval 0.1;

_light3 = "#lightpoint" createVehicleLocal position _this;
_light3 lightAttachObject [_this, [0, -7.5, 1.7]];
_light3 setlightcolor _color;
_light3 setlightambient [1,1,1];
_light3 setlightbrightness _brightness;

sleep 0.02;
deletevehicle _strobe3;
deletevehicle _light3;
sleep 0.02;

// Segunda Luz
//_color = [255,0,0];
//_brightness = 0.005;	
_size = 0.4;

_strobe3 = "#particlesource" createVehicleLocal position _this;
_strobe3 lightAttachObject [_this, [0,0,0]];
_strobe3 setParticleCircle [0, [0, 0, 0]];
_strobe3 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe3 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [0, -7.5, 1.7], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe3 setdropinterval 0.1;

_light3 = "#lightpoint" createVehicleLocal position _this;
_light3 lightAttachObject [_this, [0, -7.5, 1.7]];
_light3 setlightcolor _color;
_light3 setlightambient [1,1,1];
_light3 setlightbrightness _brightness;

sleep 0.02;
deletevehicle _strobe3;
deletevehicle _light3;
};
sleep 2;

};




