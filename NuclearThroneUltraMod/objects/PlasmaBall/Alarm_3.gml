/// @description FX
if fps_real < fps
{
	exit;
}
alarm[3] = 1;
with instance_create(x+random(14)-7,y+random(14)-7,PlasmaFX)
{
	motion_add(other.direction+random(30)-15,random(2));
}