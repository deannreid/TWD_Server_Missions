private ["_radio", "_op", "_volin", "_volout"];
_radio = false;
_op = 0;
_volin = musicVolume;
_volout = _volin*3/5;
while {true} do
{
   if (!_radio && (vehicle player == radio)) then
   {
      _op = radio addAction ["Turn on iPod", "custom\CarRadio\showplayer.sqf"];
      _radio = true;
   };   
   if (_radio && (vehicle player != radio)) then
   {
      radio removeAction _op;
      _radio = false;
   };

   if (vehicle player distance radio < 10) then
   {
      if (vehicle player == radio) then
      {
         0.1 fadeMusic _volin;
      }
      else
      {
         0.1 fadeMusic _volout;
      };
   }
   else
   {
      0.1 fadeMusic (10/(vehicle player distance radio)*_volout);
   };
   Sleep 0.1;
};