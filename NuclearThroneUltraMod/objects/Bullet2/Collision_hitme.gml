if other.team != team and other.my_health > 0 && alarm[0] < 1
{
	instance_destroy()
	with other
	{
		if object_index == Player
		{
			if sprite_index != spr_hurt
			{
				hitBy = other.sprite_index;
				my_health -= other.dmg
				sprite_index = spr_hurt
				image_index = 0
				Sleep(20);
				motion_add(other.direction,4)
			}
		}
		else
		{
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,4)
			scrForcePosition60fps();
			if speed > maxSpeed+2
				speed = maxSpeed+2;
		}
	}
	if shotgunshouldered
	{
		scrSplashDamage(1, 18);
	}

	snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
	with instance_create(x,y,BulletHit)
	{
		if other.shotgunshouldered
			sprite_index = sprBullet2Hit;
		else
			sprite_index = sprBullet2Disappear
	}
	
}

