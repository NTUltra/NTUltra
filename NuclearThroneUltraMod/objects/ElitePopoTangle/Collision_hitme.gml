/// @description Also deal damage
with other
{
	if team != other.team
	{
		if !other.dealtDamage
		{
			other.dealtDamage = true;
			DealDamage(other.dmg);
			if object_index == Player
			{
				hitBy = other.sprite_index;
				Sleep(25);
			}
			sprite_index = spr_hurt
			image_index = 0
			snd_play(snd_hurt, hurt_pitch_variation);
		}
		if other.object_index == Player
		{
			if other.skill_got[2]
				exit;
		}
	    x = xprevious+hspeed*other.slowdown
	    y = yprevious+vspeed*other.slowdown
	}
}

