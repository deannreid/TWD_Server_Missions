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
_brightness = 0.001;	
_size = 0.1;

_strobe1 = "#particlesource" createVehicleLocal position _this;
_strobe2 = "#particlesource" createVehicleLocal position _this;

_strobe1 lightAttachObject [_this, [0,0,0]];
_strobe1 setParticleCircle [0, [0, 0, 0]];
_strobe1 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe1 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [0,1.5,-1.5], [0,0,0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe1 setdropinterval 0.1;

_light1 = "#lightpoint" createVehicleLocal position _this;
_light1 lightAttachObject [_this, [0,1.5,-1.5]];
_light1 setlightcolor _color;
_light1 setlightambient [1,1,1];
_light1 setlightbrightness _brightness;

sleep 0.02;
deletevehicle _strobe1;
deletevehicle _light1;
sleep 0.2;

// Segundo Strobe
_color = [255,0,0];
_brightness = 0.001;	
_size = 0.4;

_strobe1 = "#particlesource" createVehicleLocal position _this;
_strobe2 = "#particlesource" createVehicleLocal position _this;

_strobe1 lightAttachObject [_this, [0,0,0]];
_strobe1 setParticleCircle [0, [0, 0, 0]];
_strobe1 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe1 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [0,1.5,-1.5], [0,0,0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe1 setdropinterval 0.1;

_light1 = "#lightpoint" createVehicleLocal position _this;
_light1 lightAttachObject [_this, [0,1.5,-1.5]];
_light1 setlightcolor _color;
_light1 setlightambient [1,1,1];
_light1 setlightbrightness _brightness;

sleep 0.02;
deletevehicle _strobe1;
deletevehicle _light1;
sleep 0.2;

sleep 2;

/***********************************************************************
* Cauda - Strobe Branco
***********************************************************************/
_color = [255,255,255];
_brightness = 0.002;	
_size = 0.2;

_strobe1 = "#particlesource" createVehicleLocal position _this;
_strobe2 = "#particlesource" createVehicleLocal position _this;

_strobe2 lightAttachObject [_this, [0,0,0]];
_strobe2 setParticleCircle [0, [0, 0, 0]];
_strobe2 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe2 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [0.1, -4.3, 0.20], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe2 setdropinterval 0.1;

_light2 = "#lightpoint" createVehicleLocal position _this;
_light2 lightAttachObject [_this, [0.1, -4.3, 0.20]];
_light2 setlightcolor _color;
_light2 setlightambient [1,1,1];
_light2 setlightbrightness _brightness;

sleep 0.02;
deleteVehicle _strobe2;
deleteVehicle _light2;
sleep 0.02;

// Segundo Strobe
_color = [255,255,255];
_brightness = 0.002;	
_size = 0.4;

_strobe1 = "#particlesource" createVehicleLocal position _this;
_strobe2 = "#particlesource" createVehicleLocal position _this;

_strobe2 lightAttachObject [_this, [0,0,0]];
_strobe2 setParticleCircle [0, [0, 0, 0]];
_strobe2 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_strobe2 setParticleParams [["warfxPE\particleeffects\SparksEffect\SparksEffect", 1, 0, 1], "", "Billboard", 1, 0.02, [0.1, -4.3, 0.20], [0, 0, 0], 0, 10, 7.9, 0.01, [_size], [[1, 1, 0.5, -5], [1, 1, 0.5, -5], [1, 1, 0.5, -5]], [1], 1, 0, "", "", _this];
_strobe2 setdropinterval 0.1;

_light2 = "#lightpoint" createVehicleLocal position _this;
_light2 lightAttachObject [_this, [0.1, -4.3, 0.20]];
_light2 setlightcolor _color;
_light2 setlightambient [1,1,1];
_light2 setlightbrightness _brightness;

sleep 0.02;
deleteVehicle _strobe2;
deleteVehicle _light2;
sleep 0.02;

};
sleep 2;

};