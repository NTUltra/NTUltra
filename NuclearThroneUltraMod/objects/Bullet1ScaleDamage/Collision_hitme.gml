/// @description DAMAGE
if other.team != team and other.my_health > 0
{
	if other.team != 0
		hasHit = 1;
	else
		hasHit = 2;
	instance_destroy()
	with other
	{
		if object_index == Player
		{
			if sprite_index != spr_hurt
			{
				hitBy = other.sprite_index;
				DealDamage(3)
				sprite_index = spr_hurt
				image_index = 0
				Sleep(20);
				motion_add(other.direction,6)
			}
		}
		else
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			if instance_exists(Player){
			if Player.ultra_got[28]//roids ultra d
			{other.dmg += 2;}}
			DealDamage(other.dmg);
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,min(3 + other.dmg,18))
			scrForcePosition60fps();
			if speed > maxSpeed+1
				speed = maxSpeed+1;
		}
	}
	if dmg > 29
	{
		with instance_create(x,y,BulletHit)
		{
			sprite_index = sprHeavySlugHit;	
		}
	}
	else if dmg > 20
	{
		with instance_create(x,y,BulletHit)
		{
			sprite_index = sprSlugHit;	
		}
	}
	else if dmg > 6
	{
		with instance_create(x,y,BulletHit)
		{
			sprite_index = sprHeavyBulletHit;	
		}
	}
	else
		instance_create(x,y,BulletHit)

	if !norecycle
		scrRecycleGland(cost,radCost);

}