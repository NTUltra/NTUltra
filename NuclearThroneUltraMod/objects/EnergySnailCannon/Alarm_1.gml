/// @description FX
if fps_real < min(48,fps)
{
	exit;
}
alarm[1] = 1;
var dir = random(360);
with instance_create(x + lengthdir_x(fxLength,dir),y + lengthdir_y(fxLength,dir), PlasmaFX)
{
	motion_add(other.direction,2);
	motion_add(random(360),1.5);
}