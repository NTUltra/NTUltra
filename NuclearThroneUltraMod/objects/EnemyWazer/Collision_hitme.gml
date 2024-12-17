/// @description iframes
if other.team != team and other.my_health > 0 && !ending
{
	with other
	{
		if sprite_index != spr_hurt
		{
			if object_index == Player
			{
				if alarm[3] > 0 || hurtTime > 0//When immune dont deal damage and dont trigger blast armour
					exit;
				hitBy = sprEnemyLaserRepresent;
			}
			snd_play(snd_hurt, hurt_pitch_variation,true)
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.image_angle,4)
		}
		instance_create(x,y,Smoke)
	}
}

