_this = _this select 0;
while {alive _this} do
{

_lightOn = _this getVariable "lightOn";

if(_lightOn)then
{
	
/***********************************************************************
* Frente lado direito Strobe branco
***********************************************************************/	
/*_color = [255,255,255];
_brightness = 0.001;
_size = 0.2;

_strobe1 = "#particlesource" createVehicleLocal position _this;
_strobe2 = "#particlesource" createVehicleLocal position _this;

_strobe1 lightAttachObject [_this, [0,0,0]];
_strobe1 setParticleCircle [0, [0, 0, 0]];
_strobe1 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe1 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [1.32, 3.7, -2], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe1 setdropinterval 0.1;

_strobe2 lightAttachObject [_this, [0,0,0]];
_strobe2 setParticleCircle [0, [0, 0, 0]];
_strobe2 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe2 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [-1.32, 3.7, -2], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe2 setdropinterval 0.1;

_light1 = "#lightpoint" createVehicleLocal position _this;
_light1 lightAttachObject [_this, [1.32, 3.7, -2]];
_light1 setlightcolor _color; 
_light1 setlightambient [1,1,1];
_light1 setlightbrightness _brightness;

_light2 = "#lightpoint" createVehicleLocal position _this;
_light2 lightAttachObject [_this, [-1.32, 3.7, -2]];
_light2 setlightcolor _color;
_light2 setlightambient [1,1,1];
_light2 setlightbrightness _brightness;

sleep 0.02;
deletevehicle _strobe1;
deletevehicle _strobe2;
deletevehicle _light1;
deletevehicle _light2;
sleep 0.02;*/

/***********************************************************************
* Frente lado esquerdo Strobe branco
***********************************************************************/	
/*_color = [255,255,255];
_brightness = 0.001;
_size = 0.2;

_strobe1 = "#particlesource" createVehicleLocal position _this;
_strobe2 = "#particlesource" createVehicleLocal position _this;

_strobe1 lightAttachObject [_this, [0,0,0]];
_strobe1 setParticleCircle [0, [0, 0, 0]];
_strobe1 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe1 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [1.32, 3.7, -2], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe1 setdropinterval 0.1;

_strobe2 lightAttachObject [_this, [0,0,0]];
_strobe2 setParticleCircle [0, [0, 0, 0]];
_strobe2 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe2 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [-1.32, 3.7, -2], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe2 setdropinterval 0.1;

_light1 = "#lightpoint" createVehicleLocal position _this;
_light1 lightAttachObject [_this, [1.32, 3.7, -2]];
_light1 setlightcolor _color;
_light1 setlightambient [1,1,1];
_light1 setlightbrightness _brightness;

_light2 = "#lightpoint" createVehicleLocal position _this;
_light2 lightAttachObject [_this, [-1.32, 3.7, -2]];
_light2 setlightcolor _color;
_light2 setlightambient [1,1,1];
_light2 setlightbrightness _brightness;

sleep 0.02;
deletevehicle _strobe1;
deletevehicle _strobe2;
deletevehicle _light1;
deletevehicle _light2;
sleep 1;*/

/***********************************************************************
* Barriga - Strobe vermelho
***********************************************************************/	
_color = [255,0,0];
_brightness = 0.003;
_size = 0.2;	

_strobe = "#particlesource" createVehicleLocal position _this;
_strobe lightAttachObject [_this, [0,0,0]];
_strobe setParticleCircle [0, [0, 0, 0]];
_strobe setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [0, -3.7, -2.2], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe setdropinterval 0.1;

_light = "#lightpoint" createVehicleLocal position _this;
_light lightAttachObject [_this, [0, -3.7, -2.2]];
_light setlightcolor _color;
_light setlightambient [1,1,1];
_light setlightbrightness _brightness;

sleep 0.02;
deletevehicle _strobe;
deletevehicle _light;
sleep 0.02;

_size = 0.4;
_strobe = "#particlesource" createVehicleLocal position _this;
_strobe lightAttachObject [_this, [0,0,0]];
_strobe setParticleCircle [0, [0, 0, 0]];
_strobe setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [0, -3.7, -2.2], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe setdropinterval 0.1;

_light = "#lightpoint" createVehicleLocal position _this;
_light lightAttachObject [_this, [0, -3.7, -2.2]];
_light setlightcolor _color;
_light setlightambient [1,1,1];
_light setlightbrightness _brightness;

sleep 0.02;
deletevehicle _strobe;
deletevehicle _light;
sleep 3;

/***********************************************************************
* Estabilizador traseiro - Strobe branco
***********************************************************************/	
_color = [255,255,255];
_brightness = 0.005;
_size = 0.1;

_strobe3 = "#particlesource" createVehicleLocal position _this;
_strobe3 lightAttachObject [_this, [0,0,0]];
_strobe3 setParticleCircle [0, [0, 0, 0]];
_strobe3 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe3 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [0, -8.2, 1.5], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe3 setdropinterval 0.1;

_light3 = "#lightpoint" createVehicleLocal position _this;
_light3 lightAttachObject [_this, [0, -8.2, 1.5]];
_light3 setlightcolor _color;
_light3 setlightambient [1,1,1];
_light3 setlightbrightness _brightness;

sleep 0.02;
deletevehicle _strobe3;
deletevehicle _light3;
sleep 0.02;

_size = 0.4;
_strobe3 = "#particlesource" createVehicleLocal position _this;
_strobe3 lightAttachObject [_this, [0,0,0]];
_strobe3 setParticleCircle [0, [0, 0, 0]];
_strobe3 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe3 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [0, -8.2, 1.5], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe3 setdropinterval 0.1;

_light3 = "#lightpoint" createVehicleLocal position _this;
_light3 lightAttachObject [_this, [0, -8.2, 1.5]];
_light3 setlightcolor _color;
_light3 setlightambient [1,1,1];
_light3 setlightbrightness _brightness;

sleep 0.02;
deletevehicle _strobe3;
deletevehicle _light3;
};

sleep 2;

};




