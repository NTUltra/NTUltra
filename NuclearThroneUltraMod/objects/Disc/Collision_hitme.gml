if other.team != team
{
	with other
	{
		if sprite_index != spr_hurt
		{
			snd_play(snd_hurt, hurt_pitch_variation)
			DealDamage(other.dmg);
			if team != 2
			{
				DealDamage(other.dmg);
			}
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,4)
			BackCont.shake += 3

			if team==2//player
			{
				if my_health<=0//dead
				{
					scrUnlockGameMode(19,"FOR DOING AN OOPSIE");
					if object_index == Player
						hitBy = other.sprite_index;
				}
			}
		}
	}
	Sleep(10)
}

