/// @description Red Flames
alarm[6] = 10;
with instance_create(x,y,TrapFire)
{
	team = other.team;
	speed = other.speed * 0.5;
	direction = other.direction;
}