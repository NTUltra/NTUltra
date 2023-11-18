if other.team != team and other.my_health > 0
{
	instance_destroy()
	with other
	{
		my_health -= other.dmg;
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,3)
		scrForcePosition60fps();
		if speed > maxSpeed+1
			speed = maxSpeed+1;
		if alarm[11]>0//frozen
		{
			with Player
			{
				if race = 24
					scrUnlockBSkin(24,"FOR BURNING AN ENEMY#THAT IS FROZEN AS ELEMENTOR",0);
			}
		}
		snd_play(snd_hurt, hurt_pitch_variation,true)
	}
	if shotgunshouldered
	{
		scrSplashDamage(1, 18);
		with instance_create(x,y,BulletHit)
			sprite_index = sprBullet6Hit;
	}
	else
	{
		with instance_create(x,y,BulletHit)
			sprite_index = sprBullet6Disappear;
	}
}

