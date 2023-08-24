/// @description Heal from corpse
if corpseTarget > -1 && instance_exists(corpseTarget) && sprite_index != spr_hurt
{
	if point_distance(x,y,corpseTarget.x,corpseTarget.y) < 24
	{
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
		if loops > 0
			my_health = maxhealth;
		else
			my_health = min(my_health + 30, maxhealth);
	}
}