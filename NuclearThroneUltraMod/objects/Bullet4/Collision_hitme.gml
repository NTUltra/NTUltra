if other.team != team and other.my_health > 0
{
	instance_destroy();
	var roidBuff = instance_exists(Player) && Player.ultra_got[28] ? 2 : 0;
	with other
	{
		if team != other.team && my_health > 0
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
				DealDamage(other.dmg + roidBuff);
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,7)
				scrForcePosition60fps();
				if speed > maxSpeed+3
					speed = maxSpeed+3;
				snd_play(snd_hurt, hurt_pitch_variation,true)
			}
		}
	}
	with instance_create(x,y,BulletHit)
		sprite_index=sprUltraBulletHit;

	scrRecycleGland(2,3);
}



