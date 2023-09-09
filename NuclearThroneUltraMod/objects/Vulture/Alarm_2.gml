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
				scrAddToBGFXLayer(
					sprBloodSplat,
					irandom(sprite_get_number(sprBloodSplat)),
					x + lengthdir_x(random_range(8,14),image_angle),
					y + lengthdir_y(random_range(8,14),image_angle),
					random_range(0.8,1),
					random_range(0.8,1),
					image_angle,
					c_white,
					1
				);
			}
			instance_destroy();	
		}
		corpseTarget = noone;
		my_health = maxhealth;
	}
}