/// @description Blue Flames
alarm[4] = 10;
with instance_create(x,y,TrapFire)
{
	team = other.team;
	sprite_index = sprFireLilHunter
	dmg += 1;
	speed = other.speed * 0.5;
	direction = other.direction;
}