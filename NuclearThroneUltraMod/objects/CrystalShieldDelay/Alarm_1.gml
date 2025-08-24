/// @description Some particles
alarm[1] = 2;
with Player
{
	with instance_create(x+random(6)-3,y+random(6)-3,LaserCharge)
	{
	motion_add(random(360),2+random(1))
	alarm[0] = 3+random(4)
	sprite_index = sprImmunityParticle;
	}
}