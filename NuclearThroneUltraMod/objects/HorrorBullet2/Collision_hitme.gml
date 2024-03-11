/// @description Different hit
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
				DealDamage(other.dmg)
				sprite_index = spr_hurt
				image_index = 0
				Sleep(20);
				motion_add(other.direction,4)
			}
		}
		else
		{
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,4)
			scrForcePosition60fps();
			if speed > maxSpeed+2
				speed = maxSpeed+2;
		}
		snd_play(snd_hurt, hurt_pitch_variation,true)
	}
	if shotgunshouldered
	{
		scrSplashDamage(1, 18);
	}

	if bskin
	{
		with instance_create(x,y,BulletHit)
			sprite_index=sprHorrorHitB
	}
	else if bskin=2
	{
		with instance_create(x,y,BulletHit)
			sprite_index=sprHorrorHitC
	}
	else
	{
		with instance_create(x,y,BulletHit)
			sprite_index=sprHorrorHit
	}
	
}

