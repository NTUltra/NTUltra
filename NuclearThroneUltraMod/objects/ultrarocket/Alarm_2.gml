/// @description Fire
with instance_create(x,y,UltraFlame)
{
	team = other.team;
	motion_add(other.direction,other.speed * 0.5);
}
alarm[2] = 1;