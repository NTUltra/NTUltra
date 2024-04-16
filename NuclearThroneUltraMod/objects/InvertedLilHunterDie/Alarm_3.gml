/// @description fire
alarm[3] = 1;
with instance_create(x,y,TrapFire)//Trapfire
{
	sprite_index = sprFireLilHunter
	dmg += 1;
	image_angle = direction
	team = other.team
}