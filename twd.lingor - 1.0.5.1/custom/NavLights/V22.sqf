_this = _this select 0;

while {alive _this} do
{

_lightOn = _this getVariable "lightOn";

if(_lightOn)then
{	
/***********************************************************************
* Estabilizador vetical esquerdo - Strobe Vermelho
***********************************************************************/	
_color = [255,0,0];
_brightness = 0.003;	
_size = 0.2;
	
_strobe1 = "#particlesource" createVehicleLocal position _this;
_strobe2 = "#particlesource" createVehicleLocal position _this;

_strobe1 lightAttachObject [_this, [0,0,0]];
_strobe1 setParticleCircle [0, [0, 0, 0]];
_strobe1 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe1 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [-2.8, -9.2, 2.2], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe1 setdropinterval 0.1;


_light1 = "#lightpoint" createVehicleLocal position _this;
_light1 lightAttachObject [_this, [-2.8, -9.2, 2.2]];
_light1 setlightcolor _color;
_light1 setlightambient [1,1,1];
_light1 setlightbrightness _brightness;

sleep 0.02;
deletevehicle _strobe1;
deletevehicle _light1;
sleep 0.02;


// Segunda luz
_size = 0.4;
_strobe2 lightAttachObject [_this, [0,0,0]];
_strobe2 setParticleCircle [0, [0, 0, 0]];
_strobe2 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe2 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [-2.8, -9.2, 2.2], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe2 setdropinterval 0.1;

_light2 = "#lightpoint" createVehicleLocal position _this;
_light2 lightAttachObject [_this, [-2.8, -9.2, 2.2]];
_light2 setlightcolor _color;
_light2 setlightambient [1,1,1];
_light2 setlightbrightness _brightness;


sleep 0.02;
deletevehicle _strobe2;
deletevehicle _light2;
sleep 0.02;

sleep 3;


/***********************************************************************
* Barriga - Strobe Vermelho
***********************************************************************/	
_color = [255,0,0];
_brightness = 0.003;	
_size = 0.2;

_strobe1 = "#particlesource" createVehicleLocal position _this;
_strobe2 = "#particlesource" createVehicleLocal position _this;

_strobe1 lightAttachObject [_this, [0,0,0]];
_strobe1 setParticleCircle [0, [0, 0, 0]];
_strobe1 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe1 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [0, 0.4, -2.9], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe1 setdropinterval 0.1;

_light1 = "#lightpoint" createVehicleLocal position _this;
_light1 lightAttachObject [_this, [0, 0.4, -2.9]];
_light1 setlightcolor _color;
_light1 setlightambient [1,1,1];
_light1 setlightbrightness _brightness;

sleep 0.02;
deletevehicle _strobe1;
deletevehicle _light1;
sleep 0.02;

// Segunda luz
_size = 0.4;
_strobe2 lightAttachObject [_this, [0,0,0]];
_strobe2 setParticleCircle [0, [0, 0, 0]];
_strobe2 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe2 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [0, 0.4, -2.9], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe2 setdropinterval 0.1;


_light2 = "#lightpoint" createVehicleLocal position _this;
_light2 lightAttachObject [_this, [0, 0.4, -2.9]];
_light2 setlightcolor _color;
_light2 setlightambient [1,1,1];
_light2 setlightbrightness _brightness;

sleep 0.02;

deletevehicle _strobe2;
deletevehicle _light2;
};
sleep 1;

};