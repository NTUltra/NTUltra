if other.team != team and other.my_health > 0
{
	instance_destroy()

	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,4)
		scrForcePosition60fps();
		if speed > maxSpeed+1
			speed = maxSpeed+1;
	}

	if shotgunshouldered
	{
		scrSplashDamage(1, 16);
		with instance_create(x,y,BulletHit)
			sprite_index = sprBullet9Hit;
	}
	else
	{
		with instance_create(x,y,BulletHit)
			sprite_index = sprBullet9Disappear;
	}
	

}

