if other.team != team && !hit && other.sprite_index != other.spr_hurt
{
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation)
		DealDamage(other.dmg)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,16)
		Sleep(100)
		BackCont.shake += 8
		
		if object_index == Player
		{
			hitBy = other.sprite_index;
			other.hit = true;
		}
			
		with instance_create(x,y,EnemyVenom)
		{
			team = other.team;
			owner = other.id;
			if other.object_index == Player
			{
				with GameRender
				{
					venomized = true;	
				}
				venomized = true;
			}
		}
	}
	with instance_create(other.x,other.y,AcidStreak)
	{
		motion_add(other.bleedAngle + random_range(10,-10),4);
		image_angle = direction;
	}
}

