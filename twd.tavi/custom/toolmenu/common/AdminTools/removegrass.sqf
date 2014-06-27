if (isNil "damiGODZ") then
{
	damiGODZ = 0;
};

if (damiGODZ == 0) then
{
	damiGODZ = 1;
    cutText ["Super Shrink", "PLAIN"];
	setterraingrid 50;
}

else
{
	damiGODZ = 0;
    cutText ["Super Grow", "PLAIN"];
	setterraingrid 25;
};
