/// @description pluto fx
if (isGettingSucked)
{
	xOrigin = lerp(xOrigin,x,0.2);
	yOrigin = lerp(yOrigin,y,0.2);
	with instance_create(x,y,PlutoFX)
	{
		motion_add(random(360),2);
	}
	alarm[6] = 1;
}
else
{
	xOrigin = x
	yOrigin = y
	alarm[6] = 2;
}