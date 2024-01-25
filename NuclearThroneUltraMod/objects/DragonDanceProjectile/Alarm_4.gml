/// @description Blue Flames
alarm[4] = 10;
with instance_create(x,y,TrapFire)
{
	team = other.team;
	sprite_index = sprFireLilHunter
	speed = other.speed * 0.5;
	direction = other.direction;
}