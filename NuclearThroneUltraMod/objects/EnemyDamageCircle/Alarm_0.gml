/// @description Radius increase
alarm[0] = 1;
radius += 10;
width += 0.35;
if width > maxWidth
	width = maxWidth;
if radius > maxRange
{
	radius = maxRange;
	if width >= maxWidth
	{
		alarm[0] = 0;
		alarm[1] = 10;	
	}
}
