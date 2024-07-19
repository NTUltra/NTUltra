if alarm[11] < 1 && other.team != team and other.my_health > 0
{
	instance_destroy()
	with other
	{
		if object_index == Player
		{
			if sprite_index == spr_hurt
				exit;
			else
			{
				hitBy = other.sprite_index;	
			}
		}
		DealDamage(other.dmg)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,7)
		snd_play(snd_hurt, hurt_pitch_variation,true)
		scrForcePosition60fps();
		if speed > maxSpeed+1
			speed = maxSpeed+1;
	}
	if shotgunshouldered
	{
		scrSplashDamage(10,32);
		with instance_create(x,y,BulletHit)
			sprite_index = sprSlugHitUpg
	}
	else
		with instance_create(x,y,BulletHit)
			sprite_index = sprSlugHit
}

