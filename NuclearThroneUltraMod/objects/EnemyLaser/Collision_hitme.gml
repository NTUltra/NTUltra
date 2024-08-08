if other.team != team and other.my_health > 0
{
	with other
	{
		if sprite_index != spr_hurt
		{
			if object_index == Player
			{
				if alarm[3] > 0//When immune dont deal damage and dont trigger blast armour
					exit;
				hitBy = sprEnemyLaserRepresent;
				if other.alarm[2] > 1
					other.alarm[2] = 1;
			}
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.image_angle,4)
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}
	}
	instance_create(x,y,Smoke)
}

