if other.team != team and other.my_health > 0 && image_yscale > 0.15
{
	with other
	{
		if sprite_index != spr_hurt
		{
			if object_index == Player
			{
				if alarm[3] > 0 || other.alarm[3] > 0 || hurtTime > 0//When immune dont deal damage and dont trigger blast armour
				{
					exit;
				}
				hitBy = sprEnemyLaserRepresent;
			}
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.image_angle,4)
			snd_play(snd_hurt, hurt_pitch_variation,true);
			instance_create(x,y,Smoke)
		}
	}
}

