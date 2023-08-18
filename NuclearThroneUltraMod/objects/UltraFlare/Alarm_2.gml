/// @description Fire
with instance_create(x,y,UltraFlame)
{motion_add(other.direction+random(20)-10,1+random(1))
team = other.team}
alarm[2] = 1;
if speed < 1
	instance_destroy();