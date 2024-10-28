/// @description OMNOM
if alarm[3] < 1
{
	alarm[3] = 20;
	walk = 0;
	alarm[1] += 15;
	sprite_index = spr_fire;
	image_index = 0;
	alarm[2] = (image_number/image_speed);
	var tx = x;
	var ty = y;
	with MushroomBoss
	{
		my_health = min(maxhealth, my_health + other.healingAmount);
		with instance_create(x,y - 16,HealFX)
		{
			sprite_index = sprHealBigFX;	
		}
		snd_play(sndBloodlustProc);
		with instance_create(x,y,MushroomHeal)
		{
			targetX = tx;
			targetY = ty;
			distance = point_distance(x,y,targetX,targetY);
			dir = point_direction(x,y,targetX,targetY);
		}
	}
	with BecomeMushroomBoss
	{
		instance_create(x,y - 8,HealFX);
		my_health = min(maxhealth, my_health + other.healingAmount);
	}
	instance_create(x,y - 8,HealFX);
	snd_play(snd_melee);
	snd_play(sndBloodlustProc);
}