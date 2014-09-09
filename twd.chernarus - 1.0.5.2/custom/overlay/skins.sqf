if (isServer) exitwith {};
waitUntil {sleep 1; count vehicles > 1};
sleep 1;
{
//SUV Retexture
    if (typeOf _x in ["SUV"]) then //pink
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvUAE_overlay.jpg"] //can also be jpg
    };
    if (typeOf _x in ["SUV_Pink"]) then //orange
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvKTY_overlay.jpg"] //can also be jpg
    };
    if (typeOf _x in ["SUV_Blue"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvUSA_overlay.jpg"] //can also be jpg
    };
    if (typeOf _x in ["SUV_Yellow"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvCAN_overlay.jpg"] //can also be jpg
    };	
    if (typeOf _x in ["SUV_White"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvUK_overlay.jpg"] //can also be jpg
    };	
    if (typeOf _x in ["SUV_TK_CIV_EP1"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvAUS_overlay.jpg"] //can also be jpg
    };
	
//SUV Retexture _DZE1
    if (typeOf _x in ["SUV_DZE1"]) then //pink
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvUAE_overlay.jpg"] //can also be jpg
    };
    if (typeOf _x in ["SUV_Pink_DZE1"]) then //orange
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvKTY_overlay.jpg"] //can also be jpg
    };
    if (typeOf _x in ["SUV_Blue_DZE1"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvUSA_overlay.jpg"] //can also be jpg
    };
    if (typeOf _x in ["SUV_Yellow_DZE1"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvCAN_overlay.jpg"] //can also be jpg
    };	
    if (typeOf _x in ["SUV_White_DZE1"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvUK_overlay.jpg"] //can also be jpg
    };	
    if (typeOf _x in ["SUV_TK_CIV_EP1_DZE1"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvAUS_overlay.jpg"] //can also be jpg
    };	
	
//SUV Retexture _DZE2
    if (typeOf _x in ["SUV_DZE2"]) then //pink
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvUAE_overlay.jpg"] //can also be jpg
    };
    if (typeOf _x in ["SUV_Pink_DZE2"]) then //orange
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvKTY_overlay.jpg"] //can also be jpg
    };
    if (typeOf _x in ["SUV_Blue_DZE2"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvUSA_overlay.jpg"] //can also be jpg
    };
    if (typeOf _x in ["SUV_Yellow_DZE2"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvCAN_overlay.jpg"] //can also be jpg
    };	
    if (typeOf _x in ["SUV_White_DZE2"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvUK_overlay.jpg"] //can also be jpg
    };	
    if (typeOf _x in ["SUV_TK_CIV_EP1_DZE2"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvAUS_overlay.jpg"] //can also be jpg
    };		
	
//SUV Retexture _DZE3
    if (typeOf _x in ["SUV_DZE3"]) then //pink
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvUAE_overlay.jpg"] //can also be jpg
    };
    if (typeOf _x in ["SUV_Pink_DZE3"]) then //orange
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvKTY_overlay.jpg"] //can also be jpg
    };
    if (typeOf _x in ["SUV_Blue_DZE3"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvUSA_overlay.jpg"] //can also be jpg
    };
    if (typeOf _x in ["SUV_Yellow_DZE3"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvCAN_overlay.jpg"] //can also be jpg
    };	
    if (typeOf _x in ["SUV_White_DZE3"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvUK_overlay.jpg"] //can also be jpg
    };	
    if (typeOf _x in ["SUV_TK_CIV_EP1_DZE3"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvAUS_overlay.jpg"] //can also be jpg
    };		
	
//SUV Retexture _DZE4
    if (typeOf _x in ["SUV_DZE4"]) then //pink
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvUAE_overlay.jpg"] //can also be jpg
    };
    if (typeOf _x in ["SUV_Pink_DZE4"]) then //orange
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvKTY_overlay.jpg"] //can also be jpg
    };
    if (typeOf _x in ["SUV_Blue_DZE4"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvUSA_overlay.jpg"] //can also be jpg
    };
    if (typeOf _x in ["SUV_Yellow_DZE4"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvCAN_overlay.jpg"] //can also be jpg
    };	
    if (typeOf _x in ["SUV_White_DZE4"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvUK_overlay.jpg"] //can also be jpg
    };	
    if (typeOf _x in ["SUV_TK_CIV_EP1_DZE4"]) then //red
    {
        nul = _x setObjectTexture [0,"custom\overlay\suvAUS_overlay.jpg"] //can also be jpg
    };		

} forEach (vehicles);