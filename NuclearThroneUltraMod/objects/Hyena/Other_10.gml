/// @description Heal it
snd_play(sndHealthPickup);
with instance_create(x, y - 16, HealFX)
{
	depth = -3;
}
snd_play(sndBloodlustProc);
with corpseTarget
{
	repeat(3)
	with instance_create(x,y,BloodStreak)
	{
		vspeed = - 2 - random(6);
		hspeed = random_range(-4,4);
		image_angle = direction
	}
	instance_destroy();	
}
corpseTarget = -1;
my_health = maxhealth;