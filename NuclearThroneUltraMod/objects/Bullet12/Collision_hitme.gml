if other.team != team and other.my_health > 0
{
	instance_destroy()
	with other
	{
		if object_index == Player
		{
			if sprite_index != spr_hurt
			{
				hitBy = other.sprite_index;
				DealDamage(other.dmg)
				sprite_index = spr_hurt
				image_index = 0
				Sleep(20);
				motion_add(other.direction,6)
			}
		}
		else
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			DealDamage(other.dmg);
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,6)
			scrForcePosition60fps();
			if speed > maxSpeed+6
				speed = maxSpeed+6;
		}
	}
	instance_create(x,y,BulletHit)
	if shotgunshouldered
	{
		scrSplashDamage(splashDamage, splashDamageRange);
	}
	if !norecycle
	{
		scrRecycleGlandShotgun(shotgunCost, bulletCost, radCost, false);
	}
}



