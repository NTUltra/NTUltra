/// @description pluto fx
if (isGettingSucked)
{
	xOrigin = lerp(xOrigin,x,0.7);
	yOrigin = lerp(yOrigin,y,0.7);
	with instance_create(x,y,PlutoFX)
	{
		motion_add(random(360),2);
	}
	alarm[2] = 1;
}
else
{
	xOrigin = x
	yOrigin = y
	alarm[2] = 2;
}